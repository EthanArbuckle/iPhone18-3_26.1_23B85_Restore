uint64_t sub_1004487A8()
{
  v1 = v0[26];
  v2 = v0[19];

  sub_100298820(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004488B4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VisitsLoader.VisitData(0);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v29 - v10;
  v30 = v1;
  v11 = *(*(v1 + 112) + 16);

  v33 = v11;
  if (v11)
  {
    v13 = 0;
    v39 = v4 + 16;
    v40 = a1 + 56;
    v14 = _swiftEmptyArrayStorage;
    v31 = v4;
    v32 = result;
    v15 = (v4 + 8);
    v16 = a1;
    v17 = a1;
    while (v13 < *(result + 16))
    {
      v18 = *(v34 + 72);
      v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v38 = v14;
      v36 = v18;
      sub_10012EEEC(result + v37 + v18 * v13, v41);
      if (*(v16 + 16) && (sub_1004538F4(&qword_1019156D0, 255, &type metadata accessor for UUID), v19 = dispatch thunk of Hashable._rawHashValue(seed:)(), v16 = v17, v20 = -1 << *(v17 + 32), v21 = v19 & ~v20, ((*(v40 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        v23 = *(v31 + 72);
        v24 = *(v31 + 16);
        while (1)
        {
          v24(v6, *(v16 + 48) + v23 * v21, v3);
          sub_1004538F4(&qword_101916EA8, 255, &type metadata accessor for UUID);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v15)(v6, v3);
          if (v25)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          v16 = v17;
          if (((*(v40 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_100298820(v41);
        v16 = v17;
        v14 = v38;
      }

      else
      {
LABEL_11:
        sub_1000D2BF0(v41, v35);
        v14 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100511A1C(0, v14[2] + 1, 1);
          v16 = v17;
          v14 = v42;
        }

        v28 = v14[2];
        v27 = v14[3];
        if (v28 >= v27 >> 1)
        {
          sub_100511A1C(v27 > 1, v28 + 1, 1);
          v16 = v17;
          v14 = v42;
        }

        v14[2] = v28 + 1;
        sub_1000D2BF0(v35, v14 + v37 + v28 * v36);
      }

      ++v13;
      result = v32;
      if (v13 == v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_17:

    *(v30 + 112) = v14;
  }

  return result;
}

void (*sub_100448CA0(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100454E90(v6, a2, a3);
  return sub_100448D28;
}

void sub_100448D28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100448D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a2;
  v8[12] = a4;
  v8[10] = a1;
  v9 = sub_1000CE6B8(&unk_101908070);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019219D0);
  v8[23] = swift_task_alloc();
  v10 = sub_1000CE6B8(&qword_1019219B8);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = sub_1000CE6B8(&qword_1019219D8);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = type metadata accessor for VisitsLoader.VisitData(0);
  v8[31] = v12;
  v13 = *(v12 - 8);
  v8[32] = v13;
  v8[33] = *(v13 + 64);
  v8[34] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190BA50);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return _swift_task_switch(sub_10044902C, 0, 0);
}

uint64_t sub_10044902C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  v5 = *(v3 + 112) >> 1;
  if (v5 != v4)
  {
    v8 = v5 - v4;
    if (v5 <= v4)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }

    v33 = *(v3 + 256);
    v34 = **(v3 + 88);
    v9 = *(v33 + 72);
    v31 = *(v3 + 264) + 7;
    v35 = type metadata accessor for TaskPriority();
    v10 = *(v35 - 8);
    v30 = *(v10 + 56);
    v29 = (v10 + 48);
    v28 = (v10 + 8);
    v32 = v9;
    v11 = v4 * v9;
    do
    {
      v40 = v8;
      v14 = *(v3 + 288);
      v15 = *(v3 + 272);
      v37 = *(v3 + 128);
      v38 = *(v3 + 280);
      v36 = *(v3 + 120);
      v16 = *(v3 + 96);
      v30(v14, 1, 1, v35);
      v39 = v11;
      sub_10012EEEC(v16 + v11, v15);
      v17 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v18 = (v31 + v17) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      sub_1000D2BF0(v15, v19 + v17);
      *(v19 + v18) = v36;
      *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
      sub_1000D2DFC(v14, v38, &unk_10190BA50);
      v20 = (*v29)(v38, 1, v35);
      v21 = v36;
      v22 = v37;
      v23 = *(v3 + 280);
      if (v20 == 1)
      {
        sub_100024F64(*(v3 + 280), &unk_10190BA50);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v23, v35);
      }

      if (*(v19 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      if (v26 | v24)
      {
        v12 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v24;
        *(v3 + 40) = v26;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v3 + 288);
      *(v3 + 48) = 1;
      *(v3 + 56) = v12;
      *(v3 + 64) = v34;
      swift_task_create();

      sub_100024F64(v13, &unk_10190BA50);
      v11 = v39 + v32;
      --v8;
    }

    while (v40 != 1);
  }

  sub_1000CE6B8(&qword_101915AB0);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v3 + 296) = _swiftEmptyDictionarySingleton;
  *(v3 + 304) = _swiftEmptyDictionarySingleton;
  v6 = sub_1000414C8(&qword_1019219E0, &qword_1019219D8);
  v7 = swift_task_alloc();
  *(v3 + 312) = v7;
  *v7 = v3;
  v7[1] = sub_10044943C;
  a2 = *(v3 + 224);
  a1 = *(v3 + 184);
  a3 = v6;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
}

uint64_t sub_10044943C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);

    v3 = sub_100449B00;
  }

  else
  {
    v3 = sub_100449574;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100449574()
{
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    v2 = v0[38];
    v3 = v0[10];
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_100024F64(v1, &qword_1019219D0);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[17];
  v9 = v0[18];
  sub_1000F11C4(v1, v6, &qword_1019219B8);
  sub_1000D2DFC(v6, v7, &qword_1019219B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = v0[26];
    sub_100024F64(v0[27], &qword_1019219B8);
    sub_100024F64(v10, &qword_1019219B8);
LABEL_15:
    v35 = v0[37];
    v34 = v0[38];
    goto LABEL_24;
  }

  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[17];
  sub_1000F11C4(v0[26], v12, &unk_101908070);
  sub_1000D2DFC(v12, v11, &unk_101908070);
  v14 = *(v11 + *(v13 + 48));
  v15 = [v14 _identifier];

  if (!v15)
  {
    v32 = v0[27];
    v33 = v0[21];
    sub_100024F64(v0[22], &unk_101908070);
    sub_100024F64(v32, &qword_1019219B8);
    sub_100298820(v33);
    goto LABEL_15;
  }

  v16 = v0[37];
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[17];

  sub_100298820(v18);
  sub_1000D2DFC(v17, v19, &unk_101908070);

  sub_1000D2DFC(v17, v20, &unk_101908070);
  v22 = *(v20 + *(v21 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v16;
  v24 = sub_1002974F0(v19);
  v26 = *(v16 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v17) = v25;
  if (*(v0[37] + 24) >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_17:
      v35 = v0[9];
      if (v17)
      {
LABEL_18:
        v36 = v0[27];
        v37 = v0[22];
        v38 = v35[7];
        v39 = *(v38 + 8 * v24);
        *(v38 + 8 * v24) = v22;

        sub_100024F64(v37, &unk_101908070);
        sub_100024F64(v36, &qword_1019219B8);
LABEL_23:
        v51 = v0[19];
        sub_100298820(v0[20]);
        sub_100298820(v51);
        v34 = v35;
LABEL_24:
        v0[37] = v35;
        v0[38] = v34;
        v52 = sub_1000414C8(&qword_1019219E0, &qword_1019219D8);
        v53 = swift_task_alloc();
        v0[39] = v53;
        *v53 = v0;
        v53[1] = sub_10044943C;
        v47 = v0[28];
        v46 = v0[23];
        v48 = v52;

        return dispatch thunk of AsyncIteratorProtocol.next()(v46, v47, v48);
      }

LABEL_21:
      v41 = v0[32];
      v42 = v0[27];
      v43 = v0[22];
      v44 = v0[20];
      v35[(v24 >> 6) + 8] |= 1 << v24;
      v45 = v24;
      sub_10012EEEC(v44, v35[6] + *(v41 + 72) * v24);
      *(v35[7] + 8 * v45) = v22;
      sub_100024F64(v43, &unk_101908070);
      v46 = sub_100024F64(v42, &qword_1019219B8);
      v49 = v35[2];
      v28 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v28)
      {
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v46, v47, v48);
      }

      v35[2] = v50;
      goto LABEL_23;
    }

LABEL_20:
    v40 = v24;
    sub_10012DEF0();
    v24 = v40;
    v35 = v0[9];
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v30 = v0[20];
  sub_1001294A8(v29, isUniquelyReferenced_nonNull_native);
  v24 = sub_1002974F0(v30);
  if ((v17 & 1) == (v31 & 1))
  {
    goto LABEL_17;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100449B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100449BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v6[7] = type metadata accessor for VisitsLoader.VisitData(0);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100449C94, 0, 0);
}

uint64_t sub_100449C94()
{
  v1 = v0[4];
  v2 = (v1 + *(v0[7] + 28));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CE6B8(&unk_10190D5C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1011E1D30;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000DA61C();
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    static MapsSyncQueryPredicate.withFormat(_:_:)();

    v6 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v7 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v0[10] = v7;
    type metadata accessor for VisitedLocationRequest();
    v0[11] = VisitedLocationRequest.__allocating_init()();
    v16 = (&async function pointer to dispatch thunk of VisitedLocationRequest.fetch(options:) + async function pointer to dispatch thunk of VisitedLocationRequest.fetch(options:));
    v8 = v7;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100449F2C;

    return v16(v7);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = swift_task_alloc();
    v0[15] = v13;
    v13[2] = v12;
    v13[3] = v1;
    v13[4] = v11;
    v14 = swift_task_alloc();
    v0[16] = v14;
    v15 = sub_1000CE6B8(&qword_1019219E8);
    *v14 = v0;
    v14[1] = sub_10044A468;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000018, 0x8000000101238CC0, sub_10045BF68, v13, v15);
  }
}

uint64_t sub_100449F2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v6 = sub_10044A81C;
  }

  else
  {
    v6 = sub_10044A07C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10044A07C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), int8x16_t *a7, uint64_t a8)
{
  v39 = v8;
  v9 = v8[6].u64[1];
  if (v9 >> 62)
  {
    i64 = _CocoaArrayWrapper.endIndex.getter();
    if (i64)
    {
      goto LABEL_3;
    }

LABEL_8:

    v13 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  i64 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!i64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(i64, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = *(v8[6].i64[1] + 32);
  }

  v12 = v11;
  v13 = dispatch thunk of VisitedLocation.mapItemStorage.getter();

LABEL_9:
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v14 = v8[4].i64[1];
  v15 = v8[2].i64[0];
  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_101960338);
  sub_10012EEEC(v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v8[4].i64[1];
  v20 = v8[5].i64[0];
  if (!v19)
  {

    sub_100298820(v21);
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v37 = v13;
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v38 = v23;
  *v22 = 136315138;
  v24 = UUID.uuidString.getter();
  v26 = v25;
  sub_100298820(v21);
  v27 = sub_10004DEB8(v24, v26, &v38);

  *(v22 + 4) = v27;
  _os_log_impl(&_mh_execute_header, v17, v18, "Found existing mapItem for %s, not rehydrating.", v22, 0xCu);
  sub_10004E3D0(v23);

  v13 = v37;

  if (!v37)
  {
LABEL_17:
    v34 = v8[3].i64[0];
    v35 = swift_task_alloc();
    v8[7].i64[1] = v35;
    v35[1] = vextq_s8(v8[2], v8[2], 8uLL);
    v35[2].i64[0] = v34;
    v36 = swift_task_alloc();
    v8[8].i64[0] = v36;
    a8 = sub_1000CE6B8(&qword_1019219E8);
    *v36 = v8;
    v36[1] = sub_10044A468;
    a6 = sub_10045BF68;
    i64 = v8[1].i64;
    a5 = 0x8000000101238CC0;
    a2 = 0;
    a3 = 0;
    a4 = 0xD000000000000018;
    a7 = v35;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(i64, a2, a3, a4, a5, a6, a7, a8);
  }

LABEL_13:
  v29 = v8[1].i64[1];
  v28 = v8[2].i64[0];
  v30 = sub_1000CE6B8(&unk_101908070);
  v31 = *(v30 + 48);
  sub_10012EEEC(v28, v29);
  *(v29 + v31) = v13;
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);

  v32 = v8->i64[1];

  return v32();
}

uint64_t sub_10044A468()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10044A890;
  }

  else
  {
    v2 = sub_10044A598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044A598()
{
  v24 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = sub_1000CE6B8(&unk_101908070);
    v5 = *(v4 + 48);
    sub_10012EEEC(v3, v2);
    *(v2 + v5) = v1;
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  }

  else
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v7 = v0[4];
    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960338);
    sub_10012EEEC(v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      sub_100298820(v12);
      v18 = sub_10004DEB8(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to hydrate Visit UUID: %s.", v13, 0xCu);
      sub_10004E3D0(v14);
    }

    else
    {

      sub_100298820(v12);
    }

    v19 = v0[3];
    v20 = sub_1000CE6B8(&unk_101908070);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10044A81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044A890()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10044A8FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&unk_1019219F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  type metadata accessor for VisitsLoader.VisitData(0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v10, v7);
  aBlock[4] = sub_10045BF74;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044ACC0;
  aBlock[3] = &unk_101619C50;
  v14 = _Block_copy(aBlock);

  [a2 resolveMapItemFromHandle:isa traits:a4 completionHandler:v14];
  _Block_release(v14);
}

id sub_10044AAE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRetain();
        sub_1000CE6B8(&unk_1019219F0);
        return CheckedContinuation.resume(returning:)();
      }
    }

    result = GEOErrorDomain();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    sub_1000CE6B8(&qword_101922E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x8000000101238D30;
    sub_1000D0AA8(inited);
    swift_setDeallocating();
    sub_100024F64(inited + 32, &qword_101906970);
    v6 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 initWithDomain:v3 code:-8 userInfo:isa];
  }

  sub_1000CE6B8(&unk_1019219F0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10044ACC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_10044AD40(void *a1, id *a2)
{
  v3 = *a2;
  *&v10 = 0xD000000000000013;
  *(&v10 + 1) = 0x80000001012278B0;
  v4 = [*a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v12 = 0u;
  }

  v13 = v10;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_13;
  }

  sub_100014C84(0, &qword_101909920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  *&v11 = 0x436D65744970616DLL;
  *(&v11 + 1) = 0xEB00000000797469;
  v5 = [v3 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {

LABEL_13:
    sub_100024F64(&v13, &unk_101908380);
    return;
  }

  if (swift_dynamicCast())
  {
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(v8, "longLongValue")}];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13 = *a1;
    sub_10012AAA0(v8, v9, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v13;
  }

  else
  {
  }
}

void sub_10044AF9C()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  if (!*(v0 + 112))
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v6 = sub_1004538F4(&qword_101921968, v5, type metadata accessor for VisitsLoader.VisitsPersistenceTaskManager);
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v6;
    v7[4] = v0;
    swift_retain_n();
    *(v0 + 112) = sub_10050D2C8(0, 0, v3, &unk_101207630, v7);

    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960338);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VisitsPersistenceTaskManager: start finished.", v11, 2u);
    }
  }
}

uint64_t sub_10044B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190EBD0);
  v4[11] = swift_task_alloc();
  sub_1000CE6B8(&unk_101918E50);
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for VisitsLoader.VisitData(0);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_1000CE6B8(&qword_101921970);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10044B414, a4, 0);
}

uint64_t sub_10044B414()
{
  v1 = *(*(v0 + 56) + 120);
  *(v0 + 208) = v1;

  return _swift_task_switch(sub_10044B48C, v1, 0);
}

uint64_t sub_10044B48C()
{
  v1 = v0[7];
  v0[27] = *(*(v0[26] + 112) + 16);

  return _swift_task_switch(sub_10044B504, v1, 0);
}

uint64_t sub_10044B504()
{
  if (*(v0 + 216))
  {
    *(v0 + 456) = GEOConfigMapsSuggestionsVisitsLoaderMapItemHydrationTimerInterval;
    *(v0 + 224) = *(&GEOConfigMapsSuggestionsVisitsLoaderMapItemHydrationTimerInterval + 1);
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 240) = sub_100021540(v1, qword_101960338);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Processing next batch.", v4, 2u);
    }

    v5 = *(v0 + 56);

    *(v0 + 40) = _swiftEmptyArrayStorage;
    *(v0 + 48) = &_swiftEmptySetSingleton;
    *(v0 + 248) = *(v5 + 120);

    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_10044B774;

    return sub_100445F14();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10044B774(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10044B8A8, v2, 0);
}

void sub_10044B8A8()
{
  v62 = v0;
  v1 = *(v0 + 264);
  if (*(v1 + 16))
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v2, v3, "Processing %ld visits in the next batch.", v4, 0xCu);
    }

    else
    {
    }

    v9 = 0;
    v10 = *(v0 + 264);
    v11 = *(v10 + 32);
    *(v0 + 462) = v11;
    v12 = 1 << v11;
    v13 = *(v10 + 64);
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v13;
    *(v0 + 272) = _swiftEmptyArrayStorage;
    while (v15)
    {
      v16 = *(v0 + 264);
LABEL_25:
      v22 = *(v0 + 184);
      v21 = *(v0 + 192);
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v9 << 6);
      sub_10012EEEC(*(v16 + 48) + *(*(v0 + 144) + 72) * v24, v22);
      v25 = *(*(v16 + 56) + 8 * v24);
      v26 = sub_1000CE6B8(&qword_101921978);
      v27 = *(v26 + 48);
      sub_1000D2BF0(v22, v21);
      *(v21 + v27) = v25;
      (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
      v28 = v25;
      v19 = v9;
LABEL_26:
      *(v0 + 280) = v15;
      *(v0 + 288) = v19;
      v29 = *(v0 + 200);
      sub_1000F11C4(*(v0 + 192), v29, &qword_101921970);
      v30 = sub_1000CE6B8(&qword_101921978);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
      {

        type metadata accessor for MapsSyncStore();
        *(v0 + 296) = static MapsSyncStore.sharedStore.getter();
        v60 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
        v54 = swift_task_alloc();
        *(v0 + 304) = v54;
        *v54 = v0;
        v54[1] = sub_10044BFC8;
        v55 = *(v0 + 272);
        v56 = v60;

        goto LABEL_33;
      }

      v31 = *(v0 + 200);
      v32 = *(v0 + 176);
      v34 = *(v0 + 120);
      v33 = *(v0 + 128);
      v36 = *(v0 + 104);
      v35 = *(v0 + 112);
      v37 = *(v31 + *(v30 + 48));
      *(v0 + 320) = v37;
      sub_1000D2BF0(v31, v32);
      v38 = *(v35 + 16);
      *(v0 + 328) = v38;
      *(v0 + 336) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v34, v32, v36);
      sub_10030852C(v33, v34);
      (*(v35 + 8))(v33, v36);
      v39 = v37;
      v40 = sub_1002113A8(v39);

      if ((v40 & 1) == 0)
      {
        v57 = swift_task_alloc();
        *(v0 + 344) = v57;
        *v57 = v0;
        v57[1] = sub_10044C11C;
        v55 = v39;
        v56 = sub_1002B310C;

LABEL_33:
        v56(v55);
        return;
      }

      sub_10012EEEC(*(v0 + 176), *(v0 + 152));
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 176);
      v45 = *(v0 + 152);
      if (v43)
      {
        v46 = swift_slowAlloc();
        v59 = v19;
        v61 = swift_slowAlloc();
        v47 = v61;
        *v46 = 136315138;
        v48 = UUID.uuidString.getter();
        v58 = v44;
        v50 = v49;
        sub_100298820(v45);
        v51 = sub_10004DEB8(v48, v50, &v61);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v41, v42, "Visit UUID: %s filtered.", v46, 0xCu);
        sub_10004E3D0(v47);

        sub_100298820(v58);
        v9 = v59;
      }

      else
      {

        sub_100298820(v45);
        sub_100298820(v44);
        v9 = v19;
      }
    }

    v17 = ((1 << *(v0 + 462)) + 63) >> 6;
    if (v17 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = ((1 << *(v0 + 462)) + 63) >> 6;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v52 = *(v0 + 192);
        v53 = sub_1000CE6B8(&qword_101921978);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v15 = 0;
        goto LABEL_26;
      }

      v16 = *(v0 + 264);
      v15 = *(v16 + 8 * v20 + 64);
      ++v9;
      if (v15)
      {
        v9 = v20;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to process next batch, likely due to network error. Will try again on the next run.", v7, 2u);
    }

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_10044BFC8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 56);

    v5 = sub_10044E1B4;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 296);
    v8 = *(v2 + 56);

    v5 = sub_10044D9B4;
    v6 = v8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10044C11C(uint64_t a1, __int16 a2)
{
  v5 = *v2;
  *(v5 + 460) = a2;

  v6 = *(v5 + 56);
  if ((a2 & 0x100) != 0)
  {
    v7 = sub_10044D39C;
  }

  else
  {
    *(v5 + 352) = a1;
    v7 = sub_10044C25C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10044C25C()
{
  v91 = v0;
  v87 = *(v0 + 460);
  v83 = *(v0 + 352);
  v84 = *(v0 + 328);
  v1 = *(v0 + 176);
  v85 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  type metadata accessor for Visit();
  type metadata accessor for MapsSyncStore();
  static MapsSyncStore.sharedStore.getter();
  v6 = MapsSyncObject.__allocating_init(store:)();
  *(v0 + 360) = v6;
  type metadata accessor for VisitedLocation();
  static MapsSyncStore.sharedStore.getter();
  v7 = MapsSyncObject.__allocating_init(store:)();
  *(v0 + 368) = v7;
  v84(v5, v1, v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  v8 = v6;
  dispatch thunk of MapsSyncObject.identifier.setter();
  dispatch thunk of Visit.visitClassification.setter();
  v9 = *(v85 + 20);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4, v1 + v9, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  dispatch thunk of Visit.startDate.setter();
  v7;
  dispatch thunk of Visit.location.setter();
  if ((v87 & 1) == 0 && v83 <= 0xFFFFFFFF7FFFFFFFLL)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_18;
  }

  if (*(v0 + 460))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 352);
  }

  if (v12 > 0x7FFFFFFF)
  {
    goto LABEL_46;
  }

  v13 = *(v0 + 320);
  dispatch thunk of VisitedLocation.mapItemTopLevelCategory.setter();
  v14 = v13;
  dispatch thunk of VisitedLocation.mapItemStorage.setter();
  v15 = [v14 enclosingRegionIdentifier];
  if (v15)
  {
    v16 = *(v0 + 56);
    v17 = v15;
    v18 = [v15 muid];

    v19 = *(v16 + 120);
    *(v0 + 376) = v19;
    v20 = objc_allocWithZone(NSNumber);

    *(v0 + 384) = [v20 initWithUnsignedLongLong:v18];

    return _swift_task_switch(sub_10044CBC0, v19, 0);
  }

  sub_10012EEEC(*(v0 + 176), *(v0 + 168));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 168);
    if (*(v0 + 460))
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v0 + 352);
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v90 = v26;
    *v25 = 136315394;
    v27 = UUID.uuidString.getter();
    v29 = v28;
    sub_100298820(v23);
    v30 = sub_10004DEB8(v27, v29, &v90);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v21, v22, "Created Visit: %s for categoryId: %ld.", v25, 0x16u);
    sub_10004E3D0(v26);
  }

  else
  {
    v31 = *(v0 + 168);

    sub_100298820(v31);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_47;
  }

LABEL_18:
  v32 = *(v0 + 368);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v33 = v32;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v35 = *(v0 + 360);
  v34 = *(v0 + 368);
  v36 = *(v0 + 320);
  v37 = *(v0 + 176);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100298820(v37);
  v38 = *(v0 + 280);
  v39 = *(v0 + 288);
  *(v0 + 272) = *(v0 + 40);
  while (1)
  {
    if (!v38)
    {
      v41 = ((1 << *(v0 + 462)) + 63) >> 6;
      if (v41 <= (v39 + 1))
      {
        v42 = v39 + 1;
      }

      else
      {
        v42 = ((1 << *(v0 + 462)) + 63) >> 6;
      }

      v43 = v42 - 1;
      while (1)
      {
        v44 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v44 >= v41)
        {
          v76 = *(v0 + 192);
          v77 = sub_1000CE6B8(&qword_101921978);
          (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
          v38 = 0;
          goto LABEL_33;
        }

        v40 = *(v0 + 264);
        v38 = *(v40 + 8 * v44 + 64);
        ++v39;
        if (v38)
        {
          v39 = v44;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v40 = *(v0 + 264);
LABEL_32:
    v45 = *(v0 + 184);
    v46 = *(v0 + 192);
    v47 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v48 = v47 | (v39 << 6);
    sub_10012EEEC(*(v40 + 48) + *(*(v0 + 144) + 72) * v48, v45);
    v49 = *(*(v40 + 56) + 8 * v48);
    v50 = sub_1000CE6B8(&qword_101921978);
    v51 = *(v50 + 48);
    sub_1000D2BF0(v45, v46);
    *(v46 + v51) = v49;
    (*(*(v50 - 8) + 56))(v46, 0, 1, v50);
    v52 = v49;
    v43 = v39;
LABEL_33:
    *(v0 + 280) = v38;
    *(v0 + 288) = v43;
    v53 = *(v0 + 200);
    sub_1000F11C4(*(v0 + 192), v53, &qword_101921970);
    v54 = sub_1000CE6B8(&qword_101921978);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = *(v0 + 200);
    v56 = *(v0 + 176);
    v58 = *(v0 + 120);
    v57 = *(v0 + 128);
    v60 = *(v0 + 104);
    v59 = *(v0 + 112);
    v61 = *(v55 + *(v54 + 48));
    *(v0 + 320) = v61;
    sub_1000D2BF0(v55, v56);
    v62 = *(v59 + 16);
    *(v0 + 328) = v62;
    *(v0 + 336) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v62(v58, v56, v60);
    sub_10030852C(v57, v58);
    (*(v59 + 8))(v57, v60);
    v63 = v61;
    v64 = sub_1002113A8(v63);

    if ((v64 & 1) == 0)
    {
      v81 = swift_task_alloc();
      *(v0 + 344) = v81;
      *v81 = v0;
      v81[1] = sub_10044C11C;
      v79 = v63;
      v80 = sub_1002B310C;

      return v80(v79);
    }

    sub_10012EEEC(*(v0 + 176), *(v0 + 152));
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 176);
    v69 = *(v0 + 152);
    if (v67)
    {
      v70 = swift_slowAlloc();
      v88 = v43;
      v90 = swift_slowAlloc();
      v71 = v90;
      *v70 = 136315138;
      v72 = UUID.uuidString.getter();
      v86 = v68;
      v74 = v73;
      sub_100298820(v69);
      v75 = sub_10004DEB8(v72, v74, &v90);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "Visit UUID: %s filtered.", v70, 0xCu);
      sub_10004E3D0(v71);

      sub_100298820(v86);
      v39 = v88;
    }

    else
    {

      sub_100298820(v69);
      sub_100298820(v68);
      v39 = v43;
    }
  }

  *(v0 + 296) = static MapsSyncStore.sharedStore.getter();
  v89 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v78 = swift_task_alloc();
  *(v0 + 304) = v78;
  *v78 = v0;
  v78[1] = sub_10044BFC8;
  v79 = *(v0 + 272);
  v80 = v89;

  return v80(v79);
}

uint64_t sub_10044CBC0()
{
  v1 = v0[47];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v3 = v0[48];
  if (*(v2 + 16))
  {
    v4 = sub_10029709C(v3);
    v5 = v0[48];
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v4);
      v8 = *v7;
      v9 = v7[1];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0;
  v9 = 0;
LABEL_7:
  v0[49] = v8;
  v0[50] = v9;
  v10 = v0[7];
  swift_endAccess();

  return _swift_task_switch(sub_10044CC9C, v10, 0);
}

uint64_t sub_10044CC9C()
{
  v67 = v0;

  dispatch thunk of VisitedLocation.mapItemCity.setter();
  sub_10012EEEC(*(v0 + 176), *(v0 + 168));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 168);
    if (*(v0 + 460))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v0 + 352);
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v66 = v6;
    *v5 = 136315394;
    v7 = UUID.uuidString.getter();
    v9 = v8;
    sub_100298820(v3);
    v10 = sub_10004DEB8(v7, v9, &v66);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Created Visit: %s for categoryId: %ld.", v5, 0x16u);
    sub_10004E3D0(v6);
  }

  else
  {
    v11 = *(v0 + 168);

    sub_100298820(v11);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = *(v0 + 368);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v16 = *(v0 + 320);
  v17 = *(v0 + 176);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100298820(v17);
  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  *(v0 + 272) = *(v0 + 40);
  while (1)
  {
    if (!v18)
    {
      v21 = ((1 << *(v0 + 462)) + 63) >> 6;
      if (v21 <= (v19 + 1))
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = ((1 << *(v0 + 462)) + 63) >> 6;
      }

      v23 = v22 - 1;
      while (1)
      {
        v24 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          v56 = *(v0 + 192);
          v57 = sub_1000CE6B8(&qword_101921978);
          (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
          v18 = 0;
          goto LABEL_23;
        }

        v20 = *(v0 + 264);
        v18 = *(v20 + 8 * v24 + 64);
        ++v19;
        if (v18)
        {
          v19 = v24;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v20 = *(v0 + 264);
LABEL_22:
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v28 = v27 | (v19 << 6);
    sub_10012EEEC(*(v20 + 48) + *(*(v0 + 144) + 72) * v28, v26);
    v29 = *(*(v20 + 56) + 8 * v28);
    v30 = sub_1000CE6B8(&qword_101921978);
    v31 = *(v30 + 48);
    sub_1000D2BF0(v26, v25);
    *(v25 + v31) = v29;
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
    v32 = v29;
    v23 = v19;
LABEL_23:
    *(v0 + 280) = v18;
    *(v0 + 288) = v23;
    v33 = *(v0 + 200);
    sub_1000F11C4(*(v0 + 192), v33, &qword_101921970);
    v34 = sub_1000CE6B8(&qword_101921978);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      break;
    }

    v35 = *(v0 + 200);
    v36 = *(v0 + 176);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    v40 = *(v0 + 104);
    v39 = *(v0 + 112);
    v41 = *(v35 + *(v34 + 48));
    *(v0 + 320) = v41;
    sub_1000D2BF0(v35, v36);
    v42 = *(v39 + 16);
    *(v0 + 328) = v42;
    *(v0 + 336) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(v38, v36, v40);
    sub_10030852C(v37, v38);
    (*(v39 + 8))(v37, v40);
    v43 = v41;
    v44 = sub_1002113A8(v43);

    if ((v44 & 1) == 0)
    {
      v62 = swift_task_alloc();
      *(v0 + 344) = v62;
      *v62 = v0;
      v62[1] = sub_10044C11C;
      v59 = v43;
      v60 = sub_1002B310C;

      return v60(v59);
    }

    sub_10012EEEC(*(v0 + 176), *(v0 + 152));
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 176);
    v49 = *(v0 + 152);
    if (v47)
    {
      v50 = swift_slowAlloc();
      v64 = v23;
      v66 = swift_slowAlloc();
      v51 = v66;
      *v50 = 136315138;
      v52 = UUID.uuidString.getter();
      v63 = v48;
      v54 = v53;
      sub_100298820(v49);
      v55 = sub_10004DEB8(v52, v54, &v66);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Visit UUID: %s filtered.", v50, 0xCu);
      sub_10004E3D0(v51);

      sub_100298820(v63);
      v19 = v64;
    }

    else
    {

      sub_100298820(v49);
      sub_100298820(v48);
      v19 = v23;
    }
  }

  type metadata accessor for MapsSyncStore();
  *(v0 + 296) = static MapsSyncStore.sharedStore.getter();
  v65 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v58 = swift_task_alloc();
  *(v0 + 304) = v58;
  *v58 = v0;
  v58[1] = sub_10044BFC8;
  v59 = *(v0 + 272);
  v60 = v65;

  return v60(v59);
}

uint64_t sub_10044D39C()
{
  v65 = v0;
  sub_10012EEEC(*(v0 + 176), *(v0 + 160));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 320);
  v5 = *(v0 + 176);
  v6 = &unk_1011E5000;
  v7 = *(v0 + 160);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136315138;
    v10 = UUID.uuidString.getter();
    v12 = v11;
    sub_100298820(v7);
    v13 = v10;
    v6 = &unk_1011E5000;
    v14 = sub_10004DEB8(v13, v12, &v64);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Visit UUID: %s filtered by Category.", v8, 0xCu);
    sub_10004E3D0(v9);
  }

  else
  {

    sub_100298820(v7);
  }

  result = sub_100298820(v5);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  v60 = v6[411];
  while (v16)
  {
    v18 = *(v0 + 264);
LABEL_16:
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v26 = v25 | (v17 << 6);
    sub_10012EEEC(*(v18 + 48) + *(*(v0 + 144) + 72) * v26, v24);
    v27 = *(*(v18 + 56) + 8 * v26);
    v28 = sub_1000CE6B8(&qword_101921978);
    v29 = *(v28 + 48);
    sub_1000D2BF0(v24, v23);
    *(v23 + v29) = v27;
    (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
    v30 = v27;
    v21 = v17;
LABEL_17:
    *(v0 + 280) = v16;
    *(v0 + 288) = v21;
    v31 = *(v0 + 200);
    sub_1000F11C4(*(v0 + 192), v31, &qword_101921970);
    v32 = sub_1000CE6B8(&qword_101921978);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {

      type metadata accessor for MapsSyncStore();
      *(v0 + 296) = static MapsSyncStore.sharedStore.getter();
      v63 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
      v56 = swift_task_alloc();
      *(v0 + 304) = v56;
      *v56 = v0;
      v56[1] = sub_10044BFC8;
      v57 = *(v0 + 272);
      v58 = v63;

      return v58(v57);
    }

    v33 = *(v0 + 200);
    v34 = *(v0 + 176);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v33 + *(v32 + 48));
    *(v0 + 320) = v39;
    sub_1000D2BF0(v33, v34);
    v40 = *(v37 + 16);
    *(v0 + 328) = v40;
    *(v0 + 336) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v36, v34, v38);
    sub_10030852C(v35, v36);
    (*(v37 + 8))(v35, v38);
    v41 = v39;
    v42 = sub_1002113A8(v41);

    if ((v42 & 1) == 0)
    {
      v59 = swift_task_alloc();
      *(v0 + 344) = v59;
      *v59 = v0;
      v59[1] = sub_10044C11C;
      v57 = v41;
      v58 = sub_1002B310C;

      return v58(v57);
    }

    sub_10012EEEC(*(v0 + 176), *(v0 + 152));
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 176);
    v47 = *(v0 + 152);
    if (v45)
    {
      v48 = swift_slowAlloc();
      v62 = v21;
      v64 = swift_slowAlloc();
      v49 = v64;
      *v48 = v60;
      v50 = UUID.uuidString.getter();
      v61 = v46;
      v52 = v51;
      sub_100298820(v47);
      v53 = sub_10004DEB8(v50, v52, &v64);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "Visit UUID: %s filtered.", v48, 0xCu);
      sub_10004E3D0(v49);

      result = sub_100298820(v61);
      v17 = v62;
    }

    else
    {

      sub_100298820(v47);
      result = sub_100298820(v46);
      v17 = v21;
    }
  }

  v19 = ((1 << *(v0 + 462)) + 63) >> 6;
  if (v19 <= (v17 + 1))
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = ((1 << *(v0 + 462)) + 63) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v54 = *(v0 + 192);
      v55 = sub_1000CE6B8(&qword_101921978);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      v16 = 0;
      goto LABEL_17;
    }

    v18 = *(v0 + 264);
    v16 = *(v18 + 8 * v22 + 64);
    ++v17;
    if (v16)
    {
      v17 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10044D9B4()
{
  GEOConfigGetDouble();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = sub_10044DAA0;

  return sub_1004539BC(v1, v3, 0, 0, 1);
}

uint64_t sub_10044DAA0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v4 = sub_10044DDDC;
  }

  else
  {
    v3 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);
    v4 = sub_10044DBEC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10044DBEC()
{
  v1 = v0[6];
  v2 = *(v0[7] + 120);
  v0[53] = v2;
  v0[54] = v1;

  return _swift_task_switch(sub_10044DC64, v2, 0);
}

uint64_t sub_10044DC64()
{
  v1 = *(v0 + 56);
  sub_1004488B4(*(v0 + 432));

  return _swift_task_switch(sub_10044DCEC, v1, 0);
}

uint64_t sub_10044DCEC()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished processing batch.", v3, 2u);
  }

  v4 = *(v0 + 56);

  v5 = *(v4 + 120);
  *(v0 + 440) = v5;

  return _swift_task_switch(sub_10044DEDC, v5, 0);
}

uint64_t sub_10044DDDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044DEDC()
{
  v1 = v0[7];
  v0[56] = *(*(v0[55] + 112) + 16);

  return _swift_task_switch(sub_10044DF54, v1, 0);
}

uint64_t sub_10044DF54()
{
  if (*(v0 + 448))
  {
    *(v0 + 232) = *(v0 + 456);
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 240) = sub_100021540(v1, qword_101960338);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Processing next batch.", v4, 2u);
    }

    v5 = *(v0 + 56);

    *(v0 + 40) = _swiftEmptyArrayStorage;
    *(v0 + 48) = &_swiftEmptySetSingleton;
    *(v0 + 248) = *(v5 + 120);

    v6 = swift_task_alloc();
    *(v0 + 256) = v6;
    *v6 = v0;
    v6[1] = sub_10044B774;

    return sub_100445F14();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10044E1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044E2B4()
{
  v1 = v0;
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960338);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "VisitsPersistenceTaskManager: deinit.", v5, 2u);
  }

  if (*(v1 + 112))
  {

    sub_1000CE6B8(&qword_101915AB0);
    Task.cancel()();
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10044E400()
{
  sub_10044E2B4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10044E42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v118 = type metadata accessor for CLHistoricalPlaceContext();
  v3 = *(v118 - 8);
  __chkstk_darwin(v118);
  v5 = &v103[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v103[-v7];
  v9 = type metadata accessor for Date();
  v117 = *(v9 - 8);
  __chkstk_darwin(v9);
  v114 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v115 = &v103[-v12];
  v13 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v13 - 8);
  v15 = &v103[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v103[-v17];
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v113 = &v103[-v24];
  __chkstk_darwin(v25);
  v112 = &v103[-v26];
  __chkstk_darwin(v27);
  v116 = &v103[-v28];
  if ((sub_100458DC8() & 1) == 0)
  {
    v33 = v20;
    v34 = v19;
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100021540(v35, qword_101960338);
    v36 = v118;
    (*(v3 + 16))(v5, a1, v118);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v120 = v117;
      *v39 = 136315138;
      CLHistoricalPlaceContext.uuid.getter();
      if ((*(v33 + 48))(v15, 1, v34) == 1)
      {
        sub_100024F64(v15, &unk_101918E50);
        v40 = 0xE300000000000000;
        v41 = 7104878;
      }

      else
      {
        v116 = UUID.uuidString.getter();
        v40 = v52;
        (*(v33 + 8))(v15, v34);
        v41 = v116;
      }

      (*(v3 + 8))(v5, v36);
      v53 = sub_10004DEB8(v41, v40, &v120);

      *(v39 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v37, v38, "Authorization denied for visit %s, skipping visit.", v39, 0xCu);
      sub_10004E3D0(v117);
    }

    else
    {

      (*(v3 + 8))(v5, v36);
    }

    goto LABEL_22;
  }

  v118 = v9;
  CLHistoricalPlaceContext.uuid.getter();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100024F64(v18, &unk_101918E50);
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100021540(v29, qword_101960338);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No identifier found on visit. Skipping.", v32, 2u);
    }

LABEL_22:
    v54 = type metadata accessor for VisitsLoader.VisitData(0);
    return (*(*(v54 - 8) + 56))(v119, 1, 1, v54);
  }

  v42 = v20;
  v43 = *(v20 + 32);
  v44 = v116;
  v111 = v43;
  v43(v116, v18, v19);
  v45 = a1;
  CLHistoricalPlaceContext.approximateStartDate.getter();
  v46 = v117;
  v47 = v118;
  if ((*(v117 + 48))(v8, 1, v118) == 1)
  {
    sub_100024F64(v8, &qword_10190EBD0);
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100021540(v48, qword_101960338);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "No approximate date found on visit. Skipping.", v51, 2u);
    }

    (*(v42 + 8))(v44, v19);
    goto LABEL_22;
  }

  v56 = *(v46 + 32);
  v56(v115, v8, v47);
  v110 = v45;
  v57 = CLHistoricalPlaceContext._mapItemHandle.getter();
  v59 = v22;
  if (v58 >> 60 == 15)
  {
LABEL_33:
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100021540(v63, qword_101960338);
    (*(v42 + 16))(v22, v44, v19);
    v64 = Logger.logObject.getter();
    v65 = v44;
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v120 = v68;
      *v67 = 136315138;
      sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v42;
      v72 = v71;
      v73 = *(v70 + 8);
      v73(v59, v19);
      v74 = sub_10004DEB8(v69, v72, &v120);

      *(v67 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v64, v66, "MapItemHandle nil for visit %s, skipping visit.", v67, 0xCu);
      sub_10004E3D0(v68);

      (*(v117 + 8))(v115, v118);
      v73(v116, v19);
    }

    else
    {

      v75 = *(v42 + 8);
      v75(v22, v19);
      (*(v117 + 8))(v115, v118);
      v75(v65, v19);
    }

    goto LABEL_22;
  }

  v60 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v60 != 2)
    {
      goto LABEL_32;
    }

    v61 = *(v57 + 16);
    v62 = *(v57 + 24);
LABEL_31:
    if (v61 != v62)
    {
      goto LABEL_38;
    }

LABEL_32:
    sub_1000D41A0(v57, v58);
    goto LABEL_33;
  }

  if (v60)
  {
    v61 = v57;
    v62 = v57 >> 32;
    goto LABEL_31;
  }

  if ((v58 & 0xFF000000000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_38:
  v108 = v57;
  v109 = v58;
  CLHistoricalPlaceContext._mapItemIdentifier.getter();
  v106 = v42;
  v107 = v56;
  if (v76)
  {

    v77 = v19;
    v78 = *(v42 + 16);
  }

  else
  {
    v77 = v19;
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100021540(v79, qword_101960338);
    v78 = *(v42 + 16);
    v80 = v112;
    v78(v112, v116, v77);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v120 = v105;
      *v83 = 136315138;
      sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID);
      v104 = v82;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v80;
      v87 = v86;
      (*(v42 + 8))(v85, v77);
      v88 = sub_10004DEB8(v84, v87, &v120);

      *(v83 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v104, "MapItemIdentifier nil for visit %s, will rehydrate using mapItemHandle instead.", v83, 0xCu);
      sub_10004E3D0(v105);
    }

    else
    {

      (*(v42 + 8))(v80, v77);
    }
  }

  v89 = v118;
  v90 = v113;
  v91 = v116;
  v78(v113, v116, v77);
  v92 = v117;
  v94 = v114;
  v93 = v115;
  (*(v117 + 16))(v114, v115, v89);
  v95 = v89;
  v118 = CLHistoricalPlaceContext._mapItemIdentifier.getter();
  v112 = v96;
  LOBYTE(v89) = CLHistoricalPlaceContext.approximated.getter();
  (*(v92 + 8))(v93, v95);
  (*(v106 + 8))(v91, v77);
  v97 = v119;
  v111(v119, v90, v77);
  v98 = type metadata accessor for VisitsLoader.VisitData(0);
  v107(v97 + v98[5], v94, v95);
  v99 = (v97 + v98[6]);
  v100 = v109;
  *v99 = v108;
  v99[1] = v100;
  v101 = (v97 + v98[7]);
  v102 = v112;
  *v101 = v118;
  v101[1] = v102;
  *(v97 + v98[8]) = v89 & 1;
  return (*(*(v98 - 1) + 56))(v97, 0, 1, v98);
}

uint64_t sub_10044F18C()
{
  v1[2] = v0;
  sub_1000CE6B8(&qword_101921A10);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for VisitsLoader.VisitData(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for CLHistoricalPlaceContext();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1000CE6B8(&qword_101921A18);
  v1[11] = swift_task_alloc();
  v4 = sub_1000CE6B8(&qword_101921A20);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190EBD0);
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = sub_1000CE6B8(&unk_101921A28);
  v1[20] = v6;
  v1[21] = *(v6 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10044F4A0, 0, 0);
}

uint64_t sub_10044F4A0()
{
  v1 = v0[23];
  v2 = v0[21];
  v12 = v0[20];
  v13 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  Date.init()();
  GEOConfigGetDouble();
  Date.addingTimeInterval(_:)();
  v8 = *(v5 + 8);
  v8(v3, v6);
  Date.init()();
  (*(v5 + 56))(v7, 0, 1, v6);
  static CLHistoricalPlaceContext.places(startDate:endDate:)();
  sub_100024F64(v7, &qword_10190EBD0);
  v8(v4, v6);
  (*(v2 + 16))(v13, v1, v12);
  v0[24] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[25] = _swiftEmptyArrayStorage;
  swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[26] = v9;
  *v9 = v0;
  v9[1] = sub_10044F6AC;
  v10 = v0[11];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0);
}

uint64_t sub_10044F6AC()
{

  if (!v0)
  {

    return _swift_task_switch(sub_10044F7BC, 0, 0);
  }

  return result;
}

uint64_t sub_10044F7BC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[21];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v6 + 8))(v4, v5);

    v7 = v0[1];
    v8 = v0[25];

    return v7(v8);
  }

  else
  {
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    (*(v3 + 32))(v10, v1, v2);
    sub_10044E42C(v10, v13);
    if ((*(v12 + 48))(v13, 1, v11) == 1)
    {
      sub_100024F64(v0[3], &qword_101921A10);
      if (qword_101906890 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100021540(v14, qword_101960338);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Cannot create visit from received PlaceContext. Skipping Visit.", v17, 2u);
      }

      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];

      (*(v19 + 8))(v18, v20);
    }

    else
    {
      v22 = v0[6];
      v21 = v0[7];
      sub_1000D2BF0(v0[3], v21);
      sub_10012EEEC(v21, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v0[25];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_100097B54(0, v24[2] + 1, 1, v0[25]);
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_100097B54(v25 > 1, v26 + 1, 1, v24);
      }

      v28 = v0[9];
      v27 = v0[10];
      v29 = v0[8];
      v31 = v0[5];
      v30 = v0[6];
      sub_100298820(v0[7]);
      (*(v28 + 8))(v27, v29);
      v24[2] = v26 + 1;
      sub_1000D2BF0(v30, v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
      v0[25] = v24;
    }

    swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    v0[26] = v32;
    *v32 = v0;
    v32[1] = sub_10044F6AC;
    v33 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v33, 0, 0);
  }
}

uint64_t sub_10044FBE8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10044FCA8, 0, 0);
}

uint64_t sub_10044FCA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_100014C84(0, &qword_10190B4F0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_101906890 == -1)
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
  v5 = type metadata accessor for Logger();
  v0[6] = sub_100021540(v5, qword_101960338);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching stored visits...", v8, 2u);
  }

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_10044FE78;

  return sub_10044F18C();
}

uint64_t sub_10044FE78(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10044FFC8, 0, 0);
  }
}

uint64_t sub_10044FFC8()
{
  v1 = v0[8];

  Integer = GEOConfigGetInteger();
  type metadata accessor for VisitsLoader.VisitsBatcher();
  swift_allocObject();
  v0[9] = sub_100455F14(v1, Integer);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %ld visits from CL...", v7, 0xCu);
  }

  else
  {
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_10045017C;
  v9 = v0[8];

  return sub_100459378(v9);
}

uint64_t sub_10045017C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10045029C, 0, 0);
}

uint64_t sub_10045029C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 88);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Fetched %ld existing visit identifiers from MapsSync...", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0 + 72);

  return _swift_task_switch(sub_1004503A4, v6, 0);
}

uint64_t sub_1004503A4()
{
  sub_1004488B4(*(v0 + 88));

  return _swift_task_switch(sub_10045041C, 0, 0);
}

uint64_t sub_10045041C()
{
  v1 = *(v0 + 72);
  type metadata accessor for VisitsLoader.VisitsPersistenceTaskManager();
  v2 = swift_allocObject();
  *(v0 + 96) = v2;

  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_1004504AC, v2, 0);
}

uint64_t sub_1004504AC()
{
  sub_10044AF9C();

  return _swift_task_switch(sub_100450514, 0, 0);
}

uint64_t sub_100450514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100450590()
{
  v1[2] = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100450650, 0, 0);
}

uint64_t sub_100450650()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_100014C84(0, &qword_10190B4F0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_100450768;

    return sub_10044FBE8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100450768()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1004508B4, 0, 0);
  }
}

uint64_t sub_1004508B4()
{
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Importing visits complete. Will hydrate mapItems in the background now...", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004509D8()
{
  v1[8] = v0;
  v2 = type metadata accessor for Date();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100450AA4, 0, 0);
}

uint64_t sub_100450AA4()
{
  if (!MapsFeature_IsEnabled_VisitedPlaces())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960338);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_15;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Visited Places Feature is not enabled. Skipping visit loading.";
    v18 = v15;
    v19 = v14;
    v20 = v16;
    v21 = 2;
    goto LABEL_14;
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  Date.init()();
  v6 = OBJC_IVAR____TtC4Maps12VisitsLoader_lastRunTimeStamp;
  v0[13] = OBJC_IVAR____TtC4Maps12VisitsLoader_lastRunTimeStamp;
  swift_beginAccess();
  (*(v4 + 16))(v1, v5 + v6, v3);
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v1, v3);
  v9(v2, v3);
  v10 = *(v5 + OBJC_IVAR____TtC4Maps12VisitsLoader_minTimeBetweenRuns);
  if (v10 < v8)
  {
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_100450DB4;

    return sub_100450590();
  }

  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v22 = v0[8];
  v23 = type metadata accessor for Logger();
  sub_100021540(v23, qword_101960338);
  v24 = v22;
  v14 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v10;
    v17 = "VisitsLoader ran less than %f ago. Skipping visits loading.";
    v18 = v25;
    v19 = v14;
    v20 = v26;
    v21 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v19, v18, v17, v20, v21);
  }

LABEL_15:

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_100450DB4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100450F90;
  }

  else
  {
    v2 = sub_100450EC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100450EC8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  Date.init()();
  swift_beginAccess();
  (*(v4 + 40))(v5 + v2, v1, v3);
  swift_endAccess();

  v6 = v0[1];

  return v6(1);
}

uint64_t sub_100450F90()
{
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing visits failed, error: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1004512BC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1003F1B4C;

  return sub_1004509D8();
}

uint64_t sub_1004514D0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100451578;

  return sub_10045A810();
}

uint64_t sub_100451578(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

id sub_100451764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitsLoader(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100451824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000101238DC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1004518B8(uint64_t a1)
{
  v2 = sub_10045C1DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004518F4(uint64_t a1)
{
  v2 = sub_10045C1DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100451930@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000CE6B8(&qword_101921A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10005E838(a1, a1[3]);
  sub_10045C1DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10004E3D0(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10004E3D0(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_100451A94(void *a1)
{
  v2 = sub_1000CE6B8(&qword_101921A70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10005E838(a1, a1[3]);
  sub_10045C1DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100451BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v13 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage____lazy_storage___plistURL;
  swift_beginAccess();
  sub_1000D2DFC(v1 + v13, v12, &unk_101909B00);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_100024F64(v12, &unk_101909B00);
  v17[1] = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_storageDirectoryURL;
  v17[2] = 0xD00000000000001ALL;
  v17[3] = 0x8000000101238C00;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.notDirectory(_:), v3);
  sub_1000E5580();
  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v6, v3);
  (*(v15 + 16))(v9, a1, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_10045BBDC(v9, v1 + v13);
  return swift_endAccess();
}

void sub_100451EC8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26[-1] - v6;
  v8 = *(v0 + OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_fileManager);
  sub_100451BCC(&v26[-1] - v6);
  URL.path(percentEncoded:)(0);
  v9 = *(v2 + 8);
  v9(v7, v1);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100451BCC(v4);
    v16 = Data.init(contentsOf:options:)();
    v18 = v17;
    v9(v4, v1);
    sub_10045BC4C();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v19 = LOBYTE(v26[0]);
    v27 = v26[0];
    swift_beginAccess();
    sub_1000CE6B8(&qword_101921950);
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    swift_endAccess();
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100021540(v20, qword_101960338);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_10004DEB8(0xD000000000000021, 0x8000000101238C60, v26);
      *(v23 + 12) = 1024;
      *(v23 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s: plist loaded: %{BOOL}d", v23, 0x12u);
      sub_10004E3D0(v24);
    }

    sub_1000D41B4(v16, v18);
  }

  else
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960338);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No previously saved plist on disk. Returning.", v15, 2u);
    }
  }
}

void sub_1004524A0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_10045C158;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101619D90;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1004538F4(&qword_1019097D0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v22 + 8))(v3, v1);
  (*(v4 + 8))(v6, v21);

  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100021540(v15, qword_101960338);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10004DEB8(0xD00000000000001ALL, 0x8000000101238DA0, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: plist saved and tagged ExcludedFromBackup.", v18, 0xCu);
    sub_10004E3D0(v19);
  }
}

void sub_10045295C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101921950);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v4 = &v37 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for URLResourceValues();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_fileManager);
  v15 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_storageDirectoryURL;
  URL._bridgeToObjectiveC()(&qword_101921000);
  v17 = v16;
  v43[0] = 0;
  v18 = [v14 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v43];

  if (v18)
  {
    v19 = v43[0];
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    (*(v6 + 16))(v10, a1 + v15, v5);
    v37 = v13;
    URL.setResourceValues(_:)();
    v28 = *(v6 + 8);
    v28(v10, v5);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v29 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage__visitsNotificationShown;
    swift_beginAccess();
    v30 = v39;
    v31 = a1 + v29;
    v32 = v40;
    (*(v39 + 16))(v4, v31, v40);
    MapsSuggestionsThreadSafe.wrappedValue.getter();
    (*(v30 + 8))(v4, v32);
    sub_10045C178();
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v35 = v34;
    v36 = v38;
    sub_100451BCC(v38);
    Data.write(to:options:)();
    sub_1000D41B4(v33, v35);

    v28(v36, v5);
    (*(v41 + 8))(v37, v42);
  }

  else
  {
    v20 = v43[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100021540(v21, qword_101960338);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43[0] = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_10004DEB8(0xD00000000000001ALL, 0x8000000101238DA0, v43);
      *(v24 + 12) = 2112;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v27;
      *v25 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Error creating destination directory: %@", v24, 0x16u);
      sub_100024F64(v25, &qword_1019144F0);

      sub_10004E3D0(v26);
    }

    else
    {
    }
  }
}

uint64_t sub_1004533C8()
{
  result = type metadata accessor for Date();
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

void sub_1004535B0()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100453858(319, &qword_1019126B0, &type metadata for Bool, &type metadata accessor for MapsSuggestionsThreadSafe);
    if (v1 <= 0x3F)
    {
      sub_1004536E8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1004536E8()
{
  if (!qword_101921880)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101921880);
    }
  }
}

void sub_100453788()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100453858(319, &qword_10190FBF0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100453858(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1004538F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10045393C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960338);
  sub_100021540(v0, qword_101960338);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004539BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100453ABC, 0, 0);
}

uint64_t sub_100453ABC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1004538F4(&qword_101921980, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1004538F4(&qword_101921988, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100453C54;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100453C54()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100453E10, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100453E10()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100453E7C(unint64_t *a1)
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
        type metadata accessor for VisitsLoader.VisitData(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for VisitsLoader.VisitData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004541A8(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100453FA8(0, v2, 1, a1);
  }
}

void sub_100453FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for VisitsLoader.VisitData(0);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_10012EEEC(v23, v17);
      sub_10012EEEC(v20, v13);
      v24 = static Date.< infix(_:_:)();
      sub_100298820(v13);
      sub_100298820(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1000D2BF0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1000D2BF0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004541A8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for VisitsLoader.VisitData(0);
  v110 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v113 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_10056D550(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_100454A08(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_10056D550(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_10056D4C4(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_10012EEEC(v5, v18);
      sub_10012EEEC(v24 + v26 * v25, v15);
      LODWORD(v109) = static Date.< infix(_:_:)();
      sub_100298820(v15);
      sub_100298820(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_10012EEEC(v28, v18);
        sub_10012EEEC(v5, v15);
        v30 = static Date.< infix(_:_:)() & 1;
        sub_100298820(v15);
        sub_100298820(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_1000D2BF0(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000D2BF0(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_100097874(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_100097874((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_100454A08(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_10056D550(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_10056D4C4(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_10012EEEC(v5, v18);
    sub_10012EEEC(v90, v15);
    v91 = static Date.< infix(_:_:)();
    sub_100298820(v15);
    sub_100298820(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_1000D2BF0(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000D2BF0(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_100454A08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for VisitsLoader.VisitData(0);
  __chkstk_darwin(v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_10012EEEC(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_10012EEEC(v32, v41);
          v35 = static Date.< infix(_:_:)();
          v36 = v34;
          v11 = v33;
          sub_100298820(v36);
          sub_100298820(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_10012EEEC(a2, v11);
        v20 = v41;
        sub_10012EEEC(a4, v41);
        v21 = static Date.< infix(_:_:)();
        sub_100298820(v20);
        sub_100298820(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_10052F260(&v46, &v45, &v44);
}

void (*sub_100454E90(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1004551A8(v7);
  v7[9] = sub_100454F9C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100454F3C;
}

void sub_100454F3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100454F9C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100297040(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10012DD7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001291F4(v18, a4 & 1);
    v13 = sub_100297040(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1004550F4;
}

void sub_1004550F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_10012F03C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1002637C0(*(v7 + 48) + 16 * v6);
    sub_1003C57B4(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1004551A8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004551D0;
}

uint64_t sub_1004551DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  v5 = v2;
}

uint64_t sub_100455250(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100307530(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1004552C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_10012EF50(v4, v5);
      sub_100307610(v6, v5);
      sub_10005BF8C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100455350(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000CE6B8(&qword_101921A50);
  sub_1000414C8(&qword_101921A58, &qword_101921A50);
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_10005BCA8(v5, *(v4 - 1), *v4);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100455424(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003077A4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1004554EC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1004538F4(&qword_1019156D0, 255, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_10030852C(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

id sub_10045568C(void *a1, uint64_t a2)
{
  v54 = a2;
  v4 = v2;
  ObjectType = swift_getObjectType();
  v53 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v53 - 1);
  __chkstk_darwin(v53);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  __chkstk_darwin(v8);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v47 - v12;
  v13 = sub_1000CE6B8(&qword_101921950);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage__visitsNotificationShown;
  LOBYTE(v56[0]) = 0;
  MapsSuggestionsThreadSafe.init(wrappedValue:)();
  v18 = *(v14 + 32);
  v49 = v4;
  v18(&v4[v17], v16, v13);
  (*(v9 + 56))(&v4[OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage____lazy_storage___plistURL], 1, 1, v8);
  v19 = a1;
  *&v4[OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_fileManager] = a1;
  strcpy(v56, "Library/Maps/");
  HIWORD(v56[1]) = -4864;
  v20 = enum case for URL.DirectoryHint.isDirectory(_:);
  v21 = *(v5 + 104);
  v22 = v53;
  v21(v7, enum case for URL.DirectoryHint.isDirectory(_:), v53);
  sub_1000E5580();
  v23 = v19;
  v24 = v50;
  URL.appending<A>(path:directoryHint:)();
  v25 = *(v5 + 8);
  v25(v7, v22);
  strcpy(v56, "visits_loader");
  HIWORD(v56[1]) = -4864;
  v21(v7, v20, v22);
  v26 = v51;
  URL.appending<A>(path:directoryHint:)();
  v25(v7, v22);
  v28 = v47;
  v27 = v48;
  v53 = *(v48 + 8);
  (v53)(v24, v47);
  v29 = v27;
  v30 = *(v27 + 32);
  v31 = v49;
  v30(&v49[OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_storageDirectoryURL], v26, v28);
  v55.receiver = v31;
  v55.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = qword_101906890;
  v34 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100021540(v35, qword_101960338);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v38 = 136315138;
    (*(v29 + 16))(v26, v34 + OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_storageDirectoryURL, v28);
    sub_1004538F4(&qword_101921958, 255, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v26;
    v44 = v53;
    (v53)(v43, v28);
    v45 = sub_10004DEB8(v40, v42, v56);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Initializing storageDirectoryURL: %s", v38, 0xCu);
    sub_10004E3D0(v39);
  }

  else
  {

    v44 = v53;
  }

  sub_100451EC8();

  v44(v54, v28);
  return v34;
}

id sub_100455C44()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 containerURLForSecurityApplicationGroupIdentifier:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 16))(v3, v6, v0);
    v10 = objc_allocWithZone(type metadata accessor for VisitsLoaderConfigurationStorage(0));
    v11 = sub_10045568C(v7, v3);

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960338);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10004DEB8(0xD00000000000001FLL, 0x8000000101238C40, &v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: maps group container url is nil.", v15, 0xCu);
      sub_10004E3D0(v16);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_100455F14(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 128) = sub_1000D0C9C(_swiftEmptyArrayStorage);
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101960338);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a1[2];

    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing VisitsBatcher with %ld visits and batch size = %ld...", v9, 0x16u);
  }

  else
  {
  }

  v11 = a1;

  sub_100444948(&v11);
  *(v3 + 112) = v11;
  *(v3 + 120) = a2;
  return v3;
}

uint64_t sub_100456108()
{
  sub_1000CE6B8(&unk_101916430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D60;
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = 0x80000001012278B0;
  *(v1 + 88) = &type metadata for String;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = 0x436D65744970616DLL;
  *(v1 + 72) = 0xEB00000000797469;
  v2 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  v3 = MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)();
  v0[2] = v3;
  type metadata accessor for VisitedLocationRequest();
  v0[3] = VisitedLocationRequest.__allocating_init()();
  v6 = (&async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:) + async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100456270;

  return v6(v3);
}

uint64_t sub_100456270(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {

    v6 = sub_1004565A4;
  }

  else
  {

    v6 = sub_1004563B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004563B8()
{
  v17 = v0;
  v1 = *(v0 + 40);
  v15 = _swiftEmptyDictionarySingleton;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v2; i = *(v0 + 40))
  {
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = *(v0 + 48);
    v6 = v1 & 0xC000000000000001;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(i + 32);
    }

    v1 = v7;
    v16[0] = v7;
    sub_10044AD40(&v15, v16);
    if (v5)
    {
    }

    if (v2 == 1)
    {
LABEL_11:
      v9 = v15;
      goto LABEL_24;
    }

    v10 = (i + 40);
    v11 = 1;
    while (1)
    {
      if (v6)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v12 = *v10;
      }

      v1 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16[0] = v12;
      sub_10044AD40(&v15, v16);

      ++v11;
      ++v10;
      if (v13 == v2)
      {
        goto LABEL_11;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v9 = _swiftEmptyDictionarySingleton;
LABEL_24:

  v14 = *(v0 + 8);

  return v14(v9);
}

uint64_t sub_1004565A4()
{
  v1 = *(v0 + 16);
  v2 = sub_1000D0C9C(_swiftEmptyArrayStorage);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100456638()
{
  v28 = v0;
  v1 = v0[19];
  if (!*(v1 + 16))
  {
    goto LABEL_7;
  }

  v2 = [objc_opt_self() sharedService];
  v0[20] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [v2 defaultTraits];
    v0[21] = v4;
    if (v4)
    {
      v5 = v4;
      [v4 setAnalyticsOptOut:GEOConfigGetBOOL()];
      v6 = *(v1 + 16);
      if (v6)
      {
        v7 = v0[19];
        v8 = sub_100358D50(*(v1 + 16), 0);
        v26 = sub_100416CB8(&v27, v8 + 4, v6, v7);

        sub_10005F150();
        if (v26 != v6)
        {
          __break(1u);
LABEL_7:
          if (qword_101906890 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100021540(v9, qword_101960338);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v10, v11, "No muids to fetch", v12, 2u);
          }

          v13 = sub_1000D0C9C(_swiftEmptyArrayStorage);
          v14 = v0[1];

          return v14(v13);
        }
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
      }

      sub_100193B34(v8);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = [v3 ticketForMUIDs:isa traits:v5];
      v0[22] = v24;

      if (v24)
      {
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_100456B10;
        v25 = swift_continuation_init();
        v0[17] = sub_1000CE6B8(&qword_1019219A8);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_10050D564;
        v0[13] = &unk_101619BD8;
        v0[14] = v25;
        [v24 submitWithCompletionHandler:v0 + 10];
        v20 = v0 + 2;

        return _swift_continuation_await(v20);
      }

LABEL_29:
      __break(1u);
      return _swift_continuation_await(v20);
    }
  }

  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_101960338);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "No map service!", v19, 2u);
  }

  v20 = GEOErrorDomain();
  if (!v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  [objc_allocWithZone(NSError) initWithDomain:v20 code:-13 userInfo:0];

  swift_willThrow();
  v22 = v0[1];

  return v22();
}

uint64_t sub_100456B10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1004573B8;
  }

  else
  {
    v2 = sub_100456C20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100456C20()
{
  v1 = v0[18];
  v0[24] = v1;
  swift_unknownObjectRelease();
  if (v1 >> 62)
  {
LABEL_25:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[25] = v1 & 0xFFFFFFFFFFFFFF8;
  v0[26] = v2;
  v12 = v0;
  if (v2)
  {
    v0 = 0;
    do
    {
      v3 = v0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v0 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v5 = [objc_opt_self() mapItemStorageForGEOMapItem:v4];
        if (v5)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v3;
        if (v0 == v2)
        {
          goto LABEL_18;
        }
      }

      v6 = v5;
      type metadata accessor for CachedMapItemStorage();
      MapsSyncObject.__allocating_init()();
      v10 = v6;
      dispatch thunk of CachedMapItemStorage.mapItemStorage.setter();
      swift_unknownObjectRelease();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v0 != v2);
  }

LABEL_18:
  type metadata accessor for MapsSyncStore();
  v12[27] = static MapsSyncStore.sharedStore.getter();
  if (_swiftEmptyArrayStorage >> 62)
  {
    type metadata accessor for MapsSyncObject();

    v7 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v7 = _swiftEmptyArrayStorage;
  }

  v12[28] = v7;

  v11 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v8 = swift_task_alloc();
  v12[29] = v8;
  *v8 = v12;
  v8[1] = sub_100456F00;

  return v11(v7);
}

uint64_t sub_100456F00()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  if (v0)
  {

    v4 = sub_10045C350;
  }

  else
  {

    v4 = sub_100457064;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_100457064()
{
  if (!*(v0 + 208))
  {
LABEL_29:
    v29 = *(v0 + 168);

    v30 = *(v0 + 8);

    return v30(_swiftEmptyDictionarySingleton);
  }

  v1 = 0;
  v2 = &selRef__maps_mapsConnectionBrokerEndpointRecorderConnection;
LABEL_3:
  v3 = v1;
  while (1)
  {
    v4 = *(v0 + 192);
    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v1 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_32;
    }

LABEL_7:
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(v5, v2[321], v31, v32)}];
    v7 = [v5 name];
    if (v7)
    {
      v11 = v2;
      v12 = v7;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_10029709C(v6);
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
        goto LABEL_38;
      }

      v21 = v16;
      if (_swiftEmptyDictionarySingleton[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = result;
          sub_10012C1C0();
          result = v25;
          v2 = v11;
          if (v21)
          {
            goto LABEL_23;
          }

LABEL_26:
          _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
          *(_swiftEmptyDictionarySingleton[6] + 8 * result) = v6;
          v26 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
          *v26 = v31;
          v26[1] = v32;
          result = swift_unknownObjectRelease();
          v27 = _swiftEmptyDictionarySingleton[2];
          v19 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (!v19)
          {
            _swiftEmptyDictionarySingleton[2] = v28;
LABEL_28:
            if (v1 != *(v0 + 208))
            {
              goto LABEL_3;
            }

            goto LABEL_29;
          }

LABEL_38:
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_1001263E0(v20, isUniquelyReferenced_nonNull_native);
        result = sub_10029709C(v6);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_34;
        }
      }

      v2 = v11;
      if (v21)
      {
LABEL_23:
        v24 = (_swiftEmptyDictionarySingleton[7] + 16 * result);
        *v24 = v31;
        v24[1] = v32;

LABEL_24:
        swift_unknownObjectRelease();

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v8 = sub_10029709C(v6);
    if (v9)
    {
      v23 = v8;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10012C1C0();
      }

      sub_1003C4F54(v23, _swiftEmptyDictionarySingleton);
      goto LABEL_24;
    }

    v10 = *(v0 + 208);
    swift_unknownObjectRelease();

    ++v3;
    if (v1 == v10)
    {
      goto LABEL_29;
    }
  }

  if (v3 >= *(*(v0 + 200) + 16))
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 8 * v3 + 32);
  swift_unknownObjectRetain();
  v1 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_7;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_100014C84(0, &qword_101909920);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1004573B8()
{
  v2 = v0[20];
  v1 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100457440(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    v17 = (*(a1 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    v44[0] = v16;
    v44[1] = v18;
    v44[2] = v19;
    v20 = v16;

    a2(v43, v44);

    v22 = v43[0];
    v21 = v43[1];
    v23 = v43[2];
    v24 = *v45;
    v26 = sub_10029709C(v43[0]);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_10012C1C0();
      }
    }

    else
    {
      sub_1001263E0(v29, v42 & 1);
      v31 = sub_10029709C(v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {

      v12 = (v33[7] + 16 * v26);
      *v12 = v21;
      v12[1] = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v22;
      v34 = (v33[7] + 16 * v26);
      *v34 = v21;
      v34[1] = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v13;
    v6 = v39;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_10005F150();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_100014C84(0, &qword_101909920);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004576D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1004576F4, 0, 0);
}

uint64_t sub_1004576F4()
{
  v1 = [objc_opt_self() sharedService];
  *(v0 + 56) = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 defaultTraits];
  *(v0 + 64) = v3;
  if (!v3)
  {

LABEL_10:
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960338);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No map service!", v16, 2u);
    }

    v12 = sub_1000D1E78(_swiftEmptyArrayStorage);
    goto LABEL_15;
  }

  v4 = v3;
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (v6 == v5 >> 1)
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960338);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Visits passed into hydrateMapItems empty!", v10, 2u);
    }

    v11 = sub_1000D1E78(_swiftEmptyArrayStorage);
    v12 = v11;
LABEL_15:
    v17 = *(v0 + 8);

    return v17(v12);
  }

  v23 = *(v0 + 24);
  [v3 setAnalyticsOptOut:GEOConfigGetBOOL()];
  v19 = sub_1000CE6B8(&qword_1019219B8);
  v20 = swift_task_alloc();
  *(v0 + 72) = v20;
  *(v20 + 16) = v23;
  *(v20 + 32) = v6;
  *(v20 + 40) = v5;
  *(v20 + 48) = v2;
  *(v20 + 56) = v4;
  v21 = sub_1000CE6B8(&unk_1019219C0);
  v22 = swift_task_alloc();
  *(v0 + 80) = v22;
  *v22 = v0;
  v22[1] = sub_100457A88;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v19, v21, 0, 0, &unk_1012076B8, v20, v19);
}

uint64_t sub_100457A88()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100457C10;
  }

  else
  {

    v2 = sub_100457BA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100457BA4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100457C10()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100457C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for Calendar.Component();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190EBD0);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100457EC4, 0, 0);
}

uint64_t sub_100457EC4()
{
  if (!v0[4])
  {
LABEL_4:

    v12 = v0[1];

    return v12(0);
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v24 = v0[13];
  v25 = v0[17];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  v8 = *(v2 + 8);
  v8(v3, v4);
  static Calendar.current.getter();
  (*(v5 + 104))(v6, enum case for Calendar.Component.day(_:), v7);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v5 + 8))(v6, v7);
  v8(v3, v4);
  v9 = (*(v1 + 48))(v24, 1, v25);
  v10 = v0[22];
  if (v9 == 1)
  {
    v11 = v0[13];
    (*(v0[18] + 8))(v0[22], v0[17]);
    sub_100024F64(v11, &qword_10190EBD0);
    goto LABEL_4;
  }

  v14 = v0[21];
  v15 = v0[17];
  v16 = v0[18];
  (*(v16 + 32))(v14, v0[13], v15);
  type metadata accessor for VisitRequest();
  v0[23] = VisitRequest.__allocating_init()();
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CE6B8(&unk_101916430);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E1D60;
  *(v17 + 56) = v15;
  v18 = sub_10001A848((v17 + 32));
  v19 = *(v16 + 16);
  v0[24] = v19;
  v0[25] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v18, v10, v15);
  *(v17 + 88) = v15;
  v20 = sub_10001A848((v17 + 64));
  v19(v20, v14, v15);
  static MapsSyncQueryPredicate.queryPredicate(format:argumentArray:)();

  v21 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v22 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[26] = v22;
  v26 = (&async function pointer to dispatch thunk of VisitRequest.fetch(options:) + async function pointer to dispatch thunk of VisitRequest.fetch(options:));
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_100458280;

  return v26(v22);
}

uint64_t sub_100458280(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 184);
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v6 = sub_100458CB4;
  }

  else
  {
    v6 = sub_1004583D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004583D0()
{
  v96 = v0;
  v1 = v0[28];
  if (v1 >> 62)
  {
LABEL_37:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[28];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:

    if (qword_101906890 != -1)
    {
      swift_once();
    }

    logc = v0[24];
    v16 = v0[19];
    v17 = v0[17];
    v19 = v0[7];
    v18 = v0[8];
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[4];
    v23 = v0[2];
    v24 = type metadata accessor for Logger();
    sub_100021540(v24, qword_101960338);
    (*(v19 + 16))(v18, v21, v20);
    (logc)(v16, v23, v17);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v86 = v22;

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[21];
    v29 = v0[18];
    loga = v0[19];
    v94 = v0[22];
    v30 = v0[17];
    v31 = v0[7];
    v32 = v0[8];
    v33 = v0[6];
    if (v27)
    {
      v81 = v0[3];
      v84 = v0[21];
      v34 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v34 = 136315650;
      sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID);
      v80 = v26;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v25;
      v38 = v37;
      (*(v31 + 8))(v32, v33);
      v39 = sub_10004DEB8(v35, v38, &v95);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      sub_1004538F4(&qword_10190D308, 255, &type metadata accessor for Date);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = *(v29 + 8);
      v43(loga, v30);
      v44 = sub_10004DEB8(v40, v42, &v95);

      *(v34 + 14) = v44;
      *(v34 + 22) = 2080;

      v45 = sub_10004DEB8(v81, v86, &v95);

      *(v34 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v36, v80, "FilterVisits: %s: hasExistingVisitOn: Found NO existing visit on %s, mapItemIdentifier: %s, returning false", v34, 0x20u);
      swift_arrayDestroy();

      v43(v84, v30);
      v43(v94, v30);
    }

    else
    {

      v46 = *(v29 + 8);
      v46(loga, v30);
      (*(v31 + 8))(v32, v33);
      v46(v28, v30);
      v46(v94, v30);
    }

    v47 = 0;
    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[28];
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  log = (v1 & 0xFFFFFFFFFFFFFF8);
  v93 = v0[4];
  v6 = v3 + 32;
  while (1)
  {
    if (v5)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= log[2].isa)
      {
        goto LABEL_36;
      }

      v7 = *(v6 + 8 * v4);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v1 = v7;
    v10 = dispatch thunk of Visit.location.getter();
    if (!v10 || (v11 = v10, v12 = dispatch thunk of VisitedLocation.mapItemIdentifier.getter(), v1 = v13, v11, !v1))
    {

      goto LABEL_5;
    }

    if (v12 == v0[3] && v1 == v0[4])
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_29;
    }

LABEL_5:

    v4 = (v4 + 1);
    if (v9 == v2)
    {
      goto LABEL_19;
    }
  }

LABEL_29:

  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v87 = v0[24];
  v50 = v0[20];
  v51 = v0[17];
  v52 = v0[9];
  v54 = v0[6];
  v53 = v0[7];
  v55 = v0[5];
  v56 = v0[2];
  v57 = type metadata accessor for Logger();
  sub_100021540(v57, qword_101960338);
  (*(v53 + 16))(v52, v55, v54);
  v87(v50, v56, v51);

  v58 = Logger.logObject.getter();
  LOBYTE(v51) = static os_log_type_t.default.getter();

  v85 = v51;
  logb = v58;
  v59 = os_log_type_enabled(v58, v51);
  v61 = v0[21];
  v60 = v0[22];
  v88 = v0[20];
  v63 = v0[17];
  v62 = v0[18];
  v64 = v0[9];
  v65 = v0[6];
  v66 = v0[7];
  if (v59)
  {
    v79 = v0[3];
    v83 = v0[21];
    v67 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v67 = 136315650;
    sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID);
    v78 = v63;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v60;
    v70 = v69;
    (*(v66 + 8))(v64, v65);
    v71 = sub_10004DEB8(v68, v70, &v95);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    sub_1004538F4(&qword_10190D308, 255, &type metadata accessor for Date);
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    v75 = *(v62 + 8);
    v75(v88, v78);
    v76 = sub_10004DEB8(v72, v74, &v95);

    *(v67 + 14) = v76;
    *(v67 + 22) = 2080;
    *(v67 + 24) = sub_10004DEB8(v79, v93, &v95);
    _os_log_impl(&_mh_execute_header, logb, v85, "FilterVisits: %s: hasExistingVisitOn: Found existing visit on %s, mapItemIdentifier: %s, returning true", v67, 0x20u);
    swift_arrayDestroy();

    v75(v83, v78);
    v75(v82, v78);
  }

  else
  {

    v77 = *(v62 + 8);
    v77(v88, v63);
    (*(v66 + 8))(v64, v65);
    v77(v61, v63);
    v77(v60, v63);
  }

  v47 = 1;
LABEL_25:

  v48 = v0[1];

  return v48(v47);
}

uint64_t sub_100458CB4()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = *(v0[18] + 8);
  v3(v0[21], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100458DC8()
{
  if (CLHistoricalPlaceContext.authorizationDenied.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100021540(v0, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Authorization denied by CoreLocation.";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v1, v2, v4, v3, 2u);

LABEL_47:

    return 0;
  }

  if (CLHistoricalPlaceContext.authorizationDeniedGlobally.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Authorization denied globally by CoreLocation.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.authorizationRestricted.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Authorization restricted by CoreLocation.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.authorizationRequestInProgress.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Authorization request in progress by CoreLocation.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.visitHistoryDenied.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Visits History denied.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.visitHistoryDeniedGlobally.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Visits History denied globally by CoreLocation.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.visitHistoryUnsupported.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Visits History unsupported by CoreLocation.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.serviceSessionRequired.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Service session required.";
    goto LABEL_46;
  }

  if (CLHistoricalPlaceContext.accuracyLimited.getter())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960338);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_47;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "CLHistoricalPlaceContext: Accuracy Limited";
    goto LABEL_46;
  }

  return 1;
}

uint64_t sub_100459378(uint64_t a1)
{
  v1[8] = a1;
  sub_1000CE6B8(&unk_101918E50);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = *(type metadata accessor for VisitsLoader.VisitData(0) - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1004594D4, 0, 0);
}

uint64_t sub_1004594D4()
{
  v1 = v0[8];
  sub_1000CE6B8(&unk_101916430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0x696669746E656469;
  *(v2 + 40) = 0xEA00000000007265;
  v3 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  v4 = MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)();
  v0[16] = v4;
  sub_1000CE6B8(&unk_10190D5C0);
  v24 = swift_allocObject();
  v25 = v4;
  *(v24 + 16) = xmmword_1011E1D30;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[8] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = *(v6 + 72);
    v9 = v4;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v11 = v0[15];
      v12 = v0[13];
      v13 = v0[10];
      sub_10012EEEC(v8, v11);
      (*(v7 + 16))(v12, v11, v13);
      sub_100298820(v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100358814(0, v10[2] + 1, 1, v10);
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        v10 = sub_100358814(v14 > 1, v15 + 1, 1, v10);
      }

      v16 = v0[13];
      v17 = v0[10];
      v10[2] = v15 + 1;
      (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      v8 += v26;
      --v5;
    }

    while (v5);
  }

  else
  {
    v18 = v4;
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2] >= 0x3E9uLL)
  {
    v19 = *(v0[11] + 80);
    sub_1004161EC(v10, v10 + ((v19 + 32) & ~v19), 0, 0x7D1uLL);
    v21 = v20;

    v10 = v21;
  }

  type metadata accessor for MapsSyncQueryPredicate();
  *(v24 + 56) = sub_1000CE6B8(&qword_101921A00);
  *(v24 + 64) = sub_1000414C8(&qword_101921A08, &qword_101921A00);
  *(v24 + 32) = v10;
  static MapsSyncQueryPredicate.withFormat(_:_:)();

  dispatch thunk of MapsSyncQueryOptions.predicate.setter();

  type metadata accessor for VisitRequest();
  v0[17] = VisitRequest.__allocating_init()();
  v27 = (&async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:) + async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:));
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_100459878;

  return v27(v25);
}

uint64_t sub_100459878(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 152) = a1;

  v4 = *(v3 + 136);
  if (v1)
  {

    v5 = sub_100459D5C;
  }

  else
  {

    v5 = sub_1004599C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004599C0()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 152); v2; i = *(v0 + 152))
  {
    v4 = 0;
    v5 = *(v0 + 88);
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v6 = (v5 + 56);
    v7 = (v5 + 48);
    v24 = v5;
    v25 = (v5 + 32);
    v26 = i + 32;
    v1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v27 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v26 + 8 * v4);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      *(v0 + 48) = 0x696669746E656469;
      *(v0 + 56) = 0xEA00000000007265;
      v11 = [v8 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v11)
      {
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
      }

      else
      {

        v29 = 0u;
        v30 = 0u;
      }

      *(v0 + 16) = v29;
      *(v0 + 32) = v30;
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);
      if (*(v0 + 40))
      {
        v14 = swift_dynamicCast();
        (*v6)(v12, v14 ^ 1u, 1, v13);
        if ((*v7)(v12, 1, v13) != 1)
        {
          v15 = *v25;
          (*v25)(*(v0 + 96), *(v0 + 72), *(v0 + 80));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_100358814(0, *(v1 + 16) + 1, 1, v1);
          }

          v17 = *(v1 + 16);
          v16 = *(v1 + 24);
          if (v17 >= v16 >> 1)
          {
            v1 = sub_100358814(v16 > 1, v17 + 1, 1, v1);
          }

          v18 = *(v0 + 96);
          v19 = *(v0 + 80);
          *(v1 + 16) = v17 + 1;
          v15(v1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17, v18, v19);
          goto LABEL_6;
        }
      }

      else
      {
        sub_100024F64(v0 + 16, &unk_101908380);
        (*v6)(v12, 1, 1, v13);
      }

      sub_100024F64(*(v0 + 72), &unk_101918E50);
LABEL_6:
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v1 = _swiftEmptyArrayStorage;
LABEL_27:

  v20 = *(v0 + 128);
  v21 = sub_1004554EC(v1);

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_100459D5C()
{
  v1 = *(v0 + 128);
  v2 = sub_1004554EC(_swiftEmptyArrayStorage);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100459E38()
{
  sub_1000CE6B8(&unk_101916430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 expressionForKeyPath:v2];

  *(v1 + 56) = sub_100014C84(0, &unk_101921940);
  *(v1 + 32) = v4;
  v5 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 expressionForFunction:v5 arguments:isa];

  v8 = objc_allocWithZone(type metadata accessor for MapsSyncExpression());
  v9 = MapsSyncExpression.init(expression:key:returnType:)();
  v0[22] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0x436D65744970616DLL;
  *(v10 + 40) = 0xEB00000000797469;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1011E1D30;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0x436D65744970616DLL;
  *(v11 + 40) = 0xEB00000000797469;
  v12 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  v13 = v9;
  v14 = MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)();
  v0[23] = v14;
  sub_1000CE6B8(&qword_101908400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E47B0;
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = v14;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 initWithKey:v18 ascending:0];

  *(v15 + 32) = v19;
  dispatch thunk of MapsSyncQueryOptions.sortDescriptors.setter();

  type metadata accessor for VisitedLocationRequest();
  v0[24] = VisitedLocationRequest.__allocating_init()();
  v22 = (&async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:) + async function pointer to dispatch thunk of MapsSyncRequest.fetchProperties(options:));
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v20[1] = sub_10045A17C;

  return v22(v17);
}

uint64_t sub_10045A17C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_10045A79C;
  }

  else
  {

    v4 = sub_10045A298;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10045A298()
{
  v33 = v0;
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960338);

  v3 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (!v5)
  {

    v8 = v6 & 0x8000000000000000;
    goto LABEL_23;
  }

  Integer = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v30 = v1;
  *Integer = 134218242;
  v8 = v6 & 0x8000000000000000;
  if (v6 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(Integer + 4) = v9;

  *(Integer + 12) = 2080;
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_15:
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_44;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(*(v0 + 208) + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v12 = i;
      *(v0 + 128) = 0xD000000000000018;
      *(v0 + 136) = 0x8000000101238B80;
      v13 = [i __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      if (v13)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v14 = v32;
      *(v0 + 80) = v31;
      *(v0 + 96) = v14;
      if (*(v0 + 104))
      {
        v15 = swift_dynamicCast();
        v16 = *(v0 + 168);
        if (!v15)
        {
          v16 = 0;
        }

        v17 = v15 ^ 1;
      }

      else
      {
LABEL_21:
        sub_100024F64(v0 + 80, &unk_101908380);
        v16 = 0;
        v17 = 1;
      }

      *(v0 + 144) = v16;
      *(v0 + 152) = v17;
      sub_1000CE6B8(&qword_101922B10);
      v18 = String.init<A>(describing:)();
      v20 = sub_10004DEB8(v18, v19, &v30);

      *(Integer + 14) = v20;
      _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %ld cities, numberOfCategoriesInCity: %s", Integer, 0x16u);
      sub_10004E3D0(v1);

LABEL_23:
      v4 = *(v0 + 208);
      Integer = GEOConfigGetInteger();
      v3 = GEOConfigGetInteger();
      if (v4 >> 62)
      {
        if (v8)
        {
          v4 = *(v0 + 208);
        }

        else
        {
          LOBYTE(v4) = v6 & 0xF8;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < Integer)
        {
LABEL_25:
          v22 = *(v0 + 184);

          v23 = 0;
          goto LABEL_37;
        }

        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 < Integer)
        {
          goto LABEL_25;
        }
      }

      if (!v21)
      {
        break;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v24 = *(*(v0 + 208) + 32);
        goto LABEL_35;
      }

      __break(1u);
LABEL_44:
      ;
    }

    __break(1u);
LABEL_42:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_35:
    v25 = v24;
    *(v0 + 112) = 0xD000000000000018;
    *(v0 + 120) = 0x8000000101238B80;
    v26 = [v24 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    result = swift_unknownObjectRelease();
    if (!v26)
    {
      goto LABEL_46;
    }

    v28 = *(v0 + 176);
    v27 = *(v0 + 184);

    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_1000D2BE0((v0 + 48), (v0 + 16));
    swift_dynamicCast();
    v23 = *(v0 + 160) >= v3;
LABEL_37:
    v29 = *(v0 + 8);

    return v29(v23);
  }

  else
  {
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t sub_10045A79C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_10045A810()
{
  v1 = sub_1000CE6B8(&qword_101921950);
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_10045A8D8, 0, 0);
}

id sub_10045A8D8()
{
  if (qword_101906888 != -1)
  {
    swift_once();
  }

  v1 = qword_101960330;
  *(v0 + 112) = qword_101960330;
  if (!v1 || (v3 = *(v0 + 96), v2 = *(v0 + 104), v4 = *(v0 + 88), v5 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage__visitsNotificationShown, swift_beginAccess(), (*(v3 + 16))(v2, v1 + v5, v4), MapsSuggestionsThreadSafe.wrappedValue.getter(), (*(v3 + 8))(v2, v4), (*(v0 + 144) & 1) != 0))
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_101960338);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_10;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Visits History notification shown already. Not posting notification.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_10:

    v11 = *(v0 + 8);

    return v11(0);
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result isInNavigatingState];

  if (v14)
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100021540(v15, qword_101960338);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_10;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Currently in navigating state. Not posting notification.";
    goto LABEL_9;
  }

  if (!GEOConfigGetBOOL())
  {
    if (qword_101906890 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100021540(v27, qword_101960338);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_10;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Visited Places Warming Sheet not seen yet. Not posting notification.";
    goto LABEL_9;
  }

  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithSuiteName:v17];
  *(v0 + 120) = v18;

  if (v18)
  {
    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 BOOLForKey:v20];

    if (v21)
    {
      v22 = v19;
      v23 = String._bridgeToObjectiveC()();
      [v22 removeObjectForKey:v23];

      *(v0 + 146) = 1;
      swift_beginAccess();
      MapsSuggestionsThreadSafe.wrappedValue.setter();
      swift_endAccess();
      sub_1004524A0();
      if (qword_101906890 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100021540(v24, qword_101960338);
      v7 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v7, v25, "Visits History notification migrated from Defaults to storage.", v26, 2u);
      }

      goto LABEL_10;
    }
  }

  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_10045AE90;

  return sub_100459E1C();
}

uint64_t sub_10045AE90(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_10045B0AC;
  }

  else
  {
    *(v4 + 147) = a1 & 1;
    v5 = sub_10045AFBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10045AFBC()
{
  v1 = *(v0 + 147);
  if (v1 == 1)
  {
    *(v0 + 145) = 1;
    v2 = *(v0 + 120);
    swift_beginAccess();
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    swift_endAccess();
    sub_1004524A0();
  }

  else
  {
    v2 = *(v0 + 120);
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_10045B0AC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10045B120()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10045B1C0;

  return sub_100459E1C();
}

uint64_t sub_10045B1C0(char a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_10045B2F8, 0, 0);
  }
}

uint64_t sub_10045B2F8()
{
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Maps Home should show Visited Places entry: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 24);

  return v6(v7);
}

uint64_t sub_10045B424()
{
  v0 = sub_1000CE6B8(&qword_101921950);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v51 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100455C44();
  if (!v8)
  {
    return 0x654420726F727245;
  }

  v9 = v8;
  v54 = v3;
  v55 = v1;
  v56 = v0;
  v10 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_storageDirectoryURL;
  URL.path(percentEncoded:)(0);

  v11 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_fileManager;
  v12 = *&v9[OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage_fileManager];
  sub_100451BCC(v7);
  URL.path(percentEncoded:)(0);
  v53 = *(v5 + 8);
  v53(v7, v4);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = *&v9[v11];
    URL.path(percentEncoded:)(0);
    v16 = String._bridgeToObjectiveC()();

    v60 = 0;
    LODWORD(v15) = [v15 removeItemAtPath:v16 error:&v60];

    if (v15)
    {
      v17 = qword_101906890;
      v18 = v60;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100021540(v19, qword_101960338);
      v20 = v9;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v55;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v52 = v20;
        v26 = v25;
        v51 = swift_slowAlloc();
        v60 = v51;
        *v26 = 136315394;
        *(v26 + 4) = sub_10004DEB8(0xD000000000000039, 0x8000000101238BC0, &v60);
        *(v26 + 12) = 2080;
        (*(v5 + 16))(v7, &v9[v10], v4);
        sub_1004538F4(&qword_101921958, 255, &type metadata accessor for URL);
        v27 = v22;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v53(v7, v4);
        v31 = sub_10004DEB8(v28, v30, &v60);

        *(v26 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v21, v27, "%s: deleted directory: %s", v26, 0x16u);
        swift_arrayDestroy();

        v20 = v52;
      }

      v32 = v54;
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v58 = 0x206465766F6D6552;
      v59 = 0xE800000000000000;
      v33 = OBJC_IVAR____TtC4Maps32VisitsLoaderConfigurationStorage__visitsNotificationShown;
      swift_beginAccess();
      v34 = &v20[v33];
      v35 = v56;
      (*(v24 + 16))(v32, v34, v56);
      MapsSuggestionsThreadSafe.wrappedValue.getter();
      (*(v24 + 8))(v32, v35);
      if (v57)
      {
        v36 = 1702195828;
      }

      else
      {
        v36 = 0x65736C6166;
      }

      if (v57)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      v38 = v37;
      String.append(_:)(*&v36);

      v39._countAndFlagsBits = 0x6974206E65657320;
      v39._object = 0xEC00000029732870;
      String.append(_:)(v39);

      return v58;
    }

    else
    {
      v41 = v60;
      v42 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_101906890 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100021540(v43, qword_101960338);
      swift_errorRetain();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60 = v48;
        *v46 = 136315394;
        *(v46 + 4) = sub_10004DEB8(0xD000000000000039, 0x8000000101238BC0, &v60);
        *(v46 + 12) = 2112;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v49;
        *v47 = v49;
        _os_log_impl(&_mh_execute_header, v44, v45, "%s: error deleting directory: %@", v46, 0x16u);
        sub_100024F64(v47, &qword_1019144F0);

        sub_10004E3D0(v48);
      }

      v60 = 0;
      v61 = 0xE000000000000000;
      v50._countAndFlagsBits = 0x203A726F727245;
      v50._object = 0xE700000000000000;
      String.append(_:)(v50);
      v58 = v42;
      sub_1000CE6B8(&qword_101915AB0);
      _print_unlocked<A, B>(_:_:)();

      return v60;
    }
  }

  else
  {

    return 0xD000000000000010;
  }
}

uint64_t sub_10045BBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101909B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10045BC4C()
{
  result = qword_101921960;
  if (!qword_101921960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921960);
  }

  return result;
}

uint64_t sub_10045BCA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10044B1A8(a1, v4, v5, v6);
}

uint64_t sub_10045BD54(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10003AC40;

  return sub_100448D74(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10045BE30(uint64_t a1)
{
  v4 = *(type metadata accessor for VisitsLoader.VisitData(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC40;

  return sub_100449BF0(a1, v7, v8, v1 + v5, v9, v10);
}

id sub_10045BF74(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&unk_1019219F0);

  return sub_10044AAE4(a1, a2);
}

uint64_t sub_10045C000()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_1004512BC(v2, v3);
}

uint64_t sub_10045C0AC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003AC40;

  return sub_1004514D0(v2);
}

uint64_t sub_10045C160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10045C178()
{
  result = qword_101921A38;
  if (!qword_101921A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A38);
  }

  return result;
}

unint64_t sub_10045C1DC()
{
  result = qword_101921A68;
  if (!qword_101921A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A68);
  }

  return result;
}

unint64_t sub_10045C244()
{
  result = qword_101921A78;
  if (!qword_101921A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A78);
  }

  return result;
}

unint64_t sub_10045C29C()
{
  result = qword_101921A80;
  if (!qword_101921A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A80);
  }

  return result;
}

unint64_t sub_10045C2F4()
{
  result = qword_101921A88;
  if (!qword_101921A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A88);
  }

  return result;
}

unint64_t sub_10045C36C()
{
  result = qword_101921A90;
  if (!qword_101921A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A90);
  }

  return result;
}

void sub_10045C3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_1000D2C74;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D3EC8;
  v11[3] = &unk_101619F70;
  v10 = _Block_copy(v11);

  [v6 compactCollectionImageForSize:v10 onCompletion:{v7, v8}];
  _Block_release(v10);
}

unint64_t sub_10045C4BC()
{
  result = qword_101921A98;
  if (!qword_101921A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921A98);
  }

  return result;
}

void sub_10045C528(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v51 = type metadata accessor for AttributedString();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = [objc_opt_self() *a3];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 components];
    if (!v15)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = v15;
    v17 = sub_10039B64C();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v18;
    if (v18 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v18;
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v17;
    v48 = v14;
    v46 = a4;
    if (v20)
    {
      if (v20 < 1)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v21 = 0;
      v49 = v19 & 0xC000000000000001;
      v22 = _swiftEmptyArrayStorage;
      v23 = v19;
      do
      {
        v24 = v20;
        if (v49)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v19 + 8 * v21 + 32);
        }

        v26 = v25;
        AttributedString.init(_:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100357E24(0, v22[2] + 1, 1, v22);
        }

        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          v22 = sub_100357E24(v27 > 1, v28 + 1, 1, v22);
        }

        ++v21;

        v22[2] = v28 + 1;
        (*(v8 + 32))(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v12, v51);
        v20 = v24;
        v19 = v23;
      }

      while (v24 != v21);

      v14 = v48;
    }

    else
    {
    }

    v31 = [v14 separators];
    if (!v31)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v33;
    if (v33 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v33;
      v35 = v43;
      if (v43)
      {
LABEL_24:
        if (v35 >= 1)
        {
          v36 = 0;
          v49 = v34 & 0xC000000000000001;
          v37 = _swiftEmptyArrayStorage;
          v38 = v34;
          do
          {
            if (v49)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v34 + 8 * v36 + 32);
            }

            v40 = v39;
            AttributedString.init(_:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_100357E24(0, v37[2] + 1, 1, v37);
            }

            v42 = v37[2];
            v41 = v37[3];
            if (v42 >= v41 >> 1)
            {
              v37 = sub_100357E24(v41 > 1, v42 + 1, 1, v37);
            }

            ++v36;

            v37[2] = v42 + 1;
            (*(v8 + 32))(v37 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42, v50, v51);
            v34 = v38;
          }

          while (v35 != v36);
          goto LABEL_37;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_24;
      }
    }

LABEL_37:

    v44 = v46;
    MultiPartLabelViewModel.init(_:_:)();

    v45 = type metadata accessor for MultiPartLabelViewModel();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    return;
  }

  v29 = type metadata accessor for MultiPartLabelViewModel();
  v30 = *(*(v29 - 8) + 56);

  v30(a4, 1, 1, v29);
}

uint64_t sub_10045CAA8()
{
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10045CB54@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_10045CC4C()
{
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__onMenuPresentationChanged);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10045CD0C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__onMenuPresentationChanged);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__onMenuPresentationChanged + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10045FCAC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10045CE04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10045FC74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000D3B90(v4, v3);
}

uint64_t sub_10045CF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider);
  if (!v1)
  {
    return 8;
  }

  swift_getKeyPath();
  sub_10045FCE0(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v1 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace))
  {
    return 8;
  }

  PlaceCardLibraryOperationsCoordinator.placeNote.getter();
  if (!v2)
  {
    return 4;
  }

  String._mapsui_nilIfEmpty.getter();
  v4 = v3;

  if (!v4)
  {
    return 4;
  }

  return 5;
}

uint64_t sub_10045D058()
{
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10045D104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__pendingCorrectionSession);
}

uint64_t sub_10045D1B8()
{
  swift_getKeyPath();
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10045D274(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__onMenuPresentationChanged];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__pendingCorrectionSession] = 0;
  ObservationRegistrar.init()();
  *&v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_msgEntry] = a1;
  *&v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_geoMapItem] = a2;
  v8 = objc_allocWithZone(MKMapItem);
  v9 = a1;
  v10 = a2;
  v11 = [v8 initWithGeoMapItem:v10 isPlaceHolderPlace:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(type metadata accessor for PlaceCardLibraryOperationsCoordinator()) init];
    v14 = v13;
    v15 = OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider;
    *&v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider] = v13;
    if (v13)
    {
      v16 = v13;
      v17 = v12;
      PlaceCardLibraryOperationsCoordinator.mapItem.setter(v12);

      v14 = *&v3[v15];
    }

    if (v14)
    {
      v18 = OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__shouldDeleteWithoutConfirmation;
      swift_beginAccess();
      if (*(v14 + v18) == 1)
      {
        v19 = v14;

        *(v14 + v18) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v27 = ObjectType;
        v28 = &v26;
        __chkstk_darwin(KeyPath);
        v26 = 0;
        v29 = v14;
        sub_10045FCE0(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator);
        v21 = v14;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        ObjectType = v27;
      }
    }

    else
    {
    }
  }

  else
  {
    *&v3[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider] = 0;
  }

  v30.receiver = v3;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, "init");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_getKeyPath();
  __chkstk_darwin(v23);
  v29 = v22;
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  v24 = v22;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v24;
}

void sub_10045D648(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a1)
    {
      v3 = [objc_opt_self() sharedService];
      if (v3)
      {
        v4 = v3;
        [v3 captureUserAction:21 onTarget:153 eventValue:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *sub_10045D6E4()
{
  v82 = type metadata accessor for MapsDesignAccessibilityString();
  v86 = *(v82 - 8);
  __chkstk_darwin(v82);
  v2 = (&v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for CellAction.Placement();
  v85 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CellAction.Style();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CellAction();
  v6 = *(v84 - 8);
  __chkstk_darwin(v84);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v76 = &v66 - v12;
  __chkstk_darwin(v13);
  v75 = &v66 - v14;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v0;
  v18 = *&v0[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider];
  if (v18 && (swift_getKeyPath(), v88 = v18, sub_10045FCE0(&qword_1019190E8, type metadata accessor for PlaceCardLibraryOperationsCoordinator), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v19 = *(v18 + OBJC_IVAR____TtC4Maps37PlaceCardLibraryOperationsCoordinator__savedStateOfPlace)) != 0))
  {
    sub_10045E6A8(v19 == 1, sub_10045FCD8, v87, v17);
    v20 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_100355E1C(v21 > 1, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v17, v84);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v66 = v10;
  v83 = v6;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v89._object = 0x800000010121C800;
  v23._countAndFlagsBits = 0x7972617262694C5BLL;
  v23._object = 0xEF6572616853205DLL;
  v24._countAndFlagsBits = 0x6572616853;
  v89._countAndFlagsBits = 0xD00000000000002ELL;
  v73.super.isa = qword_1019600D8;
  v24._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v24, v89);
  v25 = swift_allocObject();
  v26 = v87;
  *(v25 + 16) = sub_10045FCD8;
  *(v25 + 24) = v26;
  *(v25 + 32) = 2;
  v27 = *(v4 + 104);
  v72 = enum case for CellAction.Style.default(_:);
  v74 = v4 + 104;
  v71 = v27;
  v27(v79);
  v28 = *(v85 + 104);
  v85 += 104;
  v70 = v28;
  v28(v81, enum case for CellAction.Placement.quickAction(_:), v80);
  *v2 = 0xD000000000000017;
  v2[1] = 0x800000010122B6D0;
  v29 = *(v86 + 104);
  v69 = enum case for MapsDesignAccessibilityString.custom(_:);
  v86 += 104;
  v68 = v29;
  v29(v2);

  v30 = v75;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_100355E1C(0, v20[2] + 1, 1, v20);
  }

  v31 = v77;
  v33 = v20[2];
  v32 = v20[3];
  v34 = v83;
  if (v33 >= v32 >> 1)
  {
    v20 = sub_100355E1C(v32 > 1, v33 + 1, 1, v20);
  }

  v20[2] = v33 + 1;
  v37 = *(v34 + 32);
  v36 = v34 + 32;
  v35 = v37;
  v38 = (*(v36 + 48) + 32) & ~*(v36 + 48);
  v39 = *(v36 + 40);
  (v37)(v20 + v38 + v39 * v33, v30, v84);
  v40 = sub_10045CF60();
  if (v40 != 8)
  {
    sub_10045E6A8(v40, sub_10045FCD8, v87, v76);
    v42 = v20[2];
    v41 = v20[3];
    if (v42 >= v41 >> 1)
    {
      v20 = sub_100355E1C(v41 > 1, v42 + 1, 1, v20);
    }

    v20[2] = v42 + 1;
    (v35)(v20 + v38 + v42 * v39, v76, v84);
  }

  v43 = [*&v31[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_msgEntry] MKMapItem];
  if (v43)
  {
    v44 = v43;
    v45 = [objc_opt_self() shouldShowRatingsCallToActionForMapItem:v43];

    if (v45)
    {
      v75 = v39;
      v76 = v38;
      v77 = v35;
      v46._countAndFlagsBits = 0xD000000000000015;
      v90._object = 0x800000010121C7D0;
      v47._countAndFlagsBits = 0x6968542065746152;
      v47._object = 0xEF6563616C502073;
      v46._object = 0x800000010121C7B0;
      v90._countAndFlagsBits = 0xD00000000000002CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v73, v47, v90);
      v48 = swift_allocObject();
      v49 = v87;
      *(v48 + 16) = sub_10045FCD8;
      *(v48 + 24) = v49;
      *(v48 + 32) = 3;
      v71(v79, v72, v78);
      v70(v81, enum case for CellAction.Placement.default(_:), v80);
      *v2 = 0xD000000000000016;
      v2[1] = 0x800000010122B760;
      v68(v2, v69, v82);

      v50 = v66;
      CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
      v52 = v20[2];
      v51 = v20[3];
      if (v52 >= v51 >> 1)
      {
        v20 = sub_100355E1C(v51 > 1, v52 + 1, 1, v20);
      }

      v38 = v76;
      v35 = v77;
      v39 = v75;
      v20[2] = v52 + 1;
      (v35)(v20 + v38 + v52 * v39, v50, v84);
    }
  }

  v53 = [objc_opt_self() sharedHelper];
  v54 = [v53 isUsingOfflineMaps];

  if (v54)
  {
  }

  else
  {
    v75 = v39;
    v76 = v38;
    v77 = v35;
    v83 = v36;
    v91._object = 0x800000010121C770;
    v55._countAndFlagsBits = 0x6F4C20676E6F7257;
    v55._object = 0xEE006E6F69746163;
    v56._countAndFlagsBits = 0xD00000000000001FLL;
    v56._object = 0x800000010121C750;
    v91._countAndFlagsBits = 0xD00000000000003BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v73, v55, v91);
    v57 = swift_allocObject();
    v58 = v87;
    *(v57 + 16) = sub_10045FCD8;
    *(v57 + 24) = v58;
    *(v57 + 32) = 6;
    v71(v79, v72, v78);
    v70(v81, enum case for CellAction.Placement.default(_:), v80);
    *v2 = 0xD000000000000024;
    v2[1] = 0x800000010122B710;
    v68(v2, v69, v82);

    v59 = v67;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v61 = v20[2];
    v60 = v20[3];
    if (v61 >= v60 >> 1)
    {
      v20 = sub_100355E1C(v60 > 1, v61 + 1, 1, v20);
    }

    v63 = v76;
    v62 = v77;
    v64 = v75;

    v20[2] = v61 + 1;
    (v62)(v20 + v63 + v61 * v64, v59, v84);
  }

  return v20;
}

void sub_10045E2AC(unsigned __int8 a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10045E308(a1);
  }
}

void sub_10045E308(unsigned __int8 a1)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  if (a1 > 3u)
  {
    if (a1 - 4 < 2)
    {
      sub_10045EF44();
      v7 = [objc_opt_self() sharedService];
      if (v7)
      {
        [v7 captureUserAction:6032 onTarget:153 eventValue:{0, v7}];
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_31;
    }

    if (a1 == 6)
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v1;
      v10 = v1;
      sub_10020AAE4(0, 0, v5, &unk_101207BA0, v9);
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        if (*&v1[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider])
        {
          PlaceCardLibraryOperationsCoordinator.deletePlaceFromLibrary()();
        }

        v11 = [objc_opt_self() sharedService];
        if (v11)
        {
          [v11 captureUserAction:477 onTarget:153 eventValue:{0, v11}];
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (*&v1[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider])
      {
        sub_1002FF600(0, 0, 0, 0);
      }

      v6 = [objc_opt_self() sharedService];
      if (v6)
      {
        [v6 captureUserAction:469 onTarget:153 eventValue:{0, v6}];
LABEL_21:
        v12 = v17[0];

        return;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (a1 != 2)
    {
      swift_getKeyPath();
      v17[1] = v1;
      sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = [Strong homePOIEnrichmentActionDelegate];
        swift_unknownObjectRelease();
        if (v14)
        {
          [v14 addRatingsForMapItem:*&v1[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_geoMapItem]];
          swift_unknownObjectRelease();
        }
      }

      v15 = [objc_opt_self() sharedService];
      if (v15)
      {
        v16 = v15;
        [v15 captureUserAction:99 onTarget:153 eventValue:0];

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    sub_10045EC80();
  }
}

uint64_t sub_10045E6A8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v28 = a4;
  v27 = type metadata accessor for MapsDesignAccessibilityString();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for CellAction.Placement();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CellAction.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100110454(a1);
  v23[1] = v16;
  v23[2] = v15;
  v17 = &enum case for CellAction.Style.destructive(_:);
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      v29 = 0xE500000000000000;
      v30 = 0x6873617274;
      if (a1)
      {
        goto LABEL_14;
      }

      v29 = 0xE400000000000000;
      v30 = 1937075312;
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v30 = 0xD000000000000013;
      v18 = 0x800000010121D3D0;
    }

    else
    {
      v30 = 0x7568742E646E6168;
      v18 = 0xED0000707573626DLL;
    }

    goto LABEL_12;
  }

  if (a1 - 4 < 2)
  {
    v30 = 0x7865742E65746F6ELL;
    v18 = 0xE900000000000074;
LABEL_12:
    v29 = v18;
    goto LABEL_13;
  }

  v29 = 0xE500000000000000;
  v30 = 0x6873617274;
  if (a1 != 6)
  {
    goto LABEL_14;
  }

  v29 = 0x800000010122B6F0;
  v30 = 0xD000000000000016;
LABEL_13:
  v17 = &enum case for CellAction.Style.default(_:);
LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v26;
  *(v19 + 32) = a1;
  (*(v12 + 104))(v14, *v17, v11);
  v20 = &enum case for CellAction.Placement.quickAction(_:);
  if (((a1 - 1) & 0xFE) != 0)
  {
    v20 = &enum case for CellAction.Placement.default(_:);
  }

  (*(v8 + 104))(v10, *v20, v24);

  *v7 = sub_100110884(a1);
  v7[1] = v21;
  (*(v25 + 104))(v7, enum case for MapsDesignAccessibilityString.custom(_:), v27);
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

uint64_t type metadata accessor for CurrentLocationSuggestionMenuProvider()
{
  result = qword_101921B00;
  if (!qword_101921B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045EBBC()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_10045EC80()
{
  v1 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(v0 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_geoMapItem) isPlaceHolderPlace:0];
  if (!v1)
  {
    return;
  }

  v13 = v1;
  v2 = [objc_allocWithZone(SearchResult) initWithMapItem:v1];
  if (v2)
  {
    v12 = v2;
    v3 = [v2 unknownContact];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() shareItemWithSearchResult:v12 contact:v3 includePrintActivity:1];
      swift_getKeyPath();
      aBlock[0] = v0;
      sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = [Strong homeShareDelegate];
        swift_unknownObjectRelease();
        if (v7)
        {
          aBlock[4] = UIView.annotateView(with:);
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100039C64;
          aBlock[3] = &unk_10161A120;
          v8 = _Block_copy(aBlock);
          swift_unknownObjectRetain();
          [v7 shareItem:v5 presentationOptions:0 completion:v8];
          swift_unknownObjectRelease();
          _Block_release(v8);
          swift_unknownObjectRelease();
        }
      }

      v9 = [objc_opt_self() sharedService];
      if (v9)
      {
        v10 = v9;
        [v9 captureUserAction:6013 onTarget:153 eventValue:0];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v11 = v12;
  }

  else
  {
    v11 = v13;
  }
}

void sub_10045EF44()
{
  v1 = v0;
  swift_getKeyPath();
  v9[0] = v0;
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong visitedPlacesCommonActionsHandlingDelegate];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider);
      if (v4)
      {
        PlaceCardLibraryOperationsCoordinator.placeNote.getter();
        if (v5)
        {
          v4 = String._bridgeToObjectiveC()();
        }

        else
        {
          v4 = 0;
        }
      }

      v6 = [*(v1 + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_geoMapItem) _muid];
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_10045FE04;
      v9[5] = v7;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100498AF8;
      v9[3] = &unk_10161A148;
      v8 = _Block_copy(v9);

      [v3 presentEditNoteViewControllerWithInitialText:v4 libraryAccessProvider:0 placeMUID:v6 completion:v8];
      swift_unknownObjectRelease();
      _Block_release(v8);
    }
  }
}

void sub_10045F138(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_libraryAccessProvider);
    if (v6)
    {
      v7 = v6;
      v8.value._countAndFlagsBits = a1;
      v8.value._object = a2;
      PlaceCardLibraryOperationsCoordinator.updatePlaceNote(to:)(v8);

      v5 = v7;
    }
  }
}

uint64_t sub_10045F1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10045F1E8, 0, 0);
}

uint64_t sub_10045F1E8()
{
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045F288, v2, v1);
}

uint64_t sub_10045F288()
{

  sub_10045F338();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 8);

  return v1();
}

void sub_10045F338()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider_geoMapItem);
    type metadata accessor for VisitLocationCorrectionSessionImpl();
    v3 = swift_allocObject();
    *(v3 + 32) = 0;
    *(v3 + 40) = 2;
    *(v3 + 56) = 0;
    swift_unknownObjectWeakInit();
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 sharedService];
    *(v3 + 16) = v5;
    *(v3 + 24) = 0;
    *(v3 + 72) = 0xEF4E4F4954534547;
    *(v3 + 80) = v6;
    *(v3 + 56) = &off_101619FE0;
    *(v3 + 64) = 0x4755535F49524953;
    swift_unknownObjectWeakAssign();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = [v8 visitedPlacesCommonActionsHandlingDelegate];
      swift_unknownObjectRelease();
      if (v9)
      {

        [v9 presentLocationCorrectionViewWithSession:v3];

        swift_unknownObjectRelease();
      }
    }

    v10 = [v4 sharedService];
    if (v10)
    {
      v11 = v10;
      [v10 captureUserAction:515 onTarget:153 eventValue:0];
    }

    else
    {
      __break(1u);
    }
  }
}

__objc2_class *sub_10045F618(void *a1)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_getKeyPath();
  v14 = v1;
  sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v1[OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__pendingCorrectionSession];
  if (v7)
  {
    result = object_getClass(a1);
    if (result == _TtC4Maps34VisitLocationCorrectionSessionImpl && v7 == a1 && (*(v7 + 40) != 2 || *(v7 + 32) != 0))
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      type metadata accessor for MainActor();
      swift_retain_n();
      v10 = v1;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v7;
      v12[5] = v10;
      sub_10020AAE4(0, 0, v5, &unk_101207C00, v12);
    }
  }

  return result;
}

uint64_t sub_10045F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = sub_10045F8C8;

  return sub_1002B04A8();
}

uint64_t sub_10045F8C8()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;

  return _swift_task_switch(sub_10045FA0C, v3, v2);
}

uint64_t sub_10045FA0C()
{
  swift_unknownObjectWeakInit();

  return _swift_task_switch(sub_10045FA78, 0, 0);
}

uint64_t sub_10045FA78()
{
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045FB04, v2, v1);
}

uint64_t sub_10045FB04()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[6] = v2;
    sub_10045FCE0(&qword_101921B10, type metadata accessor for CurrentLocationSuggestionMenuProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_unknownObjectWeakDestroy();
  v4 = v0[11];
  v5 = v0[12];

  return _swift_task_switch(sub_1002F4994, v4, v5);
}

uint64_t sub_10045FC74(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10045FCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10045FD28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10045F1C8(a1, v4, v5, v6);
}

uint64_t sub_10045FE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10045F818(a1, v4, v5, v7, v6);
}

uint64_t sub_10045FEE4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__pendingCorrectionSession) = *(v0 + 24);
}

uint64_t sub_10045FF30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC4Maps37CurrentLocationSuggestionMenuProvider__onMenuPresentationChanged);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1000CD9D4(v1);
  return sub_1000D3B90(v4, v5);
}

id sub_10045FFE4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = sub_100258BD0();
  v4 = 0;
  if (qword_101207C90[v3] != 90)
  {
    if (qword_101207C90[v3] == 365)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (qword_101207C90[v3] == 0);
    }
  }

  *&v0[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_initialSelectedOptionIndex] = v4;
  *&v0[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_options] = &off_1016010D0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v5);

  return v5;
}

__n128 sub_100460170@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_options];
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    *&v42 = _swiftEmptyArrayStorage;
    sub_1005111A4(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (v4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        if (v8 == 1)
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v10.super.isa = qword_1019600D8;
          v35 = 0x80000001012279D0;
          v11 = 0x80000001012279B0;
          v12 = 0xD000000000000050;
          v13 = 0xD000000000000017;
          v14 = 0x726165592031;
          v15 = 0xE600000000000000;
        }

        else
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v10.super.isa = qword_1019600D8;
          v35 = 0x8000000101227950;
          v13 = 0xD000000000000019;
          v11 = 0x8000000101227930;
          v12 = 0xD000000000000052;
          v14 = 0x7368746E6F4D2033;
          v15 = 0xE800000000000000;
        }
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v10.super.isa = qword_1019600D8;
        v35 = 0x8000000101227A50;
        v13 = 0xD000000000000018;
        v11 = 0x8000000101227A30;
        v12 = 0xD00000000000004DLL;
        v14 = 0x72657665726F46;
        v15 = 0xE700000000000000;
      }

      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, 0, v10, *&v14, *&v12);
      object = v18._object;
      countAndFlagsBits = v18._countAndFlagsBits;
      *&v42 = v6;
      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        sub_1005111A4((v19 > 1), v20 + 1, 1);
        countAndFlagsBits = v18._countAndFlagsBits;
        object = v18._object;
      }

      v21 = qword_101207C90[v8];
      v6 = v42;
      *(v42 + 16) = v20 + 1;
      v22 = &v6[3 * v20];
      v22[4] = v21;
      v22[5] = countAndFlagsBits;
      v22[6] = object;
      --v5;
    }

    while (v5);
    v2 = v1;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v2[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_initialSelectedOptionIndex];
  v38 = 0uLL;
  v39.n128_u64[0] = 0;
  v26 = v2;

  sub_1000CE6B8(&qword_101911328);
  State.init(wrappedValue:)();
  v27 = v42;
  v29 = v43;
  v28 = v44;
  if ((v25 & 0x8000000000000000) == 0 && v25 < v6[2])
  {
    v30 = &v6[3 * v25];
    v36 = *(v30 + 2);
    v31 = v30[6];

    v27 = v36;
    v28 = 0;
    v29 = v31;
  }

  *&v38 = sub_100460C04;
  *(&v38 + 1) = v23;
  v39.n128_u64[0] = sub_100460C4C;
  v39.n128_u64[1] = v24;
  *v40 = v6;
  *&v40[8] = v27;
  *&v40[24] = v29;
  v41 = v28;
  *&v42 = sub_100460C04;
  *(&v42 + 1) = v23;
  v43 = sub_100460C4C;
  v44 = v24;
  v45 = v6;
  v46 = v27;
  v47 = v29;
  v48 = v28;
  sub_1003CADA0(&v38, v37);
  sub_100460C54(&v42);

  a1[3] = &type metadata for VisitRetentionDurationView;
  a1[4] = sub_100460CA8();
  v32 = swift_allocObject();
  *a1 = v32;
  v33 = *&v40[16];
  *(v32 + 48) = *v40;
  *(v32 + 64) = v33;
  *(v32 + 80) = v41;
  result = v39;
  *(v32 + 16) = v38;
  *(v32 + 32) = result;
  return result;
}

void sub_1004605AC(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_options);
  if (*(v4 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *(v4 + a1 + 32);
  v6 = [objc_allocWithZone(NSNumber) initWithInteger:qword_101207C90[v5]];
  type metadata accessor for MapsSyncKeyedStore();
  v7 = static MapsSyncKeyedStore.shared.getter();
  v11[3] = sub_1000F337C();
  v11[0] = v6;
  v8 = v6;
  dispatch thunk of MapsSyncKeyedStore.setObject(_:key:)();

  sub_1000DB2F4(v11);
  v9 = *&v3[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection];
  if (v9)
  {

    v9(v5);
    sub_1000588AC(v9);
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for VisitRetentionDurationViewController();
  objc_msgSendSuper2(&v10, "handleDismissAction:", v3);
}

int *sub_100460718@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    sub_1001D2F9C();
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 0;
  }

  else
  {
    sub_1000CE6B8(&unk_10190B9A0);
    type metadata accessor for UIHostingControllerSizingOptions();
    *(swift_allocObject() + 16) = xmmword_1011E1D60;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    sub_1001D2F9C();
    sub_1000CE6B8(&unk_10190B9B0);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 1;
  }

  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions();
  *(a1 + result[5]) = v5;
  v7 = a1 + result[6];
  *v7 = 0;
  *(v7 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

void sub_100460900()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 cardPresentationController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 setPresentedModally:1];

  v3 = [v0 cardPresentationController];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setDefaultContaineeLayout:5];

  v5 = [v0 cardPresentationController];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setTakesAvailableHeight:1];

  v7 = [v0 cardPresentationController];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setHideGrabber:1];

  v9 = [v0 cardPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls:1];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100460B4C()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection);

  return sub_1000588AC(v1);
}

id sub_100460C04()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "handleDismissAction:", v2.receiver);
}

unint64_t sub_100460CA8()
{
  result = qword_101921B58;
  if (!qword_101921B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921B58);
  }

  return result;
}

void sub_100460DE0()
{
  if ((MapsFeature_IsEnabled_VisitedPlaces() & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces) = 0;
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_10195FF58);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "The Visited Places Feature is not enabled, so we won't show the Visited Places entry in Maps Home";
    goto LABEL_11;
  }

  if (!GEOConfigGetBOOL())
  {
    type metadata accessor for MapsWarmingSheetHelper();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10033B540(sub_1004618D4, v6);

    return;
  }

  *(v0 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces) = 0;
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FF58);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Visited Places entry has been shown and interacted already, skipping.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
  }

LABEL_12:
}

id sub_100461044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004610EC(char a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;
      sub_10050D2C8(0, 0, v4, &unk_101207CD8, v8);
    }
  }

  else
  {
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_10195FF58);
    v13 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v13, v10, "The Visited Places Feature is not authorized, so we won't show the Visited Places entry in Maps Home", v11, 2u);
    }

    v12 = v13;
  }
}

uint64_t sub_1004612F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_100461450;

  return sub_10045B120();
}

uint64_t sub_100461450(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 136) = a1 & 1;

    return _swift_task_switch(sub_1004615B4, 0, 0);
  }
}

uint64_t sub_1004615B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces] = *(v0 + 136);
  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_100461A8C;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100039C64;
  v0[5] = &unk_10161A2B0;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

void sub_1004617B0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_active) == 1)
  {
    (*(a1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_updateHandler))();
  }

  else
  {
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100021540(v1, qword_10195FF58);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Not showing the Visited Places entry because it is not active", v3, 2u);
    }
  }
}

uint64_t sub_1004618DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004612F4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for CarHomeContentListView()
{
  result = qword_101921C08;
  if (!qword_101921C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100461B08()
{
  sub_100461BC8();
  if (v0 <= 0x3F)
  {
    sub_10005B95C();
    if (v1 <= 0x3F)
    {
      sub_10028FEB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100461BC8()
{
  if (!qword_101921C18)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101921C18);
    }
  }
}

uint64_t sub_100461C34@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for MapsDesignAccessibilityString();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for ContentMarginPlacement();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101921C68);
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v22 = sub_1000CE6B8(&qword_101921C70);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v21 - v10;
  v25 = sub_1000CE6B8(&qword_101921C78);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v21 - v12;
  v31 = v1;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101921C80);
  sub_100465034();
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v14 = sub_1000414C8(&qword_101921CA0, &qword_101921C68);
  View.contentMargins(_:_:for:)();
  (*(v23 + 8))(v6, v26);
  (*(v21 + 8))(v9, v7);
  *v4 = 0x656D6F48726143;
  v4[1] = 0xE700000000000000;
  v16 = v28;
  v15 = v29;
  (*(v28 + 104))(v4, enum case for MapsDesignAccessibilityString.list(_:), v29);
  v32 = v7;
  v33 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v22;
  View.mapsDesignAXContainer(withID:)();
  (*(v16 + 8))(v4, v15);
  (*(v24 + 8))(v11, v18);
  v32 = v18;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  View.scrollAccessoryEdge(_:)();
  return (*(v27 + 8))(v13, v19);
}