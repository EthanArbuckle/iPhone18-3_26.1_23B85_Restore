void *sub_100033DB0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v35 = a3;
  v36 = a4;
  v6 = a2(0);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v33 = &v30 - v7;
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v30 = v4;
    v40 = _swiftEmptyArrayStorage;
    sub_100034080(0, v8, 0);
    v10 = v40;
    v39 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v31 = a1 + 64;
    v32 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v16 = v33;
      sub_10000C83C(*(a1 + 48) + *(v34 + 72) * v11, v33, v35);
      v38 = UUID.uuidString.getter();
      v18 = v17;
      result = sub_100026028(v16, v36);
      v19 = v10;
      v40 = v10;
      v20 = v10[2];
      v21 = v19[3];
      if (v20 >= v21 >> 1)
      {
        result = sub_100034080((v21 > 1), v20 + 1, 1);
        v19 = v40;
      }

      v19[2] = v20 + 1;
      v22 = &v19[2 * v20];
      v22[4] = v38;
      v22[5] = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v23 = *(v39 + 8 * v15);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v10 = v19;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v32;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v14 = v32;
        v27 = (v31 + 8 * v15);
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1000341AC(v11, v37, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v11, v37, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v10;
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
  }

  return result;
}

char *sub_100034080(char *a1, int64_t a2, char a3)
{
  result = sub_1000340A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000340A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_1019F61D0);
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

uint64_t sub_1000341AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_1000341B8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_100034254(sqlite3_int64 a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + 16);
  v8 = *(v7 + 32);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v4 + 8);
  result = v13(v6, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v7 + 32);
  *v6 = v15;
  v10(v6, v9, v3);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = v13(v6, v3);
  if ((v17 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    return sqlite3_bind_int64(*(v2 + 24), v20, v19);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100034410()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  v7 = *(v6 + 32);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v24 = *(v3 + 104);
  v24(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v25 = *(v3 + 8);
  v25(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = sub_10001CC04(v10, 0xD000000000000012, 0x8000000101572940);

  if (v1)
  {
    return result;
  }

  v13 = *(*(v11 + 16) + 32);
  *v5 = v13;
  v24(v5, v8, v2);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v25(v5, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(v11 + 16);

  v16 = sub_10001CEC4(v15, v11);

  *(v6 + 24) = 0;
  if (v16 != 101)
  {
    goto LABEL_7;
  }

  v17 = *(*(v11 + 16) + 32);
  *v5 = v17;
  v24(v5, v8, v2);
  v18 = v17;
  v8 = _dispatchPreconditionTest(_:)();
  v25(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    sub_10089C7D0();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = 0xD00000000000001ELL;
    *(v19 + 16) = 0x8000000101572960;
    swift_willThrow();
    v20 = *(*(v11 + 16) + 32);
    *v5 = v20;
    v24(v5, v8, v2);
    v21 = v20;
    v22 = _dispatchPreconditionTest(_:)();
    v25(v5, v2);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v23 = *(v11 + 24);
  if (v23)
  {
    sqlite3_finalize(v23);
    *(v11 + 24) = 0;
  }
}

uint64_t sub_100034778(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchTime();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v32 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v32 = v18;
  v20 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem;
  if (!*(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_deletedBoardsCleanupWorkItem) || (, v21 = dispatch thunk of DispatchWorkItem.isCancelled.getter(), , (v21 & 1) != 0))
  {
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    aBlock[4] = sub_100EA4374;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A5E60;
    _Block_copy(aBlock);
    v37 = _swiftEmptyArrayStorage;

    sub_10002E7A8(a1);
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v24 = DispatchWorkItem.init(flags:block:)();

    *(v4 + v20) = v24;

    v25 = v33;
    static DispatchTime.now()();
    v26 = v34;
    + infix(_:_:)();
    v27 = v36;
    v28 = *(v35 + 8);
    v28(v25, v36);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v28)(v26, v27);
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v30 = static OS_os_log.boardStore;
  v31 = static os_log_type_t.error.getter();
  return sub_100005404(v30, &_mh_execute_header, v31, "Failed to schedule cleanup for boards past TTL. Found existing cleanup task", 75, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100034C78(uint64_t a1)
{

  if (*(v1 + 24))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100034CCC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&unk_101A22E80);
    sub_1000066D0(a2, type metadata accessor for CRLBoardIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100034DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100034E18(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100034DE4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100034E18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100034E18(void *a1)
{
  v89 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v3 + 104;
  v9 = *(v3 + 104);
  (v9)(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v6;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v3 + 8);
  v87 = v2;
  v93 = (v3 + 8);
  (v12)(v5, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v91 = v9;
  v92 = v12;
  v97 = 0;
  v98 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v13._countAndFlagsBits = 0x205443454C4553;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x65756C6176;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x756C61765F79656BLL;
  v16._object = 0xEE00617461645F65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20455245485720;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 7955819;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x2720454B494C20;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6F7A5F6863746566;
  v20._object = 0xEA0000000000656ELL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x4320444E41202725;
  v21._object = 0xEC00000028545341;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E695F6172747865;
  v22._object = 0xEA00000000006F66;
  String.append(_:)(v22);
  v23._object = 0x80000001015A8D60;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24 = v97;
  v25 = v98;
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v28 = v24;
  v11 = inited;
  v29 = v90;
  v30 = sub_10001CC04(v27, v28, v25);
  v31 = v29;
  if (v29)
  {
LABEL_3:

    if (qword_1019F2160 == -1)
    {
LABEL_4:
      v32 = static OS_os_log.crlZoneRefetch;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v32, &_mh_execute_header, v33, "Failed to fetch zones needing refetching from the datastore.", 60, 2, _swiftEmptyArrayStorage);
      swift_willThrow();
      return v11;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v34 = v30;

  sub_100034254(v89, 1);
  v96 = &_swiftEmptySetSingleton;
  v35 = *(*(v34 + 16) + 32);
  *v5 = v35;
  v36 = v87;
  (v91)(v5, v7, v87);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v38 = v92;
  (v92)(v5, v36);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v86 = 0;
  type metadata accessor for SQLiteRowIterator();
  v39 = swift_initStackObject();
  v39[3] = 0;
  v89 = v39 + 3;
  v39[4] = 0;
  v85 = v39 + 4;
  v39[5] = 1;
  v90 = v39;
  v39[2] = v34;

  swift_beginAccess();
  v40 = *(*(v34 + 16) + 32);
  *v5 = v40;
  (v91)(v5, v7, v36);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  (v38)(v5, v36);
  v42 = v91;
  if (v40)
  {
    v38 = v34;
    v84 = xmmword_1014B6250;
    v88 = v8;
    while (1)
    {
      v43 = v89;
      *v89 = 0;
      v43[1] = 0;
      v90[5] = 1;
      v44 = sqlite3_step(v38[3]);
      if (v44 != 100)
      {
        break;
      }

      v45 = *(v38[2] + 4);
      *v5 = v45;
      (v42)(v5, v7, v36);

      v46 = v45;
      LOBYTE(v45) = _dispatchPreconditionTest(_:)();
      v31 = v42;
      v42 = v7;
      v47 = v92;
      v7 = v93;
      (v92)(v5, v36);
      if ((v45 & 1) == 0)
      {
        goto LABEL_37;
      }

      v48 = *(v38[2] + 4);
      *v5 = v48;
      v49 = v36;
      v36 = v42;
      v50 = v42;
      v42 = v49;
      v31(v5, v50);
      v51 = v48;
      LOBYTE(v48) = _dispatchPreconditionTest(_:)();
      v31 = v5;
      v52 = v42;
      (v47)(v5, v42);
      if ((v48 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (sqlite3_column_type(v38[3], 0) != 5 && (v53 = sqlite3_column_blob(v38[3], 0)) != 0)
      {
        v87 = v53;
        v61 = sqlite3_column_bytes(v38[3], 0);
        v42 = v91;
        v7 = v36;
        if (v61)
        {
          v36 = v52;
          if (v61 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v95 = v61;
            memcpy(__dst, v87, v61);
            v87 = *__dst;
            v31 = (v83 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v95 << 16)) << 32));
            v83 = v31;
          }

          else
          {
            v62 = v61;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            if (v62 == 0x7FFFFFFF)
            {
              v63 = __DataStorage.init(bytes:length:)();
              type metadata accessor for Data.RangeReference();
              v87 = swift_allocObject();
              *(v87 + 1) = v84;
              v31 = (v63 | 0x8000000000000000);
            }

            else
            {
              v64 = __DataStorage.init(bytes:length:)();
              v87 = (v62 << 32);
              v31 = (v64 | 0x4000000000000000);
            }
          }
        }

        else
        {
          v87 = 0;
          v36 = v52;
          v31 = 0xC000000000000000;
        }

        sub_100006370(0, &qword_101A1AEB0);
        sub_100006370(0, &qword_1019F69D0);
        v65 = v86;
        v66 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v86 = v65;
        if (v65)
        {
          goto LABEL_39;
        }

        if (v66)
        {
          v67 = v66;
          sub_100E7227C(__dst, v67, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
          sub_10002640C(v87, v31);
        }

        else
        {

          sub_10002640C(v87, v31);
        }

        v68 = *(v38[2] + 4);
        *v5 = v68;
        (v42)(v5, v7, v36);
        v69 = v68;
        v58 = _dispatchPreconditionTest(_:)();
        v59 = v5;
        v60 = v36;
      }

      else
      {

        v54 = *(v38[2] + 4);
        *v5 = v54;
        v7 = v36;
        v55 = v36;
        v36 = v42;
        v56 = v42;
        v42 = v91;
        (v91)(v5, v55, v56);
        v57 = v54;
        v58 = _dispatchPreconditionTest(_:)();
        v59 = v5;
        v60 = v52;
      }

      (v92)(v59, v60);
      if ((v58 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v70 = v36;
    v71 = v5;
    if (v44 && v44 != 101)
    {
      *v89 = v44;
      v72 = v85;
      *v85 = 0;
      v72[1] = 0;
    }

    v11 = v96;
    v73 = v38;
    v74 = *(v38[2] + 4);
    *v71 = v74;
    (v42)(v71, v7, v70);
    v75 = v74;
    v76 = _dispatchPreconditionTest(_:)();
    (v92)(v71, v70);
    if (v76)
    {
      v77 = v73[3];
      if (v77)
      {
        sqlite3_finalize(v77);
        v73[3] = 0;
      }

      return v11;
    }

LABEL_45:
    __break(1u);
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  sub_10002640C(v87, v31);

  v79 = *(v38[2] + 4);
  *v5 = v79;
  (v42)(v5, v7, v36);
  v80 = v79;
  v11 = _dispatchPreconditionTest(_:)();
  result = (v92)(v5, v36);
  if (v11)
  {
    v81 = v38[3];
    if (v81)
    {
      sqlite3_finalize(v81);
      v38[3] = 0;
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035838()
{

  sub_10001E364(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_10003587C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v29 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v7;
    v27 = &v24;
    __chkstk_darwin(v9);
    v26 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v8);
    v28 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v30 = *(*(a1 + 48) + 8 * v16);
      v17 = v30;
      v18 = sub_100BF540C(&v30, v29);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v19 = v18;

      if (v19)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_100035D8C(v26, v25, v28, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v29;

  v10 = sub_100BF566C(v22, v7, a1, v23);

LABEL_18:

  return v10;
}

Swift::Int sub_100035B2C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v20 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100006370(0, &qword_1019F69D0);
      while (1)
      {
        swift_dynamicCast();
        v5 = sub_100BF540C(&v19, a2);
        if (v2)
        {
          break;
        }

        v6 = v19;
        if (v5)
        {
          v7 = v4[2];
          if (v4[3] <= v7)
          {
            sub_100E78C7C(v7 + 1);
          }

          v4 = v20;
          result = NSObject._rawHashValue(seed:)(v20[5]);
          v9 = (v4 + 7);
          v10 = -1 << *(v4 + 32);
          v11 = result & ~v10;
          v12 = v11 >> 6;
          if (((-1 << v11) & ~v4[(v11 >> 6) + 7]) != 0)
          {
            v13 = __clz(__rbit64((-1 << v11) & ~v4[(v11 >> 6) + 7])) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v14 = 0;
            v15 = (63 - v10) >> 6;
            do
            {
              if (++v12 == v15 && (v14 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v16 = v12 == v15;
              if (v12 == v15)
              {
                v12 = 0;
              }

              v14 |= v16;
              v17 = *&v9[8 * v12];
            }

            while (v17 == -1);
            v13 = __clz(__rbit64(~v17)) + (v12 << 6);
          }

          *&v9[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
          *(v4[6] + 8 * v13) = v6;
          ++v4[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v18 = v19;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v4 = sub_10003587C(a1, a2);
  }

  return v4;
}

uint64_t sub_100035DA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_1005B981C(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100035FBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v157 = a2;
  v3 = sub_1005B981C(&qword_1019F6990);
  v4 = __chkstk_darwin(v3 - 8);
  v151 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v150 = &v150 - v7;
  v8 = __chkstk_darwin(v6);
  v160 = &v150 - v9;
  __chkstk_darwin(v8);
  v159 = &v150 - v10;
  v189 = _s5BoardVMa(0);
  v11 = __chkstk_darwin(v189);
  v163 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v188 = &v150 - v13;
  v178 = type metadata accessor for UUID();
  v165 = *(v178 - 8);
  v14 = __chkstk_darwin(v178);
  v153 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v152 = &v150 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v150 - v19;
  v20 = __chkstk_darwin(v18);
  v184 = &v150 - v21;
  __chkstk_darwin(v20);
  v167 = &v150 - v22;
  v185 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = __chkstk_darwin(v185);
  v154 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v155 = &v150 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v150 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v150 - v31;
  __chkstk_darwin(v30);
  v169 = &v150 - v33;
  v34 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v35 = __chkstk_darwin(v34 - 8);
  v162 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v166 = &v150 - v37;
  v38 = _s4NodeVMa(0);
  v182 = *(v38 - 8);
  v39 = __chkstk_darwin(v38);
  v180 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v181 = &v150 - v42;
  v43 = __chkstk_darwin(v41);
  v172 = &v150 - v44;
  v45 = __chkstk_darwin(v43);
  v171 = &v150 - v46;
  v47 = __chkstk_darwin(v45);
  v187 = &v150 - v48;
  v49 = __chkstk_darwin(v47);
  v190 = (&v150 - v50);
  v51 = __chkstk_darwin(v49);
  v53 = &v150 - v52;
  v54 = __chkstk_darwin(v51);
  v168 = &v150 - v55;
  __chkstk_darwin(v54);
  v57 = &v150 - v56;
  v156 = sub_100037968(a1);
  v58 = sub_100038D28(_swiftEmptyArrayStorage);
  v192 = a1;
  v59 = *(a1 + 16);

  v158 = v58;
  v161 = a1;
  v170 = v29;
  v183 = v38;
  if (v59)
  {
    v186 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v164 = (v165 + 8);
    v60 = v161;
    v58 = v158;
    v176 = v57;
    v177 = v53;
    do
    {
      sub_10003CA5C(v60 + v186, v53, _s4NodeVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > v60[3] >> 1)
      {
        v60 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v59, 1, v60);
      }

      v62 = v60 + v186;
      result = sub_10003E060(v60 + v186, _s4NodeVMa);
      v64 = *(v182 + 72);
      if (v64 > 0 || v62 >= v62 + v64 + (v60[2] - 1) * v64)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v64)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v65 = v60;
      v66 = v60[2] - 1;
      v65[2] = v66;
      v67 = *&v53[*(v38 + 20)];
      v68 = *(v67 + 16);
      v69 = &v68[v66];
      if (__OFADD__(v66, v68))
      {
        goto LABEL_72;
      }

      v192 = v65;
      v179 = v65;
      v70 = v65[3];

      v175 = v64;
      if (v69 > (v70 >> 1))
      {
        if (v66 <= v69)
        {
          v92 = &v68[v66];
        }

        else
        {
          v92 = v66;
        }

        v179 = sub_10003DFD0(1uLL, v92, 1, v179);
        v192 = v179;
      }

      sub_10003E0C0(0, 0, v68, v67);

      v53 = v177;
      v71 = v168;
      sub_10003DF00(v177, v168, _s4NodeVMa);
      v72 = v176;
      sub_10003DF00(v71, v176, _s4NodeVMa);
      v73 = v169;
      sub_10003CA5C(v72, v169, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v68 = v185;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v183;
      if (EnumCaseMultiPayload == 1)
      {
        v174 = v58;
        sub_10003DF00(v73, v166, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        result = sub_10003E264(v167);
        v75 = *(v72 + *(v38 + 20));
        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = 0;
          v78 = v75 + v186;
          v79 = _swiftEmptyArrayStorage;
          v80 = v175;
          v66 = v190;
          while (v77 < *(v75 + 16))
          {
            sub_10003CA5C(v78, v66, _s4NodeVMa);
            sub_10003CA5C(v66, v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v81 = v32;
              v82 = v32;
              v83 = v188;
              sub_10003DF00(v82, v188, _s5BoardVMa);
              v84 = v83[*(v189 + 13)];
              sub_10003E060(v83, _s5BoardVMa);
              if (v84)
              {
                v66 = v190;
                result = sub_10003E060(v190, _s4NodeVMa);
                v32 = v81;
              }

              else
              {
                sub_10003DF00(v190, v187, _s4NodeVMa);
                v85 = swift_isUniquelyReferenced_nonNull_native();
                v191 = v79;
                if ((v85 & 1) == 0)
                {
                  sub_100776804(0, *(v79 + 2) + 1, 1);
                  v79 = v191;
                }

                v32 = v81;
                v87 = *(v79 + 2);
                v86 = *(v79 + 3);
                if (v87 >= v86 >> 1)
                {
                  sub_100776804(v86 > 1, v87 + 1, 1);
                  v79 = v191;
                }

                *(v79 + 2) = v87 + 1;
                result = sub_10003DF00(v187, &v79[v186 + v87 * v80], _s4NodeVMa);
                v68 = v185;
                v66 = v190;
              }
            }

            else
            {
              sub_10003E060(v66, _s4NodeVMa);
              result = sub_10003E060(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
            }

            ++v77;
            v78 += v80;
            if (v76 == v77)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_71;
        }

        v79 = _swiftEmptyArrayStorage;
LABEL_30:
        v88 = *(v79 + 2);

        v89 = v174;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v191 = v89;
        v91 = v167;
        sub_10003E7F8(v88, v167, v90);
        (*v164)(v91, v178);
        sub_10003E060(v166, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003E060(v176, _s4NodeVMa);
        v58 = v191;
        v29 = v170;
        v38 = v183;
        v53 = v177;
      }

      else
      {
        sub_10003E060(v72, _s4NodeVMa);
        sub_10003E060(v73, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      v60 = v179;
      v59 = v179[2];
    }

    while (v59);
  }

  v174 = v58;

  v68 = sub_100038F10(_swiftEmptyArrayStorage);
  v192 = v161;
  v93 = v161[2];

  v186 = v68;
  v94 = v178;
  if (v93)
  {
    v95 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v189 = (v165 + 48);
    v190 = (v165 + 16);
    v96 = (v165 + 32);
    v187 = "odel index path %@";
    v188 = "00-0000-000000000001";
    v66 = v165 + 8;
    v97 = v161;
    v68 = v186;
    while (1)
    {
      sub_10003CA5C(v97 + v95, v181, _s4NodeVMa);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      if (!v98 || (v93 - 1) > v97[3] >> 1)
      {
        v97 = sub_10003DFD0(v98, v93, 1, v97);
      }

      sub_10003E060(v97 + v95, _s4NodeVMa);
      v99 = *(v182 + 72);
      if (v99 > 0 || v97 + v95 >= v97 + v95 + v99 + (v97[2] - 1) * v99)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v99)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v97[2];
      v192 = v97;
      v100 = v181;

      sub_10003F1A0(v101);
      v102 = v100;
      v103 = v172;
      sub_10003DF00(v102, v172, _s4NodeVMa);
      v104 = v171;
      sub_10003DF00(v103, v171, _s4NodeVMa);
      sub_10003CA5C(v104, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v105 = swift_getEnumCaseMultiPayload();
      if (v105)
      {
        v106 = v173;
        if (v105 == 1)
        {
          v107 = v162;
          sub_10003DF00(v29, v162, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10003E264(v106);
          v108 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        }

        else
        {
          v107 = v163;
          sub_10003DF00(v29, v163, _s5BoardVMa);
          (*v190)(v106, v107, v94);
          v108 = _s5BoardVMa;
        }

        sub_10003E060(v107, v108);
      }

      else
      {
        v106 = v173;
        if (*v29)
        {
          v109 = v160;
          UUID.init(uuidString:)();
          if ((*v189)(v109, 1, v94) == 1)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v109 = v159;
          UUID.init(uuidString:)();
          if ((*v189)(v109, 1, v94) == 1)
          {
            goto LABEL_117;
          }
        }

        (*v96)(v106, v109, v94);
      }

      v110 = v184;
      (*v96)(v184, v106, v94);
      sub_10003CA5C(v104, v180, _s4NodeVMa);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v191 = v68;
      result = sub_10003E994(v110);
      v113 = *(v68 + 2);
      v114 = (v112 & 1) == 0;
      v115 = __OFADD__(v113, v114);
      v116 = v113 + v114;
      if (v115)
      {
        break;
      }

      v117 = v112;
      if (*(v68 + 3) >= v116)
      {
        if ((v111 & 1) == 0)
        {
          v124 = result;
          sub_100AA5F9C();
          result = v124;
        }
      }

      else
      {
        sub_10003F310(v116, v111);
        result = sub_10003E994(v184);
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_121;
        }
      }

      v94 = v178;
      v68 = v191;
      if (v117)
      {
        sub_1008319D4(v180, *(v191 + 7) + result * v99);
        (*v66)(v184, v94);
        sub_10003E060(v104, _s4NodeVMa);
      }

      else
      {
        *&v191[8 * (result >> 6) + 64] |= 1 << result;
        v119 = v165;
        v120 = result;
        v121 = v184;
        (*(v165 + 16))(*(v68 + 6) + *(v165 + 72) * result, v184, v94);
        sub_10003DF00(v180, *(v68 + 7) + v120 * v99, _s4NodeVMa);
        (*(v119 + 8))(v121, v94);
        result = sub_10003E060(v104, _s4NodeVMa);
        v122 = *(v68 + 2);
        v115 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v115)
        {
          goto LABEL_73;
        }

        *(v68 + 2) = v123;
        v29 = v170;
      }

      v97 = v192;
      v93 = *(v192 + 16);
      if (!v93)
      {
        goto LABEL_66;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_66:

  v66 = _swiftEmptyArrayStorage;
  result = sub_10003930C(_swiftEmptyArrayStorage);
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v125 = result;
    goto LABEL_68;
  }

LABEL_74:
  v187 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    v125 = v187;
LABEL_68:
    v126 = v157;
    v127 = v156;
    v128 = v174;
LABEL_69:
    *v126 = v161;
    v126[1] = v127;
    v126[2] = v128;
    v126[3] = v68;
    v126[4] = v66;
    v126[5] = v125;
    return result;
  }

  v189 = "00-0000-000000000001";
  v190 = (v165 + 16);
  v129 = (v165 + 48);
  v130 = (v165 + 32);
  v188 = "odel index path %@";
  v131 = (v165 + 8);
  v125 = v187;

  v132 = _swiftEmptyArrayStorage;
  while (1)
  {
    v133 = v132 >> 62;
    if (!(v132 >> 62))
    {
      break;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_122;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_123;
    }

LABEL_78:
    if ((v132 & 0xC000000000000001) != 0)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_115;
      }

      v134 = *(v132 + 32);
    }

    v135 = v134;
    if (v133)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_119;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_120;
      }

      v136 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v136 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v136)
      {
        goto LABEL_119;
      }
    }

    v137 = v136 - 1;
    if (__OFSUB__(v136, 1))
    {
      goto LABEL_116;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v192 = v132;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v133)
      {
LABEL_93:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_94:
      v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v192 = v132;
      goto LABEL_95;
    }

    if (v133)
    {
      goto LABEL_93;
    }

    if (v137 > *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_94;
    }

LABEL_95:
    sub_1006782C4(0, 1, 0);
    v192 = v132;
    v139 = [v135 children];
    type metadata accessor for CRLBoardLibraryViewModelWrappedNode(0);
    v140 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100798CE8(v140);
    v141 = v155;
    sub_10003CA5C(v135 + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v155, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003CA5C(v141, v154, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v142 = swift_getEnumCaseMultiPayload();
    if (v142)
    {
      if (v142 == 1)
      {
        v143 = v162;
        sub_10003DF00(v154, v162, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v144 = v153;
        sub_10003E264(v153);
        sub_10003E060(v143, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003E060(v155, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v145 = v178;
      }

      else
      {
        sub_10003E060(v155, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v147 = v163;
        sub_10003DF00(v154, v163, _s5BoardVMa);
        v144 = v153;
        v145 = v178;
        (*v190)(v153, v147, v178);
        sub_10003E060(v147, _s5BoardVMa);
      }
    }

    else
    {
      if (*v154)
      {
        v146 = v151;
        UUID.init(uuidString:)();
        v145 = v178;
        result = (*v129)(v146, 1, v178);
        if (result == 1)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v146 = v150;
        UUID.init(uuidString:)();
        v145 = v178;
        result = (*v129)(v146, 1, v178);
        if (result == 1)
        {
          goto LABEL_125;
        }
      }

      sub_10003E060(v155, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v144 = v153;
      (*v130)(v153, v146, v145);
    }

    v148 = v152;
    (*v130)(v152, v144, v145);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v125;
    sub_100A9CB38(v135, v148, v149);
    (*v131)(v148, v145);
    v125 = v191;
    v132 = v192;
    if (v192 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_112:

        v126 = v157;
        v127 = v156;
        v128 = v174;
        v66 = _swiftEmptyArrayStorage;
        goto LABEL_69;
      }
    }

    else if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_112;
    }
  }

  if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_78;
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

void sub_100037628()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_10000B480(319, &qword_1019F7F60, type metadata accessor for CRLFolderIdentifier);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_100037760();
        if (v3 <= 0x3F)
        {
          sub_10000B480(319, &unk_101A249C8, _s5BoardV13ShareMetadataVMa);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100037760()
{
  if (!qword_101A33FD8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A33FD8);
    }
  }
}

void sub_1000377D0()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_100008EC4(319, &unk_101A24B48, _s5BoardVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003788C()
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_100037910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100037910()
{
  if (!qword_101A0CA90)
  {
    _s4NodeVMa(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0CA90);
    }
  }
}

void *sub_100037968(uint64_t a1)
{
  v155 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2 = __chkstk_darwin(v155);
  v154 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v123 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v123 - v8;
  __chkstk_darwin(v7);
  v11 = &v123 - v10;
  v12 = sub_1005B981C(&unk_1019FB770);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v161 = &v123 - v17;
  v18 = __chkstk_darwin(v16);
  v144 = &v123 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v123 - v21;
  __chkstk_darwin(v20);
  v127 = &v123 - v23;
  v165 = _s4NodeVMa(0);
  v24 = *(v165 - 8);
  v25 = __chkstk_darwin(v165);
  v168 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v123 - v28;
  v30 = __chkstk_darwin(v27);
  v156 = &v123 - v31;
  v32 = __chkstk_darwin(v30);
  v151 = &v123 - v33;
  v34 = __chkstk_darwin(v32);
  v157 = &v123 - v35;
  v36 = __chkstk_darwin(v34);
  v148 = &v123 - v37;
  v38 = __chkstk_darwin(v36);
  v140 = &v123 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v123 - v41;
  v43 = __chkstk_darwin(v40);
  v134 = &v123 - v44;
  v45 = __chkstk_darwin(v43);
  v128 = &v123 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v123 - v48;
  v50 = __chkstk_darwin(v47);
  v125 = &v123 - v51;
  v52 = __chkstk_darwin(v50);
  v123 = &v123 - v53;
  __chkstk_darwin(v52);
  v131 = &v123 - v54;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v129 = *(a1 + 16);
  if (!v129)
  {

    return _swiftEmptyArrayStorage;
  }

  v166 = v55;
  v136 = v22;
  v126 = v11;
  v167 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v130 = a1 + v167;
  v163 = (v55 + 16);
  swift_beginAccess();
  v56 = 0;
  v164 = *(v24 + 72);
  v57 = (v24 + 48);
  v162 = (v24 + 56);
  v124 = _swiftEmptyArrayStorage;
  v58 = v127;
  v146 = v42;
  v143 = v49;
  v59 = v131;
  v60 = v49;
  v141 = v6;
  v132 = v9;
  while (1)
  {
    v135 = v56;
    v61 = v59;
    sub_10003CAC4(v130 + v164 * v56, v59, _s4NodeVMa);
    if (*v163)
    {
      goto LABEL_6;
    }

    v62 = v126;
    sub_10003CAC4(v61, v126, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BA44(v62, _s5BoardVMa);
      v58 = v127;
LABEL_6:
      sub_10000BA44(v61, _s4NodeVMa);
      (*v162)(v58, 1, 1, v165);
      goto LABEL_7;
    }

    sub_10000BA44(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
    result = sub_10003CAC4(v61, v125, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v64 = v165;
    v65 = *(v165 + 20);
    v66 = *(v61 + v65);
    v139 = *(v66 + 16);
    if (v139)
    {
      break;
    }

    v115 = v61;
    v116 = _swiftEmptyArrayStorage;
    v114 = v165;
LABEL_73:
    sub_10000BA44(v115, _s4NodeVMa);
    v117 = v125;
    *(v125 + v65) = v116;
    v118 = v127;
    sub_10003CAC4(v117, v127, _s4NodeVMa);
    (*v162)(v118, 0, 1, v114);
    v58 = v118;
    sub_10000BA44(v117, _s4NodeVMa);
    v119 = (*v57)(v118, 1, v114);
    v42 = v146;
    v60 = v143;
    if (v119 != 1)
    {
      sub_10003DF68(v118, v123, _s4NodeVMa);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v120 = v124;
      }

      else
      {
        v120 = sub_10003DFD0(0, v124[2] + 1, 1, v124);
      }

      v122 = v120[2];
      v121 = v120[3];
      if (v122 >= v121 >> 1)
      {
        v120 = sub_10003DFD0(v121 > 1, v122 + 1, 1, v120);
      }

      v120[2] = v122 + 1;
      v124 = v120;
      sub_10003DF68(v123, v120 + v167 + v122 * v164, _s4NodeVMa);
      v58 = v127;
      goto LABEL_8;
    }

LABEL_7:
    sub_10000CAAC(v58, &unk_1019FB770);
LABEL_8:
    v56 = v135 + 1;
    v59 = v131;
    if (v135 + 1 == v129)
    {
LABEL_82:

      return v124;
    }
  }

  v67 = 0;
  v138 = v66 + v167;
  v133 = _swiftEmptyArrayStorage;
  v68 = v132;
  v69 = v141;
  v137 = v66;
  while (1)
  {
    if (v67 >= *(v66 + 16))
    {
      goto LABEL_84;
    }

    v145 = v67;
    sub_10003CAC4(v138 + v67 * v164, v60, _s4NodeVMa);
    if (*v163)
    {
      goto LABEL_13;
    }

    sub_10003CAC4(v60, v68, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BA44(v68, _s5BoardVMa);
LABEL_13:
      v70 = v69;
      sub_10000BA44(v60, _s4NodeVMa);
      v71 = v136;
      (*v162)(v136, 1, 1, v64);
      goto LABEL_14;
    }

    sub_10000BA44(v68, type metadata accessor for CRLBoardLibraryViewModel.Item);
    result = sub_10003CAC4(v60, v134, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v72 = *(v64 + 20);
    v73 = *(v60 + v72);
    v150 = *(v73 + 16);
    if (v150)
    {
      break;
    }

    v70 = v69;
    v75 = _swiftEmptyArrayStorage;
LABEL_65:
    sub_10000BA44(v143, _s4NodeVMa);
    v107 = v134;
    *(v134 + v72) = v75;
    v71 = v136;
    sub_10003CAC4(v107, v136, _s4NodeVMa);
    v108 = v165;
    (*v162)(v71, 0, 1, v165);
    sub_10000BA44(v107, _s4NodeVMa);
    v109 = (*v57)(v71, 1, v108);
    v68 = v132;
    v64 = v108;
    if (v109 != 1)
    {
      sub_10003DF68(v71, v128, _s4NodeVMa);
      v110 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_10003DFD0(0, v110[2] + 1, 1, v110);
      }

      v42 = v146;
      v60 = v143;
      v69 = v70;
      v133 = v110;
      v112 = v110[2];
      v111 = v110[3];
      if (v112 >= v111 >> 1)
      {
        v133 = sub_10003DFD0(v111 > 1, v112 + 1, 1, v133);
      }

      v113 = v133;
      v133[2] = v112 + 1;
      result = sub_10003DF68(v128, v113 + v167 + v112 * v164, _s4NodeVMa);
      v68 = v132;
      v64 = v165;
      goto LABEL_15;
    }

LABEL_14:
    result = sub_10000CAAC(v71, &unk_1019FB770);
    v42 = v146;
    v60 = v143;
    v69 = v70;
LABEL_15:
    v67 = v145 + 1;
    v66 = v137;
    if (v145 + 1 == v139)
    {
      v65 = *(v64 + 20);
      v114 = v64;
      v115 = v131;
      v116 = v133;
      goto LABEL_73;
    }
  }

  v74 = 0;
  v149 = v73 + v167;
  v75 = _swiftEmptyArrayStorage;
  v76 = v144;
  v142 = v73;
  while (v74 < *(v73 + 16))
  {
    v153 = v74;
    sub_10003CAC4(v149 + v74 * v164, v42, _s4NodeVMa);
    if (*v163)
    {
      goto LABEL_22;
    }

    sub_10003CAC4(v42, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BA44(v69, _s5BoardVMa);
LABEL_22:
      sub_10000BA44(v42, _s4NodeVMa);
      (*v162)(v76, 1, 1, v64);
      goto LABEL_23;
    }

    v147 = v75;
    sub_10000BA44(v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003CAC4(v42, v148, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v77 = *(v64 + 20);
    v78 = *&v42[v77];
    v160 = *(v78 + 16);
    if (v160)
    {
      v79 = 0;
      v158 = v78 + v167;
      v152 = _swiftEmptyArrayStorage;
      v80 = v154;
      v81 = v164;
      v82 = v157;
      v159 = v78;
      while (1)
      {
        if (v79 >= *(v78 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        sub_10003CAC4(v158 + v79 * v81, v82, _s4NodeVMa);
        if (*v163)
        {
          goto LABEL_31;
        }

        sub_10003CAC4(v82, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          break;
        }

        sub_10000BA44(v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003CAC4(v82, v156, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v85 = *(v64 + 20);
        v86 = *(v82 + v85);
        v87 = *(v86 + 16);
        if (v87)
        {
          v88 = v166;
          v89 = v86 + v167;
          v90 = _swiftEmptyArrayStorage;
          do
          {
            sub_10003CAC4(v89, v29, _s4NodeVMa);
            sub_100A14304(v29, v88, v15);
            sub_10000BA44(v29, _s4NodeVMa);
            if ((*v57)(v15, 1, v64) == 1)
            {
              sub_10000CAAC(v15, &unk_1019FB770);
            }

            else
            {
              sub_10003DF68(v15, v168, _s4NodeVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_10003DFD0(0, v90[2] + 1, 1, v90);
              }

              v92 = v90[2];
              v91 = v90[3];
              if (v92 >= v91 >> 1)
              {
                v90 = sub_10003DFD0(v91 > 1, v92 + 1, 1, v90);
              }

              v90[2] = v92 + 1;
              sub_10003DF68(v168, v90 + v167 + v92 * v81, _s4NodeVMa);
              v64 = v165;
              v88 = v166;
            }

            v89 += v81;
            --v87;
          }

          while (v87);
          v85 = *(v64 + 20);
          v84 = v161;
          v93 = v64;
          v94 = v157;
        }

        else
        {
          v94 = v82;
          v90 = _swiftEmptyArrayStorage;
          v93 = v64;
          v84 = v161;
        }

        sub_10000BA44(v94, _s4NodeVMa);
        v95 = v156;
        *(v156 + v85) = v90;
        sub_10003CAC4(v95, v84, _s4NodeVMa);
        (*v162)(v84, 0, 1, v93);
        v83 = v157;
        sub_10000BA44(v95, _s4NodeVMa);
        v96 = (*v57)(v84, 1, v93);
        v64 = v93;
        v80 = v154;
        if (v96 != 1)
        {
          sub_10003DF68(v84, v151, _s4NodeVMa);
          v97 = v152;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_10003DFD0(0, v97[2] + 1, 1, v97);
          }

          v81 = v164;
          v99 = v97[2];
          v98 = v97[3];
          if (v99 >= v98 >> 1)
          {
            v97 = sub_10003DFD0(v98 > 1, v99 + 1, 1, v97);
          }

          v97[2] = v99 + 1;
          v152 = v97;
          sub_10003DF68(v151, v97 + v167 + v99 * v81, _s4NodeVMa);
          v82 = v157;
          v80 = v154;
          goto LABEL_33;
        }

LABEL_32:
        sub_10000CAAC(v84, &unk_1019FB770);
        v81 = v164;
        v82 = v83;
LABEL_33:
        ++v79;
        v78 = v159;
        if (v79 == v160)
        {
          v77 = *(v64 + 20);
          v100 = v64;
          v101 = v152;
          goto LABEL_57;
        }
      }

      sub_10000BA44(v80, _s5BoardVMa);
LABEL_31:
      v83 = v82;
      sub_10000BA44(v82, _s4NodeVMa);
      v84 = v161;
      (*v162)(v161, 1, 1, v64);
      goto LABEL_32;
    }

    v101 = _swiftEmptyArrayStorage;
    v100 = v64;
LABEL_57:
    v102 = v146;
    sub_10000BA44(v146, _s4NodeVMa);
    v103 = v148;
    *(v148 + v77) = v101;
    v76 = v144;
    sub_10003CAC4(v103, v144, _s4NodeVMa);
    (*v162)(v76, 0, 1, v100);
    sub_10000BA44(v103, _s4NodeVMa);
    v104 = (*v57)(v76, 1, v100);
    v64 = v100;
    v42 = v102;
    v69 = v141;
    v75 = v147;
    v73 = v142;
    if (v104 != 1)
    {
      sub_10003DF68(v76, v140, _s4NodeVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_10003DFD0(0, v75[2] + 1, 1, v75);
      }

      v106 = v75[2];
      v105 = v75[3];
      if (v106 >= v105 >> 1)
      {
        v75 = sub_10003DFD0(v105 > 1, v106 + 1, 1, v75);
      }

      v75[2] = v106 + 1;
      result = sub_10003DF68(v140, v75 + v167 + v106 * v164, _s4NodeVMa);
      v76 = v144;
      v64 = v165;
      goto LABEL_24;
    }

LABEL_23:
    result = sub_10000CAAC(v76, &unk_1019FB770);
LABEL_24:
    v74 = v153 + 1;
    if (v153 + 1 == v150)
    {
      v70 = v69;
      v72 = *(v64 + 20);
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

unint64_t sub_100038D28(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE70);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145A0);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100038F10(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A14598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE68);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A14598);
      result = sub_10003E994(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = _s4NodeVMa(0);
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s4NodeVMa);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003912C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = sub_1005B981C(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1005B981C(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_10000BE14(v14, v10, a2);
      result = sub_10003E994(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for UUID();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100039350()
{
  result = _s4NodeVMa(319);
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

unint64_t sub_100039400(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145B0);
      result = sub_1000486F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLBoardIdentifier(0);
      sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLBoardIdentifier);
      v16 = v7[7];
      v17 = _s5BoardVMa(0);
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s5BoardVMa);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100039618(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE80);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145B8);
      result = sub_1007C88C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLFolderIdentifier(0);
      sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLFolderIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100039830(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A145C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE78);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A145C0);
      result = sub_1007C88C4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLFolderIdentifier(0);
      sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLFolderIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for CRLFolder();
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CRLFolder);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for CRLFolder()
{
  result = qword_1019F7F50;
  if (!qword_1019F7F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039A94()
{
  type metadata accessor for CRLFolderIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_100039B50();
    if (v1 <= 0x3F)
    {
      sub_100039BA8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRLFolderCRDTData();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100039B50()
{
  if (!qword_1019F7F60)
  {
    type metadata accessor for CRLFolderIdentifier(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7F60);
    }
  }
}

void sub_100039BA8()
{
  if (!qword_1019F7F68)
  {
    sub_100006370(255, &qword_1019F52C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F7F68);
    }
  }
}

uint64_t type metadata accessor for CRLFolderCRDTData()
{
  result = qword_1019F48C0;
  if (!qword_1019F48C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039C5C()
{
  sub_100039D58(319, &qword_1019F48D0);
  if (v0 <= 0x3F)
  {
    sub_100039D58(319, &qword_1019F48D8);
    if (v1 <= 0x3F)
    {
      sub_100039DA8();
      if (v2 <= 0x3F)
      {
        sub_100039E5C();
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

void sub_100039D58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CRRegister();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100039DA8()
{
  if (!qword_1019F48E0)
  {
    v0 = type metadata accessor for CRMaxRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F48E0);
    }
  }
}

unint64_t sub_100039E08()
{
  result = qword_1019F48F0;
  if (!qword_1019F48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F48F0);
  }

  return result;
}

void sub_100039E5C()
{
  if (!qword_1019F48E8)
  {
    sub_100039E08();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F48E8);
    }
  }
}

unint64_t sub_100039EB8()
{
  result = qword_101A0B378;
  if (!qword_101A0B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B378);
  }

  return result;
}

unint64_t sub_100039F10()
{
  result = qword_101A0B370;
  if (!qword_101A0B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0B370);
  }

  return result;
}

void sub_100039F68()
{
  if (!qword_1019F48F8)
  {
    type metadata accessor for AnyCRDT();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F48F8);
    }
  }
}

unint64_t sub_100039FD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = sub_1005B981C(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1005B981C(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_10000BE14(v14, v10, a2);
      result = sub_1000486F0(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for CRLBoardIdentifier(0);
      result = sub_100BDBA0C(v10, v19 + *(*(v20 - 8) + 72) * v18, type metadata accessor for CRLBoardIdentifier);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10003A1F0()
{
  sub_10003A3A0(319, &qword_101A00B68, &unk_101A00B70);
  if (v0 <= 0x3F)
  {
    sub_10003A3F4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        sub_10003A3A0(319, &qword_101A00B80, &qword_101A00B88);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10003A3A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1005C4E5C(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003A3F4()
{
  if (!qword_1019FB370)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FB370);
    }
  }
}

uint64_t type metadata accessor for CRLCollaboratorPresence()
{
  result = qword_1019FA4F8;
  if (!qword_1019FA4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A490()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10003A5AC()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter;
  *&v0[v1] = [objc_allocWithZone(SWHighlightCenter) init];
  *&v0[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_initialSyncTimer] = 0;
  v0[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_isSyncing] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights] = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightObservers;
  *&v0[v2] = [objc_opt_self() weakObjectsHashTable];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for CRLSharedHighlightController();
  v3 = objc_msgSendSuper2(&v19, "init");
  [*&v3[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter] setDelegate:v3];
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRelease();
    v6 = sub_10000A05C();

    if (v6 == 1)
    {
      v3[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_isSyncing] = 1;
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Starting highlight initial sync timer.", 38, 2, _swiftEmptyArrayStorage);
      v9 = [objc_opt_self() defaultCenter];
      if (qword_1019F1328 != -1)
      {
        swift_once();
      }

      [v9 postNotificationName:qword_101AD5E80 object:v3 userInfo:0];

      v10 = objc_opt_self();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18[4] = sub_1005F2170;
      v18[5] = v11;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = *"";
      v18[2] = sub_10068B39C;
      v18[3] = &unk_10187C7D0;
      v12 = _Block_copy(v18);

      v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v12 block:10.0];
      _Block_release(v12);
      v14 = *&v3[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_initialSyncTimer];
      *&v3[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_initialSyncTimer] = v13;
    }

    v15 = [objc_opt_self() defaultCenter];
    v16 = qword_1019F1F48;
    v17 = v3;
    if (v16 != -1)
    {
      swift_once();
    }

    [v15 addObserver:v17 selector:"iCloudStatusDidChangeWithNotification:" name:qword_101AD7950 object:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003A994()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

NSString sub_10003A9F0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7950 = result;
  return result;
}

uint64_t type metadata accessor for CRLBoardLibrary.BoardInfo()
{
  result = qword_101A2A900;
  if (!qword_101A2A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003AA98()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10000D990();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10003AC74()
{
  result = type metadata accessor for GroupActivityMetadata();
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

uint64_t type metadata accessor for CRLBoardOpportunisticGroupSession()
{
  result = qword_101A12440;
  if (!qword_101A12440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003AD9C(uint64_t a1)
{
  result = sub_10003ADF4(&qword_101A1A6C0, type metadata accessor for CRLOpportunisticGroupActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003ADF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003AF18()
{
  type metadata accessor for GroupSession.State();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for CRLBoardGroupSession()
{
  result = qword_101A21780;
  if (!qword_101A21780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003B020()
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

void *sub_10003B15C()
{
  v155 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v155);
  v154 = &v135 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s4NodeVMa(0);
  v153 = *(v4 - 8);
  v5 = v153;
  v6 = __chkstk_darwin(v4);
  v150 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v136 = &v135 - v9;
  v10 = __chkstk_darwin(v8);
  v143 = &v135 - v11;
  v12 = __chkstk_darwin(v10);
  v141 = &v135 - v13;
  v14 = __chkstk_darwin(v12);
  v137 = &v135 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v135 - v17;
  __chkstk_darwin(v16);
  v20 = &v135 - v19;
  v149 = sub_1005B981C(&unk_1019FB770);
  v21 = *(v149 - 8);
  v22 = __chkstk_darwin(v149);
  v147 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v146 = &v135 - v25;
  v26 = __chkstk_darwin(v24);
  v135 = &v135 - v27;
  v28 = __chkstk_darwin(v26);
  v142 = &v135 - v29;
  v30 = __chkstk_darwin(v28);
  v140 = &v135 - v31;
  v32 = __chkstk_darwin(v30);
  v151 = &v135 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v135 - v35;
  __chkstk_darwin(v34);
  v37 = *(v5 + 56);
  v148 = &v135 - v38;
  v164 = v37;
  v165 = v5 + 56;
  v37();
  sub_1005B981C(&qword_101A2AD08);
  v39 = *(v21 + 72);
  v40 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v139 = 2 * v39;
  v152 = swift_allocObject();
  v145 = v20;
  v41 = v20;
  v42 = v4;
  v43 = v162;
  sub_10003C42C(v41);
  v163 = v39;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10146CA70;
  v144 = v44;
  v138 = v40;
  v45 = v44 + v40;
  v159 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v46 = *(v43 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v47 = sub_1005B981C(&qword_1019F3480);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v49(v3, 1, 5, v47);
  v170 = v3;

  sub_10003CF3C(1, sub_100066014, v169, v46, v36);

  v158 = v3;
  sub_10003D87C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v52 = v153 + 48;
  v51 = *(v153 + 48);
  v168 = v42;
  v53 = v51(v36, 1, v42);
  v166 = v52;
  v167 = v51;
  v160 = v47;
  v161 = v49;
  v157 = v50;
  if (v53 == 1)
  {
    v54 = v154;
    v49(v154, 1, 5, v47);
    swift_storeEnumTagMultiPayload();
    sub_10003CB2C(v54, _swiftEmptyArrayStorage, v18);
    if (v51(v36, 1, v168) != 1)
    {
      sub_10000CAAC(v36, &unk_1019FB770);
    }
  }

  else
  {
    sub_100025738(v36, v18, _s4NodeVMa);
  }

  v55 = v162;

  v57 = sub_10003D93C(v56);

  sub_10003DB70(v57, v45);

  sub_10003D87C(v18, _s4NodeVMa);
  v156 = v45;
  v58 = v168;
  (v164)(v45, 0, 1, v168);
  v59 = v158;
  v60 = *(v55 + v159);
  v61 = v160;
  v62 = v161;
  v63 = (v161)(v158, 2, 5, v160);
  __chkstk_darwin(v63);
  *(&v135 - 2) = v59;

  v64 = v151;
  sub_10003CF3C(1, sub_101107D10, (&v135 - 4), v60, v151);

  sub_10003D87C(v59, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v65 = v167;
  if (v167(v64, 1, v58) == 1)
  {
    v66 = v154;
    v62(v154, 2, 5, v61);
    swift_storeEnumTagMultiPayload();
    v67 = v137;
    v68 = v66;
    v69 = v151;
    sub_10003CB2C(v68, _swiftEmptyArrayStorage, v137);
    if (v65(v69, 1, v168) != 1)
    {
      sub_10000CAAC(v69, &unk_1019FB770);
    }
  }

  else
  {
    v67 = v137;
    sub_100025738(v64, v137, _s4NodeVMa);
  }

  v71 = sub_10003D93C(v70);

  v72 = v163;
  v73 = v156;
  sub_10003DB70(v71, v156 + v163);

  sub_10003D87C(v67, _s4NodeVMa);
  v74 = v168;
  (v164)(v73 + v72, 0, 1, v168);
  v75 = v158;
  v76 = *(v55 + v159);
  v77 = v160;
  v78 = v161;
  v79 = (v161)(v158, 4, 5, v160);
  __chkstk_darwin(v79);
  *(&v135 - 2) = v75;

  v80 = v140;
  sub_10003CF3C(1, sub_101107D10, (&v135 - 4), v76, v140);

  sub_10003D87C(v75, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v81 = v167;
  if (v167(v80, 1, v74) == 1)
  {
    v82 = v154;
    v78(v154, 4, 5, v77);
    swift_storeEnumTagMultiPayload();
    v83 = v141;
    sub_10003CB2C(v82, _swiftEmptyArrayStorage, v141);
    if (v81(v80, 1, v168) != 1)
    {
      sub_10000CAAC(v80, &unk_1019FB770);
    }
  }

  else
  {
    v83 = v141;
    sub_100025738(v80, v141, _s4NodeVMa);
  }

  v151 = v152 + v138;

  v85 = v55;
  v86 = sub_10003D93C(v84);

  v87 = v156;
  v88 = v139;
  sub_10003DB70(v86, v156 + v139);

  sub_10003D87C(v83, _s4NodeVMa);
  v89 = v168;
  (v164)(v87 + v88, 0, 1, v168);
  v90 = v158;
  v91 = *(v85 + v159);
  v92 = v160;
  v93 = v161;
  v94 = (v161)(v158, 3, 5, v160);
  __chkstk_darwin(v94);
  *(&v135 - 2) = v90;

  v95 = v142;
  sub_10003CF3C(1, sub_101107D10, (&v135 - 4), v91, v142);

  sub_10003D87C(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v96 = v167;
  if (v167(v95, 1, v89) == 1)
  {
    v97 = v154;
    v93(v154, 3, 5, v92);
    swift_storeEnumTagMultiPayload();
    v98 = v143;
    sub_10003CB2C(v97, _swiftEmptyArrayStorage, v143);
    if (v96(v95, 1, v168) != 1)
    {
      sub_10000CAAC(v95, &unk_1019FB770);
    }
  }

  else
  {
    v98 = v143;
    sub_100025738(v95, v143, _s4NodeVMa);
  }

  v100 = v162;
  v99 = v163;
  v101 = 3 * v163;

  v103 = sub_10003D93C(v102);

  sub_10003DB70(v103, v87 + v101);

  sub_10003D87C(v98, _s4NodeVMa);
  v104 = 1;
  (v164)(v87 + v101, 0, 1, v168);
  v105 = v87 + 4 * v99;
  if (*(*(v100 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentlyDeletedBoardNodes) + 16))
  {
    v106 = v158;
    v107 = *(v100 + v159);
    v109 = v160;
    v108 = v161;
    v110 = (v161)(v158, 5, 5, v160);
    __chkstk_darwin(v110);
    *(&v135 - 2) = v106;

    v111 = v135;
    sub_10003CF3C(1, sub_101107D10, (&v135 - 4), v107, v135);

    sub_10003D87C(v106, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v112 = v167;
    if (v167(v111, 1, v168) == 1)
    {
      v113 = v112;
      v114 = v154;
      v108(v154, 5, 5, v109);
      swift_storeEnumTagMultiPayload();
      v115 = v136;
      sub_10003CB2C(v114, _swiftEmptyArrayStorage, v136);
      v116 = v113(v111, 1, v168) == 1;
      v117 = v148;
      v118 = v111;
      v119 = v146;
      v120 = v151;
      if (!v116)
      {
        sub_10000CAAC(v118, &unk_1019FB770);
      }
    }

    else
    {
      v115 = v136;
      sub_100025738(v111, v136, _s4NodeVMa);
      v117 = v148;
      v119 = v146;
      v120 = v151;
    }

    v122 = sub_10003D93C(v121);

    sub_10003DB70(v122, v105);

    sub_10003D87C(v115, _s4NodeVMa);
    v104 = 0;
  }

  else
  {
    v117 = v148;
    v119 = v146;
    v120 = v151;
  }

  v123 = v105;
  v124 = v168;
  v125 = v164;
  (v164)(v123, v104, 1, v168);
  v126 = v145;
  sub_10003DB70(v144, v120);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10003D87C(v126, _s4NodeVMa);
  (v125)(v120, 0, 1, v124);
  sub_10000BE14(v117, v120 + v163, &unk_1019FB770);
  sub_10000BE14(v120, v119, &unk_1019FB770);
  v127 = v147;
  sub_10003DFF8(v119, v147, &unk_1019FB770);
  if (v167(v127, 1, v124) == 1)
  {
    sub_10000CAAC(v127, &unk_1019FB770);
    v128 = _swiftEmptyArrayStorage;
    v129 = v150;
  }

  else
  {
    v129 = v150;
    sub_100025738(v127, v150, _s4NodeVMa);
    v128 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_10003DFD0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v131 = v128[2];
    v130 = v128[3];
    if (v131 >= v130 >> 1)
    {
      v128 = sub_10003DFD0(v130 > 1, v131 + 1, 1, v128);
    }

    v128[2] = v131 + 1;
    sub_100025738(v129, v128 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v131, _s4NodeVMa);
  }

  sub_10000BE14(v120 + v163, v119, &unk_1019FB770);
  sub_10003DFF8(v119, v127, &unk_1019FB770);
  if (v167(v127, 1, v168) == 1)
  {
    sub_10000CAAC(v127, &unk_1019FB770);
  }

  else
  {
    sub_100025738(v127, v129, _s4NodeVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_10003DFD0(0, v128[2] + 1, 1, v128);
    }

    v133 = v128[2];
    v132 = v128[3];
    if (v133 >= v132 >> 1)
    {
      v128 = sub_10003DFD0(v132 > 1, v133 + 1, 1, v128);
    }

    v128[2] = v133 + 1;
    sub_100025738(v129, v128 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v133, _s4NodeVMa);
  }

  sub_10000CAAC(v117, &unk_1019FB770);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v128;
}

uint64_t sub_10003C42C@<X0>(uint64_t a1@<X8>)
{
  v41 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = __chkstk_darwin(v41);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v34 - v6;
  v7 = _s4NodeVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v15 = v14[2];
  if (!v15)
  {
LABEL_29:
    (*(v8 + 56))(v13, 1, 1, v7);
    *v5 = 0;
    swift_storeEnumTagMultiPayload();
    sub_10003CB2C(v5, _swiftEmptyArrayStorage, a1);
    result = (*(v8 + 48))(v13, 1, v7);
    if (result != 1)
    {
      return sub_10000CAAC(v13, &unk_1019FB770);
    }

    return result;
  }

  v37 = &v34 - v12;
  v38 = a1;
  v35 = v5;
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  swift_bridgeObjectRetain_n();
  v36 = v14;
  v39 = v10;
  while (1)
  {
    sub_10005006C(v14 + v16, v10, _s4NodeVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > v14[3] >> 1)
    {
      v14 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    }

    sub_10003D87C(v14 + v16, _s4NodeVMa);
    v19 = *(v8 + 72);
    if (v19 > 0 || v14 + v16 >= v14 + v16 + v19 + (v14[2] - 1) * v19)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --v14[2];
    v20 = v40;
    sub_10005006C(v10, v40, type metadata accessor for CRLBoardLibraryViewModel.Item);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      result = sub_10003D87C(v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    else if ((*v20 & 1) == 0)
    {

      v33 = v37;
      sub_100025738(v10, v37, _s4NodeVMa);
      (*(v8 + 56))(v33, 0, 1, v7);
      return sub_100025738(v33, v38, _s4NodeVMa);
    }

    v21 = *&v10[*(v7 + 20)];
    v22 = *(v21 + 16);
    v23 = v14[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      break;
    }

    v25 = v16;
    v26 = v8;
    v27 = v7;
    v28 = v14[3];

    if (v24 > (v28 >> 1))
    {
      if (v23 <= v24)
      {
        v32 = v23 + v22;
      }

      else
      {
        v32 = v23;
      }

      result = sub_10003DFD0(1uLL, v32, 1, v14);
      v14 = result;
      v23 = *(result + 16);
      v7 = v27;
      if (*(v21 + 16))
      {
LABEL_19:
        if (((v14[3] >> 1) - v23) < v22)
        {
          goto LABEL_35;
        }

        v8 = v26;
        v16 = v25;
        swift_arrayInitWithCopy();

        v10 = v39;
        if (v22)
        {
          v29 = v14[2];
          v30 = __OFADD__(v29, v22);
          v31 = v29 + v22;
          if (v30)
          {
            goto LABEL_36;
          }

          v14[2] = v31;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v7 = v27;
      if (v22)
      {
        goto LABEL_19;
      }
    }

    v8 = v26;
    v16 = v25;
    v10 = v39;
    if (v22)
    {
      goto LABEL_34;
    }

LABEL_4:
    sub_10003D87C(v10, _s4NodeVMa);
    v15 = v14[2];
    if (!v15)
    {

      v13 = v37;
      a1 = v38;
      v5 = v35;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10003C93C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
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

uint64_t sub_10003C9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = _s4NodeVMa(0);
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019FB770);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  sub_10003CAC4(a1, a3, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v16 = *(a2 + 16);
  if (v16)
  {
    v26 = a1;
    v27 = a3;
    v17 = *(v10 + 80);
    v25[1] = a2;
    v18 = a2 + ((v17 + 32) & ~v17);
    v19 = *(v10 + 72);
    v28 = v6;
    v20 = (v6 + 48);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000BE14(v18, v15, &unk_1019FB770);
      sub_10003DE90(v15, v13);
      if ((*v20)(v13, 1, v29) == 1)
      {
        sub_10000CAAC(v13, &unk_1019FB770);
      }

      else
      {
        sub_10003DF68(v13, v8, _s4NodeVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10003DFD0(0, v21[2] + 1, 1, v21);
        }

        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          v21 = sub_10003DFD0(v22 > 1, v23 + 1, 1, v21);
        }

        v21[2] = v23 + 1;
        sub_10003DF68(v8, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, _s4NodeVMa);
      }

      v18 += v19;
      --v16;
    }

    while (v16);

    a1 = v26;
    a3 = v27;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  result = sub_10000BA44(a1, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(a3 + *(v29 + 20)) = v21;
  return result;
}

uint64_t sub_10003CE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
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

uint64_t sub_10003CF3C@<X0>(char a1@<W0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v47 = a3;
  v8 = _s4NodeVMa(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = a4[2];
  if (a1)
  {
    if (v15)
    {
      v44 = a5;
      v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);

      v45 = v12;
      while (1)
      {
        sub_10003CAC4(a4 + v16, v12, _s4NodeVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > a4[3] >> 1)
        {
          a4 = sub_10003DFD0(isUniquelyReferenced_nonNull_native, v15, 1, a4);
        }

        sub_10000BA44(a4 + v16, _s4NodeVMa);
        v19 = *(v9 + 72);
        if (v19 > 0 || a4 + v16 >= a4 + v16 + v19 + (a4[2] - 1) * v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        --a4[2];
        result = v46(v12);
        if (result)
        {

          v42 = v12;
LABEL_50:
          a5 = v44;
          sub_10003DF68(v42, v44, _s4NodeVMa);
          v41 = 0;
          return (*(v9 + 56))(a5, v41, 1, v8);
        }

        v20 = *&v12[*(v8 + 20)];
        v21 = *(v20 + 16);
        v22 = a4[2];
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_53;
        }

        v24 = v16;
        v25 = v8;
        v26 = v9;
        v27 = a4[3];

        if (v23 > (v27 >> 1))
        {
          if (v22 <= v23)
          {
            v31 = v22 + v21;
          }

          else
          {
            v31 = v22;
          }

          result = sub_10003DFD0(1uLL, v31, 1, a4);
          a4 = result;
          v22 = *(result + 16);
          v9 = v26;
          if (!*(v20 + 16))
          {
LABEL_4:

            v8 = v25;
            v16 = v24;
            v12 = v45;
            if (v21)
            {
              goto LABEL_54;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v9 = v26;
          if (!v21)
          {
            goto LABEL_4;
          }
        }

        if (((a4[3] >> 1) - v22) < v21)
        {
          goto LABEL_55;
        }

        v8 = v25;
        v16 = v24;
        swift_arrayInitWithCopy();

        v12 = v45;
        if (v21)
        {
          v28 = a4[2];
          v29 = __OFADD__(v28, v21);
          v30 = v28 + v21;
          if (v29)
          {
            goto LABEL_56;
          }

          a4[2] = v30;
        }

LABEL_5:
        sub_10000BA44(v12, _s4NodeVMa);
        v15 = a4[2];
        if (!v15)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_46:
    v41 = 1;
    return (*(v9 + 56))(a5, v41, 1, v8);
  }

  if (!v15)
  {
    goto LABEL_46;
  }

  v44 = a5;
  v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);

  while (1)
  {
    sub_10003CAC4(a4 + v32, v14, _s4NodeVMa);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    if (!v33 || (v15 - 1) > a4[3] >> 1)
    {
      a4 = sub_10003DFD0(v33, v15, 1, a4);
    }

    sub_10000BA44(a4 + v32, _s4NodeVMa);
    v34 = *(v9 + 72);
    if (v34 > 0 || a4 + v32 >= a4 + v32 + v34 + (a4[2] - 1) * v34)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v34)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --a4[2];
    result = v46(v14);
    if (result)
    {

      v42 = v14;
      goto LABEL_50;
    }

    v35 = *&v14[*(v8 + 20)];
    v36 = *(v35 + 16);
    v37 = a4[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    v48 = a4;
    v39 = a4[3];

    if (v38 > (v39 >> 1))
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      a4 = sub_10003DFD0(1uLL, v40, 1, a4);
      v48 = a4;
    }

    sub_10003E0C0(0, 0, v36, v35);

    sub_10000BA44(v14, _s4NodeVMa);
    v15 = a4[2];
    if (!v15)
    {
LABEL_47:

      v41 = 1;
      a5 = v44;
      return (*(v9 + 56))(a5, v41, 1, v8);
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10003D45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D51C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D57C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D5DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D69C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D6FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D75C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003D8DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10003D93C(uint64_t a1)
{
  v16 = _s4NodeVMa(0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019FB770);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1007768A4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_10004FCC4(v11, v4, _s4NodeVMa);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1007768A4(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_10003DFF8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &unk_1019FB770);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_10003DB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s4NodeVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_1019FB770);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v28 = a2;
  sub_10003CAC4(v3, a2, _s4NodeVMa);
  v17 = *(a1 + 16);
  if (v17)
  {
    v29 = v9;
    v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = *(v11 + 72);
    v20 = (v7 + 48);
    v21 = _swiftEmptyArrayStorage;
    v30 = v7;
    v31 = v6;
    do
    {
      sub_10000BE14(v18, v16, &unk_1019FB770);
      sub_10003DE90(v16, v14);
      if ((*v20)(v14, 1, v6) == 1)
      {
        sub_10000CAAC(v14, &unk_1019FB770);
      }

      else
      {
        v22 = v29;
        sub_10003DF68(v14, v29, _s4NodeVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10003DFD0(0, v21[2] + 1, 1, v21);
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = sub_10003DFD0(v23 > 1, v24 + 1, 1, v21);
        }

        v21[2] = v24 + 1;
        sub_10003DF68(v22, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, _s4NodeVMa);
        v6 = v31;
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v25 = *(v6 + 20);
  v26 = v28;

  *(v26 + v25) = v21;
  return result;
}

uint64_t sub_10003DE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019FB770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DFF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1005B981C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = *v5;
  result = a5(0);
  v13 = *(*(result - 8) + 72);
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(*(result - 8) + 80);
  v15 = (v12 + 32) & ~v12;
  v16 = v10 + v15 + v13 * a1;
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v14);
  v18 = a3 - v14;
  if (v17)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = *(v10 + 16);
  if (__OFSUB__(v19, a2))
  {
    goto LABEL_23;
  }

  result = v16 + v13 * a3;
  v20 = v10 + v15 + v13 * a2;
  if (result < v20 || result >= v20 + (v19 - a2) * v13)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v20)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v22 = *(v10 + 16);
  v17 = __OFADD__(v22, v18);
  v23 = v22 + v18;
  if (v17)
  {
    goto LABEL_24;
  }

  *(v10 + 16) = v23;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_10003E264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F6990);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - v18;
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v2, v24, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v25 = sub_1005B981C(&qword_1019F3480);
  v26 = (*(*(v25 - 8) + 48))(v24, 5, v25);
  if (v26 > 2)
  {
    if (v26 != 3)
    {
      if (v26 != 4)
      {
        UUID.init(uuidString:)();
        v37 = type metadata accessor for UUID();
        v38 = *(v37 - 8);
        result = (*(v38 + 48))(v10, 1, v37);
        if (result != 1)
        {
          return (*(v38 + 32))(a1, v10, v37);
        }

        goto LABEL_22;
      }

      UUID.init(uuidString:)();
      v30 = type metadata accessor for UUID();
      v31 = *(v30 - 8);
      result = (*(v31 + 48))(v13, 1, v30);
      if (result != 1)
      {
        return (*(v31 + 32))(a1, v13, v30);
      }

      goto LABEL_20;
    }

    UUID.init(uuidString:)();
    v33 = type metadata accessor for UUID();
    v34 = *(v33 - 8);
    result = (*(v34 + 48))(v16, 1, v33);
    if (result != 1)
    {
      return (*(v34 + 32))(a1, v16, v33);
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v26)
  {
    sub_10000CCD0(v24, v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 16))(a1, v6, v32);
    return sub_10000CD38(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  if (v26 == 1)
  {
    UUID.init(uuidString:)();
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    result = (*(v28 + 48))(v21, 1, v27);
    if (result != 1)
    {
      return (*(v28 + 32))(a1, v21, v27);
    }

    goto LABEL_19;
  }

  UUID.init(uuidString:)();
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  result = (*(v36 + 48))(v19, 1, v35);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return (*(v36 + 32))(a1, v19, v35);
}

uint64_t sub_10003E7F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003E994(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_100AA4430();
    goto LABEL_7;
  }

  sub_10003ECE0(result, a3 & 1);
  result = sub_10003E994(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10003F0A0(v14, v11, a1, v20);
}

unint64_t sub_10003E994(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10003EA68(&qword_1019FB870, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003EB40(a1, v2, &type metadata accessor for UUID, &qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_10003EA68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003EAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003EAF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003EB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10003EA68(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_10003ECE0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1005B981C(&qword_101A0EE70);
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
      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
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

uint64_t sub_10003F0A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_10003F158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F1CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10003F34C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v56 = a6;
  v8 = v6;
  v10 = a3(0);
  v49 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v55 = &v45 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  sub_1005B981C(a4);
  v50 = a2;
  v16 = v15;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v54 = v12;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = v6;
    v46 = (v13 + 16);
    v47 = v15;
    v48 = v13;
    v52 = (v13 + 32);
    v25 = result + 64;
    v26 = v51;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v53 = *(v48 + 72);
      v33 = v32 + v53 * v31;
      if (v50)
      {
        (*v52)(v26, v33, v54);
        v34 = *(v16 + 56);
        v35 = *(v49 + 72);
        sub_100025460(v34 + v35 * v31, v55, v56);
      }

      else
      {
        (*v46)(v26, v33, v54);
        v36 = *(v16 + 56);
        v35 = *(v49 + 72);
        sub_10000C704(v36 + v35 * v31, v55, v56);
      }

      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v26 = v51;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v26 = v51;
LABEL_7:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v52)((*(v18 + 48) + v53 * v27), v26, v54);
      result = sub_100025460(v55, *(v18 + 56) + v35 * v27, v56);
      ++*(v18 + 16);
      v16 = v47;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v8 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v8 = v18;
  return result;
}

unint64_t sub_10003F7E4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A146E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EE58);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A146E8);
      result = sub_1000486F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLBoardIdentifier(0);
      sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLBoardIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for CRLBoardEntity();
      result = sub_100BDBA0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for CRLBoardEntity);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for CRLBoardEntity()
{
  result = qword_101A07570;
  if (!qword_101A07570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003FA48()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_10003FB80();
    if (v1 <= 0x3F)
    {
      sub_10003FBDC();
      if (v2 <= 0x3F)
      {
        sub_10003FCFC();
        if (v3 <= 0x3F)
        {
          sub_10003FE44();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10003FB2C()
{
  result = qword_101A07588;
  if (!qword_101A07588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07588);
  }

  return result;
}

void sub_10003FB80()
{
  if (!qword_101A07580)
  {
    sub_10003FB2C();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_101A07580);
    }
  }
}

void sub_10003FBDC()
{
  if (!qword_101A07590)
  {
    type metadata accessor for Date();
    sub_10003FC70(&qword_101A07598, &type metadata accessor for Date);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_101A07590);
    }
  }
}

uint64_t sub_10003FC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003FCB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLBoardEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10003FCFC()
{
  if (!qword_101A075A0)
  {
    sub_1005C4E5C(&unk_101A08E00);
    sub_10003FD6C();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_101A075A0);
    }
  }
}

unint64_t sub_10003FD6C()
{
  result = qword_101A075A8;
  if (!qword_101A075A8)
  {
    sub_1005C4E5C(&unk_101A08E00);
    sub_10003FDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A075A8);
  }

  return result;
}

unint64_t sub_10003FDF0()
{
  result = qword_101A075B0;
  if (!qword_101A075B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A075B0);
  }

  return result;
}

void sub_10003FE44()
{
  if (!qword_1019FF038)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FF038);
    }
  }
}

void sub_10003FE94()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBB0, &qword_101AD5B58);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardLibrary = v1;
}

void sub_10003FF4C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDC00, &qword_101AD5BA8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFollow = v1;
}

char *sub_100040098(void *a1)
{
  v2 = v1;
  v104 = a1;
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v92 = v86 - v4;
  v94 = type metadata accessor for NSNotificationCenter.Publisher();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1005B981C(&qword_1019FB7D0);
  v108 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = v86 - v6;
  v7 = sub_1005B981C(&qword_1019FB7D8);
  __chkstk_darwin(v7 - 8);
  v89 = v86 - v8;
  v9 = sub_1005B981C(&unk_1019FB7E0);
  __chkstk_darwin(v9 - 8);
  v106 = v86 - v10;
  v105 = sub_1005B981C(&unk_101A19AE0);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = (v86 - v11);
  v12 = sub_1005B981C(&qword_1019FB7F0);
  v13 = *(v12 - 1);
  v98 = v12;
  v99 = v13;
  __chkstk_darwin(v12);
  v88 = v86 - v14;
  v15 = sub_1005B981C(&qword_1019FB7F8);
  v16 = *(v15 - 8);
  v100 = v15;
  v101 = v16;
  __chkstk_darwin(v15);
  v97 = v86 - v17;
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v18);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v23 - 8);
  v96 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_imagerQueue;
  v86[1] = sub_100006370(0, &qword_1019F2D90);
  static DispatchQoS.utility.getter();
  (*(v20 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  v109 = _swiftEmptyArrayStorage;
  sub_10004161C(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_10001A2F8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v96[v1] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache;
  *(v1 + v24) = [objc_allocWithZone(NSCache) init];
  v25 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cachedSizes;
  *(v1 + v25) = sub_100041664(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_subscriptionSet) = &_swiftEmptySetSingleton;
  v26 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_updatePublisher;
  v87 = sub_1005B981C(&unk_1019FB810);
  swift_allocObject();
  *(v1 + v26) = PassthroughSubject.init()();
  v27 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_assetDownloadHelper;
  type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  v29 = sub_100041A64(_swiftEmptyArrayStorage);
  *&v2[v27] = v28;
  v2[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_isPaused] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache____lazy_storage___defaultUnsupportedImage] = 0;
  v30 = v104;
  *&v2[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary] = v104;
  *(v28 + 112) = v29;
  v31 = *&v2[v24];
  v95 = v30;
  v32 = v31;
  v33 = String._bridgeToObjectiveC()();
  [v32 setName:v33];

  v34 = type metadata accessor for CRLBoardPreviewImageCache();
  v110.receiver = v2;
  v110.super_class = v34;
  v35 = objc_msgSendSuper2(&v110, "init");
  v36 = *&v35[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_cache];
  v37 = v35;
  [v36 setDelegate:v37];
  v96 = [objc_opt_self() defaultCenter];
  v109 = *&v37[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_updatePublisher];
  sub_1005B981C(&qword_101A19B40);

  v38 = static OS_dispatch_queue.main.getter();
  v39 = v102;
  *v102 = v38;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v40 = v103;
  v41 = v105;
  (*(v103 + 104))(v39, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v105);
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = v106;
  (*(*(v42 - 8) + 56))(v106, 1, 1, v42);
  sub_10001A2F8(&qword_1019FB820, &unk_1019FB810);
  sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90);
  v44 = v88;
  v45 = v89;
  Publisher.collect<A>(_:options:)();
  sub_10000CAAC(v43, &unk_1019FB7E0);
  (*(v40 + 8))(v39, v41);

  v46 = objc_opt_self();
  v47 = [v46 mainRunLoop];
  v109 = v47;
  v48 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v102 = v48;
  v105 = v49 + 56;
  v106 = v50;
  (v50)(v45, 1, 1);
  v51 = sub_100006370(0, &qword_1019FB830);
  sub_10001A2F8(&qword_1019FB838, &qword_1019FB7F0);
  v52 = sub_10000FDE0(&qword_1019FB840, &qword_1019FB830);
  v54 = v97;
  v53 = v98;
  v103 = v52;
  v104 = v51;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v45, &qword_1019FB7D8);

  (*(v99 + 8))(v44, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001A2F8(&qword_1019FB848, &qword_1019FB7F8);
  v55 = v100;
  Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v54, v55);
  v56 = OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_subscriptionSet;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v57 = *&v95[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];
  v58 = v57;
  v59 = v91;
  v88 = v57;
  NSNotificationCenter.publisher(for:object:)();
  v87 = v58;

  v60 = [v46 mainRunLoop];
  v109 = v60;
  (v106)(v45, 1, 1, v102);
  v61 = sub_10004161C(&qword_1019FB850, &type metadata accessor for NSNotificationCenter.Publisher);
  v98 = v46;
  v62 = v90;
  v63 = v94;
  v101 = v61;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v45, &qword_1019FB7D8);

  v64 = *(v107 + 8);
  v107 += 8;
  v100 = v64;
  v64(v59, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_10001A2F8(&qword_1019FB858, &qword_1019FB7D0);
  v66 = v93;
  v99 = v65;
  Publisher<>.sink(receiveValue:)();

  v67 = *(v108 + 8);
  v108 += 8;
  v97 = v67;
  (v67)(v62, v66);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v68 = v45;
  v69 = v56;
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v70 = v87;
  NSNotificationCenter.publisher(for:object:)();

  v71 = [v98 mainRunLoop];
  v109 = v71;
  (v106)(v68, 1, 1, v102);
  v72 = v94;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v68, &qword_1019FB7D8);

  v100(v59, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  (v97)(v62, v66);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v88 = v69;
  if (qword_1019F1480 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  v73 = [v98 mainRunLoop];
  v109 = v73;
  (v106)(v68, 1, 1, v102);
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v68, &qword_1019FB7D8);

  v100(v59, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  (v97)(v62, v66);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = [objc_opt_self() processInfo];
  v75 = [v74 thermalState];

  sub_100041C58(v75);
  NSNotificationCenter.publisher(for:object:)();
  v76 = [v98 mainRunLoop];
  v109 = v76;
  (v106)(v68, 1, 1, v102);
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v68, &qword_1019FB7D8);

  v100(v59, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v93;
  Publisher<>.sink(receiveValue:)();

  (v97)(v62, v77);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  NSNotificationCenter.publisher(for:object:)();
  v78 = [v98 mainRunLoop];
  v109 = v78;
  (v106)(v68, 1, 1, v102);
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v68, &qword_1019FB7D8);

  v100(v59, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  (v97)(v62, v77);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v79 = v92;
  static TaskPriority.low.getter();
  v80 = type metadata accessor for TaskPriority();
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = 0;
  v83 = v95;
  v82[4] = v81;
  v82[5] = v83;
  v84 = v83;
  sub_100CA64C8(0, 0, v79, &unk_101474EA0, v82);

  sub_10000CAAC(v79, &qword_1019FB750);
  return v37;
}

uint64_t sub_1000415BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004161C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100041664(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A146E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1005B981C(&qword_101A0EEB0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000BE14(v9, v5, &qword_101A146E0);
      result = sub_1007C880C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CRLPreviewImages.Item(0);
      result = sub_100BDBA0C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CRLPreviewImages.Item);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100041868()
{
  if (!qword_1019FA9F0)
  {
    type metadata accessor for CRLBoardIdentifier(255);
    type metadata accessor for UUID();
    type metadata accessor for CGRect(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1019FA9F0);
    }
  }
}

void sub_1000418F4()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_10004197C();
    if (v1 <= 0x3F)
    {
      sub_100041868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10004197C()
{
  if (!qword_1019FA9E8)
  {
    v0 = type metadata accessor for CRLBoardIdentifier(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1019FA9E8);
    }
  }
}

unint64_t sub_1000419E8()
{
  result = qword_1019FAA50;
  if (!qword_1019FAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAA50);
  }

  return result;
}

uint64_t type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest()
{
  result = qword_1019F8630;
  if (!qword_1019F8630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041AD4()
{
  result = type metadata accessor for CRLBoardIdentifier(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100041B58(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_100041BE8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8568 = result;
  return result;
}

NSString sub_100041C20()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD60F0 = result;
  return result;
}

void sub_100041C58(unint64_t a1)
{
  if (qword_1019F2138 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlBoardPreviewImageCache;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = a1;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v5, "Thermal state updated to: %d", 28, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v6 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_isPaused);
  if (a1 > 1)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_isPaused) = 1;
    if ((v6 & 1) == 0)
    {
      dispatch_suspend(*(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_imagerQueue));
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_isPaused) = 0;
    if (v6)
    {
      dispatch_resume(*(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_imagerQueue));
    }
  }
}

void sub_100041D9C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBB8, &qword_101AD5B60);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardPreviewImageCache = v1;
}

uint64_t sub_100041E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100041EFC(void *a1, void *a2)
{
  v2[4] = sub_100042108(_swiftEmptyArrayStorage);
  v2[5] = 0;
  v2[2] = a2;
  v2[3] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = a2;
  v8 = [v5 defaultCenter];
  if (qword_1019F14B0 != -1)
  {
    swift_once();
  }

  v9 = qword_101AD6200;
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_101285F38;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_100059694;
  v15[3] = &unk_1018BA428;
  v12 = _Block_copy(v15);

  v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];

  _Block_release(v12);
  v2[5] = v13;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000420D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

NSString sub_10004212C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD6200 = result;
  return result;
}

uint64_t sub_100042190()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10004229C(char *a1, void *a2)
{
  v3 = v2;
  v37[1] = swift_getObjectType();
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v37[0] = v37 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v12 = objc_allocWithZone(CSSearchableIndex);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithName:v13];

  v3[14] = v14;
  v3[19] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for CRLUnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  atomic_thread_fence(memory_order_acq_rel);
  v3[20] = v15;
  *(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_isIndexing) = 0;
  v17 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_boardChangedPublisher;
  sub_1005B981C(&qword_101A19B28);
  swift_allocObject();
  *(v3 + v17) = PassthroughSubject.init()();
  *(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChanges) = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_pendingChangesLock;
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *v20 = 0;
  *(v19 + 16) = v20;
  atomic_thread_fence(memory_order_acq_rel);
  *(v3 + v18) = v19;
  v21 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_didUpdateSpotlightPublisher;
  sub_1005B981C(&qword_101A19BB0);
  swift_allocObject();
  *(v3 + v21) = PassthroughSubject.init()();
  *(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_subscriptionSet) = &_swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_drawingIndexableContentHelper;
  *(v3 + v22) = [objc_allocWithZone(CRLiOSPKDrawingIndexableContentHelper) init];
  *(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_searchQuery) = 0;
  v23 = (v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_indexRecognizerKey);
  *v23 = 0xD000000000000029;
  v23[1] = 0x8000000101551990;
  *(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager____lazy_storage___indexRecognizerAttributeKey) = 1;
  v3[15] = a1;
  v3[16] = &off_1018B0AB8;
  v24 = *&a1[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];
  v3[17] = v24;
  v3[18] = a2;
  v25 = a2;
  v26 = a1;
  v27 = v24;
  sub_1000429B0(v11);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_boardIndexStateURL, v11, v8);
  v28 = type metadata accessor for CRLSpotlightManager(0);
  v38.receiver = v3;
  v38.super_class = v28;
  v29 = objc_msgSendSuper2(&v38, "init");
  if ([objc_opt_self() isIndexingAvailable])
  {
    v30 = type metadata accessor for TaskPriority();
    v31 = v37[0];
    (*(*(v30 - 8) + 56))(v37[0], 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v29;
    v33 = v29;
    sub_10064191C(0, 0, v31, &unk_1014A8BB0, v32);
  }

  else
  {
    if (qword_1019F20F8 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlSpotlight;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v34, &_mh_execute_header, v35, "CoreSpotlight indexing not available on this device.", 52, 2, _swiftEmptyArrayStorage);
  }

  return v29;
}

uint64_t sub_100042758()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000427B8()
{
  sub_10004197C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_100042818(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000429B0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v34 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v33 - v7;
  __chkstk_darwin(v6);
  v10 = v33 - v9;
  v11 = [objc_opt_self() defaultManager];
  sub_100017D2C();
  (*(v3 + 32))(v10, v8, v2);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v35 = 0;
  v15 = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v35];

  if (v15)
  {
    v16 = v35;

LABEL_7:
    URL.appendingPathComponent(_:)();
    return (*(v3 + 8))(v10, v2);
  }

  v17 = v35;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v33[0] = a1;

  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlSpotlight;
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
  sub_100005404(v18, &_mh_execute_header, v23, "Could not get board index state URL: %@", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v24 = objc_allocWithZone(CRLTemporaryDirectory);
  v35 = 0;
  v25 = [v24 initWithError:&v35];
  v26 = v35;
  if (v25)
  {
    v27 = v25;
    v35 = v33[1];
    v28 = v26;
    sub_1005B981C(&qword_101A19C78);
    [v27 setAssociatedLifetimeObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    v29 = [v27 URL];
    v30 = v34;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 8))(v10, v2);
    (*(v3 + 32))(v10, v30, v2);
    goto LABEL_7;
  }

  v32 = v35;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100042E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100043350(a1, v4, v5, v6);
}

void sub_100042F30()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForInfoDictionaryKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v17;
      v7 = v18;
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000CAAC(&v21, &unk_1019F4D00);
  }

  v7 = 0xE100000000000000;
  v8 = 63;
LABEL_9:
  if (qword_1019F2800 != -1)
  {
    swift_once();
  }

  v9 = qword_101A271C8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {

    sub_10000CAAC(&v21, &unk_1019F4D00);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v17 == v8 && v18 == v7)
  {

LABEL_19:

    goto LABEL_21;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    Date.init()();
    v14.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    goto LABEL_24;
  }

LABEL_21:
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CAAC(&v21, &unk_1019F4D00);
    return;
  }

  v21 = 0u;
  v22 = 0u;
  sub_10000CAAC(&v21, &unk_1019F4D00);
  Date.init()();
  v14.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
LABEL_24:
  v15 = String._bridgeToObjectiveC()();
  [v9 setObject:v14.super.isa forKey:v15];
}

uint64_t sub_100043370()
{
  if (qword_1019F20F8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlSpotlight;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = URL.absoluteString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Loading Spotlight state from %@", 31, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  v10 = *(*(v0[33] + 160) + 16);
  os_unfair_lock_lock(v10);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1005B981C(&qword_101A19AB8);
  sub_1000446F0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v13 = v0[33];

  v14 = v0[32];
  swift_beginAccess();
  *(v13 + 152) = v14;

  os_unfair_lock_unlock(v10);
  sub_10002640C(v7, v9);
  sub_100046468();
  v11 = swift_task_alloc();
  v0[34] = v11;
  *v11 = v0;
  v11[1] = sub_100C91C0C;

  return sub_100C9206C();
}

id sub_1000436D0()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_101A271C8 = result;
  return result;
}

void sub_10004370C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB70, &qword_101AD5B18);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSpotlight = v1;
}

void sub_1000437CC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 BOOLForKey:@"CRLDisplayEdgeGuides"];

  v3 = [v0 standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CRLDisplayCenterGuides"];

  v5 = [v0 standardUserDefaults];
  v25 = [v5 BOOLForKey:@"CRLDisplaySpacingGuides"];

  v6 = [v0 standardUserDefaults];
  v26 = [v6 BOOLForKey:@"CRLDisplaySizingGuides"];

  v7 = [v0 standardUserDefaults];
  v27 = [v7 BOOLForKey:@"CRLUseHapticFeedbackWhenSnapping"];

  v8 = [v0 standardUserDefaults];
  v9 = [v8 BOOLForKey:@"CRLSelectAndScrollWithApplePencil"];

  if (qword_1019F23B0 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(NSNumber) initWithBool:v9];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v10, 0xD00000000000001ELL, 0x8000000101566320, isUniquelyReferenced_nonNull_native);
  qword_101A1F1D0 = v28;
  swift_endAccess();
  v12 = [objc_allocWithZone(NSNumber) initWithBool:v2];
  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v29 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v12, 0xD000000000000011, 0x8000000101566340, v13);
  qword_101A1F1D0 = v29;
  swift_endAccess();
  v14 = [objc_allocWithZone(NSNumber) initWithBool:v4];
  swift_beginAccess();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v30 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v14, 0xD000000000000013, 0x8000000101566360, v15);
  qword_101A1F1D0 = v30;
  swift_endAccess();
  v16 = [objc_allocWithZone(NSNumber) initWithBool:v25];
  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v31 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v16, 0xD000000000000014, 0x8000000101566380, v17);
  qword_101A1F1D0 = v31;
  swift_endAccess();
  v18 = [objc_allocWithZone(NSNumber) initWithBool:v26];
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v32 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v18, 0xD000000000000013, 0x80000001015663A0, v19);
  qword_101A1F1D0 = v32;
  swift_endAccess();
  v20 = [objc_allocWithZone(NSNumber) initWithBool:v27];
  swift_beginAccess();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v33 = qword_101A1F1D0;
  qword_101A1F1D0 = 0x8000000000000000;
  sub_100043E54(v20, 0xD00000000000001DLL, 0x80000001015663C0, v21);
  qword_101A1F1D0 = v33;
  swift_endAccess();
  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  sub_100006370(0, &qword_1019F54D0);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 sendEventInDomain:v23 lazily:1 eventPayload:isa];
}

unint64_t sub_100043D1C()
{
  result = sub_100043E40(_swiftEmptyArrayStorage);
  qword_101A1F1D0 = result;
  return result;
}

unint64_t sub_100043D44(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1005B981C(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_10000BE7C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100043E68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_10000BE7C(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_100044004(v18, a4 & 1, a5);
      v13 = sub_10000BE7C(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_100AA8790(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a2;
  v26[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_100044004(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1005B981C(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
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
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
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

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void *sub_10004435C(void *a1, void *a2, const char *a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = *a4;
  if (!*a4 && (v9 = sub_100044438(v7, v8), (*a4 = v9) == 0) || (v10 = dlsym(v9, a3)) == 0)
  {
    if (([v8 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10131F800();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10131F814();
      }
    }

    v10 = 0;
  }

  return v10;
}

void *sub_100044438(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 stringByAppendingString:@".framework"];
  v6 = v5;
  if (v3)
  {
    v7 = [v3 stringByAppendingString:@".framework"];
    v8 = sub_100044590(v7);
    v9 = [v8 stringByAppendingPathComponent:v6];
  }

  else
  {
    v9 = sub_100044590(v5);
  }

  v10 = [v9 stringByAppendingPathComponent:v4];
  v11 = v10;
  if (!v10 || (v12 = dlopen([v10 fileSystemRepresentation], 256)) == 0)
  {
    if (([v4 isEqualToString:@"Ubiquity"] & 1) == 0)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10131F784();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10131F798();
      }
    }

    v12 = 0;
  }

  return v12;
}

id sub_100044590(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [v3 objectAtIndex:v5];
      v7 = [v6 stringByAppendingPathComponent:@"Frameworks"];
      v8 = [v7 stringByAppendingPathComponent:v1];

      if ([v2 fileExistsAtPath:v8])
      {
        break;
      }

      v9 = [v6 stringByAppendingPathComponent:@"PrivateFrameworks"];
      v10 = [v9 stringByAppendingPathComponent:v1];

      if ([v2 fileExistsAtPath:v10])
      {
        v8 = v10;
        break;
      }

      if (v4 == ++v5)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }

    v4 = v8;
  }

LABEL_9:

  return v4;
}

unint64_t sub_1000446F0()
{
  result = qword_101A19C60;
  if (!qword_101A19C60)
  {
    sub_1005C4E5C(&qword_101A19AB8);
    sub_100042818(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
    sub_100042818(&qword_101A19C70, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A19C60);
  }

  return result;
}

uint64_t sub_100044878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A045E8);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1000459CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_1000325B8(&qword_101A04558, type metadata accessor for CRLBoardIdentifierStorage);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_1000461D0(v13, v11, type metadata accessor for CRLBoardIdentifierStorage);
    sub_1000461D0(v11, v12, type metadata accessor for CRLBoardIdentifier);
  }

  return sub_100005070(a1);
}

uint64_t sub_100044B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CRLSEImporter()
{
  result = qword_101A14A60;
  if (!qword_101A14A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100044C24()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100044D84(319, &qword_101A14A70, type metadata accessor for CRLBoardIdentifier);
    if (v1 <= 0x3F)
    {
      sub_100044D84(319, &qword_101A046F0, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100044D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100044DD8(uint64_t a1, void *a2)
{
  v3 = v2;
  v72 = a2;
  v77 = a1;
  v4 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v4 - 8);
  v71 = &v58 - v5;
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v70 = &v58 - v7;
  v8 = type metadata accessor for URL.DirectoryHint();
  v78 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v61 = v11;
  v75 = *(v11 - 8);
  v12 = v75;
  v13 = __chkstk_darwin(v11);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v58 - v15;
  v16 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_lastImportedBoardIdentifier;
  v69 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_lastImportedBoardIdentifier;
  v67 = type metadata accessor for CRLBoardIdentifier(0);
  v17 = *(v67 - 8);
  v66 = *(v17 + 56);
  v68 = v17 + 56;
  v66(&v2[v16], 1, 1, v67);
  v18 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_importedBoardPublisher;
  sub_1005B981C(&qword_101A14A90);
  swift_allocObject();
  *&v2[v18] = PassthroughSubject.init()();
  v65 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemURL;
  v19 = *(v12 + 56);
  v63 = v12 + 56;
  v64 = v19;
  v19(&v2[OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemURL], 1, 1, v11);
  v80[0] = 0x74726F706D49;
  v80[1] = 0xE600000000000000;
  v20 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v21 = v78;
  v22 = *(v78 + 104);
  v74 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v23 = v8;
  v22(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  v60 = v22;
  v73 = sub_100017CD8();
  URL.appending<A>(path:directoryHint:)();
  v24 = *(v21 + 8);
  v24(v10, v8);
  v78 = v21 + 8;
  strcpy(v80, "ImportFailures");
  HIBYTE(v80[1]) = -18;
  v22(v10, v20, v8);
  v25 = v62;
  URL.appending<A>(path:directoryHint:)();
  v24(v10, v8);
  v59 = v24;
  v58 = *(v75 + 32);
  v26 = v61;
  v58(&v2[OBJC_IVAR____TtC8Freeform13CRLSEImporter_importFailureURL], v25, v61);
  strcpy(v80, "Snapshot.plist");
  HIBYTE(v80[1]) = -18;
  v27 = v60;
  v60(v10, v74, v23);
  URL.appending<A>(path:directoryHint:)();
  v24(v10, v23);
  v28 = v26;
  v29 = v26;
  v30 = v58;
  v58(&v2[OBJC_IVAR____TtC8Freeform13CRLSEImporter_librarySnapshotURL], v25, v28);
  v80[0] = 0xD000000000000013;
  v80[1] = 0x800000010158F9A0;
  v27(v10, v74, v23);
  v31 = v76;
  URL.appending<A>(path:directoryHint:)();
  v32 = v10;
  v33 = v75;
  v59(v32, v23);
  v30(&v2[OBJC_IVAR____TtC8Freeform13CRLSEImporter_pendingBoardsURL], v25, v29);
  v34 = v29;
  v35 = v33;
  v36 = v70;
  (*(v33 + 16))(v70, v31, v34);
  v64(v36, 0, 1, v34);
  v37 = v65;
  swift_beginAccess();
  sub_10002C638(v36, &v3[v37], &unk_1019F33C0);
  swift_endAccess();
  v38 = v71;
  v66(v71, 1, 1, v67);
  v39 = v69;
  swift_beginAccess();
  sub_10002C638(v38, &v3[v39], &unk_1019F52D0);
  swift_endAccess();
  v40 = [objc_allocWithZone(NSOperationQueue) init];
  v41 = OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemOperationQueue;
  *&v3[OBJC_IVAR____TtC8Freeform13CRLSEImporter_presentedItemOperationQueue] = v40;
  v42 = v40;
  v43 = String._bridgeToObjectiveC()();
  [v42 setName:v43];

  [*&v3[v41] setMaxConcurrentOperationCount:1];
  [*&v3[v41] setQualityOfService:17];
  v44 = v72;
  *&v3[OBJC_IVAR____TtC8Freeform13CRLSEImporter_boardLibrary] = v72;
  v45 = qword_1019F2148;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = static OS_os_log.crlSharingExtension;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v49 = URL.relativePath.getter();
  v50 = v31;
  v52 = v51;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v49;
  *(inited + 40) = v52;
  v53 = static os_log_type_t.debug.getter();
  sub_100005404(v47, &_mh_execute_header, v53, "Container URL %@", 16, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v54 = type metadata accessor for CRLSEImporter();
  v79.receiver = v3;
  v79.super_class = v54;
  v55 = objc_msgSendSuper2(&v79, "init");
  v56 = *(v35 + 8);
  v56(v77, v34);
  v56(v50, v34);
  return v55;
}

uint64_t sub_100045674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100045734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1000457A0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBC8, &qword_101AD5B70);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSharingExtension = v1;
}

uint64_t sub_100045858()
{
  type metadata accessor for AppDependencyManager();
  v0 = static AppDependencyManager.shared.getter();
  type metadata accessor for CRLAppIntentsManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_101AD8CF8 = result;
  return result;
}

unint64_t sub_10004591C()
{
  result = qword_101A04610;
  if (!qword_101A04610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04610);
  }

  return result;
}

unint64_t sub_100045974()
{
  result = qword_101A04618;
  if (!qword_101A04618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04618);
  }

  return result;
}

unint64_t sub_1000459CC()
{
  result = qword_101A045E0;
  if (!qword_101A045E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A045E0);
  }

  return result;
}

uint64_t sub_100045A3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1005B981C(&qword_101A045C0);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100045E58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_1000325B8(&qword_1019F43A8, &type metadata accessor for UUID);
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
  sub_10004603C(v19, v18);
  sub_100005070(a1);
  return sub_1000460A0(v19, type metadata accessor for CRLBoardIdentifierStorage);
}

unint64_t sub_100045DA8()
{
  result = qword_101A04620;
  if (!qword_101A04620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04620);
  }

  return result;
}

unint64_t sub_100045E00()
{
  result = qword_101A04628;
  if (!qword_101A04628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A04628);
  }

  return result;
}

unint64_t sub_100045E58()
{
  result = qword_101A045C8;
  if (!qword_101A045C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A045C8);
  }

  return result;
}

uint64_t sub_100045EB8()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 0x4955556472616F62;
  }
}

uint64_t storeEnumTagSinglePayload for CRLTombstoneBoardItemRealTimeChangeRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLTombstoneBoardItemRealTimeChangeRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10004603C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifierStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000460A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100046100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000461D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_1000462A0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100046340()
{
  type metadata accessor for UUID();
  sub_1000325B8(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return String.hash(into:)();
}

uint64_t sub_1000463E0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100046468()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v93 = *(v2 - 8);
  v94 = v2;
  __chkstk_darwin(v2);
  v92 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A19AD8);
  v5 = *(v4 - 8);
  v90 = v4;
  v91 = v5;
  __chkstk_darwin(v4);
  v89 = &v63 - v6;
  v97 = sub_1005B981C(&unk_101A19AE0);
  v99 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = (&v63 - v7);
  v8 = sub_1005B981C(&unk_1019FB7E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1005B981C(&qword_101A19AF0);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v63 - v15;
  v70 = sub_1005B981C(&qword_101A19AF8);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = &v63 - v16;
  v77 = sub_1005B981C(&qword_101A19B00);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v65 = &v63 - v17;
  v82 = sub_1005B981C(&qword_101A19B08);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v67 = &v63 - v18;
  v19 = sub_1005B981C(&qword_101A19B10);
  v20 = *(v19 - 8);
  v84 = v19;
  v85 = v20;
  __chkstk_darwin(v19);
  v71 = &v63 - v21;
  v22 = sub_1005B981C(&unk_101A19B18);
  v23 = *(v22 - 8);
  v86 = v22;
  v87 = v23;
  __chkstk_darwin(v22);
  v81 = &v63 - v24;
  v100 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_boardChangedPublisher);
  v95 = sub_100006370(0, &qword_1019F2D90);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.background(_:), v11);

  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v101 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v98 = *(v27 + 56);
  v28 = v27 + 56;
  v29 = v10;
  v30 = v10;
  v31 = v26;
  v74 = v26;
  v98(v30, 1, 1);
  v75 = v28;
  sub_1005B981C(&qword_101A19B28);
  v88 = &protocol conformance descriptor for PassthroughSubject<A, B>;
  sub_10001A2F8(&unk_101A19B30, &qword_101A19B28);
  v80 = sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90);
  Publisher.receive<A>(on:options:)();
  v32 = v29;
  sub_10000CAAC(v29, &unk_1019FB7E0);

  sub_1005B981C(&qword_101A19B40);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = v96;
  *v96 = v33;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v35 = v99;
  v36 = *(v99 + 104);
  v73 = v99 + 104;
  v76 = v36;
  v37 = v97;
  v36(v34, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v97);
  (v98)(v32, 1, 1, v31);
  sub_10001A2F8(&qword_101A19B48, &qword_101A19AF0);
  v38 = v64;
  v39 = v32;
  v68 = v32;
  v40 = v66;
  v41 = v63;
  Publisher.collect<A>(_:options:)();
  sub_10000CAAC(v39, &unk_1019FB7E0);
  v42 = *(v35 + 8);
  v99 = v35 + 8;
  v78 = v42;
  v42(v34, v37);
  v69[1](v41, v40);
  static Subscribers.Demand.unlimited.getter();
  sub_1005B981C(&qword_101A19B50);
  v69 = &protocol conformance descriptor for Publishers.CollectByTime<A, B>;
  sub_10001A2F8(&qword_101A19B58, &qword_101A19AF8);
  sub_10001A2F8(&qword_101A19B60, &qword_101A19B50);
  v43 = v65;
  v44 = v70;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  (*(v72 + 8))(v38, v44);
  sub_10001A2F8(&qword_101A19B68, &qword_101A19B00);

  v45 = v67;
  v46 = v77;
  Publisher.filter(_:)();

  (*(v79 + 8))(v43, v46);

  static Subscribers.Demand.unlimited.getter();
  sub_1005B981C(&qword_101A19B70);
  sub_10001A2F8(&qword_101A19B78, &qword_101A19B08);
  sub_10001A2F8(&qword_101A19B80, &qword_101A19B70);
  v47 = v71;
  v48 = v82;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v83 + 8))(v45, v48);

  static Subscribers.Demand.unlimited.getter();
  sub_1005B981C(&qword_101A19B88);
  sub_10001A2F8(&qword_101A19B90, &qword_101A19B10);
  sub_10001A2F8(&qword_101A19B98, &qword_101A19B88);
  v49 = v81;
  v50 = v84;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v85 + 8))(v47, v50);
  sub_10001A2F8(&qword_101A19BA0, &unk_101A19B18);

  v51 = v86;
  Publisher<>.sink(receiveValue:)();

  (*(v87 + 8))(v49, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10004781C();
  v100 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_didUpdateSpotlightPublisher);
  v52 = *(sub_1005B981C(&qword_101A19BA8) + 64);

  v53 = static OS_dispatch_queue.main.getter();
  v54 = v96;
  *v96 = v53;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  *(v54 + v52) = 5;
  v55 = v97;
  v76(v54, enum case for Publishers.TimeGroupingStrategy.byTimeOrCount<A>(_:), v97);
  v56 = v68;
  (v98)(v68, 1, 1, v74);
  sub_1005B981C(&qword_101A19BB0);
  sub_10001A2F8(&qword_101A19BB8, &qword_101A19BB0);
  v57 = v89;
  Publisher.collect<A>(_:options:)();
  sub_10000CAAC(v56, &unk_1019FB7E0);
  v78(v54, v55);

  sub_10001A2F8(&unk_101A19BC0, &qword_101A19AD8);

  v58 = v90;
  Publisher<>.sink(receiveValue:)();

  (*(v91 + 8))(v57, v58);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v59 = [objc_opt_self() defaultCenter];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v60 = v92;
  NSNotificationCenter.publisher(for:object:)();
  swift_allocObject();
  swift_weakInit();
  sub_100042818(&qword_1019FB850, &type metadata accessor for NSNotificationCenter.Publisher);
  v61 = v94;
  Publisher<>.sink(receiveValue:)();

  v62 = *(v93 + 8);
  v62(v60, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v62(v60, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1019F1EE0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v62(v60, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  [*(v1 + 112) setIndexDelegate:v1];

  *(v1 + OBJC_IVAR____TtC8Freeform19CRLSpotlightManager_isIndexing) = 1;
}

uint64_t sub_1000476CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100047724()
{
  sub_100047798();
  if (v0 <= 0x3F)
  {
    sub_10004197C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100047798()
{
  if (!qword_101A19D00)
  {
    type metadata accessor for CRLBoardIdentifier(255);
    sub_100006370(255, &qword_101A09CB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A19D00);
    }
  }
}

uint64_t sub_10004781C()
{
  sub_1005B981C(&qword_101A19AB0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100048F30(v1);
}

uint64_t sub_1000479B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100047A00();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100047A00()
{
  v108 = type metadata accessor for UUID();
  v2 = *(v108 - 8);
  __chkstk_darwin(v108);
  v113 = &v97[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v4 = __chkstk_darwin(v107);
  v106 = &v97[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v105 = &v97[-v6];
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v102 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v110 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v104 = &v97[-v11];
  v12 = __chkstk_darwin(v10);
  v103 = &v97[-v13];
  __chkstk_darwin(v12);
  v109 = &v97[-v14];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v97[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v18 = v19;
  v21 = v16 + 104;
  v20 = *(v16 + 104);
  v114 = enum case for DispatchPredicate.onQueue(_:);
  v116 = v20;
  v20(v18);
  v22 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v115 = *(v16 + 8);
  v120 = v16 + 8;
  v115(v18, v15);
  if ((v19 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v111 = v2;
  v101 = v7;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, 0xD000000000000037, 0x80000001015AB050);
  v117 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
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
      sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch board activity times with error %@", 50, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_46:
    swift_once();
    goto LABEL_4;
  }

  v32 = v24;

  v33 = *(*(v32 + 16) + 32);
  *v18 = v33;
  v34 = v114;
  v35 = v116;
  v116(v18, v114, v15);
  v36 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v37 = v115;
  v115(v18, v15);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  type metadata accessor for SQLiteRowIterator();
  v38 = swift_initStackObject();
  v38[3] = 0;
  v118 = v38 + 3;
  v38[4] = 0;
  v100 = v38 + 4;
  v38[5] = 1;
  v119 = v38;
  v38[2] = v32;

  swift_beginAccess();
  v39 = *(*(v32 + 16) + 32);
  *v18 = v39;
  v35(v18, v34, v15);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v37(v18, v15);
  if ((v39 & 1) == 0)
  {
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

  v99 = (v111 + 4);
  v111 = _swiftEmptyDictionarySingleton;
  v112 = v21;
  while (1)
  {
    v41 = v118;
    *v118 = 0;
    v41[1] = 0;
    v119[5] = 1;
    v42 = sqlite3_step(*(v32 + 24));
    if (v42 != 100)
    {
      break;
    }

    v43 = *(*(v32 + 16) + 32);
    *v18 = v43;
    v35(v18, v34, v15);

    v44 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v37(v18, v15);
    if ((v43 & 1) == 0)
    {
      goto LABEL_42;
    }

    v45 = *(*(v32 + 16) + 32);
    *v18 = v45;
    v35(v18, v34, v15);
    v46 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v37(v18, v15);
    if ((v45 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (sqlite3_column_type(*(v32 + 24), 0) == 5 || (v47 = sqlite3_column_blob(*(v32 + 24), 0)) == 0)
    {

      goto LABEL_17;
    }

    v48 = v47;
    v49 = sqlite3_column_bytes(*(v32 + 24), 0);
    v50 = sub_100024DD4(v48, v49);
    v51 = v35;
    v52 = v50;
    v53 = v37;
    v55 = v54;
    v56 = *(*(v32 + 16) + 32);
    *v18 = v56;
    v51(v18, v34, v15);
    v57 = v56;
    LOBYTE(v56) = _dispatchPreconditionTest(_:)();
    v53(v18, v15);
    if ((v56 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (sqlite3_column_type(*(v32 + 24), 1) == 5)
    {

      sub_10002640C(v52, v55);
      v35 = v116;
      v37 = v115;
LABEL_17:
      v58 = *(*(v32 + 16) + 32);
      *v18 = v58;
      v35(v18, v34, v15);
      v59 = v58;
      v60 = _dispatchPreconditionTest(_:)();
      v37(v18, v15);
      goto LABEL_18;
    }

    v61 = sqlite3_column_double(*(v32 + 24), 1);
    sub_100024E98(v52, v55);
    v62 = v117;
    sub_100024EEC(v113, v52, v55);
    if (v62)
    {

      sub_10002640C(v52, v55);

      sub_10002640C(v52, v55);
      v117 = 0;
      v34 = v114;
      v35 = v116;
      v37 = v115;
      goto LABEL_17;
    }

    v65 = v63;
    v66 = v64;
    v117 = 0;
    sub_10002640C(v52, v55);
    v67 = v106;
    (*v99)(v106, v113, v108);
    v68 = (v67 + *(v107 + 20));
    *v68 = v65;
    v68[1] = v66;
    v69 = v105;
    sub_100025668(v67, v105, type metadata accessor for CRLBoardIdentifierStorage);
    v70 = v69;
    v71 = v104;
    sub_100025668(v70, v104, type metadata accessor for CRLBoardIdentifierStorage);
    v72 = v71;
    v73 = v103;
    sub_100025668(v72, v103, type metadata accessor for CRLBoardIdentifier);
    v74 = v73;
    v75 = v109;
    sub_100025668(v74, v109, type metadata accessor for CRLBoardIdentifier);
    v76 = v110;
    sub_10000C83C(v75, v110, type metadata accessor for CRLBoardIdentifier);
    v77 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v77;
    v79 = sub_1000486F0(v76);
    v80 = v77[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_49;
    }

    if (v77[3] >= v82)
    {
      v34 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        LODWORD(v111) = v78;
        sub_10004AB84();
        LOBYTE(v78) = v111;
      }
    }

    else
    {
      v83 = v78;
      sub_1000489C8(v82, isUniquelyReferenced_nonNull_native);
      v84 = sub_1000486F0(v110);
      v85 = v78 & 1;
      LOBYTE(v78) = v83;
      v86 = (v83 & 1) == v85;
      v34 = v114;
      if (!v86)
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v79 = v84;
    }

    v87 = v121;
    v111 = v121;
    if (v78)
    {
      *(v121[7] + 8 * v79) = v61;
    }

    else
    {
      v121[(v79 >> 6) + 8] |= 1 << v79;
      sub_10000C83C(v110, v87[6] + *(v102 + 72) * v79, type metadata accessor for CRLBoardIdentifier);
      *(v87[7] + 8 * v79) = v61;
      v88 = v87[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_50;
      }

      v87[2] = v90;
    }

    sub_10002640C(v52, v55);
    sub_100026028(v110, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v109, type metadata accessor for CRLBoardIdentifier);
    v91 = *(*(v32 + 16) + 32);
    *v18 = v91;
    v35 = v116;
    v116(v18, v34, v15);
    v92 = v91;
    v60 = _dispatchPreconditionTest(_:)();
    v37 = v115;
    v115(v18, v15);
LABEL_18:
    if ((v60 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v42 && v42 != 101)
  {
    *v118 = v42;
    v93 = v100;
    *v100 = 0;
    v93[1] = 0;
  }

  v94 = *(*(v32 + 16) + 32);
  *v18 = v94;
  v35(v18, v34, v15);
  v95 = v94;
  LOBYTE(v94) = _dispatchPreconditionTest(_:)();
  v37(v18, v15);
  if ((v94 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v96 = *(v32 + 24);
  if (v96)
  {
    sqlite3_finalize(v96);
    *(v32 + 24) = 0;
  }

  return v111;
}

unint64_t sub_100048730(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10003EA68(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  v8 = Hasher._finalize()();
  return sub_100048824(a1, v8, a2, a3, a4);
}

unint64_t sub_100048824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v10 = a3(0) - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = -1 << *(v5 + 32);
  v15 = a2 & ~v14;
  if ((*(v5 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v11 + 72);
    do
    {
      sub_100048DB4(*(v5 + 48) + v17 * v15, v13, a4);
      if (static UUID.== infix(_:_:)())
      {
        v18 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v19 = *&v13[v18];
        v20 = *&v13[v18 + 8];
        v21 = (a1 + v18);
        if (v19 == *v21 && v20 == v21[1])
        {
          sub_100048E24(v13, a5);
          return v15;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100048E24(v13, a5);
        if (v23)
        {
          return v15;
        }
      }

      else
      {
        sub_100048E24(v13, a5);
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v5 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

uint64_t sub_1000489C8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1005B981C(&qword_101A0F160);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
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
      v23 = *(v8 + 48);
      v38 = *(v36 + 72);
      v24 = v23 + v38 * v22;
      if (v37)
      {
        sub_100025460(v24, v7, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        sub_10000C704(v24, v7, type metadata accessor for CRLBoardIdentifier);
      }

      v25 = *(*(v8 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10003F158(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100025460(v7, *(v10 + 48) + v38 * v18, type metadata accessor for CRLBoardIdentifier);
      *(*(v10 + 56) + 8 * v18) = v25;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100048DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100048E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100048E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for CRLiOSSceneDelegate()
{
  result = qword_101A1F8C8;
  if (!qword_101A1F8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100048F30(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v86 = &v63 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v82 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v63 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v84 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  swift_beginAccess();
  v72 = v1;
  v15 = *(v1 + 152);
  swift_bridgeObjectRetain_n();
  v85 = v15;
  v16 = sub_100049B74(v15);
  v17 = sub_100049E1C(a1, v16);
  if (qword_1019F20F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v18 = static OS_os_log.crlSpotlight;
  v69 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v67 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v71 = v17;
  v20 = sub_10004ADB8(v17);
  v66 = 0;
  v88 = v20;
  v21 = sub_1005B981C(&unk_1019F4D80);
  v22 = sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v68 = v21;
  v65 = v22;
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  *(inited + 56) = &type metadata for String;
  v64 = sub_1000053B0();
  *(inited + 64) = v64;
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  v70 = v18;
  sub_100005404(v18, &_mh_execute_header, v26, "DELETED BOARDS [%{public}@]", 27, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v75 = (v6 + 16);
  v83 = (v6 + 56);
  v74 = (v6 + 32);
  v77 = (v6 + 48);
  v76 = v6;
  v80 = (v6 + 8);

  v32 = 0;
  v73 = _swiftEmptyArrayStorage;
  v17 = v85;
  v81 = v31;
  v79 = a1;
LABEL_5:
  v33 = v32;
  if (!v30)
  {
    goto LABEL_7;
  }

  do
  {
    v32 = v33;
LABEL_10:
    v34 = *(a1 + 48);
    v78 = *(v84 + 72);
    sub_10004B150(v34 + v78 * (__clz(__rbit64(v30)) | (v32 << 6)), v14, type metadata accessor for CRLBoardIdentifier);
    if (v17[2] && (v35 = sub_1000486F0(v14), (v36 & 1) != 0))
    {
      v6 = v76;
      v37 = v86;
      (*(v76 + 16))(v86, v17[7] + *(v76 + 72) * v35, v5);
      (*(v6 + 56))(v37, 0, 1, v5);
      (*(v6 + 32))(v87, v37, v5);
    }

    else
    {
      v38 = v86;
      (*v83)(v86, 1, 1, v5);
      static Date.distantPast.getter();
      if ((*v77)(v38, 1, v5) != 1)
      {
        sub_10000CAAC(v86, &qword_101A0A320);
      }
    }

    if (!*(a1 + 16))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_1000486F0(v14);
    if ((v39 & 1) == 0)
    {
      goto LABEL_28;
    }

    v40 = v27;
    v30 &= v30 - 1;
    v41 = v5;
    v42 = v82;
    Date.init(timeIntervalSinceReferenceDate:)();
    v43 = v87;
    v44 = static Date.< infix(_:_:)();
    v6 = *v80;
    v45 = v42;
    v5 = v41;
    (*v80)(v45, v41);
    (v6)(v43, v41);
    if (v44)
    {
      sub_100025598(v14, v63, type metadata accessor for CRLBoardIdentifier);
      v46 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v46;
      v27 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10004B394(0, v46[2] + 1, 1);
        v46 = v88;
      }

      a1 = v79;
      v31 = v81;
      v6 = v46[2];
      v48 = v46[3];
      v49 = (v6 + 1);
      v50 = v46;
      v17 = v85;
      if (v6 >= v48 >> 1)
      {
        v73 = (v6 + 1);
        sub_10004B394(v48 > 1, v6 + 1, 1);
        v49 = v73;
        v50 = v88;
      }

      v50[2] = v49;
      v51 = *(v84 + 80);
      v73 = v50;
      sub_100025598(v63, v50 + ((v51 + 32) & ~v51) + v6 * v78, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_5;
    }

    sub_100025FC8(v14, type metadata accessor for CRLBoardIdentifier);
    v33 = v32;
    a1 = v79;
    v17 = v85;
    v27 = v40;
    v31 = v81;
  }

  while (v30);
  while (1)
  {
LABEL_7:
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v32 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v32);
    ++v33;
    if (v30)
    {
      goto LABEL_10;
    }
  }

  v52 = sub_10004B3DC(v73);

  v53 = swift_initStackObject();
  *(v53 + 16) = v67;
  v88 = sub_10004ADB8(v52);
  v54 = BidirectionalCollection<>.joined(separator:)();
  v56 = v55;

  v57 = v64;
  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = v57;
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  v58 = static os_log_type_t.default.getter();
  sub_100005404(v70, &_mh_execute_header, v58, "CHANGED BOARDS [%{public}@]", 27, 2, v53);
  swift_setDeallocating();
  sub_100005070(v53 + 32);
  v59 = sub_10004B56C(v52, 0);

  v60 = sub_10004B56C(v71, 1);

  v88 = v59;
  sub_10004B92C(v60);
  v61 = sub_10004B958(v88);

  v88 = v61;
  PassthroughSubject.send(_:)();
}

uint64_t sub_1000498DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_1000066D0(&qword_101A01D20, type metadata accessor for CRLBoardIdentifier);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v21 = result;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  for (i = (v14 + 63) >> 6; v16; result = sub_100026028(v9, type metadata accessor for CRLBoardIdentifier))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_10000C83C(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v11, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v11, v6, type metadata accessor for CRLBoardIdentifier);
    sub_100031F10(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {

      return v21;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CRLSceneDelegate()
{
  result = qword_101A15A18;
  if (!qword_101A15A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049B7C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaDictionary.count.getter();
  }

  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v17[1] = Set.init(minimumCapacity:)();
  if (v2)
  {
    v3 = __CocoaDictionary.makeIterator()();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v1 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
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

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()() || (swift_dynamicCast(), (v16 = v17[0]) == 0))
    {
LABEL_20:
      sub_100035F90();
      return;
    }

LABEL_10:
    sub_100E7227C(v17, v16, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
  }

  v12 = v10;
  v13 = v6;
  v14 = v10;
  if (v6)
  {
LABEL_16:
    v15 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    v6 = (v13 - 1) & v13;
    v10 = v14;
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100049DB8()
{
  if (!qword_101A15A28)
  {
    sub_1005C4E5C(&qword_101A15A30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A15A28);
    }
  }
}

void *sub_100049E1C(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&unk_1019F52D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v83 - v9;
  v101 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = __chkstk_darwin(v101);
  v12 = __chkstk_darwin(v11);
  v106 = &v83 - v13;
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v102 = (&v83 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v100 = v17;
  v104 = v15;
  v84 = 0;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v99 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v93 = (63 - v21) >> 6;
  v98 = (v16 + 56);
  v86 = v16;
  v97 = (v16 + 48);
  v105 = a2 + 7;

  v25 = 0;
  v96 = a1 + 64;
  for (i = v10; ; v10 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_15:
      v2 = (v26 - 1) & v26;
      sub_10000CA44(*(a1 + 48) + *(v86 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
      v31 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v93 <= v25 + 1 ? v25 + 1 : v93;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_69;
        }

        if (v27 >= v93)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v31 = 1;
    }

    v32 = v101;
    v95 = *v98;
    v95(v10, v31, 1, v101);
    v108 = a1;
    v109 = v20;
    v110 = v99;
    v111 = v29;
    v112 = v2;
    v94 = *v97;
    if (v94(v10, 1, v32) == 1)
    {
      sub_10000CAAC(v10, &unk_1019F52D0);
      goto LABEL_65;
    }

    v33 = v102;
    sub_100025808(v10, v102, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    v34 = type metadata accessor for UUID();
    v35 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID);
    v92 = v34;
    v91 = v35;
    dispatch thunk of Hashable.hash(into:)();
    v103 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v36 = (v33 + *(v103 + 20));
    v37 = v36[1];
    v88 = *v36;
    v87 = v37;
    String.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(a2 + 32);
    v23 = v38 & ~v39;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if (((1 << v23) & v105[v23 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10004AB24(v102, type metadata accessor for CRLBoardIdentifier);
    v25 = v29;
    v23 = v2;
    v20 = v96;
  }

  v40 = ~v39;
  v107 = *(v86 + 72);
  while (1)
  {
    v41 = v100;
    sub_10000CA44(a2[6] + v107 * v23, v100, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_20;
    }

    v42 = (v41 + *(v103 + 20));
    v43 = *v42 == v88 && v42[1] == v87;
    if (v43)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45 = v41;
    v46 = v44;
    sub_10004AB24(v45, type metadata accessor for CRLBoardIdentifier);
    if (v46)
    {
      goto LABEL_31;
    }

LABEL_20:
    v23 = (v23 + 1) & v40;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if ((v105[v23 >> 6] & (1 << v23)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
LABEL_31:
  v47 = sub_10004AB24(v102, type metadata accessor for CRLBoardIdentifier);
  v48 = *(a2 + 32);
  v87 = ((1 << v48) + 63) >> 6;
  v24 = 8 * v87;
  if ((v48 & 0x3Fu) > 0xD)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v88 = &v83;
    __chkstk_darwin(v47);
    v50 = &v83 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v50, v105, v49);
    v51 = *&v50[8 * v20] & ~v10;
    v52 = a2[2];
    v102 = v50;
    *&v50[8 * v20] = v51;
    v53 = v52 - 1;
    v23 = v96;
    v54 = v93;
    v90 = a1;
    v89 = v8;
LABEL_33:
    v100 = v53;
LABEL_35:
    while (2)
    {
      if (v2)
      {
        v55 = v29;
LABEL_45:
        v58 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_10000CA44(*(a1 + 48) + (v58 | (v55 << 6)) * v107, v8, type metadata accessor for CRLBoardIdentifier);
        v59 = 0;
LABEL_46:
        v60 = v101;
        v95(v8, v59, 1, v101);
        v108 = a1;
        v109 = v23;
        v110 = v99;
        v111 = v29;
        v112 = v2;
        if (v94(v8, 1, v60) == 1)
        {
          sub_10000CAAC(v8, &unk_1019F52D0);
          a2 = sub_1010F47E8(v102, v87, v100, a2);
          goto LABEL_65;
        }

        v61 = v106;
        sub_100025808(v8, v106, type metadata accessor for CRLBoardIdentifier);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v62 = (v61 + *(v103 + 20));
        v20 = *v62;
        v10 = v62[1];
        String.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = a2;
        v65 = -1 << *(a2 + 32);
        v66 = v63 & ~v65;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if (((1 << v66) & v105[v66 >> 6]) == 0)
        {
LABEL_34:
          sub_10004AB24(v106, type metadata accessor for CRLBoardIdentifier);
          a2 = v64;
          a1 = v90;
          v8 = v89;
          v23 = v96;
          v54 = v93;
          continue;
        }

        v69 = ~v65;
        v70 = v104;
        while (1)
        {
          sub_10000CA44(v64[6] + v66 * v107, v70, type metadata accessor for CRLBoardIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v71 = (v70 + *(v103 + 20));
            if (*v71 == v20 && v71[1] == v10)
            {
              sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
LABEL_60:
              sub_10004AB24(v106, type metadata accessor for CRLBoardIdentifier);
              v76 = v102[v67];
              v102[v67] = v76 & ~v68;
              v43 = (v76 & v68) == 0;
              a2 = v64;
              a1 = v90;
              v8 = v89;
              v23 = v96;
              v54 = v93;
              if (!v43)
              {
                v53 = v100 - 1;
                if (__OFSUB__(v100, 1))
                {
                  __break(1u);
                }

                if (v100 == 1)
                {

                  a2 = _swiftEmptySetSingleton;
                  goto LABEL_65;
                }

                goto LABEL_33;
              }

              goto LABEL_35;
            }

            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v74 = v70;
            v75 = v73;
            sub_10004AB24(v74, type metadata accessor for CRLBoardIdentifier);
            if (v75)
            {
              goto LABEL_60;
            }
          }

          else
          {
            sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
          }

          v66 = (v66 + 1) & v69;
          v67 = v66 >> 6;
          v70 = v104;
          v68 = 1 << v66;
          if ((v105[v66 >> 6] & (1 << v66)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      break;
    }

    v56 = v54 <= v29 + 1 ? v29 + 1 : v54;
    v57 = v56 - 1;
    while (1)
    {
      v55 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v29 = v57;
        goto LABEL_46;
      }

      v2 = *(v23 + 8 * v55);
      ++v29;
      if (v2)
      {
        v29 = v55;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v78 = v24;

    v79 = v78;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v80 = swift_slowAlloc();
  memcpy(v80, v105, v79);
  v81 = v84;
  v82 = sub_1012DBD7C(v80, v87, a2, v23, &v108);

  if (v81)
  {

    __break(1u);
  }

  else
  {

    a2 = v82;
LABEL_65:
    sub_100035F90();
    return a2;
  }

  return result;
}

void sub_10004A99C()
{
  sub_100049DB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10004AA7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10004AAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004AB24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10004AB84()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F160);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_10000C704(*(v5 + 48) + v21, v4, type metadata accessor for CRLBoardIdentifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_100025460(v4, *(v7 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10004ADB8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28 = v1;
  v36 = _swiftEmptyArrayStorage;
  sub_100034080(0, v5, 0);
  v6 = v36;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v14 = v32;
    sub_10004B150(*(a1 + 48) + *(v33 + 72) * v9, v32, type metadata accessor for CRLBoardIdentifier);
    v35 = UUID.uuidString.getter();
    v16 = v15;
    result = sub_100025FC8(v14, type metadata accessor for CRLBoardIdentifier);
    v36 = v6;
    v18 = v6[2];
    v17 = v6[3];
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      result = sub_100034080((v17 > 1), v18 + 1, 1);
      v19 = v36;
    }

    v19[2] = v18 + 1;
    v20 = &v19[2 * v18];
    v20[4] = v35;
    v20[5] = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v19;
    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v30;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v12 = v30;
      v25 = (v29 + 8 * v13);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000341AC(v9, v34, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v9, v34, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v12)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10004B150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_10004B1B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1005B981C(a5);
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

size_t sub_10004B394(size_t a1, int64_t a2, char a3)
{
  result = sub_10004B3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10004B3DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_1000066D0(&qword_101A01D20, type metadata accessor for CRLBoardIdentifier);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10000C83C(v11, v6, type metadata accessor for CRLBoardIdentifier);
      sub_100031F10(v8, v6);
      sub_100026028(v8, type metadata accessor for CRLBoardIdentifier);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10004B56C(uint64_t a1, int a2)
{
  v37 = a2;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v29[1] = v2;
  v40 = _swiftEmptyArrayStorage;
  v31 = v7;
  sub_100079914(0, v10, 0);
  v11 = v40;
  v39 = v31 + 56;
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = v31;
  v15 = 0;
  v30 = v31 + 64;
  v32 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v39 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v38 = *(v14 + 36);
    v19 = v35;
    sub_10004B150(*(v14 + 48) + *(v36 + 72) * v13, v35, type metadata accessor for CRLBoardIdentifier);
    sub_10004B150(v19, v9, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    sub_100025FC8(v19, type metadata accessor for CRLBoardIdentifier);
    v40 = v11;
    v21 = v11[2];
    v20 = v11[3];
    if (v21 >= v20 >> 1)
    {
      sub_100079914(v20 > 1, v21 + 1, 1);
      v11 = v40;
    }

    v11[2] = v21 + 1;
    result = sub_100025598(v9, v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, type metadata accessor for CRLSpotlightManager.ChangeType);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_22;
    }

    v22 = *(v39 + 8 * v18);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v14 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v32;
    }

    else
    {
      v24 = v18 << 6;
      v25 = v18 + 1;
      v26 = (v30 + 8 * v18);
      v17 = v32;
      while (v25 < (v16 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1000341AC(v13, v38, 0);
          v14 = v31;
          v16 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v13, v38, 0);
      v14 = v31;
    }

LABEL_4:
    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}