uint64_t sub_100E262B8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v37 = enum case for DispatchPredicate.onQueue(_:);
  v38 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v36 = v2;
  v39 = v10;
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = sub_1000280F0();
  v12 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000002ALL, 0x80000001015A61B0);
  if (v1)
  {
  }

  v16 = v14;

  v17 = v35;
  sub_1000285F8(v35, v12, 1);
  v18 = *(*(v16 + 16) + 32);
  *v6 = v18;
  v19 = v36;
  v38(v6, v37, v36);
  v20 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v39(v6, v19);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = v17;
  v22 = *(v16 + 16);

  v23 = sub_10001CEC4(v22, v16);

  if (v23 != 101)
  {
    goto LABEL_8;
  }

  v24 = *(*(v16 + 16) + 32);
  *v6 = v24;
  v12 = v36;
  v38(v6, v37, v36);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v39(v6, v12);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v40 = 0xD000000000000021;
    v41 = 0x80000001015A5C50;
    v26._countAndFlagsBits = v21;
    v26._object = v12;
    String.append(_:)(v26);

    v27 = v40;
    v28 = v41;
    sub_10089C7D0();
    swift_allocError();
    *v29 = v23;
    *(v29 + 8) = v27;
    *(v29 + 16) = v28;
    swift_willThrow();
    v30 = *(*(v16 + 16) + 32);
    *v6 = v30;
    v31 = v36;
    v38(v6, v37, v36);
    v32 = v30;
    LOBYTE(v30) = _dispatchPreconditionTest(_:)();
    v39(v6, v31);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v33 = *(v16 + 24);
  if (v33)
  {
    sqlite3_finalize(v33);
    *(v16 + 24) = 0;
  }
}

uint64_t sub_100E266C0(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100E24818(a1, 0, 0, v1, v11);
    if (v2)
    {
    }

    else
    {
      return v11[0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E26818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8[2] = a2;
  v9 = a3 & 1;
  v10 = a1;
  v11 = a4;
  result = sub_10002FA9C(sub_100EA5FB8, v8);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_100E2687C(sqlite3_int64 a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_100E262B8();
    return 1;
  }

  v13 = *(a3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_100E25224(a4, 0, 0, a3, a1);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E269DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 >> 60 == 15)
  {
    sub_100E262B8();
    return 1;
  }

  v13 = *(a3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  sub_100024E84(a1, a2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_100024E84(a1, a2);
    sub_100E257D0(a4, 0, 0, a3, a1, a2);
    sub_100025870(a1, a2);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E26BA8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA3110, v3);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E26D48(uint64_t a1)
{
  v3 = v1;
  v68 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v68);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for String.Encoding();
  v72 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v75 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v67 = v13;
  __chkstk_darwin(v14);
  v74 = &v62 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = v3;
  v21 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16, v18);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
LABEL_23:
    __break(1u);
  }

  v76 = v2;
  v65 = v6;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v28 = (v25 + 63) >> 6;
  v62 = (v72 + 8);

  v29 = 0;
  v70 = xmmword_10146C6B0;
  v72 = v12;
  v30 = a1;
  v71 = v28;
  v73 = a1;
LABEL_7:
  if (v27)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v31 >= v28)
    {
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
LABEL_12:
      v32 = v74;
      sub_10000C83C(*(v30 + 48) + *(v75 + 72) * (__clz(__rbit64(v27)) | (v29 << 6)), v74, type metadata accessor for CRLBoardIdentifier);
      sub_100025668(v32, v12, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for CRLBoardIdentifierStorage(0);
      v77 = UUID.uuid.getter();
      v78 = v33;
      v79 = v34;
      v80 = v35;
      v81 = v36;
      v82 = v37;
      v83 = v38;
      v84 = v39;
      v85 = v40;
      UUID.uuid.getter();
      v41 = sub_100024DD4(&v77, 16);
      v43 = v42;
      v86 = v41;
      v87 = v42;
      if (String.count.getter() >= 1)
      {
        v44 = v63;
        static String.Encoding.utf8.getter();
        v45 = String.data(using:allowLossyConversion:)();
        v47 = v46;
        (*v62)(v44, v64);
        if (v47 >> 60 == 15)
        {
          sub_10084DC7C();
          swift_allocError();
          *v48 = 2;
          swift_willThrow();
          sub_10002640C(v86, v87);
          goto LABEL_18;
        }

        Data.append(_:)();
        sub_100025870(v45, v47);
        v41 = v86;
        v43 = v87;
      }

      v49 = v65;
      sub_10000C83C(v12, v65, type metadata accessor for CRLBoardIdentifier);
      swift_storeEnumTagMultiPayload();
      v50 = v12;
      v51 = v66;
      sub_10000C83C(v50, v66, type metadata accessor for CRLBoardIdentifier);
      v52 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v53 = swift_allocObject();
      sub_100025668(v51, v53 + v52, type metadata accessor for CRLBoardIdentifier);
      sub_100024E98(v41, v43);
      v54 = v76;
      sub_100E257D0(v49, sub_100EA313C, v53, v69, v41, v43);
      if (v54)
      {
        sub_100026028(v49, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

        sub_10002640C(v41, v43);
LABEL_18:
        v76 = 0;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v55 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v70;
        swift_getErrorValue();
        v57 = Error.localizedDescription.getter();
        v59 = v58;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v57;
        *(inited + 40) = v59;
        v60 = static os_log_type_t.error.getter();
        sub_100005404(v55, &_mh_execute_header, v60, "Failed to add shared boards deleted offline to the database with error %@", 73, 2, inited);

        swift_setDeallocating();
        sub_100005070(inited + 32);
      }

      else
      {
        v76 = 0;
        sub_100026028(v49, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

        sub_10002640C(v41, v43);
      }

      v30 = v73;
      v27 &= v27 - 1;
      v12 = v72;
      sub_100026028(v72, type metadata accessor for CRLBoardIdentifier);
      v28 = v71;
      goto LABEL_7;
    }
  }
}

uint64_t sub_100E27568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[1] == 0xE000000000000000;
  }

  if (v5)
  {
    v6 = 49;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v6 = 49;
  }

  else
  {
    v6 = 48;
  }

  sub_1000285F8(v6, 0xE100000000000000, a2);
}

uint64_t sub_100E27628(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C83C(a2, v5, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  sub_100E262B8();
  sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  return 1;
}

uint64_t sub_100E27740(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v60 = a3;
  v61 = a4;
  v66 = a1;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v9 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1005B981C(&unk_101A050F0);
  v11 = *(v64 - 8);
  v54 = *(v11 + 64);
  __chkstk_darwin(v64);
  v53 = &v41 - v12;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v52 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v14;
  __chkstk_darwin(v15);
  v49 = &v41 - v16;
  v17 = *(a2 + 56);
  v42 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v48 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue;
  v41 = (v18 + 63) >> 6;
  v47 = v11 + 16;
  v55 = v11;
  v46 = v11 + 32;
  v45 = v71;
  v44 = (v7 + 8);
  v43 = (v9 + 8);
  v65 = a2;

  for (i = 0; v20; result = )
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v52;
    v26 = v49;
    sub_10000C83C(*(v65 + 48) + *(v52 + 72) * (v24 | (v23 << 6)), v49, type metadata accessor for CRLBoardIdentifier);
    v27 = v60;
    v28 = *&v60[v48];
    v67 = type metadata accessor for CRLBoardIdentifier;
    v68 = v28;
    v29 = v50;
    sub_100025668(v26, v50, type metadata accessor for CRLBoardIdentifier);
    v30 = v55;
    v31 = v53;
    v32 = v64;
    (*(v55 + 16))(v53, v66, v64);
    v33 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v34 = (v51 + *(v30 + 80) + v33) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v27;
    sub_100025668(v29, v35 + v33, v67);
    (*(v30 + 32))(v35 + v34, v31, v32);
    v71[2] = v62;
    v71[3] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    v71[0] = sub_100007638;
    v71[1] = v63;
    v36 = _Block_copy(aBlock);
    v37 = v27;
    v38 = v56;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v40 = v58;
    v39 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);
    (*v44)(v40, v39);
    (*v43)(v38, v57);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v41)
    {

      return CheckedContinuation.resume(returning:)();
    }

    v20 = *(v42 + 8 * v23);
    ++i;
    if (v20)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E27D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  return sub_10002FA9C(a4, v5);
}

uint64_t sub_100E27F08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A050F0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v23 - v16;
  v23[1] = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v14 + 16))(v23 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a2;
  *(v19 + 4) = v23[0];
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_100EA2350;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5190;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v9, v7);
  (*(v24 + 8))(v12, v25);
}

uint64_t sub_100E282C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1009DF770(a1);
  v14[51] = v6;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  sub_10002FA9C(sub_100EA23C4, v14);
  if (qword_1019F2160 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlZoneRefetch;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  *(inited + 32) = a3;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v12, "Succeeded addZonesToRefetch to the database with version: %d, zones: %@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2863C(unint64_t a1, uint64_t a2)
{
  v41 = a2;
  v43 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v43);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v2;
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    Set.Iterator.init(_cocoa:)();
    a1 = v47[1];
    v12 = v47[2];
    v13 = v47[3];
    v14 = v47[4];
    v15 = v47[5];
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = (a1 + 56);
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = (v18 & *(a1 + 56));

    v14 = 0;
  }

  v19 = v44;
  v39[1] = v13;
  v20 = (v13 + 64) >> 6;
  v40 = v12;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    return sub_100035F90();
  }

  v46 = v21;
  sub_100006370(0, &qword_1019F69D0);
  swift_dynamicCast();
  v22 = v47[0];
  v23 = v14;
  v24 = v15;
  if (!v47[0])
  {
    return sub_100035F90();
  }

  while (1)
  {
    v39[3] = v14;
    *v19 = v22;
    swift_storeEnumTagMultiPayload();
    v27 = objc_opt_self();
    v47[0] = 0;
    v28 = v22;
    v29 = [v27 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:v47];
    v30 = v47[0];
    if (!v29)
    {
      v38 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100035F90();
      return sub_100026028(v19, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    v39[2] = v15;
    v31 = a1;
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    sub_100024E98(v32, v34);
    v36 = v45;
    sub_100E257D0(v19, sub_100EA23F4, v35, v42, v32, v34);
    sub_100026028(v19, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    v45 = v36;
    if (v36)
    {
      break;
    }

    sub_10002640C(v32, v34);
    v14 = v23;
    v15 = v24;
    v19 = v44;
    a1 = v31;
    v12 = v40;
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v25 = v14;
    v26 = v15;
    v23 = v14;
    if (!v15)
    {
      while (1)
      {
        v23 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          return sub_100035F90();
        }

        v26 = v12[v23];
        ++v25;
        if (v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

LABEL_16:
    v24 = (v26 - 1) & v26;
    v22 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v22)
    {
      return sub_100035F90();
    }
  }

  sub_100035F90();
  return sub_10002640C(v32, v34);
}

uint64_t sub_100E28CF4(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v4[5] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;

  return _swift_task_switch(sub_100E28DE4, 0, 0);
}

uint64_t sub_100E28DE4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100E28EE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001DLL, 0x80000001015A8E80, sub_100EA4C28, v4, &type metadata for () + 8);
}

uint64_t sub_100E28EE8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100E29088;
  }

  else
  {

    v2 = sub_100E2900C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2900C()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E29088()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100E29244(uint64_t a1, void *a2, char *a3)
{
  v31 = a2;
  v32 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A050F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  *(&v30 - v16) = a2;
  v17 = &v30 - v16;
  v34 = &v30 - v16;
  swift_storeEnumTagMultiPayload();
  v33 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v17, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 16))(v10, v32, v7);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v8 + 80) + v19 + 8) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  sub_100025668(v14, v21 + v18, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  v22 = v31;
  *(v21 + v19) = v31;
  (*(v8 + 32))(v21 + v20, v10, v7);
  aBlock[4] = sub_100EA4A50;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A61D0;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  v25 = a3;
  v26 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v27 = v36;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
  sub_100026028(v34, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100E29744(uint64_t a1, uint64_t a2, void *a3)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_10002FA9C(sub_100EA4B3C, v12);
  if (qword_1019F2160 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlZoneRefetch;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v6 = [a3 zoneName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v10, "Succeeded removeZoneToRefetch to the database with zone: %@", 59, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E29BCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E29C58, 0, 0);
}

uint64_t sub_100E29C58()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E29D44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001015A8DC0, sub_100EA4A48, v1, &type metadata for () + 8);
}

uint64_t sub_100E29D44()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100EA61F4;
  }

  else
  {

    v2 = sub_100EA61BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E29E60(uint64_t a1, uint64_t a2, char *a3)
{
  v42 = a1;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v40 - 8);
  v41 = *(v7 + 64);
  __chkstk_darwin(v40);
  v9 = &v36 - v8;
  v37 = &v36 - v8;
  v10 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = (&v36 - v16);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v38 = a2;
  *(&v36 - v19) = a2;
  v45 = &v36 - v19;
  swift_storeEnumTagMultiPayload();
  *v17 = a2;
  v44 = v17;
  swift_storeEnumTagMultiPayload();
  v43 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v20, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_10000C83C(v17, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  v21 = v9;
  v22 = v40;
  (*(v7 + 16))(v21, v42, v40);
  v23 = *(v39 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = (v11 + v23 + v24) & ~v23;
  v26 = (v11 + *(v7 + 80) + v25) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 16) = a3;
  *(v27 + 24) = v28;
  sub_100025668(v14, v27 + v24, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_100025668(v36, v27 + v25, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v7 + 32))(v27 + v26, v37, v22);
  aBlock[4] = sub_100EA483C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A6108;
  v29 = _Block_copy(aBlock);
  v30 = v28;
  v31 = a3;
  v32 = v46;
  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v33 = v47;
  v34 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v51 + 8))(v33, v34);
  (*(v48 + 8))(v32, v50);
  sub_100026028(v44, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  sub_100026028(v45, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100E2A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_10002FA9C(sub_100EA4928, v5);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2A5C0(uint64_t a1, void *a2)
{
  v4 = sub_10001FF1C();
  v5 = sub_100034E18(v4);
  if (!v2)
  {
    v6 = sub_10079DB58(a2, v5);

    if (v6)
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlZoneRefetch;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v9 = [a2 zoneName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v10;
      v13 = v7;
      *(inited + 40) = v12;
      v14 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v14, "Removing zone to refetch after successful refetch: %@", 53, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_100E262B8();
      v15 = sub_100DE4F8C();
    }

    else
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      v13 = static OS_os_log.crlZoneRefetch;
      sub_1005B981C(&qword_1019F54E0);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_10146C6B0;
      v17 = [a2 zoneName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_1000053B0();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      v21 = static os_log_type_t.default.getter();
      sub_100005404(v13, &_mh_execute_header, v21, "Not removing zone to refetch, since it still needs to be refetched: %@", 70, 2, v16);
      swift_setDeallocating();
      sub_100005070(v16 + 32);
      v15 = sub_100DE4F8C();
    }

    v22 = sub_10079DB58(a2, v15);

    if (v22)
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      sub_1005B981C(&qword_1019F54E0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_10146C6B0;
      v24 = [a2 zoneName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_1000053B0();
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      v28 = static os_log_type_t.default.getter();
      sub_100005404(v13, &_mh_execute_header, v28, "Removing unsupported zone to refetch after successful refetch: %@", 65, 2, v23);
      swift_setDeallocating();
      sub_100005070(v23 + 32);
      sub_100E262B8();
    }

    else
    {
      if (qword_1019F2160 != -1)
      {
        swift_once();
      }

      sub_1005B981C(&qword_1019F54E0);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_10146C6B0;
      v30 = [a2 zoneName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_1000053B0();
      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v34 = static os_log_type_t.default.getter();
      sub_100005404(v13, &_mh_execute_header, v34, "Not removing unsupported zone to refetch (it may not exist, or maybe it still needs to be refetched): %@", 104, 2, v29);
      swift_setDeallocating();
      sub_100005070(v29 + 32);
    }
  }

  return 1;
}

uint64_t sub_100E2ABD8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E2AC64, 0, 0);
}

uint64_t sub_100E2AC64()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E2AD50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD00000000000002FLL, 0x8000000101590760, sub_100BF5AEC, v1, &type metadata for () + 8);
}

uint64_t sub_100E2AD50()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100E2AEF0;
  }

  else
  {

    v2 = sub_100E2AE6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2AE6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100E2AEF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100E2AFA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a4;
  v26 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&unk_101A050F0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v27 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v16 + 16))(&v25 - v18, a1, v15, v17);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v16 + 32))(v21 + v20, v19, v15);
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v11, v9);
  (*(v29 + 8))(v14, v30);
}

uint64_t sub_100E2B348(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA475C, v3);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2B4E8(unint64_t a1)
{
  v42 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v42);
  v4 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    Set.Iterator.init(_cocoa:)();
    a1 = v46[1];
    v12 = v46[2];
    v13 = v46[3];
    v14 = v46[4];
    v15 = v46[5];
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = (a1 + 56);
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = (v19 & *(a1 + 56));

    v13 = v17;
    v14 = 0;
  }

  v39[0] = v13;
  v20 = (v13 + 64) >> 6;
  v40 = v12;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    return sub_100035F90();
  }

  v45 = v21;
  sub_100006370(0, &qword_1019F69D0);
  swift_dynamicCast();
  v22 = v46[0];
  v23 = v14;
  v24 = v15;
  if (!v46[0])
  {
    return sub_100035F90();
  }

  while (1)
  {
    v39[2] = v14;
    *v4 = v22;
    swift_storeEnumTagMultiPayload();
    v27 = objc_opt_self();
    v46[0] = 0;
    v28 = v22;
    v29 = [v27 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:{v46, v39[0]}];
    v30 = v46[0];
    if (!v29)
    {
      v38 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100035F90();
      return sub_100026028(v4, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    v39[1] = v15;
    v43 = v28;
    v31 = a1;
    v32 = v4;
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    sub_100024E98(v33, v35);
    v36 = v44;
    sub_100E257D0(v32, sub_100E2BF30, 0, v41, v33, v35);
    sub_100026028(v32, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

    v44 = v36;
    if (v36)
    {
      break;
    }

    sub_10002640C(v33, v35);
    v14 = v23;
    v15 = v24;
    v4 = v32;
    a1 = v31;
    v12 = v40;
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v25 = v14;
    v26 = v15;
    v23 = v14;
    if (!v15)
    {
      while (1)
      {
        v23 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          return sub_100035F90();
        }

        v26 = v12[v23];
        ++v25;
        if (v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

LABEL_16:
    v24 = (v26 - 1) & v26;
    v22 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v22)
    {
      return sub_100035F90();
    }
  }

  sub_100035F90();
  return sub_10002640C(v33, v35);
}

uint64_t sub_100E2BB74(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v3[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a3;

  return _swift_task_switch(sub_100E2BC64, 0, 0);
}

uint64_t sub_100E2BC64()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100E2BD5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x80000001015A8B80, sub_100EA462C, v3, &type metadata for () + 8);
}

uint64_t sub_100E2BD5C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100E2BE80;
  }

  else
  {

    v2 = sub_100EA630C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E2BE80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100E2C058(uint64_t a1, void *a2, char *a3)
{
  v28 = a2;
  v29 = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A050F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  *(&v28 - v16) = a2;
  swift_storeEnumTagMultiPayload();
  v30 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  sub_10000C83C(v17, v14, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 16))(v10, v29, v7);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  sub_100025668(v14, v20 + v18, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  (*(v8 + 32))(v20 + v19, v10, v7);
  aBlock[4] = sub_100EA453C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5F78;
  v21 = _Block_copy(aBlock);
  v22 = v28;
  v23 = a3;
  v24 = v31;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v25 = v32;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v36 + 8))(v25, v26);
  (*(v33 + 8))(v24, v35);
  sub_100026028(v17, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100E2C540(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_10002FA9C(sub_100EA6364, v3);
  sub_1005B981C(&unk_101A050F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2C868(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100E2C8F4, 0, 0);
}

uint64_t sub_100E2C8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100E29D44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000022, 0x80000001015A8B00, sub_100EA4534, v1, &type metadata for () + 8);
}

uint64_t sub_100E2C9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  result = sub_10002FA9C(sub_100EA61C0, v8);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_100E2CA3C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v5 = v3;
  v59 = a2;
  v60 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v10 = v11;
  v12 = *(v8 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v12;
  v12(v10);
  v13 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v63 = *(v8 + 8);
  v63(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v58 = a3;
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v14._countAndFlagsBits = 0xD000000000000016;
  v14._object = 0x80000001015A5660;
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
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6F69736E65747865;
  v19._object = 0xE90000000000006ELL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x6E6F7473626D6F74;
  v21._object = 0xEE00657461645F65;
  String.append(_:)(v21);
  v22._object = 0x80000001015A5680;
  v22._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v22);
  v23 = v66;
  v24 = v67;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = sub_10001CC04(v25, v23, v24);

  if (v4)
  {
    return result;
  }

  v57 = v5;
  v28 = UUID.crl_data()();
  v30 = v29;
  v31 = *(*(v26 + 16) + 32);
  *v10 = v31;
  v62(v10, v61, v7);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v63(v10, v7);
  if ((v31 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100DCCAB4(v28, v30, v26, 1);
  sub_10002640C(v28, v30);
  if (!v58)
  {
    goto LABEL_9;
  }

  v33 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v33 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    sub_1000285F8(v59, v58, 2);
  }

  else
  {
LABEL_9:
    v34 = *(*(v26 + 16) + 32);
    *v10 = v34;
    v62(v10, v61, v7);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v63(v10, v7);
    if ((v34 & 1) == 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    swift_beginAccess();
    sqlite3_bind_null(*(v26 + 24), 2);
  }

  v36 = *(*(v26 + 16) + 32);
  *v10 = v36;
  v62(v10, v61, v7);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v63(v10, v7);
  if ((v36 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = *(v26 + 16);

  v39 = sub_10001CEC4(v38, v26);

  if (v39 == 101)
  {
    v40 = v57;
    v56 = *&v57[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v56 + 16));
    v39 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v41 = *&v40[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v41)
    {
      v42 = *&v40[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      goto LABEL_18;
    }

LABEL_17:
    v48 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v55 = v40;
    v49 = sub_10001F1A0(v55);

    v55 = *&v40[v39];
    *&v40[v39] = v49;
    v42 = v49;

    v41 = 0;
LABEL_18:
    v50 = *(v56 + 16);
    v51 = v41;
    os_unfair_lock_unlock(v50);
    sub_10108BDC8(v60, v59, v58);

    v52 = *(*(v26 + 16) + 32);
    *v10 = v52;
    v62(v10, v61, v7);
    v53 = v52;
    LOBYTE(v52) = _dispatchPreconditionTest(_:)();
    v63(v10, v7);
    if (v52)
    {
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v64 = 0xD00000000000002ALL;
  v65 = 0x80000001015A56A0;
  type metadata accessor for UUID();
  sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID);
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44 = v64;
  v40 = v65;
  sub_10089C7D0();
  swift_allocError();
  *v45 = v39;
  *(v45 + 8) = v44;
  *(v45 + 16) = v40;
  swift_willThrow();
  v46 = *(*(v26 + 16) + 32);
  *v10 = v46;
  v62(v10, v61, v7);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v63(v10, v7);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  swift_beginAccess();
  v54 = *(v26 + 24);
  if (v54)
  {
    sqlite3_finalize(v54);
    *(v26 + 24) = 0;
  }
}

uint64_t sub_100E2D30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&v5[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v20 = v28;
  *v19 = v27;
  v19[1] = v20;
  v21 = (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  aBlock[4] = sub_100EA2730;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A54B0;
  v23 = _Block_copy(aBlock);

  v24 = v5;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v35 + 8))(v8, v25);
  (*(v32 + 8))(v10, v34);
}

uint64_t sub_100E2D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  sub_10002FA9C(sub_100EA27D4, v7);
  return a5(0, 0);
}

uint64_t sub_100E2D894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100E2D8C8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100E2D8C8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v53 = v3 + 104;
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v51 = v11;
  v11(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v54 = v7;
  v50 = v8;
  v52 = v10;
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v55 = 0x205443454C4553;
  v56 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x737465737361;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x75755F7465737361;
  v16._object = 0xEA00000000006469;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v55;
  v19 = v56;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (!v1)
  {
    v28 = v21;

    v29 = UUID.crl_data()();
    v49 = v30;
    v31 = *(*(v28 + 16) + 32);
    *v5 = v31;
    v32 = v50;
    v50(v5, v54, v2);
    v33 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v34 = v51;
    v51(v5, v2);
    if (v31)
    {

      v35 = v49;
      sub_100DCCAB4(v29, v49, v28, 1);
      v48[1] = 0;
      sub_10002640C(v29, v35);
      v36 = *(*(v28 + 16) + 32);
      *v5 = v36;
      v32(v5, v54, v2);
      v37 = v36;
      LOBYTE(v36) = _dispatchPreconditionTest(_:)();
      v34(v5, v2);
      if (v36)
      {
        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = 1;
        inited[2] = v28;
        inited[3] = 0;

        v39 = sub_10001E1D0();
        if (!v39)
        {

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v46 = *(*(v28 + 16) + 32);
          *v5 = v46;
          v32(v5, v54, v2);
          v47 = v46;
          LOBYTE(v46) = _dispatchPreconditionTest(_:)();
          v34(v5, v2);
          if (v46)
          {
            v43 = (v28 + 24);
            swift_beginAccess();
            v24 = 0;
            v44 = *(v28 + 24);
            if (!v44)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }

LABEL_21:
          __break(1u);
        }

        v24 = sub_100E9D20C(v39, 0);

        swift_setDeallocating();
        sub_10001E364(inited[3], inited[4], inited[5]);
        v40 = *(*(v28 + 16) + 32);
        *v5 = v40;
        v32(v5, v54, v2);
        v41 = v40;
        v42 = _dispatchPreconditionTest(_:)();
        v34(v5, v2);
        if (v42)
        {
          v43 = (v28 + 24);
          swift_beginAccess();
          v44 = *(v28 + 24);
          if (!v44)
          {
LABEL_11:

            return v24;
          }

LABEL_10:
          sqlite3_finalize(v44);
          *v43 = 0;
          goto LABEL_11;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1019F2258 != -1)
  {
LABEL_17:
    swift_once();
  }

  v22 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v24 = Error.localizedDescription.getter();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000053B0();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v27, "Failed to fetch an asset with error %@", 38, 2, v23);
  swift_setDeallocating();
  sub_100005070(v23 + 32);
  swift_willThrow();
  return v24;
}

uint64_t sub_100E2DF64(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A21E58);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v11 + 16))(v13, v23, v10);
  (*(v7 + 16))(v9, v24, v6);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v14, v13, v10);
  (*(v7 + 32))(v16 + v15, v9, v6);
  aBlock[4] = sub_100EA2804;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A5500;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = v25;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v31 + 8))(v20, v21);
  (*(v28 + 8))(v19, v30);
}

uint64_t sub_100E2E3F0()
{
  sub_100E2D8C8();
  sub_1005B981C(&qword_101A21E58);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2E488(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v30 = a1;
  v31 = a3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A21E58);
  v29 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *&a2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  (*(v13 + 16))(v16, v31, v12, v15);
  (*(v9 + 16))(v11, v30, v8);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  (*(v9 + 32))(v20 + v19, v11, v29);
  aBlock[4] = sub_100EA55F0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A69C8;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  v25 = v32;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v26 = v36;
  v27 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v40 + 8))(v26, v27);
  (*(v37 + 8))(v25, v39);
}

uint64_t sub_100E2E93C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  sub_100E2E9DC(a2, a3, a4);
  sub_1005B981C(&qword_101A21E58);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100E2E9DC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  result = sub_100E2D8C8();
  if (v3)
  {
    return result;
  }

  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
    if (!v8)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_22;
    }

    if (!a3 || (*(result + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) == a2 ? (v9 = v8 == a3) : (v9 = 0), !v9 && (v10 = result, v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = v10, (v11 & 1) == 0)))
    {
LABEL_22:
      v65 = result;
      v63 = objc_opt_self();
      v16 = [v63 _atomicIncrementAssertCount];
      v66 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v66);
      StaticString.description.getter();
      v17 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v18 = String._bridgeToObjectiveC()();

      v19 = [v18 lastPathComponent];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v16;
      v25 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v25;
      v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v26;
      *(inited + 72) = v17;
      *(inited + 136) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 112) = v20;
      *(inited + 120) = v22;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v27;
      *(inited + 152) = 7459;
      v28 = v66;
      *(inited + 216) = v25;
      *(inited + 224) = v26;
      *(inited + 192) = v28;
      v29 = v17;
      v30 = v28;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v32, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists!", 77, 2, _swiftEmptyArrayStorage);

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

      [v63 handleFailureInFunction:v35 file:v36 lineNumber:7459 isFatal:0 format:v37 args:v34];
LABEL_25:

      return v65;
    }
  }

  else
  {
    sub_100E2CA3C(a1, a2, a3);
    result = sub_100E2D8C8();
    if (result)
    {
      v12 = *(result + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
      if (v12)
      {
        if (a3)
        {
          if (*(result + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension) == a2 && v12 == a3)
          {
            return result;
          }

          v14 = result;
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = v14;
          if (v15)
          {
            return result;
          }
        }
      }

      else if (!a3)
      {
        return result;
      }

      v65 = result;
      v64 = objc_opt_self();
      v44 = [v64 _atomicIncrementAssertCount];
      v66 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v66);
      StaticString.description.getter();
      v45 = String._bridgeToObjectiveC()();

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
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_10146CA70;
      *(v52 + 56) = &type metadata for Int32;
      *(v52 + 64) = &protocol witness table for Int32;
      *(v52 + 32) = v44;
      v53 = sub_100006370(0, &qword_1019F4D30);
      *(v52 + 96) = v53;
      v54 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v52 + 104) = v54;
      *(v52 + 72) = v45;
      *(v52 + 136) = &type metadata for String;
      v55 = sub_1000053B0();
      *(v52 + 112) = v48;
      *(v52 + 120) = v50;
      *(v52 + 176) = &type metadata for UInt;
      *(v52 + 184) = &protocol witness table for UInt;
      *(v52 + 144) = v55;
      *(v52 + 152) = 7466;
      v56 = v66;
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v56;
      v57 = v45;
      v58 = v56;
      v59 = static os_log_type_t.error.getter();
      sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v60 = static os_log_type_t.error.getter();
      sub_100005404(v51, &_mh_execute_header, v60, "Mismatching file extensions for asset inside of ensureAssetDatabaseRowExists (even after just creating it)!", 107, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v61 = swift_allocObject();
      v61[2] = 8;
      v61[3] = 0;
      v61[4] = 0;
      v61[5] = 0;
      v62 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v64 handleFailureInFunction:v35 file:v36 lineNumber:7466 isFatal:0 format:v37 args:v62];
      goto LABEL_25;
    }

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146C6B0;
    v40 = UUID.uuidString.getter();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_1000053B0();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v43, "Failed to _ensureAssetDatabaseRowExists for asset: %{public}@", 61, 2, v39);
    swift_setDeallocating();
    sub_100005070(v39 + 32);
    return 0;
  }

  return result;
}

BOOL sub_100E2F2E8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v134 = &v115 - v6;
  v135 = type metadata accessor for UUID();
  v130 = *(v135 - 8);
  v7 = __chkstk_darwin(v135);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v115 - v11;
  v13 = __chkstk_darwin(v10);
  v120 = &v115 - v14;
  v15 = __chkstk_darwin(v13);
  v133 = &v115 - v16;
  __chkstk_darwin(v15);
  v125 = (&v115 - v17);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v23 = *(v19 + 104);
  v127 = enum case for DispatchPredicate.onQueue(_:);
  v128 = v19 + 104;
  v132 = v23;
  v23(v21);
  v24 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v129 = v19 + 8;
  v136 = v25;
  v25(v21, v18);
  if ((v22 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = *(a1 + 16);
  if (!v26)
  {
    return 1;
  }

  v116 = v12;
  v117 = v9;
  v126 = a1;
  v147 = sub_1000341B8(0x3F, 0xE100000000000000, v26);
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v147 = 0;
  v148 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v147 = 0xD000000000000034;
  v148 = 0x80000001015AB5B0;
  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 10537;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = v147;
  v33 = v148;
  v137 = &_swiftEmptySetSingleton;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = sub_10001CC04(v34, v32, v33);
  if (v2)
  {

    if (qword_1019F2258 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_5;
  }

  v43 = v35;
  v124 = 0;

  v44 = v126;
  v45 = v126 + 56;
  v46 = 1 << *(v126 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v126 + 56);

  swift_beginAccess();
  v131 = 0;
  v49 = 0;
  v50 = (v46 + 63) >> 6;
  v123 = (v130 + 16);
  v122 = (v130 + 32);
  v121 = (v130 + 8);
  v119 = v45;
  v118 = v50;
LABEL_10:
  v51 = v136;
  if (v48)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v52 >= v50)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v49;
    if (v48)
    {
      v49 = v52;
LABEL_15:
      v53 = *(v44 + 48);
      v54 = v130;
      v55 = v125;
      v56 = v135;
      (*(v130 + 16))(v125, v53 + *(v130 + 72) * (__clz(__rbit64(v48)) | (v49 << 6)), v135);
      (*(v54 + 32))(v133, v55, v56);
      v138 = UUID.uuid.getter();
      v139 = v57;
      v140 = v58;
      v141 = v59;
      v142 = v60;
      v143 = v61;
      v144 = v62;
      v145 = v63;
      v146 = v64;
      UUID.uuid.getter();
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      v65 = *(*(v43 + 16) + 32);
      *v21 = v65;
      v132(v21, v127, v18);
      v66 = v65;
      LOBYTE(v65) = _dispatchPreconditionTest(_:)();
      v51(v21, v18);
      if (v65)
      {
        v67 = __DataStorage._bytes.getter();
        if (v67)
        {
          v68 = v67;
          v69 = __DataStorage._offset.getter();
          if (!__OFSUB__(0, v69))
          {
            v70 = (v68 - v69);
            goto LABEL_20;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          swift_once();
LABEL_5:
          v36 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          swift_getErrorValue();
          v38 = Error.localizedDescription.getter();
          v40 = v39;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v38;
          *(inited + 40) = v40;
          v41 = static os_log_type_t.error.getter();
          sub_100005404(v36, &_mh_execute_header, v41, "Failed to check asset UUIDs exist with error %@", 47, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          swift_willThrow();
          return v42;
        }

        v70 = 0;
LABEL_20:
        v71 = __DataStorage._length.getter();
        v72 = v131;
        if (v131 != 0x7FFFFFFF)
        {
          v73 = 16;
          if (v71 < 16)
          {
            v73 = v71;
          }

          if (v70)
          {
            v74 = v73;
          }

          else
          {
            v74 = 0;
          }

          if (v74 >= 0xFFFFFFFF80000000)
          {
            v75 = *(v43 + 24);
            if (qword_1019F17C8 != -1)
            {
              swift_once();
              v72 = v131;
            }

            v48 &= v48 - 1;
            v131 = (v72 + 1);
            sqlite3_bind_blob(v75, v72 + 1, v70, v74, qword_101AD69D0);

            (*v121)(v133, v135);
            v44 = v126;
            v45 = v119;
            v50 = v118;
            goto LABEL_10;
          }

LABEL_61:
          __break(1u);
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v76 = *(*(v43 + 16) + 32);
  *v21 = v76;
  v77 = v127;
  v132(v21, v127, v18);
  v78 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v51(v21, v18);
  if ((v76 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for SQLiteRowIterator();
  v79 = swift_initStackObject();
  v79[3] = 0;
  v131 = v79 + 3;
  v79[4] = 0;
  v125 = v79 + 4;
  v79[5] = 1;
  v133 = v79;
  v79[2] = v43;

  swift_beginAccess();
  v80 = *(*(v43 + 16) + 32);
  *v21 = v80;
  v81 = v132;
  v132(v21, v77, v18);
  v82 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  v51(v21, v18);
  if ((v80 & 1) == 0)
  {
    goto LABEL_54;
  }

  v130 += 56;
  while (1)
  {
    v86 = v131;
    *v131 = 0;
    v86[1] = 0;
    *(v133 + 5) = 1;
    v87 = sqlite3_step(*(v43 + 24));
    if (v87 != 100)
    {
      break;
    }

    v88 = *(*(v43 + 16) + 32);
    *v21 = v88;
    v81(v21, v77, v18);

    v89 = v88;
    LOBYTE(v88) = _dispatchPreconditionTest(_:)();
    v90 = v136;
    v136(v21, v18);
    if ((v88 & 1) == 0)
    {
      goto LABEL_55;
    }

    v91 = *(*(v43 + 16) + 32);
    *v21 = v91;
    v81(v21, v77, v18);
    v92 = v91;
    LOBYTE(v91) = _dispatchPreconditionTest(_:)();
    v90(v21, v18);
    if ((v91 & 1) == 0)
    {
      goto LABEL_56;
    }

    v93 = *(*(v43 + 16) + 32);
    *v21 = v93;
    v81(v21, v77, v18);
    v94 = v93;
    LOBYTE(v93) = _dispatchPreconditionTest(_:)();
    v90(v21, v18);
    if ((v93 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (sqlite3_column_type(*(v43 + 24), 0) == 5 || (v95 = sqlite3_column_blob(*(v43 + 24), 0)) == 0)
    {
      v83 = v134;
      (*v130)(v134, 1, 1, v135);
    }

    else
    {
      v96 = v95;
      v97 = sqlite3_column_bytes(*(v43 + 24), 0);
      v98 = sub_100024DD4(v96, v97);
      v83 = v134;
      v99 = v124;
      UUID.init(crl_data:)(v98, v100);
      if (!v99)
      {
        v124 = 0;
        v101 = v135;
        (*v130)(v83, 0, 1, v135);
        v102 = v120;
        (*v122)(v120, v83, v101);
        v103 = v117;
        (*v123)(v117, v102, v101);
        v104 = v116;
        sub_100E6AF38(v116, v103);

        v105 = *v121;
        v106 = v104;
        v81 = v132;
        (*v121)(v106, v101);
        v107 = v102;
        v77 = v127;
        v105(v107, v101);
        goto LABEL_35;
      }

      (*v130)(v83, 1, 1, v135);
      v124 = 0;
    }

    sub_10000CAAC(v83, &qword_1019F6990);
LABEL_35:
    v84 = *(*(v43 + 16) + 32);
    *v21 = v84;
    v81(v21, v77, v18);
    v85 = v84;
    LOBYTE(v84) = _dispatchPreconditionTest(_:)();
    v136(v21, v18);
    if ((v84 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (v87 && v87 != 101)
  {
    *v131 = v87;
    v108 = v125;
    *v125 = 0;
    v108[1] = 0;
  }

  v109 = *(*(v43 + 16) + 32);
  *v21 = v109;
  v132(v21, v77, v18);
  v110 = v109;
  LOBYTE(v109) = _dispatchPreconditionTest(_:)();
  v136(v21, v18);
  if ((v109 & 1) == 0)
  {
LABEL_65:
    __break(1u);
  }

  v111 = *(v43 + 24);
  v112 = v126;
  if (v111)
  {
    sqlite3_finalize(v111);
    *(v43 + 24) = 0;
  }

  v113 = v137[2];

  return v113 == *(v112 + 16);
}

void *sub_100E301C0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v131 = &v127 - v4;
  v143 = type metadata accessor for UUID();
  v129 = *(v143 - 8);
  __chkstk_darwin(v143);
  v130 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = (&v127 - v7);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = v9 + 104;
  v139 = *(v9 + 104);
  v139(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v16 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v18 = *(v9 + 8);
  v17 = v9 + 8;
  v140 = v12;
  v144 = v18;
  v18(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v145 = v17;
  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (!v19)
  {
    return v20;
  }

  v142 = v14;
  v138 = v8;
  v21 = 0;
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  v146 = v19;
  v22 = v19 - 1;
  do
  {
    v23._countAndFlagsBits = 63;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    if (v21 < v22)
    {
      v24._countAndFlagsBits = 8236;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
    }

    v21 = (v21 + 1);
  }

  while (v146 != v21);
  v141 = v15;
  v158 = 0;
  v159 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v158 = 0x205443454C4553;
  v159 = 0xE700000000000000;
  v25._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x204D4F524620;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x737465737361;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x2820455245485720;
  v28._object = 0xE800000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x75755F7465737361;
  v29._object = 0xEA00000000006469;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x28204E4920;
  v30._object = 0xE500000000000000;
  String.append(_:)(v30);
  String.append(_:)(v148);

  v31._countAndFlagsBits = 10537;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = v158;
  v33 = v159;
  v147 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = v132;
  v36 = sub_10001CC04(v34, v32, v33);
  if (v35)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v20 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = v39;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v38;
      *(inited + 40) = v40;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v41, "Failed to fetch assets with error %@", 36, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v20;
    }

LABEL_71:
    swift_once();
    goto LABEL_9;
  }

  v42 = v36;
  v132 = 0;

  v43 = v129;
  v44 = a1 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  swift_beginAccess();
  v134 = *(v43 + 16);
  v135 = (v43 + 16);
  v136 = (v43 + 8);
  v45 = 1;
  v133 = *(v43 + 72);
  v46 = 0x7FFFFFFFLL;
  v47 = v143;
  v48 = v137;
  do
  {
    (v134)(v48, v44, v47);
    v149 = UUID.uuid.getter();
    v150 = v49;
    v151 = v50;
    v152 = v51;
    v153 = v52;
    v154 = v53;
    v155 = v54;
    v156 = v55;
    v157 = v56;
    UUID.uuid.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    v57 = v42;
    v58 = *(*(v42 + 16) + 32);
    v59 = v140;
    *v140 = v58;
    v60 = v138;
    (v139)(v59, v142, v138);
    v61 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v144(v59, v60);
    if ((v58 & 1) == 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      __break(1u);
      goto LABEL_65;
    }

    v62 = __DataStorage._bytes.getter();
    if (v62)
    {
      v63 = v62;
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v64))
      {
        goto LABEL_66;
      }

      v65 = v57;
      v66 = (v63 - v64);
      v67 = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v66 = 0;
      v65 = v57;
      v67 = __DataStorage._length.getter();
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    v68 = 16;
    if (v67 < 16)
    {
      v68 = v67;
    }

    if (v66)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    if (v69 < 0xFFFFFFFF80000000)
    {
      goto LABEL_64;
    }

    v70 = *(v65 + 24);
    if (qword_1019F17C8 != -1)
    {
      swift_once();
    }

    sqlite3_bind_blob(v70, v45, v66, v69, qword_101AD69D0);

    v48 = v137;
    v71 = *v136;
    v47 = v143;
    (*v136)(v137, v143);
    --v46;
    ++v45;
    v44 += v133;
    v146 = (v146 - 1);
    v42 = v57;
  }

  while (v146);
  v133 = v71;
  v72 = *(*(v57 + 16) + 32);
  v73 = v140;
  *v140 = v72;
  v74 = v142;
  v76 = v138;
  v75 = v139;
  (v139)(v73);
  v77 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  v144(v73, v76);
  if ((v72 & 1) == 0)
  {
    goto LABEL_74;
  }

  type metadata accessor for SQLiteRowIterator();
  v78 = swift_initStackObject();
  v78[3] = 0;
  v137 = v78 + 3;
  v78[4] = 0;
  v127 = v78 + 4;
  v78[5] = 1;
  v146 = v78;
  v78[2] = v42;

  swift_beginAccess();
  v79 = *(*(v42 + 16) + 32);
  *v73 = v79;
  v75(v73, v74, v76);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v144(v73, v76);
  if ((v79 & 1) == 0)
  {
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
    goto LABEL_70;
  }

  v81 = v73;
  v82 = v74;
  v135 = (v129 + 56);
  v128 = _swiftEmptyArrayStorage;
  v134 = (v129 + 32);
  while (1)
  {
    v83 = v137;
    *v137 = 0;
    v83[1] = 0;
    v146[5] = 1;
    v84 = sqlite3_step(*(v42 + 24));
    if (v84 != 100)
    {
      break;
    }

    v85 = *(*(v42 + 16) + 32);
    *v81 = v85;
    v75(v81, v82, v76);
    swift_retain_n();
    v86 = v85;
    LOBYTE(v85) = _dispatchPreconditionTest(_:)();
    v87 = v144;
    v144(v81, v76);
    if ((v85 & 1) == 0)
    {
      goto LABEL_67;
    }

    v88 = *(*(v42 + 16) + 32);
    *v81 = v88;
    v75(v81, v82, v76);
    v89 = v88;
    LOBYTE(v88) = _dispatchPreconditionTest(_:)();
    v87(v81, v76);
    if ((v88 & 1) == 0)
    {
      goto LABEL_68;
    }

    v90 = *(*(v42 + 16) + 32);
    *v81 = v90;
    v75(v81, v82, v76);
    v91 = v90;
    LOBYTE(v90) = _dispatchPreconditionTest(_:)();
    v87(v81, v76);
    if ((v90 & 1) == 0)
    {
      goto LABEL_69;
    }

    if (sqlite3_column_type(*(v42 + 24), 0) == 5 || (v92 = sqlite3_column_blob(*(v42 + 24), 0)) == 0)
    {
      v97 = v131;
      (*v135)(v131, 1, 1, v143);

      v81 = v140;
      v99 = v142;
      v100 = v139;
      goto LABEL_38;
    }

    v93 = v92;
    v94 = sqlite3_column_bytes(*(v42 + 24), 0);
    v95 = sub_100024DD4(v93, v94);
    v97 = v131;
    v96 = v132;
    UUID.init(crl_data:)(v95, v98);
    v81 = v140;
    v99 = v142;
    v100 = v139;
    if (v96)
    {

      (*v135)(v97, 1, 1, v143);
      v132 = 0;
LABEL_38:
      sub_10000CAAC(v97, &qword_1019F6990);
      v75 = v100;
      v82 = v99;
      goto LABEL_39;
    }

    v132 = 0;
    v107 = v143;
    (*v135)(v97, 0, 1, v143);
    v108 = *v134;
    (*v134)(v130, v97, v107);
    v109 = *(*(v42 + 16) + 32);
    *v81 = v109;
    v100(v81, v142, v76);
    v110 = v109;
    v111 = _dispatchPreconditionTest(_:)();
    v144(v81, v76);
    if ((v111 & 1) == 0)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    v75 = v100;
    if (sqlite3_column_type(*(v42 + 24), 1) == 5)
    {
      v112 = v108;
      v129 = 0;
      v113 = 0;
      v82 = v142;
    }

    else
    {
      v114 = sqlite3_column_text(*(v42 + 24), 1);
      v82 = v142;
      v112 = v108;
      if (v114)
      {
        v129 = String.init(cString:)();
        v113 = v115;
      }

      else
      {
        v129 = 0;
        v113 = 0;
      }
    }

    v116 = *(*(v42 + 16) + 32);
    *v81 = v116;
    v117 = v138;
    v75(v81, v82, v138);
    v118 = v116;
    LOBYTE(v116) = _dispatchPreconditionTest(_:)();
    v144(v81, v117);
    if ((v116 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (sqlite3_column_type(*(v42 + 24), 2) != 5)
    {
      v119 = sqlite3_column_double(*(v42 + 24), 2);

      type metadata accessor for CRLAssetDatabaseRow();
      v120 = swift_allocObject();
      v112((v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v130, v143);
      v121 = (v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      *v121 = v129;
      v121[1] = v113;
      *(v120 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v119;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v128 = v147;
      v101 = *(*(v42 + 16) + 32);
      *v81 = v101;
      v102 = v81;
      v103 = v82;
      v76 = v138;
      v104 = v138;
      goto LABEL_40;
    }

    v133(v130, v143);

    v76 = v138;
LABEL_39:
    v101 = *(*(v42 + 16) + 32);
    *v81 = v101;
    v102 = v81;
    v103 = v82;
    v104 = v76;
LABEL_40:
    v75(v102, v103, v104);
    v105 = v101;
    v106 = _dispatchPreconditionTest(_:)();
    v144(v81, v76);
    if ((v106 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (v84 && v84 != 101)
  {
    *v137 = v84;
    v122 = v127;
    *v127 = 0;
    v122[1] = 0;
  }

  v123 = *(*(v42 + 16) + 32);
  *v81 = v123;
  v75(v81, v82, v76);
  v124 = v123;
  LOBYTE(v123) = _dispatchPreconditionTest(_:)();
  v144(v81, v76);
  if ((v123 & 1) == 0)
  {
    goto LABEL_75;
  }

  v125 = *(v42 + 24);
  v20 = v128;
  if (v125)
  {
    sqlite3_finalize(v125);
    *(v42 + 24) = 0;
  }

  return v20;
}

void *sub_100E31084(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v136 = &v121 - v4;
  v139 = type metadata accessor for UUID();
  v131 = *(v139 - 8);
  v5 = __chkstk_darwin(v139);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v121 - v9;
  v11 = __chkstk_darwin(v8);
  v134 = (&v121 - v12);
  __chkstk_darwin(v11);
  v130 = &v121 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v17 = v18;
  v19 = *(v15 + 104);
  v141 = enum case for DispatchPredicate.onQueue(_:);
  v137 = v15 + 104;
  v138 = v19;
  (v19)(v17);
  v20 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v23 = *(v15 + 8);
  v21 = v15 + 8;
  v22 = v23;
  v23(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    __break(1u);
    goto LABEL_70;
  }

  if (!*(a1 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v122 = v10;
  v123 = v7;
  v129 = v22;
  v140 = v21;
  v151 = 0;
  v152 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v151 = 0xD00000000000003DLL;
  v152 = 0x80000001015A45C0;
  v24 = sub_1000341B8(0x3F, 0xE100000000000000, *(a1 + 16));
  v132 = a1;
  v142 = v24;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v151;
  v31 = v152;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = v133;
  v34 = sub_10001CC04(v32, v30, v31);
  if (v33)
  {
LABEL_4:

    if (qword_1019F2258 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_5;
  }

  v42 = v34;
  v133 = 0;

  v44 = (v132 + 56);
  v43 = *(v132 + 56);
  v45 = *(v132 + 32);
  v135 = 1;
  v46 = 1 << v45;
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v43;

  swift_beginAccess();
  v49 = 0;
  v50 = (v46 + 63) >> 6;
  v127 = (v131 + 16);
  v128 = (v131 + 32);
  v126 = (v131 + 8);
  v125 = v44;
  for (i = v50; ; v50 = i)
  {
    v51 = v129;
    v52 = v141;
    if (v48)
    {
      v53 = v132;
      goto LABEL_17;
    }

    v53 = v132;
    do
    {
      v54 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v54 >= v50)
      {

        v78 = *(*(v42 + 16) + 32);
        *v17 = v78;
        v49 = v138;
        (v138)(v17, v52, v14);
        v79 = v78;
        LOBYTE(v78) = _dispatchPreconditionTest(_:)();
        v51(v17, v14);
        if ((v78 & 1) == 0)
        {
          __break(1u);
          goto LABEL_73;
        }

        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[3] = 0;
        v134 = inited + 3;
        inited[4] = 0;
        v125 = inited + 4;
        inited[5] = 1;
        v135 = inited;
        inited[2] = v42;

        swift_beginAccess();
        v81 = *(*(v42 + 16) + 32);
        *v17 = v81;
        (v49)(v17, v141, v14);
        v82 = v81;
        v52 = _dispatchPreconditionTest(_:)();
        v51(v17, v14);
        if (v52)
        {
          v130 = _swiftEmptyArrayStorage;
          v132 = v131 + 56;
          while (1)
          {
            v83 = v134;
            *v134 = 0;
            v83[1] = 0;
            *(v135 + 40) = 1;
            v84 = sqlite3_step(*(v42 + 24));
            if (v84 != 100)
            {
              break;
            }

            v85 = *(*(v42 + 16) + 32);
            *v17 = v85;
            v86 = v141;
            (v49)(v17, v141, v14);

            v87 = v85;
            LOBYTE(v85) = _dispatchPreconditionTest(_:)();
            v52 = v140;
            v51(v17, v14);
            if ((v85 & 1) == 0)
            {
              goto LABEL_59;
            }

            v88 = *(*(v42 + 16) + 32);
            *v17 = v88;
            (v49)(v17, v86, v14);
            v89 = v88;
            LOBYTE(v88) = _dispatchPreconditionTest(_:)();
            v51(v17, v14);
            if ((v88 & 1) == 0)
            {
              goto LABEL_60;
            }

            v90 = *(*(v42 + 16) + 32);
            *v17 = v90;
            (v49)(v17, v86, v14);
            v91 = v90;
            LOBYTE(v90) = _dispatchPreconditionTest(_:)();
            v51(v17, v14);
            if ((v90 & 1) == 0)
            {
              goto LABEL_61;
            }

            if (sqlite3_column_type(*(v42 + 24), 0) != 5 && (v92 = sqlite3_column_blob(*(v42 + 24), 0)) != 0)
            {
              v96 = v92;
              v97 = sqlite3_column_bytes(*(v42 + 24), 0);
              v98 = sub_100024DD4(v96, v97);
              v99 = v136;
              v100 = v133;
              UUID.init(crl_data:)(v98, v101);
              v49 = v138;
              v52 = v141;
              if (v100)
              {
                goto LABEL_62;
              }

              v102 = v139;
              (*v132)(v99, 0, 1, v139);
              v103 = v122;
              i = *v128;
              i(v122, v99, v102);
              (*v127)(v123, v103, v102);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v133 = 0;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_100B356D0(0, *(v130 + 2) + 1, 1, v130);
              }

              v106 = *(v130 + 2);
              v105 = *(v130 + 3);
              if (v106 >= v105 >> 1)
              {
                v130 = sub_100B356D0(v105 > 1, v106 + 1, 1, v130);
              }

              v107 = v131;
              v108 = v139;
              (*(v131 + 8))(v122, v139);
              v109 = v130;
              *(v130 + 2) = v106 + 1;
              i(&v109[((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v106], v123, v108);
              v110 = *(*(v42 + 16) + 32);
              *v17 = v110;
              (v49)(v17, v52, v14);
              v111 = v110;
              LOBYTE(v110) = _dispatchPreconditionTest(_:)();
              v51 = v129;
              v129(v17, v14);
              if ((v110 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v93 = v136;
              (*v132)(v136, 1, 1, v139);

              sub_10000CAAC(v93, &qword_1019F6990);
              v94 = *(*(v42 + 16) + 32);
              *v17 = v94;
              v49 = v138;
              (v138)(v17, v141, v14);
              v95 = v94;
              LOBYTE(v94) = _dispatchPreconditionTest(_:)();
              v51(v17, v14);
              if ((v94 & 1) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          v112 = v141;
          if (v84 && v84 != 101)
          {
            *v134 = v84;
            v113 = v125;
            *v125 = 0;
            v113[1] = 0;
          }

          v114 = *(*(v42 + 16) + 32);
          *v17 = v114;
          (v49)(v17, v112, v14);
          v115 = v114;
          LOBYTE(v114) = _dispatchPreconditionTest(_:)();
          v51(v17, v14);
          if (v114)
          {
            v116 = *(v42 + 24);
            if (v116)
            {
              sqlite3_finalize(v116);
              *(v42 + 24) = 0;
            }

            v117 = sub_100E93A84(v130);

            return v117;
          }

LABEL_73:
          __break(1u);
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:

        v118 = *(*(v42 + 16) + 32);
        *v17 = v118;
        (v49)(v17, v52, v14);
        v119 = v118;
        LOBYTE(v118) = _dispatchPreconditionTest(_:)();
        result = (v51)(v17, v14);
        if ((v118 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v120 = *(v42 + 24);
        if (v120)
        {
          sqlite3_finalize(v120);
          *(v42 + 24) = 0;
        }

        goto LABEL_4;
      }

      v48 = v44[v54];
      ++v49;
    }

    while (!v48);
    v49 = v54;
LABEL_17:
    v55 = v131;
    v56 = v130;
    v57 = v139;
    (*(v131 + 16))(v130, *(v53 + 48) + *(v131 + 72) * (__clz(__rbit64(v48)) | (v49 << 6)), v139);
    (*(v55 + 32))(v134, v56, v57);
    v142 = UUID.uuid.getter();
    v143 = v58;
    v144 = v59;
    v145 = v60;
    v146 = v61;
    v147 = v62;
    v148 = v63;
    v149 = v64;
    v150 = v65;
    UUID.uuid.getter();
    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    v66 = *(*(v42 + 16) + 32);
    *v17 = v66;
    (v138)(v17, v141, v14);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    v51(v17, v14);
    if ((v66 & 1) == 0)
    {
      goto LABEL_67;
    }

    v68 = __DataStorage._bytes.getter();
    if (v68)
    {
      break;
    }

    v71 = 0;
LABEL_22:
    v72 = __DataStorage._length.getter();
    if (v135 == 0x80000000)
    {
      goto LABEL_68;
    }

    v73 = 16;
    if (v72 < 16)
    {
      v73 = v72;
    }

    if (v71)
    {
      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    if (v74 < 0xFFFFFFFF80000000)
    {
      goto LABEL_69;
    }

    v75 = *(v42 + 24);
    if (qword_1019F17C8 != -1)
    {
      swift_once();
    }

    v48 &= v48 - 1;
    v76 = v75;
    v77 = v135;
    sqlite3_bind_blob(v76, v135, v71, v74, qword_101AD69D0);

    (*v126)(v134, v139);
    v135 = v77 + 1;
    v44 = v125;
  }

  v69 = v68;
  v70 = __DataStorage._offset.getter();
  if (!__OFSUB__(0, v70))
  {
    v71 = (v69 - v70);
    goto LABEL_22;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_5:
  v35 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v37 = Error.localizedDescription.getter();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000053B0();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v40, "Failed to fetch an asset reference with error %@", 48, 2, v36);
  swift_setDeallocating();
  sub_100005070(v36 + 32);
  return swift_willThrow();
}

void *sub_100E320D4(unint64_t a1)
{
  v56 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v59 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v58 = v8;
  v57 = v10;
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v61 = 0x205443454C4553;
  v62 = 0xE700000000000000;
  v11._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x204D4F524620;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._object = 0x80000001015A3180;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x2820455245485720;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001015A3FA0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x444E41203F203D20;
  v16._object = 0xE900000000000020;
  String.append(_:)(v16);
  v17._object = 0x80000001015A33D0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2930203E20;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19 = v61;
  v20 = v62;
  v60 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v25 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch an asset reference with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v27;
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v23 = v22;

  v24 = sub_1005C6934();
  v56 = v32;
  v33 = v24;
  v34 = *(*(v23 + 16) + 32);
  *v6 = v34;
  v58(v6, v59, v3);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v36 = v57;
  v57(v6, v3);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v37 = v33;
  v38 = v33;
  v39 = v56;
  sub_100DCCAB4(v38, v56, v23, 1);
  sub_10002640C(v37, v39);
  v40 = *(*(v23 + 16) + 32);
  *v6 = v40;
  v58(v6, v59, v3);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v36(v6, v3);
  if ((v40 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v42 = swift_initStackObject();
  v42[3] = 0;
  v43 = v42 + 3;
  v42[4] = 0;
  v55 = v42 + 4;
  v42[5] = 1;
  v56 = v42;
  v42[2] = v23;

  swift_beginAccess();
  v44 = *(*(v23 + 16) + 32);
  *v6 = v44;
  v58(v6, v59, v3);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v36(v6, v3);
  if ((v44 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v43 = 0;
    v43[1] = 0;
    v56[5] = 1;
    v46 = sqlite3_step(*(v23 + 24));
    if (v46 != 100)
    {
      break;
    }

    v47 = swift_retain_n();
    if (sub_100E933E4(v47, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54[1] = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v27 = v60;
    }

    else
    {
    }

    v48 = *(*(v23 + 16) + 32);
    *v6 = v48;
    v58(v6, v59, v3);
    v49 = v48;
    LOBYTE(v48) = _dispatchPreconditionTest(_:)();
    v57(v6, v3);
    if ((v48 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v46 && v46 != 101)
  {
    *v43 = v46;
    v50 = v55;
    *v55 = 0;
    v50[1] = 0;
  }

  v51 = *(*(v23 + 16) + 32);
  *v6 = v51;
  v58(v6, v59, v3);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v57(v6, v3);
  if ((v51 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v53 = *(v23 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);
    *(v23 + 24) = 0;
  }

  return v27;
}

void *sub_100E328FC(void (**a1)(unint64_t, void *), void *a2)
{
  v143 = a1;
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v7 = v131 - v6;
  v141 = type metadata accessor for UUID();
  v8 = *(v141 - 8);
  v9 = __chkstk_darwin(v141);
  v137 = v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = v131 - v11;
  v146 = type metadata accessor for String.Encoding();
  v139 = *(v146 - 1);
  __chkstk_darwin(v146);
  v145 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v16 = v17;
  v18 = *(v14 + 104);
  v152 = enum case for DispatchPredicate.onQueue(_:);
  v150 = v14 + 104;
  v151 = v18;
  v18(v16);
  v19 = v17;
  v20 = _dispatchPreconditionTest(_:)();
  v23 = *(v14 + 8);
  v22 = v14 + 8;
  v21 = v23;
  v23(v16, v13);
  if ((v20 & 1) == 0)
  {
    goto LABEL_47;
  }

  v147 = v21;
  v138 = a2;
  v24 = a2[2];
  if (!v24)
  {
    return _swiftEmptySetSingleton;
  }

  v135 = v8;
  v140 = v7;
  v148 = v13;
  v155 = 0;
  v156 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v155 = 0xD000000000000063;
  v156 = 0x80000001015A4860;
  v153 = sub_1000341B8(0x3F, 0xE100000000000000, v24);
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 10537;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30 = v155;
  v31 = v156;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = sub_10001CC04(v32, v30, v31);
  if (v3)
  {
LABEL_7:

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    v40 = v39;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v38;
    *(inited + 40) = v40;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v41, "Failed to fetch an asset reference with error %@", 48, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return swift_willThrow();
  }

  v144 = v33;

  v35 = sub_1005C6934();
  v43 = v42;
  v44 = v35;
  v45 = v144;
  v46 = *(*(v144 + 16) + 32);
  *v16 = v46;
  v47 = v22;
  v48 = v148;
  v151(v16, v152, v148);
  v49 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v149 = v47;
  v147(v16, v48);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  sub_100DCCAB4(v44, v43, v45, 1);
  v142 = 0;
  sub_10002640C(v44, v43);
  swift_beginAccess();
  v143 = (v139 + 1);
  v50 = v45;
  v51 = v138 + 5;
  v52 = 2;
  v53 = 2147483646;
  do
  {
    v22 = *(v51 - 1);
    v54 = *v51;
    v55 = *(*(v50 + 16) + 32);
    *v16 = v55;
    v56 = v148;
    v151(v16, v152, v148);

    v57 = v55;
    LOBYTE(v55) = _dispatchPreconditionTest(_:)();
    v147(v16, v56);
    if ((v55 & 1) == 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v153 = v22;
    v154 = v54;
    v22 = v145;
    static String.Encoding.utf8.getter();
    sub_100017CD8();
    v58 = StringProtocol.cString(using:)();
    (*v143)(v22, v146);

    if (!v53)
    {
      goto LABEL_45;
    }

    v50 = v144;
    v59 = *(v144 + 24);
    if (qword_1019F17C8 != -1)
    {
      v61 = *(v144 + 24);
      swift_once();
      v59 = v61;
    }

    if (v58)
    {
      v60 = (v58 + 32);
    }

    else
    {
      v60 = 0;
    }

    sqlite3_bind_text(v59, v52, v60, -1, qword_101AD69D0);

    ++v52;
    --v53;
    v51 += 2;
    --v24;
  }

  while (v24);
  v62 = *(*(v50 + 16) + 32);
  *v16 = v62;
  v22 = v152;
  v63 = v148;
  v64 = v151;
  v151(v16, v152, v148);
  v65 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v66 = v147;
  v147(v16, v63);
  if ((v62 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  type metadata accessor for SQLiteRowIterator();
  v67 = swift_initStackObject();
  v67[3] = 0;
  v143 = (v67 + 3);
  v67[4] = 0;
  v134 = v67 + 4;
  v67[5] = 1;
  v145 = v67;
  v67[2] = v50;

  swift_beginAccess();
  v68 = *(*(v50 + 16) + 32);
  *v16 = v68;
  v64(v16, v22, v63);
  v69 = v68;
  LOBYTE(v68) = _dispatchPreconditionTest(_:)();
  v146 = v16;
  v66(v16, v63);
  v70 = v50;
  v71 = v142;
  if ((v68 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:

    v125 = v144;

    v126 = *(*(v125 + 16) + 32);
    v127 = v146;
    *v146 = v126;
    v128 = v148;
    v151(v127, v22, v148);
    v129 = v126;
    LOBYTE(v126) = _dispatchPreconditionTest(_:)();
    result = (v147)(v127, v128);
    if ((v126 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v130 = *(v125 + 24);
    if (v130)
    {
      sqlite3_finalize(v130);
      *(v125 + 24) = 0;
    }

    goto LABEL_7;
  }

  v139 = (v135 + 56);
  v133 = (v135 + 32);
  v132 = (v135 + 16);
  v138 = _swiftEmptyArrayStorage;
  v131[1] = v135 + 8;
  while (1)
  {
    v77 = v143;
    *v143 = 0;
    v77[1] = 0;
    *(v145 + 5) = 1;
    v78 = sqlite3_step(*(v70 + 24));
    if (v78 != 100)
    {
      break;
    }

    v142 = v71;
    v79 = *(*(v70 + 16) + 32);
    v80 = v70;
    v81 = v146;
    *v146 = v79;
    v82 = v22;
    v83 = v148;
    v22 = v151;
    v151(v81, v82, v148);

    v84 = v79;
    v85 = _dispatchPreconditionTest(_:)();
    v66(v81, v83);
    if ((v85 & 1) == 0)
    {
      goto LABEL_48;
    }

    v86 = *(*(v80 + 16) + 32);
    *v81 = v86;
    (v22)(v81, v152, v83);
    v87 = v86;
    v88 = _dispatchPreconditionTest(_:)();
    v66(v81, v83);
    if ((v88 & 1) == 0)
    {
      goto LABEL_49;
    }

    v89 = *(*(v80 + 16) + 32);
    *v81 = v89;
    (v22)(v81, v152, v83);
    v90 = v89;
    v91 = _dispatchPreconditionTest(_:)();
    v66(v81, v83);
    if ((v91 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (sqlite3_column_type(*(v80 + 24), 0) == 5 || (v92 = sqlite3_column_blob(*(v80 + 24), 0)) == 0)
    {
      v72 = v140;
      (*v139)(v140, 1, 1, v141);

      sub_10000CAAC(v72, &qword_1019F6990);
      v73 = *(*(v80 + 16) + 32);
      v74 = v146;
      *v146 = v73;
      v22 = v152;
      v151(v74, v152, v83);
      v75 = v73;
      v76 = _dispatchPreconditionTest(_:)();
      v66(v74, v83);
      v70 = v80;
      v71 = v142;
      if ((v76 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v93 = v92;
      v94 = sqlite3_column_bytes(*(v80 + 24), 0);
      v95 = sub_100024DD4(v93, v94);
      v96 = v140;
      v97 = v142;
      UUID.init(crl_data:)(v95, v98);
      v71 = v97;
      v22 = v152;
      if (v97)
      {
        goto LABEL_51;
      }

      v99 = v141;
      (*v139)(v96, 0, 1, v141);
      v100 = *v133;
      v101 = v136;
      (*v133)(v136, v96, v99);
      (*v132)(v137, v101, v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v146;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v138 = sub_100B356D0(0, v138[2] + 1, 1, v138);
      }

      v105 = v138[2];
      v104 = v138[3];
      if (v105 >= v104 >> 1)
      {
        v138 = sub_100B356D0(v104 > 1, v105 + 1, 1, v138);
      }

      v70 = v144;

      v106 = v135;
      v107 = v141;
      (*(v135 + 8))(v136, v141);
      v108 = v138;
      v138[2] = v105 + 1;
      v100(&v108[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v105], v137, v107);
      v109 = *(*(v70 + 16) + 32);
      *v103 = v109;
      v110 = v148;
      v151(v103, v22, v148);
      v111 = v109;
      v112 = _dispatchPreconditionTest(_:)();
      v66 = v147;
      v147(v103, v110);
      if ((v112 & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  v113 = v151;
  v114 = v146;
  if (v78 && v78 != 101)
  {
    *v143 = v78;
    v115 = v134;
    *v134 = 0;
    v115[1] = 0;
  }

  v116 = v144;
  v117 = *(*(v144 + 16) + 32);
  *v114 = v117;
  v118 = v114;
  v119 = v22;
  v120 = v114;
  v121 = v148;
  v113(v118, v119, v148);
  v122 = v117;
  LOBYTE(v117) = _dispatchPreconditionTest(_:)();
  v66(v120, v121);
  if ((v117 & 1) == 0)
  {
LABEL_57:
    __break(1u);
  }

  v123 = *(v116 + 24);
  if (v123)
  {
    sqlite3_finalize(v123);
    *(v116 + 24) = 0;
  }

  v124 = sub_100E93A84(v138);

  return v124;
}

void sub_100E339A0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v6 - 8);
  v8 = &v96 - v7;
  v9 = type metadata accessor for URL();
  v119 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v116 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v96 - v12;
  v113 = type metadata accessor for UUID();
  v117 = *(v113 - 8);
  v13 = __chkstk_darwin(v113);
  v114 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v96 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v22 = sub_100E31084(a1);
  if (!v2)
  {
    v23 = v22;
    if (v22[2] <= a1[2] >> 3)
    {
      v118 = a1;

      sub_1012D4DC4(v23);

      v25 = v118;
    }

    else
    {

      v24 = sub_1012D5CC4(v23, a1);

      v25 = v24;
    }

    v26 = v113;
    v27 = v114;
    if (!v25[2])
    {

      return;
    }

    v100 = v8;
    v28 = 0;
    v29 = v25 + 7;
    v30 = 1 << *(v25 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v25[7];
    v103 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v111 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v33 = (v30 + 63) >> 6;
    v107 = v117 + 16;
    v106 = v117 + 32;
    v99 = (v119 + 8);
    v108 = (v117 + 8);
    v98 = xmmword_10146C6B0;
    v105 = v25 + 7;
    v104 = v33;
    v102 = v4;
    v101 = v9;
    v109 = v25;
    if (v32)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        v69 = *&v4[v103];
        os_unfair_lock_lock(*(v69 + 16));
        v70 = v111;
        v71 = *&v4[v111];
        if (v71)
        {
          v72 = *&v4[v111];
        }

        else
        {
          v73 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
          v74 = v4;
          v75 = sub_10001F1A0(v74);

          v76 = *&v4[v70];
          *&v4[v70] = v75;
          v72 = v75;

          v71 = 0;
        }

        v77 = *(v69 + 16);
LABEL_33:
        v78 = v71;
        os_unfair_lock_unlock(v77);
        sub_10001F7A4();

        return;
      }

      v32 = v29[v34];
      ++v28;
      if (v32)
      {
        while (1)
        {
          v35 = v117;
          v36 = v112;
          (*(v117 + 16))(v112, v25[6] + *(v117 + 72) * (__clz(__rbit64(v32)) | (v34 << 6)), v26);
          (*(v35 + 32))(v27, v36, v26);
          v37 = sub_100E39678(v27);
          if (v3)
          {
            break;
          }

          v32 &= v32 - 1;
          if (v37)
          {
            v119 = 0;
            v110 = v37;
            v38 = *&v4[v103];
            v40 = *(v38 + 16);
            v39 = (v38 + 16);
            os_unfair_lock_lock(v40);
            v41 = v111;
            v42 = *&v4[v111];
            if (v42)
            {
              v43 = *&v4[v111];
            }

            else
            {
              v44 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
              v45 = v4;
              v46 = sub_10001F1A0(v45);

              v47 = *&v4[v111];
              *&v4[v111] = v46;
              v43 = v46;

              v41 = v111;
              v42 = 0;
            }

            v48 = *v39;
            v49 = v42;
            os_unfair_lock_unlock(v48);
            v51 = *(v110 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
            v50 = *(v110 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);
            v52 = v119;
            sub_1010898C8();
            v119 = v52;
            if (v52)
            {
              v83 = v113;
LABEL_40:
              (*v108)(v114, v83);

              os_unfair_lock_lock(*v39);
              v71 = *&v4[v41];
              if (v71)
              {
                v72 = *&v4[v41];
              }

              else
              {
                v86 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
                v87 = v41;
                v88 = v4;
                v89 = sub_10001F1A0(v88);

                v90 = *&v4[v87];
                *&v4[v87] = v89;
                v72 = v89;

                v71 = 0;
              }

              v77 = *v39;
              goto LABEL_33;
            }

            v97 = v39;
            v53 = v114;
            sub_1010934D4(v114, v51, v50);
            v54 = v115;
            URL.appendingPathComponent(_:)();

            sub_10108B1E0(v53, v54, 1);
            UUID.uuidString.getter();
            URL.appendingPathComponent(_:)();

            if (qword_1019F22C0 != -1)
            {
              swift_once();
            }

            v55 = static OS_os_log.assetManagement;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v98;
            v57 = UUID.uuidString.getter();
            v59 = v58;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v57;
            *(inited + 40) = v59;
            v60 = static os_log_type_t.default.getter();
            sub_100005404(v55, &_mh_execute_header, v60, "CRLAssetFileManager moveAssetFileToDeletedDirectory() assetUUID: %@", 67, 2, inited);
            swift_setDeallocating();
            sub_100005070(inited + 32);
            v61 = *&v43[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock];
            os_unfair_lock_lock(*(v61 + 16));
            swift_beginAccess();
            v62 = v100;
            sub_1006F7074(v53, v100);
            sub_10000CAAC(v62, &qword_101A0B040);
            swift_endAccess();
            os_unfair_lock_unlock(*(v61 + 16));
            v63 = [objc_opt_self() defaultManager];
            v65 = v115;
            v64 = v116;
            v66 = v119;
            sub_101091278(v115, v116, 1, 1);
            v119 = v66;
            if (v66)
            {

              v84 = *v99;
              v85 = v101;
              (*v99)(v64, v101);
              v84(v65, v85);
              v4 = v102;
              v83 = v113;
              v41 = v111;
              v39 = v97;
              goto LABEL_40;
            }

            v67 = *v99;
            v68 = v101;
            (*v99)(v64, v101);
            v67(v65, v68);
            v26 = v113;
            (*v108)(v53, v113);

            v28 = v34;
            v4 = v102;
            v27 = v53;
            v25 = v109;
            v29 = v105;
            v33 = v104;
            v3 = v119;
            if (!v32)
            {
              goto LABEL_12;
            }
          }

          else
          {
            (*v108)(v27, v26);
            v28 = v34;
            v25 = v109;
            v29 = v105;
            v33 = v104;
            if (!v32)
            {
              goto LABEL_12;
            }
          }

LABEL_16:
          v34 = v28;
        }

        (*v108)(v27, v26);

        v79 = *&v4[v103];
        v81 = *(v79 + 16);
        v80 = (v79 + 16);
        os_unfair_lock_lock(v81);
        v82 = v111;
        v71 = *&v4[v111];
        if (v71)
        {
          v72 = *&v4[v111];
        }

        else
        {
          v91 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
          v92 = v82;
          v93 = v4;
          v94 = sub_10001F1A0(v93);

          v95 = *&v4[v92];
          *&v4[v92] = v94;
          v72 = v94;

          v71 = 0;
        }

        v77 = *v80;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_46;
  }
}

void *sub_100E34410(unint64_t a1)
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
  v11._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x204D4F524620;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._object = 0x80000001015A3180;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x2820455245485720;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001015A3FA0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x293F203D20;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17 = v59;
  v18 = v60;
  v58 = _swiftEmptyArrayStorage;
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
      sub_100005404(v23, &_mh_execute_header, v28, "Failed to fetch an asset reference with error %@", 48, 2, inited);
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

  v22 = sub_1005C6934();
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
    if (sub_100E933E4(v45, 0))
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

char *sub_100E34C00(void (**a1)(char *, uint64_t, uint64_t, uint64_t), void *a2)
{
  v116 = a2;
  v115 = a1;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v118 = &v96 - v4;
  v5 = type metadata accessor for UUID();
  v113 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v111 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = &v96 - v8;
  v112 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v112);
  v114 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v120 = *(v11 + 104);
  v120(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v119 = v5;
  v121 = v17;
  v122 = 0;
  v123 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v122 = 0xD00000000000005ALL;
  v123 = 0x80000001015A6100;
  v18._countAndFlagsBits = sub_100E9D4E0(&off_101874A70, 0);
  String.append(_:)(v18);

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v122;
  v21 = v123;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = v117;
  v24 = sub_10001CC04(v22, v20, v21);
  if (v23)
  {
    goto LABEL_8;
  }

  v25 = v24;
  v108 = v11 + 104;
  v109 = v15;

  v26 = *(sub_1005B981C(&qword_1019F4720) + 48);
  v27 = v113 + 16;
  v28 = *(v113 + 16);
  v29 = v114;
  (v28)(v114, v115, v119);
  sub_10000C83C(v116, v29 + v26, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v30 = sub_1005C6934();
  v105 = v28;
  v106 = v27;
  v107 = 0;
  v32 = v31;
  v33 = v30;
  v34 = *(*(v25 + 16) + 32);
  *v13 = v34;
  v35 = v109;
  v120(v13, v109, v10);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v121(v13, v10);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v37 = v107;
  sub_100DCCAB4(v33, v32, v25, 1);
  sub_10002640C(v33, v32);
  type metadata accessor for CRLBoardIdentifierStorage(0);
  v38 = sub_10084DAE4();
  if (v37)
  {
    sub_100026028(v114, type metadata accessor for CRLAssetReferrerIdentifier);
    v40 = *(*(v25 + 16) + 32);
    *v13 = v40;
    v120(v13, v35, v10);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    v121(v13, v10);
    if (v40)
    {
      swift_beginAccess();
      v42 = *(v25 + 24);
      if (!v42)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_47;
  }

  v103 = v38;
  v104 = v39;
  v50 = *(*(v25 + 16) + 32);
  *v13 = v50;
  v51 = v120;
  v120(v13, v35, v10);
  v52 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v121(v13, v10);
  if ((v50 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_100DCCAB4(v103, v104, v25, 2);
  v107 = 0;
  v53 = *(*(v25 + 16) + 32);
  *v13 = v53;
  v51(v13, v35, v10);
  v54 = v53;
  LOBYTE(v53) = _dispatchPreconditionTest(_:)();
  v121(v13, v10);
  if ((v53 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v116 = inited + 3;
  inited[4] = 0;
  v100 = inited + 4;
  inited[5] = 1;
  v117 = inited;
  inited[2] = v25;

  swift_beginAccess();
  v56 = *(*(v25 + 16) + 32);
  *v13 = v56;
  v51(v13, v35, v10);
  v57 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  v121(v13, v10);
  if (v56)
  {
    v58 = v51;
    v115 = (v113 + 56);
    v102 = (v113 + 32);
    v112 = _swiftEmptyArrayStorage;
    v101 = v113 + 8;
    while (1)
    {
      v59 = v116;
      *v116 = 0;
      v59[1] = 0;
      v117[5] = 1;
      v60 = sqlite3_step(*(v25 + 24));
      if (v60 != 100)
      {
        break;
      }

      v61 = *(*(v25 + 16) + 32);
      *v13 = v61;
      v58(v13, v35, v10);

      v62 = v61;
      LOBYTE(v61) = _dispatchPreconditionTest(_:)();
      v63 = v121;
      v121(v13, v10);
      if ((v61 & 1) == 0)
      {
        goto LABEL_38;
      }

      v64 = *(*(v25 + 16) + 32);
      *v13 = v64;
      v58(v13, v35, v10);
      v65 = v64;
      LOBYTE(v64) = _dispatchPreconditionTest(_:)();
      v63(v13, v10);
      if ((v64 & 1) == 0)
      {
        goto LABEL_39;
      }

      v66 = *(*(v25 + 16) + 32);
      *v13 = v66;
      v58(v13, v35, v10);
      v67 = v66;
      LOBYTE(v66) = _dispatchPreconditionTest(_:)();
      v63(v13, v10);
      if ((v66 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (sqlite3_column_type(*(v25 + 24), 0) != 5 && (v68 = sqlite3_column_blob(*(v25 + 24), 0)) != 0)
      {
        v76 = v68;
        v77 = sqlite3_column_bytes(*(v25 + 24), 0);
        v78 = sub_100024DD4(v76, v77);
        v79 = v118;
        v80 = v107;
        UUID.init(crl_data:)(v78, v81);
        if (v80)
        {
          goto LABEL_41;
        }

        (*v115)(v79, 0, 1, v119);
        v82 = v110;
        v99 = *v102;
        v99(v110, v79, v119);
        v83 = v82;
        v84 = v119;
        v105(v111, v83);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v112 = sub_100B356D0(0, *(v112 + 2) + 1, 1, v112);
        }

        v58 = v120;
        v86 = *(v112 + 3);
        v98 = *(v112 + 2);
        v97 = v98 + 1;
        if (v98 >= v86 >> 1)
        {
          v112 = sub_100B356D0(v86 > 1, v98 + 1, 1, v112);
        }

        v87 = v113;
        (*(v113 + 8))(v110, v84);
        v88 = v112;
        *(v112 + 2) = v97;
        v99(&v88[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v98], v111, v84);
        v70 = *(*(v25 + 16) + 32);
        *v13 = v70;
        v71 = v13;
        v72 = v35;
        v73 = v10;
      }

      else
      {
        v69 = v118;
        (*v115)(v118, 1, 1, v119);

        sub_10000CAAC(v69, &qword_1019F6990);
        v70 = *(*(v25 + 16) + 32);
        *v13 = v70;
        v71 = v13;
        v72 = v35;
        v73 = v10;
        v58 = v120;
      }

      v58(v71, v72, v73);
      v74 = v70;
      v75 = _dispatchPreconditionTest(_:)();
      v121(v13, v10);
      if ((v75 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v89 = v60;
    sub_100026028(v114, type metadata accessor for CRLAssetReferrerIdentifier);
    sub_10002640C(v103, v104);
    if (v89 && v89 != 101)
    {
      *v116 = v89;
      v90 = v100;
      *v100 = 0;
      v90[1] = 0;
    }

    v91 = *(*(v25 + 16) + 32);
    *v13 = v91;
    v120(v13, v35, v10);
    v92 = v91;
    LOBYTE(v91) = _dispatchPreconditionTest(_:)();
    v121(v13, v10);
    if (v91)
    {
      v93 = *(v25 + 24);
      if (v93)
      {
        sqlite3_finalize(v93);
        *(v25 + 24) = 0;
      }

      return v112;
    }

LABEL_50:
    __break(1u);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_100026028(v114, type metadata accessor for CRLAssetReferrerIdentifier);

  sub_10002640C(v103, v104);

  v94 = *(*(v25 + 16) + 32);
  *v13 = v94;
  v120(v13, v35, v10);
  v95 = v94;
  LOBYTE(v94) = _dispatchPreconditionTest(_:)();
  result = (v121)(v13, v10);
  if (v94)
  {
    v42 = *(v25 + 24);
    if (v42)
    {
LABEL_7:
      sqlite3_finalize(v42);
      *(v25 + 24) = 0;
    }

LABEL_8:

    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v43 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = v46;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_1000053B0();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v48, "Failed to fetch an asset reference with error %@", 48, 2, v44);
      swift_setDeallocating();
      sub_100005070(v44 + 32);
      swift_willThrow();
      return v112;
    }

LABEL_45:
    swift_once();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E35B30(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v28 = *(v5 + 104);
  v28(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000026, 0x80000001015A8AA0);

  if (v2)
  {
    return result;
  }

  sub_100034254(a1, 1);
  v15 = *(*(v13 + 16) + 32);
  *v8 = v15;
  v16 = v27;
  (v28)(v8, v27, v4);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = *(v13 + 16);

  LODWORD(v19) = sub_10001CEC4(v18, v13);

  if (v19 != 101)
  {
    goto LABEL_7;
  }

  v19 = *(*(v13 + 16) + 32);
  *v8 = v19;
  (v28)(v8, v16, v4);
  v20 = v19;
  v16 = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = 0xD000000000000027;
    *(v21 + 16) = 0x80000001015A8570;
    swift_willThrow();
    v22 = *(*(v13 + 16) + 32);
    *v8 = v22;
    (v28)(v8, v16, v4);
    v23 = v22;
    v24 = _dispatchPreconditionTest(_:)();
    v29(v8, v4);
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v25 = *(v13 + 24);
  if (v25)
  {
    sqlite3_finalize(v25);
    *(v13 + 24) = 0;
  }
}

uint64_t sub_100E35EC0()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v47 = enum case for DispatchPredicate.onQueue(_:);
  v48 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v49 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46[1] = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000027, 0x80000001015A8A10);
  if (v1)
  {
  }

  v14 = v13;

  v15 = *(*(v14 + 16) + 32);
  *v6 = v15;
  v48(v6, v47, v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v49(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v46[0] = v2;
  v17 = *(v14 + 16);

  v18 = sub_10001CEC4(v17, v14);

  if (v18 == 101)
  {
    swift_initStackObject();

    v27 = sub_10001CC04(v19, 0xD000000000000022, 0x80000001015A8A40);

    v28 = *(*(v27 + 16) + 32);
    *v6 = v28;
    v29 = v46[0];
    v48(v6, v47, v46[0]);
    v30 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v49(v6, v29);
    if (v28)
    {
      v31 = *(v27 + 16);

      v32 = sub_10001CEC4(v31, v27);

      if (v32 == 101)
      {
        v33 = *(*(v27 + 16) + 32);
        *v6 = v33;
        v48(v6, v47, v29);
        v34 = v33;
        LOBYTE(v33) = _dispatchPreconditionTest(_:)();
        v49(v6, v29);
        if (v33)
        {
          swift_beginAccess();
          v35 = *(v27 + 24);
          if (v35)
          {
            sqlite3_finalize(v35);
            *(v27 + 24) = 0;
          }

          v36 = *(*(v14 + 16) + 32);
          *v6 = v36;
          v48(v6, v47, v29);
          v37 = v36;
          v38 = _dispatchPreconditionTest(_:)();
          v49(v6, v29);
          if (v38)
          {
            swift_beginAccess();
            v25 = *(v14 + 24);
            if (!v25)
            {
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v39 = v32;
      *(v39 + 8) = 0xD000000000000020;
      *(v39 + 16) = 0x80000001015A8A70;
      swift_willThrow();
      v40 = *(*(v27 + 16) + 32);
      *v6 = v40;
      v48(v6, v47, v29);
      v41 = v40;
      LOBYTE(v40) = _dispatchPreconditionTest(_:)();
      v49(v6, v29);
      if ((v40 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v42 = *(v27 + 24);
      if (v42)
      {
        sqlite3_finalize(v42);
        *(v27 + 24) = 0;
      }

      v43 = *(*(v14 + 16) + 32);
      *v6 = v43;
      v48(v6, v47, v29);
      v44 = v43;
      v45 = _dispatchPreconditionTest(_:)();
      v49(v6, v29);
      if ((v45 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = 0xD000000000000025;
  *(v20 + 16) = 0x80000001015A80E0;
  swift_willThrow();
  v21 = *(*(v14 + 16) + 32);
  *v6 = v21;
  v22 = v46[0];
  v48(v6, v47, v46[0]);
  v23 = v21;
  v24 = _dispatchPreconditionTest(_:)();
  v49(v6, v22);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v25 = *(v14 + 24);
  if (v25)
  {
LABEL_8:
    sqlite3_finalize(v25);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100E3657C(sqlite3_int64 a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v28 = *(v5 + 104);
  v28(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v29 = *(v5 + 8);
  v29(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000002BLL, 0x80000001015A8AD0);

  if (v2)
  {
    return result;
  }

  sub_100034254(a1, 1);
  v15 = *(*(v13 + 16) + 32);
  *v8 = v15;
  v16 = v27;
  (v28)(v8, v27, v4);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = *(v13 + 16);

  LODWORD(v19) = sub_10001CEC4(v18, v13);

  if (v19 != 101)
  {
    goto LABEL_7;
  }

  v19 = *(*(v13 + 16) + 32);
  *v8 = v19;
  (v28)(v8, v16, v4);
  v20 = v19;
  v16 = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = 0xD00000000000002DLL;
    *(v21 + 16) = 0x80000001015A8600;
    swift_willThrow();
    v22 = *(*(v13 + 16) + 32);
    *v8 = v22;
    (v28)(v8, v16, v4);
    v23 = v22;
    v24 = _dispatchPreconditionTest(_:)();
    v29(v8, v4);
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v25 = *(v13 + 24);
  if (v25)
  {
    sqlite3_finalize(v25);
    *(v13 + 24) = 0;
  }
}

uint64_t sub_100E3690C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v47 = enum case for DispatchPredicate.onQueue(_:);
  v48 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v49 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46[1] = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000002CLL, 0x80000001015A8950);
  if (v1)
  {
  }

  v14 = v13;

  v15 = *(*(v14 + 16) + 32);
  *v6 = v15;
  v48(v6, v47, v2);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v49(v6, v2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v46[0] = v2;
  v17 = *(v14 + 16);

  v18 = sub_10001CEC4(v17, v14);

  if (v18 == 101)
  {
    swift_initStackObject();

    v27 = sub_10001CC04(v19, 0xD000000000000027, 0x80000001015A89B0);

    v28 = *(*(v27 + 16) + 32);
    *v6 = v28;
    v29 = v46[0];
    v48(v6, v47, v46[0]);
    v30 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v49(v6, v29);
    if (v28)
    {
      v31 = *(v27 + 16);

      v32 = sub_10001CEC4(v31, v27);

      if (v32 == 101)
      {
        v33 = *(*(v27 + 16) + 32);
        *v6 = v33;
        v48(v6, v47, v29);
        v34 = v33;
        LOBYTE(v33) = _dispatchPreconditionTest(_:)();
        v49(v6, v29);
        if (v33)
        {
          swift_beginAccess();
          v35 = *(v27 + 24);
          if (v35)
          {
            sqlite3_finalize(v35);
            *(v27 + 24) = 0;
          }

          v36 = *(*(v14 + 16) + 32);
          *v6 = v36;
          v48(v6, v47, v29);
          v37 = v36;
          v38 = _dispatchPreconditionTest(_:)();
          v49(v6, v29);
          if (v38)
          {
            swift_beginAccess();
            v25 = *(v14 + 24);
            if (!v25)
            {
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v39 = v32;
      *(v39 + 8) = 0xD000000000000025;
      *(v39 + 16) = 0x80000001015A89E0;
      swift_willThrow();
      v40 = *(*(v27 + 16) + 32);
      *v6 = v40;
      v48(v6, v47, v29);
      v41 = v40;
      LOBYTE(v40) = _dispatchPreconditionTest(_:)();
      v49(v6, v29);
      if ((v40 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v42 = *(v27 + 24);
      if (v42)
      {
        sqlite3_finalize(v42);
        *(v27 + 24) = 0;
      }

      v43 = *(*(v14 + 16) + 32);
      *v6 = v43;
      v48(v6, v47, v29);
      v44 = v43;
      v45 = _dispatchPreconditionTest(_:)();
      v49(v6, v29);
      if ((v45 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = 0xD00000000000002ALL;
  *(v20 + 16) = 0x80000001015A8980;
  swift_willThrow();
  v21 = *(*(v14 + 16) + 32);
  *v6 = v21;
  v22 = v46[0];
  v48(v6, v47, v46[0]);
  v23 = v21;
  v24 = _dispatchPreconditionTest(_:)();
  v49(v6, v22);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v25 = *(v14 + 24);
  if (v25)
  {
LABEL_8:
    sqlite3_finalize(v25);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100E36FC8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v46 = enum case for DispatchPredicate.onQueue(_:);
  v47 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v48 = v10;
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45[1] = v9;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000045, 0x80000001015A8630);
  if (v1)
  {
  }

  v13 = v12;

  v14 = *(*(v13 + 16) + 32);
  *v5 = v14;
  v47(v5, v46, v2);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v48(v5, v2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

  v45[0] = v2;
  v16 = *(v13 + 16);

  v17 = sub_10001CEC4(v16, v13);

  if (v17 == 101)
  {
    swift_initStackObject();

    v26 = sub_10001CC04(v18, 0xD000000000000040, 0x80000001015A86C0);

    v27 = *(*(v26 + 16) + 32);
    *v5 = v27;
    v28 = v45[0];
    v47(v5, v46, v45[0]);
    v29 = v27;
    LOBYTE(v27) = _dispatchPreconditionTest(_:)();
    v48(v5, v28);
    if (v27)
    {
      v30 = *(v26 + 16);

      v31 = sub_10001CEC4(v30, v26);

      if (v31 == 101)
      {
        v32 = *(*(v26 + 16) + 32);
        *v5 = v32;
        v47(v5, v46, v28);
        v33 = v32;
        LOBYTE(v32) = _dispatchPreconditionTest(_:)();
        v48(v5, v28);
        if (v32)
        {
          swift_beginAccess();
          v34 = *(v26 + 24);
          if (v34)
          {
            sqlite3_finalize(v34);
            *(v26 + 24) = 0;
          }

          v35 = *(*(v13 + 16) + 32);
          *v5 = v35;
          v47(v5, v46, v28);
          v36 = v35;
          v37 = _dispatchPreconditionTest(_:)();
          v48(v5, v28);
          if (v37)
          {
            swift_beginAccess();
            v24 = *(v13 + 24);
            if (!v24)
            {
            }

            goto LABEL_8;
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10089C7D0();
      swift_allocError();
      *v38 = v31;
      *(v38 + 8) = 0xD00000000000002CLL;
      *(v38 + 16) = 0x80000001015A8710;
      swift_willThrow();
      v39 = *(*(v26 + 16) + 32);
      *v5 = v39;
      v47(v5, v46, v28);
      v40 = v39;
      LOBYTE(v39) = _dispatchPreconditionTest(_:)();
      v48(v5, v28);
      if ((v39 & 1) == 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      swift_beginAccess();
      v41 = *(v26 + 24);
      if (v41)
      {
        sqlite3_finalize(v41);
        *(v26 + 24) = 0;
      }

      v42 = *(*(v13 + 16) + 32);
      *v5 = v42;
      v47(v5, v46, v28);
      v43 = v42;
      v44 = _dispatchPreconditionTest(_:)();
      v48(v5, v28);
      if ((v44 & 1) == 0)
      {
LABEL_30:
        __break(1u);
      }

      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_10089C7D0();
  swift_allocError();
  *v19 = v17;
  *(v19 + 8) = 0xD000000000000031;
  *(v19 + 16) = 0x80000001015A8680;
  swift_willThrow();
  v20 = *(*(v13 + 16) + 32);
  *v5 = v20;
  v21 = v45[0];
  v47(v5, v46, v45[0]);
  v22 = v20;
  v23 = _dispatchPreconditionTest(_:)();
  v48(v5, v21);
  if ((v23 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  swift_beginAccess();
  v24 = *(v13 + 24);
  if (v24)
  {
LABEL_8:
    sqlite3_finalize(v24);
    *(v13 + 24) = 0;
  }
}

uint64_t sub_100E3769C()
{
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v3 = &v82 - v2;
  v93 = type metadata accessor for UUID();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v6 + 104;
  v12 = *(v6 + 104);
  v12(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v14 = v6 + 8;
  v94 = v15;
  v15(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_41;
  }

  v86 = v12;
  v95 = v10;
  v91 = v3;
  v97 = 0;
  v98 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v97 = 0x205443454C4553;
  v98 = 0xE700000000000000;
  v16._countAndFlagsBits = sub_100E9D0C0(0, 0xE000000000000000);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x204D4F524620;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x737465737361;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x20455245485720;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6E6F7473626D6F74;
  v20._object = 0xEE00657461645F65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x44524F2030203E20;
  v21._object = 0xEE00205942205245;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E6F7473626D6F74;
  v22._object = 0xEE00657461645F65;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x4353454420;
  v23._object = 0xE500000000000000;
  String.append(_:)(v23);
  v24 = v97;
  v25 = v98;
  v96 = &_swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v27 = v92;
  v28 = sub_10001CC04(v26, v24, v25);

  if (v27)
  {
    return result;
  }

  v88 = 0;
  v30 = *(*(v28 + 16) + 32);
  *v8 = v30;
  v31 = v95;
  v32 = v86;
  v86(v8, v95, v5);
  v33 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v34 = v94;
  v94(v8, v5);
  if ((v30 & 1) == 0)
  {
    goto LABEL_44;
  }

  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[3] = 0;
  v90 = inited + 3;
  inited[4] = 0;
  v82 = inited + 4;
  inited[5] = 1;
  v92 = inited;
  inited[2] = v28;

  swift_beginAccess();
  v36 = *(*(v28 + 16) + 32);
  *v8 = v36;
  v32(v8, v31, v5);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v34(v8, v5);
  if ((v36 & 1) == 0)
  {
LABEL_37:
    __break(1u);
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
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v38 = v34;
  v89 = (v85 + 7);
  v84 = (v85 + 4);
  v83 = &_swiftEmptyArrayStorage;
  ++v85;
  while (1)
  {
    v42 = v90;
    *v90 = 0;
    v42[1] = 0;
    v92[5] = 1;
    v43 = sqlite3_step(*(v28 + 24));
    if (v43 != 100)
    {
      break;
    }

    v44 = *(*(v28 + 16) + 32);
    *v8 = v44;
    v45 = v11;
    v46 = v28;
    v47 = v95;
    v32(v8, v95, v5);
    swift_retain_n();
    v48 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v38(v8, v5);
    if ((v44 & 1) == 0)
    {
      goto LABEL_38;
    }

    v49 = *(*(v46 + 16) + 32);
    *v8 = v49;
    v32(v8, v47, v5);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v38(v8, v5);
    if ((v49 & 1) == 0)
    {
      goto LABEL_39;
    }

    v51 = *(*(v46 + 16) + 32);
    *v8 = v51;
    v52 = v47;
    v53 = v14;
    v54 = v45;
    v32(v8, v52, v5);
    v55 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v56 = v5;
    v57 = v5;
    v58 = v53;
    v38(v8, v57);
    if ((v51 & 1) == 0)
    {
      goto LABEL_40;
    }

    v28 = v46;
    if (sqlite3_column_type(*(v46 + 24), 0) == 5 || (v59 = sqlite3_column_blob(*(v46 + 24), 0)) == 0)
    {
      v39 = v91;
      (*v89)(v91, 1, 1, v93);

      v38 = v94;
      v11 = v54;
LABEL_7:
      v14 = v58;
      sub_10000CAAC(v39, &qword_1019F6990);
      v5 = v56;
      goto LABEL_8;
    }

    v60 = v59;
    v61 = sqlite3_column_bytes(*(v46 + 24), 0);
    v62 = sub_100024DD4(v60, v61);
    v39 = v91;
    v63 = v88;
    UUID.init(crl_data:)(v62, v64);
    v38 = v94;
    v11 = v54;
    if (v63)
    {

      (*v89)(v39, 1, 1, v93);
      v88 = 0;
      goto LABEL_7;
    }

    v88 = 0;
    v65 = v39;
    v66 = v39;
    v67 = v93;
    (*v89)(v65, 0, 1, v93);
    v86 = *v84;
    v86(v87, v66, v67);
    v68 = *(*(v28 + 16) + 32);
    *v8 = v68;
    v32(v8, v95, v56);
    v69 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v14 = v58;
    v38(v8, v56);
    if ((v68 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (sqlite3_column_type(*(v28 + 24), 1) == 5)
    {
      v70 = 0;
      v5 = v56;
      v71 = 0;
    }

    else
    {
      v5 = v56;
      if (sqlite3_column_text(*(v28 + 24), 1))
      {
        v71 = String.init(cString:)();
        v70 = v72;
      }

      else
      {
        v71 = 0;
        v70 = 0;
      }
    }

    v73 = *(*(v28 + 16) + 32);
    *v8 = v73;
    v32(v8, v95, v5);
    v74 = v73;
    LOBYTE(v73) = _dispatchPreconditionTest(_:)();
    v94(v8, v5);
    if ((v73 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (sqlite3_column_type(*(v28 + 24), 2) == 5)
    {

      (*v85)(v87, v93);

      v38 = v94;
    }

    else
    {
      v75 = sqlite3_column_double(*(v28 + 24), 2);

      type metadata accessor for CRLAssetDatabaseRow();
      v76 = swift_allocObject();
      v86((v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID), v87, v93);
      v77 = (v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      *v77 = v71;
      v77[1] = v70;
      *(v76 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate) = v75;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v38 = v94;
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v86 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v83 = v96;
    }

LABEL_8:
    v40 = *(*(v28 + 16) + 32);
    *v8 = v40;
    v32(v8, v95, v5);
    v41 = v40;
    LOBYTE(v40) = _dispatchPreconditionTest(_:)();
    v38(v8, v5);
    if ((v40 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (v43 && v43 != 101)
  {
    *v90 = v43;
    v78 = v82;
    *v82 = 0;
    v78[1] = 0;
  }

  v79 = *(*(v28 + 16) + 32);
  *v8 = v79;
  v32(v8, v95, v5);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v38(v8, v5);
  if ((v79 & 1) == 0)
  {
LABEL_45:
    __break(1u);
  }

  v81 = *(v28 + 24);
  if (v81)
  {
    sqlite3_finalize(v81);
    *(v28 + 24) = 0;
  }

  return v83;
}

void *sub_100E3819C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v56 = v11;
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v57 = v8;
  v55 = v10;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_100E931D8(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._object = 0x80000001015A3180;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x75755F7465737361;
  v16._object = 0xEA00000000006469;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v59;
  v19 = v60;
  v58 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v22 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = v25;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v24;
      *(inited + 40) = v26;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v27, "Failed to fetch an asset reference with error %@", 48, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v24;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v28 = v21;

  v29 = UUID.crl_data()();
  v53 = v30;
  v31 = *(*(v28 + 16) + 32);
  *v6 = v31;
  v32 = v54;
  v57(v6, v54, v2);
  v33 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v34 = v56;
  v56(v6, v2);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v35 = v53;
  sub_100DCCAB4(v29, v53, v28, 1);
  v52[1] = 0;
  sub_10002640C(v29, v35);
  v36 = *(*(v28 + 16) + 32);
  *v6 = v36;
  v57(v6, v32, v2);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v34(v6, v2);
  if ((v36 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for SQLiteRowIterator();
  v38 = swift_initStackObject();
  v38[3] = 0;
  v39 = v38 + 3;
  v38[4] = 0;
  v53 = v38 + 4;
  v38[5] = 1;
  v38[2] = v28;

  swift_beginAccess();
  v40 = *(*(v28 + 16) + 32);
  *v6 = v40;
  v57(v6, v32, v2);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v56(v6, v2);
  if ((v40 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v39 = 0;
    v38[4] = 0;
    v38[5] = 1;
    v42 = sqlite3_step(*(v28 + 24));
    if (v42 != 100)
    {
      break;
    }

    v43 = swift_retain_n();
    if (sub_100E933E4(v43, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52[0] = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v24 = v58;
    }

    else
    {
    }

    v44 = *(*(v28 + 16) + 32);
    *v6 = v44;
    v57(v6, v54, v2);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v56(v6, v2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v42 && v42 != 101)
  {
    *v39 = v42;
    v46 = v53;
    *v53 = 0;
    v46[1] = 0;
  }

  v47 = *(*(v28 + 16) + 32);
  *v6 = v47;
  v57(v6, v54, v2);
  v48 = v47;
  v49 = _dispatchPreconditionTest(_:)();
  v56(v6, v2);
  if ((v49 & 1) == 0)
  {
LABEL_30:
    __break(1u);
  }

  v50 = *(v28 + 24);
  if (v50)
  {
    sqlite3_finalize(v50);
    *(v28 + 24) = 0;
  }

  return v24;
}

uint64_t sub_100E3892C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v54 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v18 - 8);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v49 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = *a1;
  v55 = v10;
  v56 = v9;
  v58 = *(v10 + 56);
  v58(&v49 - v25, 1, 1, v9, v24);
  v28 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier;
  v53 = a2;
  v29 = *a2;
  if (*(v29 + 16) && (v30 = sub_1007C9460(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerIdentifier), (v31 & 1) != 0))
  {
    v32 = v55;
    sub_10000C83C(*(v29 + 56) + *(v55 + 72) * v30, v14, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v26, &unk_1019F52D0);
    sub_100025668(v14, v17, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v17, v26, type metadata accessor for CRLBoardIdentifier);
    v33 = v56;
    (v58)(v26, 0, 1, v56);
  }

  else
  {
    sub_10000CAAC(v26, &unk_1019F52D0);
    sub_10000C83C(v27 + v28, v8, type metadata accessor for CRLAssetReferrerIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = sub_1005B981C(&qword_1019F4720);
      sub_100025668(&v8[*(v34 + 48)], v26, type metadata accessor for CRLBoardIdentifier);
      v33 = v56;
      (v58)(v26, 0, 1, v56);
      v35 = type metadata accessor for UUID();
      (*(*(v35 - 8) + 8))(v8, v35);
    }

    else
    {
      sub_100025668(v8, v26, type metadata accessor for CRLBoardIdentifier);
      v33 = v56;
      (v58)(v26, 0, 1, v56);
    }

    v32 = v55;
  }

  sub_10000BE14(v26, v22, &unk_1019F52D0);
  if ((*(v32 + 48))(v22, 1, v33) == 1)
  {
    sub_10000CAAC(v26, &unk_1019F52D0);
    sub_10000CAAC(v22, &unk_1019F52D0);
    v36 = type metadata accessor for CRLAssetAddress();
    return (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
  }

  else
  {
    v38 = v28;
    v39 = v51;
    sub_100025668(v22, v51, type metadata accessor for CRLBoardIdentifier);
    v40 = v52;
    sub_10000C83C(v27 + v38, v52, type metadata accessor for CRLAssetReferrerIdentifier);
    v41 = v50;
    sub_10000C83C(v39, v50, type metadata accessor for CRLBoardIdentifier);
    (v58)(v41, 0, 1, v33);
    sub_100BC471C(v41, v40);
    sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v26, &unk_1019F52D0);
    v42 = OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID;
    v43 = type metadata accessor for UUID();
    v44 = v57;
    (*(*(v43 - 8) + 16))(v57, v27 + v42, v43);
    v46 = *(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName);
    v45 = *(v27 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_referrerAssetName + 8);
    v47 = type metadata accessor for CRLAssetAddress();
    sub_10000C83C(v27 + v38, v44 + *(v47 + 24), type metadata accessor for CRLAssetReferrerIdentifier);
    v48 = (v44 + *(v47 + 20));
    *v48 = v46;
    v48[1] = v45;
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
  }
}

uint64_t sub_100E38FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue];
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  aBlock[4] = sub_100026460;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A50F0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);
}

uint64_t sub_100E39374(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_100E3819C();
    v15[0] = _swiftEmptyDictionarySingleton;
    v14 = sub_100DC9C50(v13, v15);

    a3(v14, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E39528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A21CF8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_100E38FB8(a3, sub_100EA2330, v11);
}

uint64_t sub_100E39678(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = *(v5 + 104);
  v42 = enum case for DispatchPredicate.onQueue(_:);
  v43 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_100E2D8C8();
  if (!v2 && result)
  {
    v39[0] = a1;
    v40 = result;
    v41 = v11;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v14 = sub_10001CC04(v13, 0xD000000000000039, 0x80000001015A4520);

    v39[1] = 0;
    static Date.timeIntervalSinceReferenceDate.getter();
    v16 = v15;
    v17 = *(*(v14 + 16) + 32);
    *v7 = v17;
    v18 = v42;
    v43(v7, v42, v4);
    v19 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v41(v7, v4);
    if (v17)
    {
      swift_beginAccess();
      sqlite3_bind_double(*(v14 + 24), 1, v16);
      v20 = UUID.crl_data()();
      v22 = v21;
      v23 = *(*(v14 + 16) + 32);
      *v7 = v23;
      v43(v7, v18, v4);
      v24 = v23;
      LOBYTE(v23) = _dispatchPreconditionTest(_:)();
      v41(v7, v4);
      if (v23)
      {

        sub_100DCCAB4(v20, v22, v14, 2);
        sub_10002640C(v20, v22);
        v25 = *(*(v14 + 16) + 32);
        *v7 = v25;
        v43(v7, v18, v4);
        v26 = v25;
        LOBYTE(v25) = _dispatchPreconditionTest(_:)();
        v41(v7, v4);
        if (v25)
        {
          v27 = *(v14 + 16);

          v28 = sub_10001CEC4(v27, v14);

          if (v28 != 101)
          {
            v44 = 0;
            v45 = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v44 = 0xD000000000000026;
            v45 = 0x80000001015A4560;
            type metadata accessor for UUID();
            sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID);
            v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v32);

            v33 = v44;
            v34 = v45;
            sub_10089C7D0();
            swift_allocError();
            *v35 = v28;
            *(v35 + 8) = v33;
            *(v35 + 16) = v34;
            swift_willThrow();
            v36 = *(*(v14 + 16) + 32);
            *v7 = v36;
            v43(v7, v42, v4);
            v37 = v36;
            LOBYTE(v36) = _dispatchPreconditionTest(_:)();
            v41(v7, v4);
            if (v36)
            {
              v38 = *(v14 + 24);
              if (v38)
              {
                sqlite3_finalize(v38);

                *(v14 + 24) = 0;
              }

              else
              {
              }

              goto LABEL_12;
            }

LABEL_22:
            __break(1u);
          }

          v29 = *(*(v14 + 16) + 32);
          *v7 = v29;
          v43(v7, v42, v4);
          v30 = v29;
          LOBYTE(v29) = _dispatchPreconditionTest(_:)();
          v41(v7, v4);
          if (v29)
          {
            v31 = *(v14 + 24);
            if (v31)
            {
              sqlite3_finalize(v31);
              *(v14 + 24) = 0;
            }

LABEL_12:

            return v40;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100E39C08()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v36 = enum case for DispatchPredicate.onQueue(_:);
  v37 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_100E2D8C8();
  if (!v1 && result)
  {
    v34 = v9;
    v35 = result;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v12 = sub_10001CC04(v11, 0xD000000000000039, 0x80000001015A4760);

    v13 = UUID.crl_data()();
    v33 = v14;
    v15 = *(*(v12 + 16) + 32);
    *v5 = v15;
    v37(v5, v36, v2);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    v34(v5, v2);
    if (v15)
    {

      v17 = v33;
      sub_100DCCAB4(v13, v33, v12, 1);
      sub_10002640C(v13, v17);
      v18 = *(*(v12 + 16) + 32);
      *v5 = v18;
      v37(v5, v36, v2);
      v19 = v18;
      LOBYTE(v18) = _dispatchPreconditionTest(_:)();
      v34(v5, v2);
      if (v18)
      {
        v20 = *(v12 + 16);

        v21 = sub_10001CEC4(v20, v12);

        if (v21 != 101)
        {
          v38 = 0;
          v39 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v38 = 0xD000000000000026;
          v39 = 0x80000001015A47A0;
          type metadata accessor for UUID();
          sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID);
          v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v25);

          v26 = v38;
          v27 = v39;
          sub_10089C7D0();
          swift_allocError();
          *v28 = v21;
          *(v28 + 8) = v26;
          *(v28 + 16) = v27;
          swift_willThrow();
          v29 = *(*(v12 + 16) + 32);
          *v5 = v29;
          v37(v5, v36, v2);
          v30 = v29;
          LOBYTE(v29) = _dispatchPreconditionTest(_:)();
          v34(v5, v2);
          if (v29)
          {
            swift_beginAccess();
            v31 = *(v12 + 24);
            if (v31)
            {
              sqlite3_finalize(v31);

              *(v12 + 24) = 0;
            }

            else
            {
            }

            goto LABEL_15;
          }

LABEL_20:
          __break(1u);
        }

        v22 = *(*(v12 + 16) + 32);
        *v5 = v22;
        v37(v5, v36, v2);
        v23 = v22;
        LOBYTE(v22) = _dispatchPreconditionTest(_:)();
        v34(v5, v2);
        if (v22)
        {
          swift_beginAccess();
          v24 = *(v12 + 24);
          if (v24)
          {
            sqlite3_finalize(v24);
            *(v12 + 24) = 0;
          }

LABEL_15:

          return v35;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100E3A120(void (*a1)(void *, uint64_t))
{
  v37 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v39 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v4 + 104;
  v38 = v8;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = sub_10001CC04(v11, 0xD000000000000027, 0x80000001015A55E0);

  if (v2)
  {
    return result;
  }

  v14 = UUID.crl_data()();
  v35 = v15;
  v16 = v10;
  v17 = *(*(v12 + 16) + 32);
  *v6 = v17;
  v38(v6, v39, v3);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v16(v6, v3);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = v35;
  sub_100DCCAB4(v14, v35, v12, 1);
  sub_10002640C(v14, v19);
  v20 = *(*(v12 + 16) + 32);
  *v6 = v20;
  v38(v6, v39, v3);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v16(v6, v3);
  if ((v20 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v16;
  v23 = *(v12 + 16);

  v24 = sub_10001CEC4(v23, v12);

  if (v24 != 101)
  {
    goto LABEL_8;
  }

  v25 = *(*(v12 + 16) + 32);
  *v6 = v25;
  v38(v6, v39, v3);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v22(v6, v3);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v40 = 0xD000000000000018;
    v41 = 0x80000001015A5610;
    type metadata accessor for UUID();
    sub_1000066D0(&qword_101A02180, &type metadata accessor for UUID);
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v37 = v22;
    v28 = v40;
    v29 = v41;
    sub_10089C7D0();
    swift_allocError();
    *v30 = v24;
    *(v30 + 8) = v28;
    *(v30 + 16) = v29;
    swift_willThrow();
    v31 = *(*(v12 + 16) + 32);
    *v6 = v31;
    v38(v6, v39, v3);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v37(v6, v3);
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

LABEL_9:
  swift_beginAccess();
  v33 = *(v12 + 24);
  if (v33)
  {
    sqlite3_finalize(v33);
    *(v12 + 24) = 0;
  }
}

uint64_t sub_100E3A5C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>, double a3@<D0>)
{
  v60 = a2;
  v6 = type metadata accessor for UUID();
  v70 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v55 - v11;
  __chkstk_darwin(v10);
  v14 = v55 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = v55 - v20;
  Date.init()();
  v71 = &_swiftEmptySetSingleton;
  static Date.distantFuture.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v22 = v21;
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v58 = v19;
  v59 = v24;
  v24(v19, v15);
  v25 = sub_100E3769C();
  if (v3)
  {
    v69 = 0;
    v26 = v60;
LABEL_3:
    if (qword_1019F2258 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  v66 = v14;
  v61 = v6;
  v26 = v25;
  if (v25 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v61;
  v40 = v70;
  v69 = 0;
  v55[1] = v23;
  v56 = v15;
  if (!v38)
  {
LABEL_30:

    result = v59(v68, v56);
    v26 = v60;
    goto LABEL_31;
  }

  v41 = v38;
  v42 = 0;
  v70 = v26 & 0xC000000000000001;
  v62 = v26 & 0xFFFFFFFFFFFFFF8;
  v67 = (v40 + 16);
  v64 = (v40 + 8);
  v57 = v12;
  v65 = v26;
  v63 = v38;
  while (v70)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_33;
    }

LABEL_19:
    v44 = *(v43 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_tombstoneDate);
    if (v44 <= 0.0)
    {
    }

    else
    {
      v45 = v9;
      v46 = a1;
      v47 = v66;
      v48 = *v67;
      (*v67)(v66, v43 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_assetUUID, v39);
      Date.timeIntervalSinceReferenceDate.getter();
      v50 = v49 - v44;
      if (v50 <= a3)
      {
        (*v64)(v47, v39);

        if (v50 >= 0.0)
        {
          if (v22 >= a3 - v50)
          {
            v22 = a3 - v50;
          }
        }

        else if (v22 >= a3)
        {
          v22 = a3;
        }
      }

      else
      {
        v51 = v69;
        sub_100E3A120(v47);
        v69 = v51;
        if (v51)
        {
          (*v64)(v47, v61);

          v69 = 0;
          v26 = v60;
          v15 = v56;
          goto LABEL_3;
        }

        v52 = v61;
        v48(v45, v47, v61);
        v53 = v57;
        sub_100E6AF38(v57, v45);

        v54 = *v64;
        (*v64)(v53, v52);
        v54(v47, v52);
        v39 = v52;
      }

      a1 = v46;
      v9 = v45;
      v26 = v65;
      v41 = v63;
    }

    ++v42;
    if (v15 == v41)
    {
      goto LABEL_30;
    }
  }

  if (v42 >= *(v62 + 16))
  {
    goto LABEL_34;
  }

  v43 = *(v26 + 8 * v42 + 32);

  v15 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_19;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_4:
  v27 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v32, "Failed to purge expired deleted asset files, error %@", 53, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v33 = v58;
  static Date.distantFuture.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v35 = v34;

  v36 = v59;
  v59(v33, v15);
  result = v36(v68, v15);
  if (v22 == v35)
  {
    v22 = a3;
  }

LABEL_31:
  *v26 = v71;
  *(v26 + 8) = v22;
  return result;
}

uint64_t sub_100E3AC40@<X0>(int64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_100DEE194(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void *sub_100E3AC78@<X0>(void *a1@<X8>)
{
  result = sub_100DEDF04();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

char *sub_100E3ACA8@<X0>(char a1@<W1>, char **a2@<X8>)
{
  result = sub_100E3ACDC(a1 & 1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_100E3ACDC(char a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v7 = v8;
  v9 = *(v5 + 104);
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v39 = v9;
  v9(v7);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v38 = *(v5 + 8);
  result = v38(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_100E3CB78(a1 & 1);
  if (v2)
  {
    return result;
  }

  v12 = result;
  v37 = sub_100E3CE24(a1 & 1);
  v36 = sub_100E3D4CC(a1 & 1);
  *v7 = v10;
  v39(v7, v40, v4);
  v35 = v10;
  v13 = _dispatchPreconditionTest(_:)();
  result = v38(v7, v4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_100E3DB78(a1 & 1);
  v42 = &_swiftEmptyDictionarySingleton;
  v15 = v1;
  v33 = sub_100E938DC(v14, v15, &v42, sub_100E40B04);

  v34 = 0;
  v32 = v15;

  v16 = v35;
  *v7 = v35;
  v39(v7, v40, v4);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = v38(v7, v4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = v32;
  v20 = v34;
  v21 = sub_100E23AE4(a1 & 1);
  if (v20)
  {
  }

  else
  {
    v22 = v21;
    v42 = &_swiftEmptyDictionarySingleton;
    v23 = v19;
    v24 = sub_100E938DC(v22, v23, &v42, sub_100E404F0);
    v25 = v33;
    v26 = v24;

    v27 = sub_100641300(v12);

    v28 = sub_10064130C(v37);

    v41 = v27;
    sub_10079BE60(v28);
    v29 = sub_100641318(v36);

    sub_10079BE60(v29);
    v30 = sub_100641324(v25);

    sub_10079BE60(v30);
    v31 = sub_100641330(v26);

    sub_10079BE60(v31);
    return v41;
  }
}

uint64_t sub_100E3B158@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100DEB448();
  if (!v2)
  {
    if (result)
    {
      result = sub_100E917C4(a1, result);
    }

    *a2 = result;
  }

  return result;
}

uint64_t sub_100E3B1B0()
{
  sub_1005B981C(&qword_101A21EB0);
  OS_dispatch_queue.sync<A>(execute:)();
  v69 = v0;
  v10 = v74;
  if (v74 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_137:

    v8 = 0;
    v7 = 0;
    return v8 | v7 & 1u;
  }

  v11 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_137;
  }

LABEL_6:
  v12 = 0;
  v13 = 0;
  v7 = 0;
  v14 = 0;
  v68 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  v15 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v16 = v74 & 0xC000000000000001;
  v70 = v11;
  v71 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  do
  {
    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v12 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      v17 = *(v10 + 8 * v12 + 32);

      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        swift_once();
        v1 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v3 = Error.publicDescription.getter(v72, v73);
        v5 = v4;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v3;
        *(inited + 40) = v5;
        v6 = static os_log_type_t.default.getter();
        sub_100005404(v1, &_mh_execute_header, v6, "Caught error in checkIfBoardHasUnmaterializedAssetsAndUnsupportedBoardItems() %{public}@", 88, 2, inited);

        swift_setDeallocating();
        sub_100005070(inited + 32);
LABEL_2:
        v7 = 1;
        v8 = 256;
        return v8 | v7 & 1u;
      }
    }

    if (v7)
    {
      if (v14)
      {

        goto LABEL_2;
      }

      v7 = 1;
    }

    else
    {
      v19 = *&v69[v68];
      os_unfair_lock_lock(*(v19 + 16));
      v20 = *&v69[v15];
      if (v20)
      {
        v21 = *&v69[v15];
      }

      else
      {
        v22 = v15;
        v23 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v24 = v69;
        v25 = sub_10001F1A0(v24);

        v26 = *&v69[v22];
        *&v69[v22] = v25;
        v21 = v25;

        v20 = 0;
      }

      v27 = *(v19 + 16);
      v28 = v20;
      os_unfair_lock_unlock(v27);
      v7 = sub_101089A84(v17);

      v10 = v74;
      if (v13)
      {

        v13 = 1;
        v11 = v70;
        v15 = v71;
        v16 = v74 & 0xC000000000000001;
        goto LABEL_9;
      }

      v11 = v70;
      v16 = v74 & 0xC000000000000001;
    }

    v29 = *(v17 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
    if (!v29)
    {

      v13 = 0;
      goto LABEL_8;
    }

    v30 = (*v29 + 464);
    v31 = *v30;
    v32 = (*v30)();
    if ((v34 & 0x100) == 0 || (!(v32 | v33) ? (v35 = v34 == 0) : (v35 = 0), v35 || (v32 == 1 ? (v36 = v33 == 0) : (v36 = 0), v36 ? (v37 = v34 == 0) : (v37 = 0), v37 || (v32 == 2 ? (v38 = v33 == 0) : (v38 = 0), v38 ? (v39 = v34 == 0) : (v39 = 0), v39 || (v32 == 3 ? (v40 = v33 == 0) : (v40 = 0), v40 ? (v41 = v34 == 0) : (v41 = 0), !v41)))))
    {
    }

    else
    {
      v65 = objc_opt_self();

      v66 = [v65 standardUserDefaults];
      v67 = [v66 BOOLForKey:@"CRLImageItemsAreUnsupportedWhenDownloadingSendACopyUserDefault"];

      if (v67)
      {
LABEL_54:

        v13 = 1;
        v14 = 1;
        goto LABEL_59;
      }
    }

    v42 = *(v29 + 24);
    if (sub_10001FF1C() < v42)
    {
      goto LABEL_54;
    }

    if ((*(v29 + 16) & 8) == 0)
    {

      v13 = 0;
      v14 = 0;
      goto LABEL_59;
    }

    v43 = v31();
    v45 = v44;
    v47 = v46;

    if ((v47 & 0x100) == 0)
    {
      v13 = v47 | (v45 == 0);
      v14 = v13;
LABEL_59:
      v11 = v70;
LABEL_8:
      v15 = v71;
      goto LABEL_9;
    }

    if (v43 | v45)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47 == 0;
    }

    v15 = v71;
    if (v48 || (v43 == 1 ? (v49 = v45 == 0) : (v49 = 0), v49 ? (v50 = v47 == 0) : (v50 = 0), v50 || (v43 == 2 ? (v51 = v45 == 0) : (v51 = 0), v51 ? (v52 = v47 == 0) : (v52 = 0), v52 || (v43 == 3 ? (v53 = v45 == 0) : (v53 = 0), v53 ? (v54 = v47 == 0) : (v54 = 0), v54 || (v43 == 4 ? (v55 = v45 == 0) : (v55 = 0), v55 ? (v56 = v47 == 0) : (v56 = 0), v56 || (v43 == 5 ? (v57 = v45 == 0) : (v57 = 0), v57 ? (v58 = v47 == 0) : (v58 = 0), v58 || (v43 == 6 ? (v59 = v45 == 0) : (v59 = 0), v59 ? (v60 = v47 == 0) : (v60 = 0), v60 || (v43 == 7 ? (v61 = v45 == 0) : (v61 = 0), v61 ? (v62 = v47 == 0) : (v62 = 0), v62 || (v43 == 8 ? (v63 = v45 == 0) : (v63 = 0), v63 ? (v64 = v47 == 0) : (v64 = 0), v64 || v43 == 9 && !v45 && !v47 || v43 == 10 && !v45 && !v47)))))))))
    {
      v13 = 1;
      v14 = 1;
      v11 = v70;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v11 = v70;
    }

LABEL_9:
    ++v12;
  }

  while (v18 != v11);

  if (v13)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return v8 | v7 & 1u;
}

unint64_t sub_100E3B828@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100E3BA4C();
  if (!v2)
  {
    v6 = result;
    if (result >> 62)
    {
LABEL_22:
      v13 = v6 & 0xFFFFFFFFFFFFFF8;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v12 = a2;
      if (v7)
      {
LABEL_4:
        v11 = a1;
        v8 = 0;
        a2 = _swiftEmptyArrayStorage;
        do
        {
          a1 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v8 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (a1 >= *(v13 + 16))
              {
                goto LABEL_21;
              }

              v9 = *(v6 + 8 * a1 + 32);

              v8 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            v10 = [objc_opt_self() standardUserDefaults];
            a2 = [v10 BOOLForKey:@"CRLImageItemsUseUnsupportedMinVersionUserDefault"];

            if (!a2 || *(v9 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues) != 5)
            {
              break;
            }

            ++a1;
            if (v8 == v7)
            {
              goto LABEL_23;
            }
          }

          sub_100E91F48(v11, v9);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a2 = _swiftEmptyArrayStorage;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v13 = result & 0xFFFFFFFFFFFFFF8;
      v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = a2;
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_23:

    *v12 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100E3BA4C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v60 = *(v3 + 104);
  v60(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v59 = *(v3 + 8);
  v59(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  v57 = v8;
  v58 = v3 + 104;
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v10._countAndFlagsBits = 0x2A205443454C4553;
  v10._object = 0xEE00204D4F524620;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x74695F6472616F62;
  v11._object = 0xEB00000000736D65;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x20455245485720;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._object = 0x8000000101585360;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x444E410A3F203D20;
  v16._object = 0xE900000000000020;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6E6F7473626D6F74;
  v17._object = 0xEA00000000006465;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E410A30203D20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000014;
  v19._object = 0x80000001015A3590;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x3F203D3C20;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);
  v21 = v62;
  v22 = v63;
  v61 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v26 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v28;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v25 = v24;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v55 = sub_10084DAE4();
  v56 = v33;
  v34 = sub_10001FF1C();
  v35 = *(*(v25 + 16) + 32);
  *v6 = v35;
  v36 = v57;
  (v60)(v6, v57, v2);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v59(v6, v2);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_100DCCAB4(v55, v56, v25, 1);
  sub_100034254(v34, 2);
  v38 = *(*(v25 + 16) + 32);
  *v6 = v38;
  (v60)(v6, v36, v2);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v59(v6, v2);
  if ((v38 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v36;
  type metadata accessor for SQLiteRowIterator();
  v41 = swift_initStackObject();
  v41[3] = 0;
  v42 = v41 + 3;
  v41[4] = 0;
  v54 = v41 + 4;
  v41[5] = 1;
  v41[2] = v25;

  swift_beginAccess();
  v43 = *(*(v25 + 16) + 32);
  *v6 = v43;
  (v60)(v6, v40, v2);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v59(v6, v2);
  if ((v43 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v42 = 0;
    v41[4] = 0;
    v41[5] = 1;
    v45 = sqlite3_step(*(v25 + 24));
    if (v45 != 100)
    {
      break;
    }

    v46 = swift_retain_n();
    if (sub_100E9B7E0(v46, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53[1] = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v28 = v61;
    }

    else
    {
    }

    v47 = *(*(v25 + 16) + 32);
    *v6 = v47;
    (v60)(v6, v57, v2);
    v48 = v47;
    LOBYTE(v47) = _dispatchPreconditionTest(_:)();
    v59(v6, v2);
    if ((v47 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v45 && v45 != 101)
  {
    *v42 = v45;
    v49 = v54;
    *v54 = 0;
    v49[1] = 0;
  }

  v50 = *(*(v25 + 16) + 32);
  *v6 = v50;
  (v60)(v6, v57, v2);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v59(v6, v2);
  if ((v50 & 1) == 0)
  {
LABEL_32:
    __break(1u);
  }

  v52 = *(v25 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    sub_10002640C(v55, v56);
    *(v25 + 24) = 0;
  }

  else
  {
    sub_10002640C(v55, v56);
  }

  return v28;
}

void *sub_100E3C2C0()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v46 = *(v3 + 8);
  v46(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  v45 = v8;
  v47 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000053, 0x80000001015A6580);
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v13 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v15;
      *(inited + 40) = v17;
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v18, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v15;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v12 = v11;

  type metadata accessor for CRLBoardIdentifierStorage(0);
  v41 = sub_10084DAE4();
  v42 = v20;
  v21 = *(*(v12 + 16) + 32);
  *v6 = v21;
  v22 = v44;
  v23 = v45;
  v45(v6, v44, v2);
  v24 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v46(v6, v2);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_100DCCAB4(v41, v42, v12, 1);
  v25 = *(*(v12 + 16) + 32);
  *v6 = v25;
  v23(v6, v22, v2);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v46(v6, v2);
  if ((v25 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for SQLiteRowIterator();
  v27 = swift_initStackObject();
  v27[3] = 0;
  v28 = v27 + 3;
  v27[4] = 0;
  v40 = v27 + 4;
  v27[5] = 1;
  v43 = v27;
  v27[2] = v12;

  swift_beginAccess();
  v29 = *(*(v12 + 16) + 32);
  *v6 = v29;
  v45(v6, v22, v2);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v46(v6, v2);
  if ((v29 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v28 = 0;
    v28[1] = 0;
    v43[5] = 1;
    v31 = sqlite3_step(*(v12 + 24));
    if (v31 != 100)
    {
      break;
    }

    v32 = swift_retain_n();
    if (sub_100E9B7E0(v32, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39[1] = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v15 = v47;
    }

    else
    {
    }

    v33 = *(*(v12 + 16) + 32);
    *v6 = v33;
    v45(v6, v44, v2);
    v34 = v33;
    LOBYTE(v33) = _dispatchPreconditionTest(_:)();
    v46(v6, v2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v31 && v31 != 101)
  {
    *v28 = v31;
    v35 = v40;
    *v40 = 0;
    v35[1] = 0;
  }

  v36 = *(*(v12 + 16) + 32);
  *v6 = v36;
  v45(v6, v44, v2);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v46(v6, v2);
  if ((v36 & 1) == 0)
  {
LABEL_32:
    __break(1u);
  }

  v38 = *(v12 + 24);
  if (v38)
  {
    sqlite3_finalize(v38);
    sub_10002640C(v41, v42);
    *(v12 + 24) = 0;
  }

  else
  {
    sub_10002640C(v41, v42);
  }

  return v15;
}

unint64_t sub_100E3C9CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(unint64_t *, uint64_t)@<X3>, void *a5@<X8>)
{
  result = a3(a2);
  if (!v5)
  {
    v10 = result;
    v18 = _swiftEmptyArrayStorage;
    if (result >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = a5;
      v17 = a1;
      v12 = 0;
      a5 = i;
      while ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_14;
        }

LABEL_8:
        a4(v17, v13);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        a1 = &v18;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v12;
        if (v14 == a5)
        {
          v15 = v18;
          a5 = v16;
          goto LABEL_18;
        }
      }

      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = (v12 + 1);
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_18:

    *a5 = v15;
  }

  return result;
}

char *sub_100E3CB78(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = a1 & 1;
    v12 = v3;
    v13 = sub_100E3E3EC(v11);
    if (v2)
    {
      return v12;
    }

    v5 = v13;
    v23 = _swiftEmptyArrayStorage;
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_5:
        v15 = 0;
        v20 = v5 & 0xC000000000000001;
        v12 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v20)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:

              return v12;
            }
          }

          else
          {
            if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_20;
            }

            v16 = *(v5 + 8 * v15 + 32);

            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_17;
            }
          }

          v22 = v16;
          sub_100E3FA50(&v22, v3, &v21);
          if (v2)
          {
            goto LABEL_18;
          }

          if (v21)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v12 = v23;
          }

          ++v15;
          if (v17 == v14)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_22:
  v12 = _swiftEmptyArrayStorage;
LABEL_23:

  return v12;
}

unint64_t sub_100E3CE24(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v55 = v14 & 0xFFFFFFFFFFFFFF8;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  result = sub_100E3EB28(a1 & 1);
  if (v2)
  {
    return result;
  }

  v14 = result;
  v58 = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    goto LABEL_45;
  }

  v55 = result & 0xFFFFFFFFFFFFFF8;
  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v52 = v2;
  v54 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
  swift_beginAccess();
  if (!v16)
  {
    v46 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v17 = 0;
  v53 = v14 & 0xC000000000000001;
  v47 = 0x800000010155E590;
  v46 = _swiftEmptyArrayStorage;
  v48 = xmmword_10146C6B0;
  v50 = v3;
  v51 = v14;
  v45 = v7;
  do
  {
    v7 = v17;
    while (1)
    {
      if (v53)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v7 >= *(v55 + 16))
        {
          goto LABEL_43;
        }

        v18 = *(v14 + 8 * v7 + 32);

        v17 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v19 = *(v3 + v54);
      v20 = v18 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      if (*(v19 + 16))
      {

        v21 = sub_1000486F0(v20);
        if (v22)
        {
          v23 = *(*(v19 + 56) + 8 * v21);

          v24 = *(v23 + 17);

          if (v24)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v25 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v48;
            v27 = (v20 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
            v28 = *v27;
            v29 = v27[1];
            if (*v27)
            {
              v30 = 0;
            }

            else
            {
              v30 = v29 == 0xE000000000000000;
            }

            v49 = v25;
            if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v28 = 0xD000000000000012;
              v29 = v47;
            }

            else
            {
            }

            v56 = UUID.uuidString.getter();
            v57 = v34;
            v35._countAndFlagsBits = 15418;
            v35._object = 0xE200000000000000;
            String.append(_:)(v35);
            v36._countAndFlagsBits = v28;
            v36._object = v29;
            String.append(_:)(v36);

            v37._countAndFlagsBits = 62;
            v37._object = 0xE100000000000000;
            String.append(_:)(v37);
            v38 = v56;
            v39 = v57;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v38;
            *(inited + 40) = v39;
            v40 = static os_log_type_t.default.getter();
            sub_100005404(v49, &_mh_execute_header, v40, "Excluding CKShare from unsynced changes. Board identifier: %{public}@", 69, 2, inited);

            swift_setDeallocating();
            sub_100005070(inited + 32);
            v3 = v50;
            v14 = v51;
            goto LABEL_9;
          }
        }

        else
        {
        }
      }

      v31 = *(v18 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
      if (v31 >> 60 != 15)
      {
        break;
      }

LABEL_9:
      ++v7;
      if (v17 == v16)
      {
        goto LABEL_39;
      }
    }

    v32 = *(v18 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &qword_1019F52C0);
    sub_100024E84(v32, v31);
    sub_100024E98(v32, v31);
    v2 = v52;
    v33 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_100025870(v32, v31);
    sub_100025870(v32, v31);
    v52 = v2;
    if (v2)
    {
    }

    v14 = v51;
    if (!v33)
    {

      v3 = v50;
      goto LABEL_9;
    }

    v41 = v45;
    sub_10000C83C(v20, v45, type metadata accessor for CRLBoardIdentifier);
    v42 = *(v18 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges);

    type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
    v43 = swift_allocObject();
    *(v43 + OBJC_IVAR____TtC8Freeform34CRLBoardShareSyncLocalChangeRecord_unsyncedChanges) = v42;
    sub_100025668(v41, v43 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v43 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare) = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v3 = v50;
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v46 = v58;
  }

  while (v17 != v16);
LABEL_39:

  return v46;
}

void *sub_100E3D4CC(char a1)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A22E60);
  __chkstk_darwin(v8 - 8);
  v48 = &v38 - v9;
  v46 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = sub_100E3F264(a1 & 1);
  v15 = v2;
  if (!v2)
  {
    v11 = v18;
    v54 = _swiftEmptyArrayStorage;
    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v48; v19; i = v48)
    {
      v43 = v1;
      v21 = 0;
      v45 = v11 & 0xC000000000000001;
      v44 = v11 & 0xFFFFFFFFFFFFFF8;
      v40 = v50 + 7;
      v41 = v19;
      v42 = v11;
      while (v45)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_18;
        }

LABEL_9:
        v49 = v23;
        sub_100024E98(*(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData), *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_crdtData + 8));
        sub_1000066D0(&unk_101A22E20, type metadata accessor for CRLUserBoardMetadataCRDTData);
        v24 = v46;
        CRDT.init(serializedData:)();
        if (v15)
        {

          (*v40)(i, 1, 1, v24);
          sub_10000CAAC(i, &unk_101A22E60);
          v25 = 0;
          v50 = 0;
        }

        else
        {
          v50 = 0;
          (*v40)(i, 0, 1, v24);
          v26 = v39;
          sub_100025668(i, v39, type metadata accessor for CRLUserBoardMetadataCRDTData);
          sub_10000C83C(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v7, type metadata accessor for CRLBoardIdentifier);
          v27 = *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);
          type metadata accessor for CRLUserBoardMetadataData();
          v25 = swift_allocObject();
          sub_100025668(v7, v25 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
          sub_100025668(v26, v25 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);
          *(v25 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v27;
        }

        sub_10000C83C(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_boardIdentifier, v7, type metadata accessor for CRLBoardIdentifier);
        v28 = v7;
        v29 = *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges);
        v30 = *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData);
        v31 = *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_syncData + 8);
        v32 = *(v22 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_minRequiredVersionForFullFidelity);
        v52 = ObjectType;
        v53 = &off_1018A4BB8;
        sub_100024E84(v30, v31);
        v33 = v43;

        *&v51 = v33;
        type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
        v34 = swift_allocObject();
        v35 = OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData;
        *(v34 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData) = 0;
        sub_100050F74(&v51, v34 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_persistenceContext);
        *(v34 + v35) = v25;
        *(v34 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_unsyncedChanges) = v29;
        v7 = v28;
        sub_100025668(v28, v34 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        v36 = (v34 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData);
        *v36 = v30;
        v36[1] = v31;
        *(v34 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity) = v32;
        v1 = &v54;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v21;
        v11 = v42;
        i = v48;
        v15 = v50;
        if (v49 == v41)
        {
          v3 = v54;
          goto LABEL_23;
        }
      }

      if (v21 >= *(v44 + 16))
      {
        goto LABEL_19;
      }

      v22 = *(v11 + 8 * v21 + 32);

      v23 = v21 + 1;
      if (!__OFADD__(v21, 1))
      {
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  return v3;
}

void *sub_100E3DB78(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v77 = v13;
  v13(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  v74 = v10;
  v75 = v9;
  v76 = v12;
  v14 = 15677;
  if (a1)
  {
    v14 = 15649;
  }

  v72 = v14;
  v79 = 0;
  v80 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xEB00000000736D65);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x204D4F524620;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x74695F6472616F62;
  v18._object = 0xEB00000000736D65;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x4A2052454E4E490ALL;
  v19._object = 0xEC000000204E494FLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 542002976;
  v21._object = 0xE400000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x74695F6472616F62;
  v22._object = 0xEB00000000736D65;
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
  v26._countAndFlagsBits = 0x736472616F62;
  v26._object = 0xE600000000000000;
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
  v30._countAndFlagsBits = 0x74695F6472616F62;
  v30._object = 0xEB00000000736D65;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._object = 0x80000001015A33D0;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x444E412030203E20;
  v33._object = 0xE900000000000020;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x736472616F62;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x616E5F72656E776FLL;
  v36._object = 0xEA0000000000656DLL;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = v72;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 16160;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40 = v79;
  v41 = v80;
  v78 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v43 = v73;
  v44 = sub_10001CC04(v42, v40, v41);
  v73 = v43;
  if (v43)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v45 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = v48;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v47;
      *(inited + 40) = v49;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v45, &_mh_execute_header, v50, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v47;
    }

LABEL_28:
    swift_once();
    goto LABEL_6;
  }

  v51 = v44;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v52 = *(*(v51 + 16) + 32);
  *v7 = v52;
  v53 = v75;
  v54 = v74;
  v74(v7, v75, v4);
  v55 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v77(v7, v4);
  if ((v52 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for SQLiteRowIterator();
  v56 = v54;
  v57 = swift_initStackObject();
  v57[3] = 0;
  v58 = v57 + 3;
  v57[4] = 0;
  v72 = v57 + 4;
  v57[5] = 1;
  v57[2] = v51;

  swift_beginAccess();
  v59 = *(*(v51 + 16) + 32);
  *v7 = v59;
  v56(v7, v53, v4);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v77(v7, v4);
  if ((v59 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v47 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v58 = 0;
    v57[4] = 0;
    v57[5] = 1;
    v61 = sqlite3_step(*(v51 + 24));
    if (v61 != 100)
    {
      break;
    }

    v62 = swift_retain_n();
    if (sub_100E9B7E0(v62, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v47 = v78;
    }

    else
    {
    }

    v63 = *(*(v51 + 16) + 32);
    *v7 = v63;
    v74(v7, v75, v4);
    v64 = v63;
    LOBYTE(v63) = _dispatchPreconditionTest(_:)();
    v77(v7, v4);
    if ((v63 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v61 && v61 != 101)
  {
    *v58 = v61;
    v65 = v72;
    *v72 = 0;
    v65[1] = 0;
  }

  v66 = *(*(v51 + 16) + 32);
  *v7 = v66;
  v74(v7, v75, v4);
  v67 = v66;
  v68 = _dispatchPreconditionTest(_:)();
  v77(v7, v4);
  if ((v68 & 1) == 0)
  {
LABEL_30:
    __break(1u);
  }

  v69 = *(v51 + 24);
  if (v69)
  {
    sqlite3_finalize(v69);
    *(v51 + 24) = 0;
  }

  return v47;
}

void *sub_100E3E3EC(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v55 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v57 = *(v6 + 8);
  v57(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  v56 = v10;
  if (a1)
  {
    v12 = 15649;
  }

  else
  {
    v12 = 15677;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v13._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x736472616F62;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x20455245485720;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._object = 0x80000001015A33D0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E412030203E20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x616E5F72656E776FLL;
  v19._object = 0xEA0000000000656DLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v12;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 16160;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23 = v59;
  v24 = v60;
  v58 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = sub_10001CC04(v25, v23, v24);
  v54 = v2;
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v29;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v33 = v26;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v34 = *(*(v33 + 16) + 32);
  *v8 = v34;
  v35 = v55;
  v56(v8, v55, v5);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v37 = v35;
  v38 = swift_initStackObject();
  v38[3] = 0;
  v39 = v38 + 3;
  v38[4] = 0;
  v53 = v38 + 4;
  v38[5] = 1;
  v38[2] = v33;

  swift_beginAccess();
  v40 = *(*(v33 + 16) + 32);
  *v8 = v40;
  v56(v8, v37, v5);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v40 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v39 = 0;
    v38[4] = 0;
    v38[5] = 1;
    v42 = sqlite3_step(*(v33 + 24));
    if (v42 != 100)
    {
      break;
    }

    v43 = swift_retain_n();
    if (sub_1000826B0(v43, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52[1] = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v29 = v58;
    }

    else
    {
    }

    v44 = *(*(v33 + 16) + 32);
    *v8 = v44;
    v56(v8, v55, v5);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v57(v8, v5);
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v42 && v42 != 101)
  {
    *v39 = v42;
    v46 = v53;
    *v53 = 0;
    v46[1] = 0;
  }

  v47 = *(*(v33 + 16) + 32);
  *v8 = v47;
  v56(v8, v55, v5);
  v48 = v47;
  v49 = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v50 = *(v33 + 24);
  if (v50)
  {
    sqlite3_finalize(v50);
    *(v33 + 24) = 0;
  }

  return v29;
}

void *sub_100E3EB28(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v55 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v57 = *(v6 + 8);
  v57(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_28;
  }

  v56 = v10;
  if (a1)
  {
    v12 = 15649;
  }

  else
  {
    v12 = 15677;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v59 = 0x205443454C4553;
  v60 = 0xE700000000000000;
  v13._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x736472616F62;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x20455245485720;
  v16._object = 0xE700000000000000;
  String.append(_:)(v16);
  v17._object = 0x80000001015A37D0;
  v17._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E412031203D20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x616E5F72656E776FLL;
  v19._object = 0xEA0000000000656DLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 32;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v12;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 16160;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23 = v59;
  v24 = v60;
  v58 = _swiftEmptyArrayStorage;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v26 = sub_10001CC04(v25, v23, v24);
  v54 = v2;
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_7:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      return v29;
    }

LABEL_29:
    swift_once();
    goto LABEL_7;
  }

  v33 = v26;

  sub_1000285F8(0, 0xE000000000000000, 1);
  v34 = *(*(v33 + 16) + 32);
  *v8 = v34;
  v35 = v55;
  v56(v8, v55, v5);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  type metadata accessor for SQLiteRowIterator();
  v37 = v35;
  v38 = swift_initStackObject();
  v38[3] = 0;
  v39 = v38 + 3;
  v38[4] = 0;
  v53 = v38 + 4;
  v38[5] = 1;
  v38[2] = v33;

  swift_beginAccess();
  v40 = *(*(v33 + 16) + 32);
  *v8 = v40;
  v56(v8, v37, v5);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v40 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    *v39 = 0;
    v38[4] = 0;
    v38[5] = 1;
    v42 = sqlite3_step(*(v33 + 24));
    if (v42 != 100)
    {
      break;
    }

    v43 = swift_retain_n();
    if (sub_1000826B0(v43, 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52[1] = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v29 = v58;
    }

    else
    {
    }

    v44 = *(*(v33 + 16) + 32);
    *v8 = v44;
    v56(v8, v55, v5);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v57(v8, v5);
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v42 && v42 != 101)
  {
    *v39 = v42;
    v46 = v53;
    *v53 = 0;
    v46[1] = 0;
  }

  v47 = *(*(v33 + 16) + 32);
  *v8 = v47;
  v56(v8, v55, v5);
  v48 = v47;
  v49 = _dispatchPreconditionTest(_:)();
  v57(v8, v5);
  if ((v49 & 1) == 0)
  {
LABEL_31:
    __break(1u);
  }

  v50 = *(v33 + 24);
  if (v50)
  {
    sqlite3_finalize(v50);
    *(v33 + 24) = 0;
  }

  return v29;
}