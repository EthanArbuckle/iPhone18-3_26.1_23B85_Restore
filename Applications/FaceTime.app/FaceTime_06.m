uint64_t sub_1000B6B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = sub_1000525C4(&qword_100126408);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for Handle.Kind();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6CA8, 0, 0);
}

uint64_t sub_1000B6CA8()
{

  v2 = sub_1000993C0(v1);

  v3 = sub_1000BFE20(_swiftEmptyArrayStorage);
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    v4 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v6 = 0;
  }

  v12 = v0[17];
  v36 = v7;
  v13 = (v7 + 64) >> 6;
  v38 = enum case for Handle.Kind.phoneNumber(_:);
  v43 = (v12 + 104);
  v42 = enum case for Handle.Kind.generic(_:);
  v37 = enum case for Handle.Kind.emailAddress(_:);
  v40 = (v12 + 8);
  v41 = (v12 + 16);
  v39 = (v0[21] + 8);
  v45 = v2;
  v46 = v5;
  v44 = v13;
  v0[23] = v3;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v6;
    v15 = v8;
    v16 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_28:
      sub_10000AC64();

      type metadata accessor for BlockList();
      v0[24] = static BlockList.shared.getter();

      v33 = sub_10009256C(v32);
      v0[25] = v33;
      v34 = swift_task_alloc();
      v0[26] = v34;
      *v34 = v0;
      v34[1] = sub_1000B717C;
      v4 = v33;

      return BlockList.areHandlesBlocked(_:)(v4);
    }

    while (1)
    {
      v47 = v3;
      v20 = [v18 type];
      v21 = v42;
      if (v20 >= 2)
      {
        v21 = v38;
        if (v20 != 2)
        {
          v21 = v37;
          if (v20 != 3)
          {
            v21 = v38;
          }
        }
      }

      v22 = v0[18];
      v23 = v0[19];
      v24 = v0[16];
      (*v43)(v23, v21, v24);
      (*v41)(v22, v23, v24);
      v25 = [v18 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      Handle.init(type:value:displayName:)();
      (*v40)(v23, v24);
      if (*(v47 + 16) && (v26 = sub_100052E8C(v0[22]), (v27 & 1) != 0))
      {
        v48 = *(*(v47 + 56) + 8 * v26);
      }

      else
      {
        v48 = _swiftEmptyArrayStorage;
      }

      v13 = v44;
      v28 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v29 = v0[22];
      v30 = v0[20];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000B9908(v48, v29, isUniquelyReferenced_nonNull_native);

      v3 = v47;
      v4 = (*v39)(v29, v30);
      v6 = v16;
      v5 = v46;
      v8 = v17;
      v2 = v45;
      v0[23] = v47;
      if ((v45 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v0[9] = v19;
        sub_100008BA0(0, &qword_1001243D0);
        swift_dynamicCast();
        v18 = v0[8];
        v16 = v6;
        v17 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return BlockList.areHandlesBlocked(_:)(v4);
}

uint64_t sub_1000B717C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v4 = sub_1000B75C4;
  }

  else
  {
    v4 = sub_1000B72EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B72EC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[21];
  v26 = v0[13];
  v0[7] = sub_10000A74C(_swiftEmptyArrayStorage);
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v27 = v3;

  v10 = 0;
  v23 = v1;
  while (v7)
  {
LABEL_11:
    v13 = v0[14];
    v12 = v0[15];
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    (*(v27 + 16))(v12, *(v1 + 48) + *(v27 + 72) * v14, v0[20]);
    *(v12 + *(v26 + 48)) = *(*(v1 + 56) + v14);
    sub_10000B818(v12, v13, &qword_100126408);
    if (*(v2 + 16) && (v15 = sub_100052E8C(v0[14]), (v16 & 1) != 0))
    {
      v17 = v0[14];
      v24 = v0[20];
      v25 = v0[15];
      v18 = *(*(v2 + 56) + 8 * v15);
      v19 = *(v0[21] + 8);

      v19(v17, v24);
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 7;
      *(v20 + 24) = v25;
      sub_1000B6A34(sub_1000BA1F0, v20, v18);
      v1 = v23;
    }

    else
    {
      (*(v0[21] + 8))(v0[14], v0[20]);
    }

    v7 &= v7 - 1;
    result = sub_10000B880(v0[15], &qword_100126408);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  v21 = v0[11];

  v21(v0[7]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000B75C4()
{
  if (qword_1001240B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_1001263F0);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch blocked status: %@", v4, 0xCu);
    sub_10000B880(v5, &qword_1001250A0);
  }

  v7 = *(v0 + 88);

  sub_10000A74C(_swiftEmptyArrayStorage);
  v7();

  v8 = *(v0 + 8);

  return v8();
}

void sub_1000B77B0(void **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(NSNumber) initWithBool:*(a3 + *(sub_1000525C4(&qword_100126408) + 48))];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    if ((*a2 & 0xC000000000000001) == 0)
    {
LABEL_8:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      sub_10000A9C0(v6, v4, isUniquelyReferenced_nonNull_native);
      *a2 = v11;
      return;
    }

    if (v7 < 0)
    {
      v8 = *a2;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v9, 1))
    {
      *a2 = sub_1000B7BC4(v8, v9 + 1);
      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_1000B7948(uint64_t a1, uint64_t a2)
{
  sub_100008BA0(0, &qword_1001243D0);
  sub_100008BA0(0, &qword_100124F90);
  sub_10000A844();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1000B79F8()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_1001263F0);
  sub_1000046F4(v0, qword_1001263F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7A78(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10000AB38(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1000B84AC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1000B929C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_1000B7BC4(v4, v7);

  v9 = sub_10000AB38(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1000B84AC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_1000B7BC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000525C4(&qword_100124418);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008BA0(0, &qword_1001243D0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100008BA0(0, &qword_100124F90);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10000AB7C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1000B7E10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000B7FC0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for CoalescedRecentItem() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000B81AC(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantKey();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_1000BA20C();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(type metadata accessor for GroupedHistoryItem() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000B84AC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void *sub_1000B8638()
{
  v1 = v0;
  sub_1000525C4(&qword_100124450);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000B87A8()
{
  v1 = v0;
  sub_1000525C4(&qword_100124430);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000B8920()
{
  v1 = v0;
  v2 = type metadata accessor for CoalescedRecentItem();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000525C4(&qword_100124448);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10005B644(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10005B6A8(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

char *sub_1000B8B50()
{
  v1 = v0;
  v41 = type metadata accessor for GroupedHistoryItem();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ParticipantKey();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000525C4(&qword_100124498);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000B8ECC(uint64_t *a1)
{
  v2 = v1;
  sub_1000525C4(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1000B9020(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_1000525C4(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_1000B929C()
{
  v1 = v0;
  sub_1000525C4(&qword_100124418);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000B93FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100052C6C(a3, a4);
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
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100057288(v18, a5 & 1);
      v13 = sub_100052C6C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000B87A8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1000B9584(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for RecentCall();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100052DB8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000B9020(&type metadata accessor for RecentCall, &qword_1001244F0);
      goto LABEL_7;
    }

    sub_100057D2C(v17, a3 & 1);
    v22 = sub_100052DB8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000B9BA4(v14, v11, a1, v20, &type metadata accessor for RecentCall);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id sub_1000B9788(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100052F60(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100058130(v13, a3 & 1);
      v8 = sub_100052F60(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for MessageID(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1000B8ECC(&qword_1001245C0);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t sub_1000B9908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100052E8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000B9020(&type metadata accessor for Handle, &qword_100124408);
      goto LABEL_7;
    }

    sub_1000583AC(v17, a3 & 1);
    v22 = sub_100052E8C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000B9BA4(v14, v11, a1, v20, &type metadata accessor for Handle);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1000B9B0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CoalescedRecentItem();
  result = sub_10005B6A8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000B9BA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
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

void sub_1000B9C60(unint64_t a1, void (**a2)(void, void))
{
  v4 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_allocWithZone(TUFeatureFlags);
  _Block_copy(a2);
  v9 = [v8 init];
  v10 = [v9 betterBlockingEnabled];

  if (v10)
  {
    v28 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v24 = v6;
      v25 = a2;
      v26 = v7;
      v13 = 0;
      a2 = (a1 & 0xC000000000000001);
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      isa = _swiftEmptyArrayStorage >> 62;
      while (1)
      {
        if (a2)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        v15 = v16;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v18 = [v16 remoteParticipantHandles];
        if (v18)
        {
          v14 = v18;
          sub_100008BA0(0, &qword_1001243D0);
          sub_10000A844();
          v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v15 = v14;
        }

        else if (isa && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_100098F24(_swiftEmptyArrayStorage);
          v6 = v19;
        }

        else
        {
          v6 = &_swiftEmptySetSingleton;
        }

        sub_1000BABEC(v6);
        ++v13;
        if (v17 == i)
        {
          v12 = v28;
          a2 = v25;
          v7 = v26;
          v6 = v24;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_19:
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_21;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v12;
      v21[5] = sub_1000BA068;
      v21[6] = v7;

      sub_1000B6774(0, 0, v6, &unk_1000D9770, v21);

      sub_10000B880(v6, &qword_100124480);

      return;
    }
  }

  sub_10000A74C(_swiftEmptyArrayStorage);
  sub_100008BA0(0, &qword_1001243D0);
  sub_100008BA0(0, &qword_100124F90);
  sub_10000A844();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2[2](a2, isa);

  v22 = isa;
}

uint64_t sub_1000BA070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100042A10;

  return sub_1000B6B34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BA138(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042A10;

  return sub_100083F10(a1, v4);
}

unint64_t sub_1000BA20C()
{
  result = qword_1001244B0;
  if (!qword_1001244B0)
  {
    type metadata accessor for ParticipantKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001244B0);
  }

  return result;
}

uint64_t sub_1000BA264(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000518D0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000BA358(uint64_t a1)
{
  v77 = type metadata accessor for Person();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000525C4(&qword_100126448);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100051AE0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_10005A514(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_10000AC64();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_1000BE77C(v14, v75);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_1000BE7EC(v37);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_100051AE0(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_1000BE77C(v14, v76);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_1000BE7EC(v43);
LABEL_33:
        v74 = v4;
        *(v16 + 2) = v4;
        v37 = v75;
        sub_1000BE77C(v14, v75);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          goto LABEL_33;
        }

        sub_1000BE7EC(v14);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_1000BE77C(v14, v76);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_1000BE7EC(v14);
    sub_10000AC64();
    result = sub_1000BE7EC(v37);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

id sub_1000BA9CC(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  if (!(*v2 >> 62))
  {
    v8 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = (v8 + v7);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v16, v7);
  result = (v16 + v7);
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  result = sub_100099DEC();
  v3 = *v2;
  v4 = *v2 & 0xFFFFFFFFFFFFFF8;
  v11 = *(v4 + 0x10);
  v5 = (*(v4 + 0x18) >> 1) - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    if (v5 >= v12)
    {
      v13 = *(a2 + 16);
    }

    else
    {
      v13 = (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v11;
    }

    sub_100008BA0(0, &qword_1001243E0);
    result = swift_arrayInitWithCopy();
    if (v13 >= v7)
    {
      if (v5 >= 1)
      {
        v14 = *(v4 + 16);
        v9 = __OFADD__(v14, v13);
        v15 = v14 + v13;
        if (v9)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        *(v4 + 16) = v15;
      }

      goto LABEL_13;
    }
  }

  else if (v7 <= 0)
  {
    v13 = 0;
LABEL_13:
    if (v13 != v5)
    {
LABEL_14:

      *v2 = v3;
      return result;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v17 = *(a2 + 16);
  if (v5 == v17)
  {
    goto LABEL_14;
  }

  if (v5 < v17)
  {
    v18 = *(v4 + 16);
    v19 = v5 + 1;
    v20 = *(a2 + 32 + 8 * v5);
    v21 = v20;
    result = v20;
    while (1)
    {
LABEL_23:
      if (v18 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = result;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        result = v28;
      }

      v3 = *v2;
      v22 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v23 = v22 - v18;
      if (v22 > v18)
      {
        break;
      }

      *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v18;
    }

    v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    v30 = *v2 & 0xFFFFFFFFFFFFFF8;
    v24 = (v30 + 8 * v18 + 32);
    v25 = v18 + 1;
    while (1)
    {
      *v24 = result;
      v26 = *(a2 + 16);
      if (v19 == v26)
      {
        break;
      }

      if (v19 >= v26)
      {
        goto LABEL_33;
      }

      v27 = v19 + 1;
      result = *(a2 + 32 + 8 * v19);
      ++v24;
      ++v25;
      ++v19;
      if (!--v23)
      {
        v18 = v29;
        v19 = v27;
        *(v30 + 16) = v29;
        goto LABEL_23;
      }
    }

    *(v30 + 16) = v25;
    goto LABEL_14;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000BABEC(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100099DEC();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_10005A9F4(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_10000AC64();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_100008BA0(0, &qword_1001243D0);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BA0(0, &qword_1001243D0);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1000BAF74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100099DEC();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100098A98(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

NSString sub_1000BB064()
{
  result = String._bridgeToObjectiveC()();
  qword_100126410 = result;
  return result;
}

NSString sub_1000BB09C()
{
  result = String._bridgeToObjectiveC()();
  qword_100126418 = result;
  return result;
}

uint64_t sub_1000BB0D4()
{
  if (qword_1001240C0 != -1)
  {
    swift_once();
  }

  v0 = qword_100126418;
  type metadata accessor for Identifier(0);
  v1 = v0;
  _print_unlocked<A, B>(_:_:)();

  v2._countAndFlagsBits = 0x756F6F696475612ELL;
  v2._object = 0xEC00000074757074;
  String.append(_:)(v2);
  v3 = String._bridgeToObjectiveC()();

  qword_100126420 = v3;
  return result;
}

NSString sub_1000BB1B8()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.deleteAllRecents = result;
  return result;
}

uint64_t *NSNotificationName.deleteAllRecents.unsafeMutableAddressor()
{
  if (qword_1001240D0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.deleteAllRecents;
}

NSString sub_1000BB264()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.newFaceTimeMenuAction = result;
  return result;
}

uint64_t *NSNotificationName.newFaceTimeMenuAction.unsafeMutableAddressor()
{
  if (qword_1001240D8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.newFaceTimeMenuAction;
}

id sub_1000BB310(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void PhoneApplication.buildMenu(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _UIEnhancedMainMenuEnabled())
  {
    if (qword_100124038 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000046F4(v6, qword_1001289B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device is iPad with _UIEnhancedMainMenuEnabled, now building menu bar for PhoneFaceTime", v9, 2u);
    }

    v20.receiver = v2;
    v20.super_class = PhoneApplication;
    objc_msgSendSuper2(&v20, "buildMenuWithBuilder:", a1);
    v10 = [v2 currentAppIsPhoneApp];
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    if (v10)
    {
      if (v13)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Current app is Phone, temporarily building same menu bar as FaceTime until rdar://141003425";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v11, v12, v15, v14, 2u);
      }
    }

    else if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Current app is FaceTime, building menu bar accordingly";
      goto LABEL_19;
    }

    [v2 buildFaceTimeMenuBarMenus:a1];
    return;
  }

  if (qword_100124038 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000046F4(v16, qword_1001289B0);
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Device is not iPad with _UIEnhancedMainMenuEnabled, so we're not building menu bar for PhoneFaceTime", v18, 2u);
  }
}

void PhoneApplication.buildFaceTimeMenuBarMenus(_:)(void *a1)
{
  v2 = v1;
  sub_100008BA0(0, &qword_100124FA8);
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = [a1 menuForIdentifier:UIMenuClose];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 children];

    sub_100008BA0(0, &qword_1001256A0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;
      goto LABEL_13;
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  [v2 removeUnnecessaryTopLevelMenus:a1];
  [v2 removeUnnecessarySubMenusEdit:a1];
  [v2 removeUnnecessarySubMenusWindow:a1];
  [v2 modifyTopLevelMenuApplication:a1];
  [v2 modifyTopLevelMenuEdit:a1];
  [v2 modifyTopLevelMenuWindow:a1 :v12];
  [v2 addTopLevelMenuAudio:a1];
}

void *sub_1000BBDA8(unint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v5;
      }

      v9 = [v7 action];

      if (v9)
      {
        v10 = static Selector.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_8;
        }
      }

      else
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_8:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  return _swiftEmptyArrayStorage;
}

Class sub_1000BC000(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100008BA0(0, &qword_1001256A0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

void *sub_1000BC098(unint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v5;
      }

      v9 = [v7 action];

      if (v9)
      {
        v10 = static Selector.== infix(_:_:)();

        if (v10)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_8;
        }
      }

      else
      {
      }

LABEL_8:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_25:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000BC3B8(uint64_t a1, void *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000525C4(&qword_100124C30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D6C60;
  *(v3 + 32) = a2;
  v7 = v3;
  v4 = a2;

  sub_1000BAF74(v5);

  return v7;
}

void sub_1000BC588(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  sub_1000525C4(&qword_100124C30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D6C60;
  *(v6 + 32) = [v2 menuAudioOutput];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  if (qword_1001240C0 != -1)
  {
    swift_once();
  }

  v10 = qword_100126418;
  sub_100008BA0(0, &qword_100126438);
  v11 = v10;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v15.value.super.isa = 0;
  v15.is_nil = v10;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v15, 0, 0xFFFFFFFFFFFFFFFFLL, v6, v14).super.super.isa;
  [a1 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuEdit];
}

void sub_1000BC7B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
}

UIMenu sub_1000BC8BC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = [v0 callCenter];
  [v3 hasCurrentCalls];

  sub_100008BA0(0, &qword_100126440);
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100008BA0(0, &qword_100126438);
  if (qword_1001240B8 != -1)
  {
    swift_once();
  }

  v5 = qword_100126410;
  sub_1000525C4(&qword_100124C30);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1000D6C60;
  *(preferredElementSize + 32) = v4;
  v7 = v5;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = v5;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v11, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v10);
}

id sub_1000BCB38(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7;
}

UIMenu sub_1000BCC00()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_100008BA0(0, &qword_100126438);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v3 = String.init(localized:table:bundle:locale:comment:)();
  v5 = v4;
  if (qword_1001240C8 != -1)
  {
    swift_once();
  }

  v6 = qword_100126420;
  v7 = v6;
  v8 = [v0 makeAudioOutputItems];
  sub_100008BA0(0, &qword_1001256A0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10._countAndFlagsBits = v3;
  v10._object = v5;
  v13.value.super.isa = 0;
  v13.is_nil = v7;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v13, 33, 0xFFFFFFFFFFFFFFFFLL, v9, v12);
}

uint64_t sub_1000BCDE8()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 routeController];

  v4 = [v3 routes];
  sub_100008BA0(0, &qword_100126430);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
    return result;
  }

  type metadata accessor for MainActor();
  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    ++v8;
    v9 = [v1 makeAudioOutputItemWithRoute:v11];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v6 != v8);

  v12 = v21;
LABEL_14:
  if (qword_100124038 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000046F4(v13, qword_1001289B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    sub_100008BA0(0, &qword_1001256A0);
    v18 = Array.description.getter();
    v20 = sub_10000607C(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Made items for audio output menu: %s", v16, 0xCu);
    sub_100005964(v17);
  }

  return v12;
}

void *sub_1000BD238(void *a1)
{
  sub_100008BA0(0, &qword_100126428);
  v3 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = a1;
  v6 = v1;
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 setState:{objc_msgSend(v5, "isCurrentlyPicked", 0, 0, 0, sub_1000BE744, v4)}];
  return v7;
}

void sub_1000BD350(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_100124038 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_1001289B0);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v6 name];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000607C(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "User has selected audio output: %s", v9, 0xCu);
    sub_100005964(v10);
  }

  v16 = [a3 callCenter];
  v17 = [v16 routeController];

  [v17 pickRoute:v6];
}

void sub_1000BD704()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong callHistoryController], v1, v2))
  {
    [v2 deleteAllRecentCalls];
    if (qword_100124038 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000046F4(v3, qword_1001289B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Completed removeAllRecents from Phone app", v6, 2u);
    }
  }

  else
  {
    if (qword_100124038 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000046F4(v7, qword_1001289B0);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "removeAllRecents failed for Phone because we couldn't get callHistoryController", v9, 2u);
    }
  }
}

void (*sub_1000BDA38(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000BE860;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000BDAB8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1000BDB38;
  }

  __break(1u);
  return result;
}

void (*sub_1000BDB40(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000BDBC0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BDBC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_100052C6C(0xD000000000000012, 0x80000001000DEBA0), (v4 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_100005908(*(v2 + 56) + 32 * v3, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  if (v7 == 0xD000000000000015 && 0x80000001000DEBC0 == v8)
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000BDD30(void *a1)
{
  v9 = sub_1000BBFF8;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000BC000;
  v8 = &unk_10010E5E0;
  v2 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v2];
  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = sub_1000BBFFC;
  v10 = 0;
  v5 = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_1000BC000;
  v8 = &unk_10010E608;
  v4 = _Block_copy(&v5);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuFind fromChildrenBlock:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_1000BDEDC(void *a1, void *a2)
{
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000BE74C;
    *(v5 + 24) = v4;
    v10[4] = sub_1000BE754;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000BC000;
    v10[3] = &unk_10010E5B8;
    v6 = _Block_copy(v10);
    v7 = a2;

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuMinimizeAndZoom fromChildrenBlock:v6];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    return [a1 removeMenuForIdentifier:UIMenuBringAllToFront];
  }

  return result;
}

void sub_1000BE0A0()
{
  if (qword_100124038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000046F4(v0, qword_1001289B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "New FaceTime menu action triggered from iPad", v3, 2u);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_1001240D8 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:static NSNotificationName.newFaceTimeMenuAction object:0];
}

void sub_1000BE204()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 currentAppIsPhoneApp])
  {
    v25[0] = v3;
    if (qword_100124038 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000046F4(v10, qword_1001289B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Started removeAllRecents from Phone app", v13, 2u);
    }

    sub_100008BA0(0, &qword_1001244C0);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000BE73C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A6C0;
    aBlock[3] = &unk_10010E518;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25[1] = _swiftEmptyArrayStorage;
    sub_10000A5BC();
    sub_1000525C4(&qword_1001244D0);
    sub_10000A614();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (v25[0][1].isa)(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (qword_100124038 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000046F4(v17, qword_1001289B0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Started removeAllRecents from FT app", v20, 2u);
    }

    v21 = [objc_opt_self() defaultCenter];
    if (qword_1001240D0 != -1)
    {
      swift_once();
    }

    [v21 postNotificationName:static NSNotificationName.deleteAllRecents object:0];

    v25[0] = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25[0], v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v25[0], v22, "Finished removeAllRecents from FT app", v23, 2u);
    }

    v24 = v25[0];
  }
}

uint64_t sub_1000BE77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100126448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE7EC(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100126448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000BE970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrientationMonitorKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_1000BE9CC()
{
  result = String._bridgeToObjectiveC()();
  qword_100128A78 = result;
  return result;
}

void sub_1000BEA04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000525C4(&qword_100126528);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_100052C6C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1000BEBE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000525C4(&qword_100126508);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_1000BFDD4();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100064228(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100064228(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100064228(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000BEEA4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1000BEF40();

  return v0 & 1;
}

uint64_t sub_1000BEF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000BF02C(a3);
}

uint64_t sub_1000BF02C(uint64_t result)
{
  *(v1 + 24) = result;
  if ((*(v1 + 40) & 1) == 0 && (result - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    *(v1 + 32) = result;
  }

  return result;
}

uint64_t sub_1000BF068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

uint64_t sub_1000BF118()
{
  if (*(v0 + 40) == 1)
  {
    return *(v0 + *(*v0 + 168));
  }

  else
  {
    return *(v0 + 32);
  }
}

uint64_t sub_1000BF14C(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 32);

  return v2;
}

uint64_t sub_1000BF1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + 32) = a3;
}

void sub_1000BF280(char a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  sub_100006820(v2);
}

uint64_t sub_1000BF2AC(uint64_t result)
{
  *(v1 + *(*v1 + 168)) = result;
  v2 = *(v1 + *(*v1 + 168));
  if ((v2 - 1) <= 3)
  {
    v1[4] = v2;
  }

  return result;
}

unint64_t sub_1000BF2F0()
{
  sub_1000525C4(&qword_100124F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8290;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000001000DCF10;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000023;
  *(inited + 64) = 0x80000001000DCF30;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x80000001000DCF60;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  v1 = sub_1000BFCD0(inited);
  swift_setDeallocating();
  sub_1000525C4(&qword_100124F98);
  swift_arrayDestroy();
  return v1;
}

uint64_t *sub_1000BF424()
{
  v1 = *v0;
  v2 = qword_100126478;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 160));
  return v0;
}

uint64_t sub_1000BF538()
{
  sub_1000BF424();

  return swift_deallocClassInstance();
}

unint64_t sub_1000BF590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000525C4(&qword_100124450);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_100052C6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1000BF690(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100126520);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000525C4(&qword_100124448);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000B818(v9, v5, &qword_100126520);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100052C6C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CoalescedRecentItem();
      result = sub_10005B6A8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1000BF864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000525C4(&qword_100124430);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100052C6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1000BF978(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100126518);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000525C4(&qword_1001244F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000B818(v9, v5, &qword_100126518);
      result = sub_100052DB8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for RecentCall();
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

unint64_t sub_1000BFBD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000525C4(a2);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_1000BFCD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000525C4(&qword_100126500);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100052C6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1000BFDD4()
{
  result = qword_100124F90;
  if (!qword_100124F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124F90);
  }

  return result;
}

unint64_t sub_1000BFE20(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_100126510);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000525C4(&qword_100124408);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000B818(v9, v5, &qword_100126510);
      result = sub_100052E8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Handle();
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

uint64_t sub_1000C0008()
{
  v1 = OBJC_IVAR____TtC8FaceTime30SpringBoardOrientationObserver_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SpringBoardOrientationObserver.OrientationStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpringBoardOrientationObserver.OrientationStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000C0120(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C013C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t *sub_1000C016C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1000C0420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000525C4(&qword_100125498);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  sub_10008F46C(v1 + v9, v8);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10008F4DC(v8);
  sub_1000C05F0();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10008F544(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1000C05F0()
{
  v0 = sub_1000525C4(&qword_1001254A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UITableViewCell.defaultContentConfiguration()();
  static UIBackgroundConfiguration.listCell()();
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v9 = objc_opt_self();
  v10 = [objc_opt_self() effectWithStyle:8];
  v11 = [v9 _effectForBlurEffect:v10 vibrancyStyle:112];

  UIBackgroundConfiguration.visualEffect.setter();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UITableViewCell.backgroundConfiguration.setter();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x746E656365524850;
  v15._object = 0x80000001000DEF90;
  v15._countAndFlagsBits = 0xD000000000000025;
  v14.value._object = 0xE900000000000073;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v22);

  UIListContentConfiguration.text.setter();
  v17 = [v7 systemRedColor];
  v18 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v18(v21, 0);
  v19 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v19(v21, 0);
  return (*(v4 + 8))(v6, v3);
}

id sub_1000C0934()
{
  v1 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView;
  v2 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    v7 = [objc_opt_self() systemBlackColor];
    [v6 setTintColor:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1000C0A3C()
{
  v1 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView;
  v2 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
    v7 = [objc_opt_self() systemRedColor];
    [v6 setTintColor:v7];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1000C0B48(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000525C4(&qword_100125498);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = &selRef_systemWhiteColor;
  if (a3 != 2)
  {
    v16 = &selRef_systemBlackColor;
  }

  v17 = [v15 *v16];
  v45 = v11;
  v46 = v17;
  v44 = a2;
  if (a1 == 1)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v20 = "bleViewCell.swift";
    if (a2)
    {
      v20 = "ETIME_ALERT_BLOCK_UNKNOWN";
      v21 = 0xD00000000000002BLL;
    }

    else
    {
      v21 = 0xD000000000000029;
    }

    v48._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x746E656365524850;
    v23 = v20 | 0x8000000000000000;
    v22.value._object = 0xE900000000000073;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, v22, v19, v24, v48);

    sub_1000C0420(v14);
    UIListContentConfiguration.text.setter();
    v43 = *(v12 + 32);
    v43(v10, v14, v11);
    v42 = *(v12 + 56);
    v42(v10, 0, 1, v11);
    v25 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
    swift_beginAccess();
    sub_10008F544(v10, v4 + v25);
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
LABEL_15:
      v34 = [objc_opt_self() systemRedColor];
      goto LABEL_16;
    }
  }

  else
  {
    if (a1)
    {
      v47[0] = a1;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    type metadata accessor for BundleClass();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:v26];
    v28 = "ETIME_ALERT_UNBLOCK_UNKNOWN";
    if (a2)
    {
      v28 = "ETIME_ALERT_BLOCK_ALL";
      v29 = 0xD000000000000027;
    }

    else
    {
      v29 = 0xD000000000000025;
    }

    v49._object = 0xE000000000000000;
    v30.value._countAndFlagsBits = 0x746E656365524850;
    v31 = v28 | 0x8000000000000000;
    v30.value._object = 0xE900000000000073;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v49._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v29, v30, v27, v32, v49);

    sub_1000C0420(v14);
    UIListContentConfiguration.text.setter();
    v43 = *(v12 + 32);
    v43(v10, v14, v11);
    v42 = *(v12 + 56);
    v42(v10, 0, 1, v11);
    v25 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
    swift_beginAccess();
    sub_10008F544(v10, v4 + v25);
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v33 = v46;
LABEL_16:
  sub_1000C0420(v14);
  v35 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v35(v47, 0);
  v36 = v45;
  v43(v10, v14, v45);
  v42(v10, 0, 1, v36);
  swift_beginAccess();
  sub_10008F544(v10, v4 + v25);
  swift_endAccess();
  v37 = v46;
  if (v44)
  {
    v38 = sub_1000C0934();
    v39 = v37;
  }

  else
  {
    v38 = sub_1000C0A3C();
    v39 = [objc_opt_self() systemRedColor];
  }

  v40 = v39;
  [v38 setTintColor:v39];

  [v4 setAccessoryView:v38];
  v47[3] = v36;
  v47[4] = &protocol witness table for UIListContentConfiguration;
  v41 = sub_10005BEA4(v47);
  sub_1000C0420(v41);
  UITableViewCell.contentConfiguration.setter();
}

uint64_t type metadata accessor for BlockTableViewCell()
{
  result = qword_100126638;
  if (!qword_100126638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C12A0()
{
  sub_10008F31C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1000C133C()
{
  ObjectType = swift_getObjectType();

  v2 = OBJC_IVAR___PHBlockTableViewCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR___PHBlockTableViewCell____lazy_storage___unblockImageView] = 0;
  *&v0[OBJC_IVAR___PHBlockTableViewCell____lazy_storage___blockImageView] = 0;
  v4 = String._bridgeToObjectiveC()();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", 0, v4);

  v10[3] = v3;
  v10[4] = &protocol witness table for UIListContentConfiguration;
  v6 = sub_10005BEA4(v10);
  v7 = v5;
  sub_1000C0420(v6);
  UITableViewCell.contentConfiguration.setter();
  v8 = sub_1000C0A3C();
  [v7 setAccessoryView:v8];

  return v7;
}

unint64_t sub_1000C1494()
{
  result = qword_100126648;
  if (!qword_100126648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126648);
  }

  return result;
}

uint64_t sub_1000C14E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1000C1594(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000525C4(&qword_100124C30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D6C60;
  sub_100008BA0(0, &qword_100126740);
  *(v6 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  v7 = sub_10004E018(a1, v6);

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_12;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_12:

    return;
  }

  v8 = [a1 validRemoteParticipantHandles];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  sub_100008BA0(0, &qword_1001243D0);
  sub_10000A844();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v10 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (*(v10 + 16) < 1)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  sub_100053208(v10);
  v11 = objc_allocWithZone(PHContactsTableViewController);
  sub_100008BA0(0, &qword_1001243E0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v11 initWithContactArray:isa contactHandles:v13];

  [v14 setEdgesForExtendedLayout:0];
  v15 = v14;
  v16 = [v15 tableView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v18 clearColor];
  [v17 setBackgroundColor:v19];

  v20 = [v15 tableView];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = [v18 systemGrayColor];
  [v20 setSeparatorColor:v21];

  if (a2)
  {
    v23[4] = a2;
    v23[5] = a3;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1000C1934;
    v23[3] = &unk_10010E7C0;
    v22 = _Block_copy(v23);
  }

  else
  {
    v22 = 0;
  }

  [v15 setCustomInfoButtonAction:v22];
  _Block_release(v22);
}

void sub_1000C1934(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(a2, v14, a4, a5, a6, a7);
}

void sub_1000C19E8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for ReportSpamManager.IDSServiceType();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000525C4(&qword_100124C30);
  v8 = swift_allocObject();
  v69 = xmmword_1000D6C60;
  *(v8 + 16) = xmmword_1000D6C60;
  sub_100008BA0(0, &qword_100126740);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = &selRef_contentSize;
  *(v8 + 32) = [ObjCClassFromMetadata descriptorForRequiredKeys];
  v66 = a1;
  v11 = sub_10004E018(a1, v8);

  if (v11 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < 1)
  {
LABEL_21:

    return;
  }

  while (1)
  {
    v62 = v12;
    v13 = [v66 validRemoteParticipantHandles];
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v13;
    v15 = sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    v60 = v15;
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_20;
      }
    }

    else if (*(v16 + 16) < 1)
    {
LABEL_20:

      goto LABEL_21;
    }

    v59 = v6;
    v17 = swift_allocObject();
    *(v17 + 16) = v69;
    *(v17 + 32) = [ObjCClassFromMetadata v10[42]];
    v18 = v66;
    v6 = sub_10004EF44(v66, v17);

    v19 = [v18 initiator];
    v10 = (v6 >> 62);
    v61 = v11;
    if (!v19)
    {
      break;
    }

    v57 = a2;
    v58 = a3;
    v20 = v19;
    v21 = [v19 value];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v69 = v22;

    v56 = (v6 >> 62);
    v68 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v10)
    {
      a2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    ObjCClassFromMetadata = 0;
    v11 = v6 & 0xC000000000000001;
    while (1)
    {
      if (a2 == v23)
      {

        v29 = 0;
LABEL_25:
        a3 = v58;
        a2 = v57;
        v31 = v64;
        v30 = v65;
        v10 = v56;
        goto LABEL_26;
      }

      if (v11)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v68 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(v6 + 8 * v23 + 32);
      }

      v28 = v27;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      a3 = v6;
      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v24 = [v28 handles];
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock = v67;
      v71 = v69;
      __chkstk_darwin(v26);
      *(&v55 - 2) = &aBlock;
      v10 = sub_1000C14E8(sub_1000C3D2C, (&v55 - 4), v25);

      ++v23;
      v6 = a3;
      if (v10)
      {

        v29 = 1;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12 < 1)
    {
      goto LABEL_21;
    }
  }

  v29 = 0;
  v31 = v64;
  v30 = v65;
LABEL_26:
  type metadata accessor for ReportSpamManager();
  (*(v30 + 104))(v31, enum case for ReportSpamManager.IDSServiceType.facetimeCall(_:), v59);
  v32 = ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)();
  if (v10)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v33 == v62;
  v35 = v33 > 0;
  v36 = type metadata accessor for ContactsReportAndBlockTableViewModel();
  v37 = objc_allocWithZone(v36);
  v37[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll] = v34;
  v37[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator] = v29;
  v37[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown] = v35;
  v38 = v66;
  *&v37[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall] = v66;
  *&v37[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer] = v32;
  v76.receiver = v37;
  v76.super_class = v36;

  v39 = v38;
  v40 = objc_msgSendSuper2(&v76, "init");
  sub_100053208(v63);
  v41 = objc_allocWithZone(PHContactsAndBlockTableViewController);
  sub_100008BA0(0, &qword_1001243E0);
  v42 = v40;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v44 = Array._bridgeToObjectiveC()().super.isa;
  v45 = Array._bridgeToObjectiveC()().super.isa;

  v46 = [v41 initWithContactArray:isa unknownContacts:v44 contactHandles:v45 tableViewModel:v42];

  [v46 setEdgesForExtendedLayout:0];
  v47 = v46;
  v48 = [v47 tableView];
  if (!v48)
  {
    __break(1u);
    goto LABEL_41;
  }

  v49 = v48;
  v50 = objc_opt_self();
  v51 = [v50 clearColor];
  [v49 setBackgroundColor:v51];

  v52 = [v47 tableView];
  if (!v52)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v53 = [v50 systemGrayColor];
  [v52 setSeparatorColor:v53];

  if (a2)
  {
    v74 = a2;
    v75 = a3;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1000C1934;
    v73 = &unk_10010E798;
    v54 = _Block_copy(&aBlock);
  }

  else
  {
    v54 = 0;
  }

  [v47 setCustomInfoButtonAction:v54];
  _Block_release(v54);
}

id sub_1000C21F8(void *a1)
{
  v3 = sub_1000525C4(&unk_100126340);
  __chkstk_darwin(v3 - 8);
  v5 = v40 - v4;
  v6 = *(v1 + 16);
  sub_1000525C4(&qword_100124C30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D6C60;
  sub_100008BA0(0, &qword_100126740);
  *(v7 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  v8 = sub_10004DE98(a1, v7);

  if (!v8)
  {
    v8 = [objc_allocWithZone(CNContact) init];
  }

  v9 = [v8 hasBeenPersisted];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [v10 viewControllerForContact:v8];
    [v11 setShouldShowLinkedContacts:1];
  }

  else
  {
    v11 = [v10 viewControllerForUnknownContact:v8];
  }

  v12 = [a1 validRemoteParticipantHandles];
  if (v12)
  {
    v13 = v12;
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (_swiftEmptyArrayStorage >> 62 && (v12 = _CocoaArrayWrapper.endIndex.getter()) != 0)
  {
    sub_100098F24(_swiftEmptyArrayStorage);
    v14 = v12;
  }

  else
  {
    v14 = &_swiftEmptySetSingleton;
  }

  v15 = sub_1000C3458(v12, v14);

  if (v15)
  {
    v16 = [v15 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = String.count.getter();

    if (v17 >= 1)
    {
      v18 = v11;
      [v18 setActions:{objc_msgSend(v18, "actions") | 0x80}];
      [v18 setContactStore:*(v6 + 32)];

      [v18 setRecentCall:a1];
      goto LABEL_18;
    }
  }

  v19 = v11;
  [v19 setAllowsActions:0];
  [v19 setAllowsEditing:0];
  v20 = [a1 callerIdIsBlocked];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v39 = 0xE000000000000000;
  if (v20)
  {
    v23 = 0x454C4C41435F4F4ELL;
    v24 = 0xEC00000044495F52;
  }

  else
  {
    v23 = 0x5F4E574F4E4B4E55;
    v24 = 0xEE0052454C4C4143;
  }

  v25.value._countAndFlagsBits = 0x746E656365524850;
  v25.value._object = 0xE900000000000073;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, v25, v22, v26, *(&v39 - 1));

  v15 = String._bridgeToObjectiveC()();

  [v19 setAlternateName:v15];

LABEL_18:
  v28 = objc_allocWithZone(MPRecentsContactHeaderViewController);
  v29 = v11;
  v30 = [v28 init];
  [v30 setRecentCall:a1];
  [v29 setContactHeaderViewController:v30];

  v31 = [a1 imageURL];
  if (v31)
  {
    v32 = v31;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 56))(v5, 0, 1, v33);
    sub_10000B880(v5, &unk_100126340);
    [v29 setUsesBrandedCallHeaderFormat:1];
  }

  else
  {
    v34 = type metadata accessor for URL();
    (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
    sub_10000B880(v5, &unk_100126340);
  }

  if ([objc_opt_self() headerViewWithFrame:a1 recentCall:{0.0, 0.0, 0.0, 0.0}])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_10000B880(v43, &qword_1001255A8);
    goto LABEL_28;
  }

  sub_100008BA0(0, &qword_100126750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  v35 = v40[1];
LABEL_29:
  [v29 setContactHeaderView:v35];

  [v29 setContactHeaderViewController:0];
  v36 = [a1 handleType];
  if (v36 == 2 || (v37 = 0, v36 == 3))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  [v29 setPrimaryPropertyKey:v37];

  return v29;
}

uint64_t sub_1000C28DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecentsCallItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = sub_1000525C4(&qword_100124358);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = sub_1000C306C();
  if (!v17)
  {
    if (qword_100124040 != -1)
    {
      swift_once();
    }

    v53 = qword_1001289C8;
    sub_1000525C4(&unk_100125F70);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000D6C50;
    v23 = *(v5 + 16);
    v23(v16, a1, v4);
    (*(v5 + 56))(v16, 0, 1, v4);
    sub_1000C3CB0(v16, v14);
    if ((*(v5 + 48))(v14, 1, v4) == 1)
    {
      sub_10000B880(v14, &qword_100124358);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      (*(v5 + 32))(v10, v14, v4);
      v23(v8, v10, v4);
      v25 = String.init<A>(reflecting:)();
      v24 = v26;
      (*(v5 + 8))(v10, v4);
    }

    sub_10000B880(v16, &qword_100124358);
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100099C8C();
    *(v22 + 32) = v25;
    *(v22 + 40) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v18 = v17;
  sub_1000525C4(&qword_100124C30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D6C60;
  sub_100008BA0(0, &qword_100126740);
  *(v19 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  v54 = v19;
  v20 = [v18 type];
  if (v20 == 1)
  {
    v21 = &CNContactSocialProfilesKey;
  }

  else if (v20 == 2)
  {
    v21 = &CNContactPhoneNumbersKey;
  }

  else
  {
    if (v20 != 3)
    {
      goto LABEL_17;
    }

    v21 = &CNContactEmailAddressesKey;
  }

  v28 = *v21;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_17:
  v29 = [objc_opt_self() sharedInstance];
  v30 = [v29 contactStore];

  sub_1000525C4(&unk_100126000);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000D6C50;
  v32 = [v18 value];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1000525C4(&unk_100124BB0);
  v37 = Array._bridgeToObjectiveC()().super.isa;
  v38 = [v30 contactsByContactHandleForContactHandles:isa keyDescriptors:v37];

  sub_1000525C4(&qword_1001243F0);
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100048358(v39);
  v41 = v40;
  v43 = v42;

  if (!v41)
  {
LABEL_26:
    sub_100008BA0(0, &qword_100126748);
    v47 = v18;
    v46 = CNMutableContact.init(handle:)();
    goto LABEL_27;
  }

  if (!(v43 >> 62))
  {
    result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_20:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v43 + 32);
LABEL_23:
    v46 = v45;

LABEL_27:
    v48 = [v46 hasBeenPersisted];
    v49 = objc_opt_self();
    if (v48)
    {
      v27 = [v49 viewControllerForContact:v46];
      [v27 setShouldShowLinkedContacts:1];
    }

    else
    {
      v27 = [v49 viewControllerForUnknownContact:v46];
    }

    [v27 setContactHeaderViewController:0];
    v50 = [v27 actions];

    [v27 setActions:v50 | 0x80];
    [v27 setContactStore:*(*(v2 + 16) + 32)];
    v51 = [v18 type];
    if (v51 == 2 || (v52 = 0, v51 == 3))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = String._bridgeToObjectiveC()();
    }

    [v27 setPrimaryPropertyKey:v52];

    return v27;
  }

  __break(1u);
  return result;
}

id sub_1000C306C()
{
  v0 = type metadata accessor for RecentsCallItemType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecentCallRecentItemMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RecentsCallItem.hasVideoMessage.getter() & 1) != 0 || (RecentsCallItem.hasAudioMessage.getter())
  {
    RecentsCallItem.type.getter();
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 != enum case for RecentsCallItemType.recent(_:) && v8 != enum case for RecentsCallItemType.ongoing(_:) && v8 != enum case for RecentsCallItemType.link(_:) && (v8 == enum case for RecentsCallItemType.videoMessage(_:) || v8 == enum case for RecentsCallItemType.audioMessage(_:)))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v12 = RecentCallRecentItemMetadata.messageIndicatorViewModel.getter();
      v13 = [v12 fromHandle];

      (*(v5 + 8))(v7, v4);
      return v13;
    }

    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

uint64_t sub_1000C32BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C32FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100041EE8();
  if (!v6)
  {
    return sub_1000C28DC(a1);
  }

  v7 = v6;
  RecentsCallItem.title.getter();
  sub_1000C3844(v7, a2, a3);
  v9 = v8;

  return v9;
}

id sub_1000C338C(uint64_t a1)
{
  v1 = [objc_opt_self() viewControllerForContact:a1];

  return v1;
}

id sub_1000C33DC(uint64_t a1)
{
  v1 = [objc_opt_self() viewControllerForUnknownContact:a1];

  return v1;
}

unint64_t sub_1000C3458(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v5 = sub_1000C3580(v9);
      v6 = _HashTable.startBucket.getter();
      v8 = *(a2 + 36);
      goto LABEL_8;
    }

    return 0;
  }

  if (!__CocoaSet.count.getter())
  {
    return 0;
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v5 = sub_1000C3580(result);
    v6 = __CocoaSet.startIndex.getter();
    v8 = v7;
LABEL_8:
    v10 = v3 != 0;
    v11 = v6;
    v12 = sub_1000C360C(v6, v8, v10, v5, a2);
    v14 = v13;
    v16 = v15;
    sub_10005BE98(v11, v8, v10);
    sub_100098CF8(v12, v14, v16 & 1, a2);
    v18 = v17;
    sub_10005BE98(v12, v14, v16 & 1);
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000C3580(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C360C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_28;
  }

  v24 = result;
  v25 = a2;
  v26 = a3 & 1;
  if (!a4)
  {
    v22 = result;
    sub_1000C3D20(result, a2, a3 & 1);
    return v22;
  }

  v7 = a5 & 0xC000000000000001;
  result = sub_1000C3D20(result, a2, a3 & 1);
  v8 = 0;
  v9 = a4 - 1;
  while (1)
  {
    if (v7)
    {
      if (v26 != 1)
      {
        goto LABEL_29;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000525C4(&qword_100126758);
      v10 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v10(v23, 0);
      goto LABEL_5;
    }

    if (v26)
    {
      goto LABEL_30;
    }

    result = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = 1 << *(a5 + 32);
    if (v24 >= v12)
    {
      break;
    }

    v13 = v24 >> 6;
    v14 = *(a5 + 56 + 8 * (v24 >> 6));
    if (((v14 >> v24) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(a5 + 36) != v25)
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v24 & 0x3F));
    if (v15)
    {
      v12 = __clz(__rbit64(v15)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v13 << 6;
      v17 = v13 + 1;
      v18 = (a5 + 64 + 8 * v13);
      while (v17 < (v12 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10005BE98(v24, v25, 0);
          v12 = __clz(__rbit64(v19)) + v16;
          goto LABEL_22;
        }
      }

      result = sub_10005BE98(v24, v25, 0);
    }

LABEL_22:
    v21 = *(a5 + 36);
    v24 = v12;
    v25 = v21;
    v26 = 0;
LABEL_5:
    if (v8++ == v9)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1000C3844(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 remoteParticipantHandles];
  if (v6)
  {
    v7 = v6;
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v8 + 16);
    }

    if (v9 < 2)
    {

      sub_1000C21F8(a1);
    }

    else
    {
      v27 = [a1 callStatus];
      sub_1000525C4(&qword_100124C30);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000D6C60;
      sub_100008BA0(0, &qword_100126740);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *(v15 + 32) = [ObjCClassFromMetadata descriptorForRequiredKeys];
      v17 = sub_10004E018(a1, v15);

      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 >= 1)
      {
        v19 = [a1 validRemoteParticipantHandles];
        if (v19)
        {
          v20 = v19;
          v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = (v21 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v21 + 16);

          if (v22 >= 1)
          {
            v23 = kCHCallStatusIncoming & v27;
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_1000D6C60;
            *(v24 + 32) = [ObjCClassFromMetadata descriptorForRequiredKeys];
            v25 = sub_10004EF44(a1, v24);

            if (v23)
            {
              if (v25 >> 62)
              {
                v26 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v26)
              {

                sub_1000C19E8(a1, a2, a3);
                return;
              }
            }

            else
            {
            }

            sub_1000C1594(a1, a2, a3);
          }
        }
      }
    }
  }

  else
  {
    if (qword_100124040 != -1)
    {
      swift_once();
    }

    sub_1000525C4(&unk_100125F70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000D6C50;
    sub_100008BA0(0, &qword_100125A00);
    v11 = a1;
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100099C8C();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1000C3CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100124358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C3D20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000C3D2C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000C3D8C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrientationMonitorLockedStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OrientationMonitorLockedStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C3F6C()
{
  result = qword_100126810;
  if (!qword_100126810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126810);
  }

  return result;
}

void sub_1000C3FFC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneViewController.m" lineNumber:107 description:@"View must be loaded before you call _saveOffsetDefaultForKey:withScrollView:"];
}

void sub_1000C4070(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneViewController.m" lineNumber:114 description:@"View must be loaded before you call _loadOffsetDefaultForKey:withScrollView:"];
}

void sub_1000C410C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error launching InCallService: %@", &v4, 0xCu);
}

void sub_1000C41A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not initiate a voicemail call due to an invalid dial request (%@).", &v2, 0xCu);
}

void sub_1000C421C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not initiate a voicemail call due to a nil URL from the dial request (%@).", &v2, 0xCu);
}

void sub_1000C430C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type of scene: %@", &v2, 0xCu);
}

void sub_1000C4450(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not enable data usage. error: %@", &v2, 0xCu);
}

void sub_1000C4548(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a dial request for the recent call (%@).", &v3, 0xCu);
}

void sub_1000C45C4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error initiating dial request %@: %@", &v4, 0x16u);
}

void sub_1000C4678(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch unified contact for identifier: %{sensitive}@", &v2, 0xCu);
}

void sub_1000C46F0()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Boolean PHSBSGetScreenLockStatus(Boolean *)"];
  [v0 handleFailureInFunction:v1 file:@"PHLocalVideoViewController.m" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1000C47AC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PHLocalVideoViewController.m" lineNumber:48 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1000C482C(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 localizedName];
  v7 = [a1 supportedHandleTypes];
  v8 = 134218498;
  v9 = a2;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not create a dial request due to an invalid handle type (%zd). For call provider %@, the supported handle types are (%@).", &v8, 0x20u);
}

void sub_1000C48FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not retrieve a call provider for the specified identifier %@.", &v2, 0xCu);
}

void sub_1000C4A30(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not authenticate: %@", &v2, 0xCu);
}

void sub_1000C4C70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}

void sub_1000C4CE8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to parse message UUID from URL: %@", &v2, 0xCu);
}

void sub_1000C4D60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to parse message uniqueID from URL: %@", &v2, 0xCu);
}

void sub_1000C4DEC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneRootViewController.m" lineNumber:689 description:@"Requested tab bar slide animation when not supported"];
}

void sub_1000C4E60(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneRootViewController.m" lineNumber:757 description:@"Requested tab bar slide animation when not supported"];
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t type metadata accessor for Handle()
{
  return type metadata accessor for Handle();
}

{
  return type metadata accessor for Handle();
}

Swift::UInt_optional __swiftcall _UnsafeBitSet.Iterator.next()()
{
  v0 = _UnsafeBitSet.Iterator.next()();
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}