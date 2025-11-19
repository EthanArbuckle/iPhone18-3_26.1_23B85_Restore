void *sub_100059250(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100052448(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000592F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_1000593F8(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

uint64_t sub_100059378(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_100059494(a1, (v9 + 16));
    return v9;
  }

  return result;
}

uint64_t sub_1000594E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = type metadata accessor for Handle();
  result = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_10005B5FC(&qword_100124390, &type metadata accessor for Handle);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          _HashTable.BucketIterator.advance()();
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1000596FC(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        v7 = *(v9 + 8 * v5);
        result = NSObject._rawHashValue(seed:)(v6);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100059808(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t), unint64_t *a7, uint64_t a8, void (*a9)(void *, uint64_t, unint64_t))
{
  v14 = a2 >> 62;
  if (a2 >> 62)
  {
    v24 = a3;
    v25 = a4;
    _CocoaArrayWrapper.endIndex.getter();
    a4 = v25;
    a3 = v24;
  }

  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = static _HashTable.scale(forCapacity:)();
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 4)
  {
    if (v14)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        v20 = sub_10005A1F0(a2, a9, a7);
        goto LABEL_21;
      }

      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= 2)
      {
        v20 = sub_10005997C((a2 & 0xFFFFFFFFFFFFFF8) + 32, v19, a9, a7);
LABEL_21:
        v23 = v20;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v19;
    return result;
  }

  v21 = _HashTable.init(scale:reservedScale:)();
  sub_100059E50(&v26, a2, (v21 + 16), v21 + 32, a6, a7);
  result = v21;
  v23 = v26;
LABEL_22:
  *a1 = v23;
  return result;
}

uint64_t sub_10005997C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, unint64_t), unint64_t *a4)
{
  v11 = sub_100059A90(_swiftEmptyArrayStorage, a3);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (!a2)
  {
    v8 = 0;
LABEL_9:

    return v8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 8 * v8);
      if (sub_100059B5C(v9, v11, a4))
      {
        break;
      }

      ++v8;
      v10 = v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();

      if (a2 == v8)
      {
        v8 = a2;
        goto LABEL_9;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_100059A90(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100052448(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL sub_100059B5C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    sub_100008BA0(0, a3);
    v8 = *v5++;
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();
  }

  while ((v10 & 1) == 0);
  return v6 != 0;
}

Swift::Int sub_100059BF0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5, unint64_t *a6)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    v10 = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      sub_100008BA0(0, a6);
      do
      {
        v12 = *(a2 + 8 * v10);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v10 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v10;
  }

  return result;
}

Swift::Int sub_100059D28(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    v7 = _HashTable.BucketIterator.currentValue.getter();
    if ((v8 & 1) == 0)
    {
      type metadata accessor for MessageID(0);
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_100059E50(void *a1, int64_t a2, Swift::Int *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t), unint64_t *a6)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v7 = sub_10005B70C(a2, a5);
  }

  else
  {
    v7 = sub_100059EC8((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4, a6);
  }

  *a1 = v8;
  return v7 & 1;
}

Swift::Int sub_100059EC8(Swift::Int result, uint64_t a2, Swift::Int *a3, uint64_t a4, unint64_t *a5)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v5 = a3;
    v6 = result;
    for (i = 0; ; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v21 = i + 1;
      v8 = *v5;
      v9 = *(v6 + 8 * i);
      result = NSObject._rawHashValue(seed:)(v8);
      if (__OFSUB__(1 << *v5, 1))
      {
        goto LABEL_16;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();

      v10 = _HashTable.BucketIterator.currentValue.getter();
      if ((v11 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = _HashTable.BucketIterator.currentValue.setter();
      v5 = a3;
      if (v21 == a2)
      {
        return 1;
      }
    }

    v12 = v10;
    sub_100008BA0(0, a5);
    v13 = v12;
    while (1)
    {
      v14 = *(v6 + 8 * i);
      v15 = *(v6 + 8 * v13);
      v16 = v14;
      LOBYTE(v14) = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
      v13 = _HashTable.BucketIterator.currentValue.getter();
      if (v17)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void *sub_10005A134(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1000530A0(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_10005A1F0(int64_t a1, void (*a2)(void *, uint64_t, unint64_t), unint64_t *a3)
{
  v5 = sub_10005A134(a1);
  v6 = v5[2];

  return sub_10005997C((v5 + 4), v6, a2, a3);
}

uint64_t sub_10005A270(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for GroupedHistoryItem();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10005A52C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (__chkstk_darwin)();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10005A7D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005A92C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_10005A9F4(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100008BA0(0, &qword_1001243D0);
  sub_10000A844();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100008BA0(0, &qword_1001243D0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_10005AC10(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10005AC94(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10005AD28(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100094818(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_10005AE70(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = type metadata accessor for Handle();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecentCall();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v54 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v39 - v10;
  sub_1000525C4(&qword_100124508);
  result = static _DictionaryStorage.copy(original:)();
  v12 = result;
  v13 = 0;
  v14 = *(a1 + 64);
  v41 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v40 = (v15 + 63) >> 6;
  v45 = result;
  v46 = v7 + 16;
  v48 = v7;
  v53 = v7 + 32;
  v55 = v3 + 16;
  v18 = (v3 + 8);
  v43 = a1;
  v44 = result + 64;
  v42 = v6;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v13 << 6);
      v23 = *(a1 + 48);
      v25 = v47;
      v24 = v48;
      v26 = *(v48 + 16);
      v51 = *(v48 + 72) * v22;
      v26(v47, v23 + v51, v6);
      v27 = *(a1 + 56);
      v52 = v22;
      v28 = *(v27 + 8 * v22);
      v50 = *(v24 + 32);
      v50(v54, v25, v6);
      v29 = *(v28 + 16);
      if (v29)
      {
        break;
      }

LABEL_21:
      v35 = v52;
      v12 = v45;
      *(v44 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      result = (v50)(v12[6] + v51, v54, v6);
      *(v12[7] + v35) = v29;
      v36 = v12[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_27;
      }

      v12[2] = v38;
      v17 = v49;
      if (!v49)
      {
        goto LABEL_5;
      }
    }

    v30 = v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

    v31 = 0;
    while (v31 < *(v28 + 16))
    {
      (*(v3 + 16))(v5, v30 + *(v3 + 72) * v31, v57);
      if (*(v56 + 16) && (v32 = sub_100052E8C(v5), (v33 & 1) != 0))
      {
        v34 = *(*(v56 + 56) + v32);
        result = (*v18)(v5, v57);
        if (v34)
        {
          LOBYTE(v29) = 1;
LABEL_20:

          v6 = v42;
          a1 = v43;
          goto LABEL_21;
        }
      }

      else
      {
        result = (*v18)(v5, v57);
      }

      if (v29 == ++v31)
      {
        LOBYTE(v29) = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v40)
      {
        return v12;
      }

      v21 = *(v41 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v49 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10005B26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v21 = type metadata accessor for Person();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &_swiftEmptyArrayStorage;
  v23 = &_swiftEmptyArrayStorage;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v17[2] = v4 + 16;
  v12 = (v4 + 8);
  v20 = a1;

  v13 = 0;
  while (v10)
  {
    v14 = v21;
LABEL_11:
    (*(v4 + 16))(v6, *(v20 + 48) + *(v4 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v14);
    sub_100047CF0(v18, v19, &v22);
    v10 &= v10 - 1;
    (*v12)(v6, v14);
    if (v22)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17[1] = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v23;
    }
  }

  v14 = v21;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return v7;
    }

    v10 = *(a1 + 56 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);

  (*v12)(v6, v14);

  __break(1u);
  return result;
}

void *sub_10005B4C4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_1000525C4(&unk_1001243C0);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_10005B5A0(uint64_t a1)
{
  v2 = type metadata accessor for CoalescedRecentItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005B5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005B644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoalescedRecentItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoalescedRecentItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B70C(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_10005A134(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_10005B788(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v5 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v6 = v4;
  v7 = a2;
  v30 = a3 >> 1;
  while (v7 < v5)
  {
    v8 = *(a1 + 8 * v7);
    v10 = *v6;
    v9 = v6[1];
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    if (*v6)
    {
      v13 = v8;

      sub_100059BF0(v13, v11, v12, (v10 + 16), v10 + 32, a4);
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    else
    {
      v16 = v8;
      if (v12)
      {
        v17 = v16;
        sub_100008BA0(0, a4);
        while (1)
        {
          v18 = *v11;
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_15:
    v20 = v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v21 = v6[1];
    v22 = *(v21 + 16);
    if (!v10)
    {
      if (v22 <= 0xF)
      {
      }

      else
      {
        v23 = 0;
LABEL_22:
        v24 = static _HashTable.scale(forCapacity:)();
        if (v23 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = sub_100059378(v21, v25, 0, v23);

        *v6 = v26;
      }

LABEL_5:
      v5 = v30;
      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() < v22)
    {
      v23 = *(v10 + 24) & 0x3FLL;
      if (v22 > 0xF || v23)
      {
        goto LABEL_22;
      }

      *v6 = 0;
      goto LABEL_5;
    }

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v28 = *v6;
    if (isUniquelyReferenced_native)
    {
      v5 = v30;
    }

    else
    {
      v5 = v30;
      if (!v28)
      {
        goto LABEL_35;
      }

      v29 = _HashTable.copy()();

      *v6 = v29;
      v28 = v29;
    }

    if (!v28)
    {
      goto LABEL_34;
    }

    _HashTable.UnsafeHandle.subscript.setter();

LABEL_6:
    if (++v7 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10005BA5C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_10005BACC@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100059EC8(a1, a2, *(v4 + 16), *(v4 + 24), a3);
  if (!v5)
  {
    *a4 = result & 1;
    *(a4 + 8) = v8;
  }

  return result;
}

uint64_t sub_10005BB24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_1000426B4(a1, v4, v5, v6);
}

uint64_t sub_10005BBD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005C9E4;

  return sub_100042974(v2, v3);
}

uint64_t sub_10005BC70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_1000439A0(a1, v4);
}

uint64_t sub_10005BD28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BD68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005C9E4;

  return sub_100043B80(v2, v3);
}

uint64_t sub_10005BE00(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_10005BE50(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005BA5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005BE98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *sub_10005BEA4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10005BF34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_10004FB18(a1, v4, v5, v6);
}

uint64_t sub_10005BFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10003EE70(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10003F6D8(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10003FDB4(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10004065C(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C2E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100040E7C(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C3A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005C3F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_1000414A8(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C4B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_10004FE4C(a1, v4, v5, v6);
}

uint64_t sub_10005C564()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005C5A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042A10;

  return sub_1000426B4(a1, v4, v5, v6);
}

uint64_t sub_10005C678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042A10;

  return sub_100049A3C(a1, v4, v5, v7, v6);
}

uint64_t sub_10005C784(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005C7A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10005CCD0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_100008BA0(0, &qword_1001243E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  sub_10005E1E0(v6, a4);
}

id sub_10005CD54(void *a1)
{
  v2 = v1;
  sub_100008BA0(0, qword_100124820);
  v4 = a1;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "calling from contactsViewModel %@", v7, 0xCu);
    sub_10005E058(v8);
  }

  v10 = *(v2 + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer);

  return [v10 reportSpamWithCall:v4];
}

uint64_t sub_10005CF58()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  v2 = [*(v0 + OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall) initiator];
  if (!v2 || (v3 = v2, v4 = [v2 formattedPhoneNumber], v3, !v4))
  {
    v5 = [*(v0 + v1) initiator];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v4 = [v5 value];
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_10005D05C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005D104()
{
  v1 = [v0 phoneNumbers];
  sub_1000525C4(&qword_100124810);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v9 = [v6 value];
        v10 = [v9 digits];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = TUHomeCountryCode();
        if (v11)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = String._bridgeToObjectiveC()();

        if (v14)
        {
          v16 = String._bridgeToObjectiveC()();
        }

        else
        {
          v16 = 0;
        }

        v17 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v15 countryCode:v16];

        if (v17)
        {
          result = [objc_opt_self() sharedPrivacyManager];
          if (!result)
          {
LABEL_42:
            __break(1u);
            return result;
          }

          v5 = result;
          [result setBlockIncomingCommunication:0 forPhoneNumber:v17];
        }

        ++v4;
      }

      while (v8 != i);
    }

    swift_bridgeObjectRelease_n();
    v19 = [v27 emailAddresses];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      break;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_23:
    v2 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(v20 + 8 * v2 + 32);
      }

      v23 = v22;
      v24 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
        goto LABEL_42;
      }

      v25 = result;
      v26 = [v23 value];
      [v25 setBlockIncomingCommunication:0 forEmailAddress:v26];

      ++v2;
      if (v24 == v21)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_38:
}

id sub_10005D4F0()
{
  if (qword_100124030 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_1000046F4(v1, qword_100128998);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v37 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = [v2 phoneNumbers];
      sub_1000525C4(&qword_100124810);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000525C4(&qword_100124818);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10000607C(v7, v8, &v38);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = [v2 emailAddresses];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String.init<A>(reflecting:)();
      v13 = sub_10000607C(v11, v12, &v38);

      *(v5 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v0 = [v2 phoneNumbers];
    sub_1000525C4(&qword_100124810);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      break;
    }

LABEL_24:
    swift_bridgeObjectRelease_n();
    v29 = [v37 emailAddresses];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v0 = _CocoaArrayWrapper.endIndex.getter();
      if (!v0)
      {
      }
    }

    else
    {
      v0 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v32 = *(v30 + 8 * i + 32);
      }

      v33 = v32;
      v34 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
        goto LABEL_44;
      }

      v35 = result;
      v36 = [v33 value];
      [v35 setBlockIncomingCommunication:1 forEmailAddress:v36];

      if (v34 == v0)
      {
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v0 = [v18 value];
    v21 = [v0 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = TUHomeCountryCode();
    if (v22)
    {
      v0 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = String._bridgeToObjectiveC()();

    if (v24)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v25 countryCode:v26];

    if (v27)
    {
      break;
    }

LABEL_9:
    ++v16;
    if (v20 == v15)
    {
      goto LABEL_24;
    }
  }

  result = [objc_opt_self() sharedPrivacyManager];
  if (result)
  {
    v17 = result;
    [result setBlockIncomingCommunication:1 forPhoneNumber:v27];

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
  return result;
}

void -[CNContact mp_block](CNContact *self, SEL a2)
{
  v2 = self;
  sub_10005D4F0();
}

id sub_10005DAC4()
{
  v1 = v0;
  v2 = [v0 phoneNumbers];
  v3 = sub_1000525C4(&qword_100124810);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v5)
  {
    v29 = 1;
    goto LABEL_24;
  }

  v27 = v3;
  v28 = v1;
  v3 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v6 = *(v4 + 8 * v3 + 32);
    }

    v7 = v6;
    v1 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_40;
    }

    v8 = [v6 value];
    v9 = [v8 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = TUHomeCountryCode();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = String._bridgeToObjectiveC()();

    if (v13)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v14 countryCode:v15];

    if (v16)
    {
      break;
    }

LABEL_5:
    ++v3;
    if (v1 == v5)
    {
      v29 = 1;
LABEL_23:
      v3 = v27;
      v1 = v28;
LABEL_24:
      swift_bridgeObjectRelease_n();
      v20 = [v1 emailAddresses];
      v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v1 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = 0;
      while (v21 != v4)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v22 = *(v1 + 8 * v4 + 32);
        }

        v3 = v22;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        result = [objc_opt_self() sharedPrivacyManager];
        if (!result)
        {
          __break(1u);
          goto LABEL_45;
        }

        v23 = result;
        v24 = [v3 value];
        v25 = [v23 isIncomingCommunicationBlockedForEmailAddress:v24];

        ++v4;
        if ((v25 & 1) == 0)
        {
          v26 = 0;
LABEL_37:

          return v26;
        }
      }

      v26 = v29;
      goto LABEL_37;
    }
  }

  result = [objc_opt_self() sharedPrivacyManager];
  if (result)
  {
    v18 = result;
    v19 = [result isIncomingCommunicationBlockedForPhoneNumber:v16];

    if ((v19 & 1) == 0)
    {
      v29 = 0;
      goto LABEL_23;
    }

    goto LABEL_5;
  }

LABEL_45:
  __break(1u);
  return result;
}

id sub_10005DED8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10005DF58()
{
  if ([v0 type] != 2)
  {
    return 0;
  }

  result = [v0 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = PNCopyBestGuessCountryCodeForNumber();

  if (!v3)
  {
    return 0;
  }

  result = [v0 value];
  if (result)
  {
    v4 = result;
    v5 = CFPhoneNumberCreate();

    if (v5)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v7 = String;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10005E058(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_1001250A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005E0C0(unint64_t a1, objc_class *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 mp_block];

      ++v5;
      if (v8 == i)
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
  type metadata accessor for SafetyCheckManager();
  v9 = static SafetyCheckManager.shared.getter();
  v10 = sub_1000650EC(a1);
  v13.value.super.super.isa = a2;
  SafetyCheckManager.present(for:on:)(v10, v13);
}

void sub_10005E1E0(unint64_t a1, SEL *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 *a2];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_10005E2B4()
{
  result = type metadata accessor for Mutex();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void *sub_10005E3B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10005E4CC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + *((swift_isaMask & *v4) + 0xB0), v8);
  v12 = v4 + *((swift_isaMask & *v4) + 0x80);
  os_unfair_lock_lock(v12);
  sub_10005E64C(v12 + 1, v4, v11, a1, a2, a3);
  os_unfair_lock_unlock(v12);
  return (*(v9 + 8))(v11, v8);
}

void sub_10005E64C(void **a1, uint64_t *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a4;
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
LABEL_5:
    swift_unknownObjectRetain_n();
    v8(v11);
    swift_unknownObjectRelease_n();
    return;
  }

  v11 = (*(a2 + *((swift_isaMask & *a2) + 0x78)))();
  *a1 = v11;
  v15 = a2 + *((swift_isaMask & *a2) + 0x90);
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v15);
  sub_10005E79C(v15 + 1, v11, a2, a3, a6);
  if (!v7)
  {
    os_unfair_lock_unlock(v15);
    v8 = a4;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v15);
  __break(1u);
}

_OWORD *sub_10005E79C(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a2;
  v24 = a1;
  v7 = *a3;
  v8 = swift_isaMask;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v12 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = *((v8 & v7) + 0x50);
  *(v13 + 3) = *((v8 & v7) + 0x58);
  *(v13 + 4) = v25;
  v14 = v8 & v7;
  v15 = v24;
  *(v13 + 5) = *(v14 + 96);
  *(v13 + 6) = a3;
  (*(v10 + 32))(&v13[v12], &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v30 = sub_10006419C;
  v31 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v28 = sub_10005FE18;
  ObjectType = &unk_10010BEF0;
  v16 = _Block_copy(&aBlock);
  v17 = a3;

  v18 = [v26 listenForChangesWithHandler:v16];
  ObjectType = swift_getObjectType();
  *&aBlock = v18;
  v19 = *v15;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_100051E18(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100051E18((v20 > 1), v21 + 1, 1, v19);
  }

  swift_unknownObjectRelease();
  *(v19 + 2) = v21 + 1;
  result = sub_100064228(&aBlock, &v19[32 * v21 + 32]);
  *v15 = v19;
  return result;
}

uint64_t sub_10005EA5C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v30 = a4;
  v32 = *a3;
  v31 = swift_isaMask;
  v6 = sub_1000525C4(&qword_100124348);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  v9 = type metadata accessor for Logger();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, v30, v9);
  sub_100064238(a2, v8);
  v18 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v29 + 80) + v19 + 8) & ~*(v29 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v23 = v31;
  v22 = v32;
  *(v21 + 4) = *((v31 & v32) + 0x50);
  *(v21 + 5) = *((v23 & v22) + 0x58);
  *(v21 + 6) = v33;
  *(v21 + 7) = *((v23 & v22) + 0x60);
  *(v21 + 8) = v17;
  (*(v10 + 32))(&v21[v18], v12, v27);
  v24 = v34;
  *&v21[v19] = v34;
  sub_1000642A8(v28, &v21[v20]);
  v25 = v24;
  sub_10009A64C(0, 0, v15, &unk_1000D7718, v21);
}

uint64_t sub_10005EDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_1000525C4(&qword_100124348);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005EE54, 0, 0);
}

uint64_t sub_10005EE54()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    sub_100064238(v0[8], v0[11]);
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      sub_100064238(v7, v8);
      v13 = v9;
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_10000B880(v7, &qword_100124348);
      v17 = sub_10000607C(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      sub_10000B880(v11, &qword_1001250A0);

      sub_100005964(v12);
    }

    else
    {

      sub_10000B880(v7, &qword_100124348);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_10005F11C;
    v22 = v0[7];
    v21 = v0[8];

    return sub_10005F288(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10005F11C()
{

  return _swift_task_switch(sub_10005F218, 0, 0);
}

uint64_t sub_10005F218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005F288(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_isaMask & *v2;
  v4 = type metadata accessor for CancellationError();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *(sub_1000525C4(&qword_100124348) - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10005F3F0, 0, 0);
}

uint64_t sub_10005F3F0()
{
  v39 = v0;
  v1 = *(v0 + 24);
  *(v0 + 104) = *((swift_isaMask & **(v0 + 40)) + 0xB0);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating voicemail account Cache with updates: %@", v6, 0xCu);
    sub_10000B880(v7, &qword_1001250A0);
  }

  v36 = *(v0 + 96);
  v37 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);
  v35 = v12;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_task_alloc();
  v15 = v10[10];
  v14[2] = v15;
  v16 = v10[11];
  v14[3] = v16;
  v17 = v10[12];
  v14[4] = v17;
  v14[5] = v13;
  v14[6] = v12;
  sub_10005E4CC(sub_1000644C8, v14, &type metadata for () + 8);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100064238(v11, v36);
  v19 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v35;
  sub_1000642A8(v36, v20 + v19);
  v21 = v35;

  dispatch thunk of TaskQueue.async(_:)();

  v22 = v9 + *((swift_isaMask & *v9) + 0x98);
  os_unfair_lock_lock(v22);
  sub_100063638(v22 + 1, v9, &v38);
  os_unfair_lock_unlock(v22);
  v23 = v38;
  *(v0 + 112) = v38;
  if (v23)
  {

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    v25 = sub_1000525C4(&qword_100124538);
    *(v0 + 128) = v25;
    *v24 = v0;
    v24[1] = sub_10005F918;

    return Task.value.getter(v25, v23, &type metadata for () + 8, v25, &protocol self-conformance witness table for Error);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Finished Updating voicemail account Cache with updates: %@", v30, 0xCu);
      sub_10000B880(v31, &qword_1001250A0);
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10005F918()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_10005FB9C;
  }

  else
  {
    v2 = sub_10005FA34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005FA34()
{

  v1 = *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    sub_10000B880(v6, &qword_1001250A0);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10005FB9C()
{
  v0[2] = v0[17];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      sub_10000B880(v10, &qword_1001250A0);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t sub_10005FE18(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000525C4(&qword_100124348);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a2;
  v9();

  return sub_10000B880(v8, &qword_100124348);
}

uint64_t sub_10005FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_10006006C, 0, 0);
}

uint64_t sub_10006006C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000647C4(&qword_1001248E0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000647C4(&qword_1001248E8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000601FC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000601FC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000603B8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000603B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060424@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v7 = swift_unknownObjectRetain();
    a2(v7);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(*(a3 - 8) + 56);

  return v9(a4, v8, 1, a3);
}

uint64_t sub_1000604D0@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = swift_isaMask;
  v10 = *((swift_isaMask & *v4) + 0x50);
  v11 = *((swift_isaMask & *v4) + 0x58);
  v12 = *((swift_isaMask & *v4) + 0x60);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = v12;
  v13[6] = a1;
  v13[7] = a2;
  v14 = (v4 + *((v9 & v8) + 0x70));

  os_unfair_lock_lock(v14);
  sub_100060424(&v14[2]._os_unfair_lock_opaque, a1, a3, a4);
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  os_unfair_lock_unlock(v14);
}

uint64_t sub_100060614(void *a1)
{
  v1 = a1;
  v2 = sub_100060648();

  return v2 & 1;
}

uint64_t sub_100060648()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_1000649E4;
  v6[6] = v5;
  sub_1000604D0(sub_100064A30, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10005E4CC(sub_100064A4C, 0, &type metadata for Bool);
  return v8;
}

uint64_t sub_1000607CC(void *a1)
{
  v1 = a1;
  v2 = sub_100060800();

  return v2 & 1;
}

uint64_t sub_100060800()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064A38;
  v6[6] = v5;
  sub_1000604D0(sub_100064A30, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10005E4CC(sub_100060968, 0, &type metadata for Bool);
  return v8;
}

id sub_100060968@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isOnline];
  *a2 = result;
  return result;
}

uint64_t sub_100060998(void *a1)
{
  v1 = a1;
  v2 = sub_1000609CC();

  return v2 & 1;
}

uint64_t sub_1000609CC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064A38;
  v6[6] = v5;
  sub_1000604D0(sub_100064A30, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

id sub_100060B34(void *a1)
{
  v1 = a1;
  v2 = sub_100060B68();

  return v2;
}

id sub_100060B68()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064818;
  v6[6] = v5;
  sub_1000604D0(sub_100064990, v6, &type metadata for UInt, &v8);

  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) storageUsage];
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100060CD4()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100060D24(void *a1)
{
  v1 = a1;
  v2 = sub_100060D58();

  return v2;
}

uint64_t sub_100060D58()
{
  v0 = sub_100060DB4();
  if (v0 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

unint64_t sub_100060DB4()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064818;
  v6[6] = v5;
  v7 = sub_1000525C4(&qword_1001248F0);
  sub_1000604D0(sub_100064824, v6, v7, &v11);

  result = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_4;
  }

  v9 = v11;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  result = v9;
  if (!v10)
  {
LABEL_4:

LABEL_5:
    sub_10005E4CC(sub_100064A48, 0, v7);
    return v11;
  }

  return result;
}

Class sub_100060F74(void *a1)
{
  v1 = a1;
  sub_100060DB4();

  type metadata accessor for VoicemailAccount();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

void sub_100060FD8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_10006103C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_10006109C(void *a1)
{
  v1 = a1;
  v2 = sub_1000610D0();

  return v2 & 1;
}

uint64_t sub_1000610D0()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064A38;
  v6[6] = v5;
  sub_1000604D0(sub_100064950, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

uint64_t sub_100061238()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

id sub_100061288(void *a1)
{
  v1 = a1;
  v2 = sub_1000612CC();

  return v2;
}

id sub_1000612CC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100064818;
  v6[6] = v5;
  v7 = sub_1000525C4(&qword_1001248F8);
  sub_1000604D0(sub_100064914, v6, v7, &v9);

  result = v9;
  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) transcriptionProgress];
  }

  return result;
}

uint64_t sub_10006147C(uint64_t a1, uint64_t (*a2)(id *), void *a3, void (*a4)(void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100060DB4();
  v28 = a1;
  v13 = sub_10005E3B8(a2, v27, v12);

  if (v13)
  {
    v14 = v13[*a3];
  }

  else
  {
    if (qword_100124028 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000046F4(v15, qword_100128980);
    (*(v9 + 16))(v11, a1, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v18 = 136315138;
      sub_1000647C4(&qword_100124560, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = a4;
      v21 = v20;
      (*(v9 + 8))(v11, v8);
      v22 = sub_10000607C(v19, v21, &v29);
      a4 = v26;

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "No Account found for %s in cache.", v18, 0xCu);
      sub_100005964(v25);
    }

    else
    {

      v23 = (*(v9 + 8))(v11, v8);
    }

    __chkstk_darwin(v23);
    *(&v25 - 2) = a1;
    sub_10005E4CC(a4, (&v25 - 4), &type metadata for Bool);
    return v29;
  }

  return v14;
}

uint64_t sub_1000617F8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), void *a5, void (*a6)(void *))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a1;
  LOBYTE(a6) = sub_10006147C(v13, a4, a5, a6);

  (*(v11 + 8))(v13, v10);
  return a6 & 1;
}

uint64_t sub_100061908(uint64_t a1)
{
  v2[2] = a1;
  sub_10005E4CC(sub_1000647AC, v2, &type metadata for Bool);
  return v3;
}

uint64_t sub_100061954(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100061908(v5);

  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t sub_100061A44(uint64_t a1)
{
  v2[2] = a1;
  sub_10005E4CC(sub_100064748, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_100061AA8(uint64_t a1)
{
  v2[2] = a1;
  sub_10005E4CC(sub_10006473C, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_100061B0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_100061C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return sub_10005E4CC(sub_10006472C, v6, &type metadata for () + 8);
}

void sub_100061C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100061D44;
  v12[3] = &unk_10010C080;
  v11 = _Block_copy(v12);

  [a1 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

void sub_100061D44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100061DBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a1;
  sub_100061C04(v12, v14, v10, sub_100064A34, v15);

  return (*(v8 + 8))(v10, v7);
}

double sub_100061F1C(uint64_t a1)
{
  v2[2] = a1;
  sub_10005E4CC(sub_1000646CC, v2, &type metadata for Double);
  return *&v2[3];
}

double sub_100061F68(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100061F1C(v5);

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_100062060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_10005E4CC(sub_1000646C0, v4, &type metadata for () + 8);
}

void sub_1000620AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100062184;
  v9[3] = &unk_10010C030;
  v8 = _Block_copy(v9);

  [a1 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

void sub_100062184(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100062210(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  sub_100062060(v9, sub_1000646B8, v11);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100062344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_10005E4CC(sub_100064190, v5, &type metadata for () + 8);
}

void sub_100062390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100061D44;
  v11[3] = &unk_10010BFE0;
  v10 = _Block_copy(v11);

  [a1 setGreeting:a2 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_100062470(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a1;
  sub_100062344(v14, v11, sub_100064188, v13);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000625C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_1000647C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  sub_10009A94C(0, 0, v7, &unk_1000D76E0, v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v14 = AnyCancellable.init(_:)();

  return v14;
}

uint64_t sub_100062790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000647C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006285C, v7, v6);
}

uint64_t sub_10006285C()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + *((swift_isaMask & *v0[4]) + 0x88));

  sub_1000525C4(&qword_1001248C0);
  sub_100064124();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100062964(char *a1, uint64_t a2)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000647C4(&qword_100125090, type metadata accessor for VoicemailActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(sub_1000525C4(&qword_1001248D0) + 48);

  v4(v5, &a1[v6]);
}

id sub_100062A80(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1;
  v8 = sub_1000625C0(sub_100064010, v6);

  _Block_release(aBlock);

  return v8;
}

uint64_t sub_100062B70(char *a1)
{
  swift_unknownObjectRelease();
  type metadata accessor for Optional();
  type metadata accessor for _Cell();
  sub_1000B6484();

  sub_10000B880(&a1[*((swift_isaMask & *a1) + 0x80) + 8], &qword_1001248D8);

  sub_10000B880(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &qword_100124900);
  sub_10000B880(&a1[*((swift_isaMask & *a1) + 0x98) + 8], &qword_100124908);

  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  sub_1000B6484();
  v2 = *((swift_isaMask & *a1) + 0xB0);
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

void *sub_100062E04(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = (result + *((swift_isaMask & *result) + 0x70));
    os_unfair_lock_lock(v7);
    v8 = *&v7[2]._os_unfair_lock_opaque;
    type metadata accessor for Optional();
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      v9 = qword_100124070;
      swift_unknownObjectRetain();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_100128A18;
      v11 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(qword_100128A18 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v12 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v12 = [v8 anyAccountSubscribed];
      }

      v45 = v12;
      if (qword_100124060 != -1)
      {
        swift_once();
      }

      v21 = qword_100128A08;
      v22 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_100128A08 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v23 = [a1 isOnline];
      }

      else
      {
        v23 = [v8 online];
      }

      v44 = v23;
      if ((*(v21 + v22) & v11) != 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = v8;
      }

      v43 = [v24 isMessageWaiting];
      if (qword_100124080 != -1)
      {
        swift_once();
      }

      if ((*(qword_100128A28 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v8;
      }

      v42 = [v25 storageUsage];
      if (qword_100124088 != -1)
      {
        swift_once();
      }

      v26 = qword_100128A30;
      v27 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_100128A30 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v28 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v28 = [v8 transcriptionEnabled];
      }

      v29 = v28;
      if ((*(v26 + v27) & v11) != 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = v8;
      }

      v31 = [v30 transcriptionProgress];
      sub_1000525C4(&qword_100124C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D75E0;
      if (qword_100124090 != -1)
      {
        swift_once();
      }

      v33 = qword_100128A38;
      *(inited + 32) = qword_100128A38;
      *(inited + 40) = v10;
      v34 = v33;
      v35 = v10;
      v36 = sub_1000B0278(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = sub_1000AE5A4(v36);

      if (v37)
      {
        v38 = v8;
      }

      else
      {
        v38 = a1;
      }

      v39 = [v38 accounts];
      type metadata accessor for VoicemailAccount();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v40 initWithAnyAccountSubscribed:v45 online:v44 isMessageWaiting:v43 storageUsage:v42 transcriptionEnabled:v29 transcriptionProgress:v31 accounts:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = [a1 isAnyAccountSubscribed];
      v14 = [a1 isOnline];
      v15 = [a1 isMessageWaiting];
      v16 = [a1 storageUsage];
      v17 = [a1 isTranscriptionEnabled];
      v18 = [a1 transcriptionProgress];
      v19 = [a1 accounts];
      v20 = [v46 initWithAnyAccountSubscribed:v13 online:v14 isMessageWaiting:v15 storageUsage:v16 transcriptionEnabled:v17 transcriptionProgress:v18 accounts:v19];
    }

    swift_unknownObjectRetain();
    os_unfair_lock_lock(v7);
    swift_unknownObjectRelease();
    *&v7[2]._os_unfair_lock_opaque = v20;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_100063370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_1000525C4(&qword_1001248D0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100063414, 0, 0);
}

uint64_t sub_100063414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *((swift_isaMask & *Strong) + 0x88);
    type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_1000647C4(&qword_100125090, type metadata accessor for VoicemailActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100063560, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100063588()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 48);
  *v1 = v4;
  sub_100064238(v3, v1 + v5);
  v6 = v4;
  PassthroughSubject.send(_:)();
  sub_10000B880(v1, &qword_1001248D0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100063638@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = swift_isaMask & *a2;
  v6 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (*a1)
  {
    sub_1000525C4(&qword_100124538);
    Task.cancel()();
  }

  static TaskPriority.low.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = *(v5 + 80);
  *(v11 + 48) = *(v5 + 96);
  *(v11 + 56) = v10;
  v12 = sub_100091AEC(0, 0, v8, &unk_1000D7750, v11);

  *a1 = v12;
  *a3 = v12;
  return result;
}

uint64_t sub_100063818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000638D8, 0, 0);
}

uint64_t sub_1000638D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    ContinuousClock.init()();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100063A08;

    return sub_10005FF6C(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100063A08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_100063C54;
  }

  else
  {
    v3 = sub_100063B70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063B70()
{
  v1 = v0[11];
  static Task<>.checkCancellation()();
  v2 = v0[9];
  if (!v1)
  {
    sub_100063CC0();
    v4 = (v2 + *((swift_isaMask & *v2) + 0x98));
    os_unfair_lock_lock(v4);

    *&v4[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v4);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100063C54()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100063CC0()
{
  v1 = (v0 + *((swift_isaMask & *v0) + 0xA8));
  os_unfair_lock_lock(v1);
  v2 = type metadata accessor for Mutex();
  sub_100063D60(v1 + *(v2 + 28), v0);

  os_unfair_lock_unlock(v1);
}

void sub_100063D60(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_isaMask;
  v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v5);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x60);
  v8 = *&v5[2]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  if (v2)
  {
    type metadata accessor for Optional();
    os_unfair_lock_unlock(v5);
    __break(1u);
  }

  else
  {
    type metadata accessor for Optional();
    os_unfair_lock_unlock(v5);
    if (v8)
    {
      v17 = v8;
      v9 = (*(v7 + 16))(&v17, v6, v7);
      v10 = Logger.logObject.getter();
      if (v9)
      {
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to update cache on Disk";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
        }
      }

      else
      {
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Updated cache on Disk";
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update cache on Disk because the cache was nil", v16, 2u);
    }
  }
}

uint64_t sub_100064018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100062790(a1, v4, v5, v7, v6);
}

void sub_1000640D8()
{
  type metadata accessor for AnyCancellable();

  Task.cancel()();
}

unint64_t sub_100064124()
{
  result = qword_1001248C8;
  if (!qword_1001248C8)
  {
    sub_10005BA5C(&qword_1001248C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001248C8);
  }

  return result;
}

uint64_t sub_10006419C(void *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v2 + 48);
  v8 = v2 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return sub_10005EA5C(a1, a2, v7, v8, v5);
}

_OWORD *sub_100064228(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100064238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100124348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000642A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100124348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064318(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000525C4(&qword_100124348) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100042A10;

  return sub_10005EDA0(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1000644D8()
{
  v2 = *(sub_1000525C4(&qword_100124348) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C9E4;

  return sub_100063370(v4, v5, v0 + v3);
}

uint64_t sub_1000645E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042A10;

  return sub_100063818(a1, v4, v5, v6);
}

void sub_1000646CC(void *a1@<X0>, void *a2@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a1 maximumGreetingDurationForAccountUUID:isa];
  v6 = v5;

  *a2 = v6;
}

void sub_100064754(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [a1 *a2];

  *a3 = v7;
}

uint64_t sub_1000647C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100064824@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

void sub_1000648B0(void *a1@<X0>, SEL *a2@<X1>, _BYTE *a3@<X8>)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  LOBYTE(a2) = [a1 *a2];

  *a3 = a2;
}

uint64_t sub_100064914@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_100064950@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100064990@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_100064A50(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);

    v3(a1);
  }

  return result;
}

uint64_t sub_100064AD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100064B20()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100064FF4();
  static DispatchQoS.userInteractive.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_100065040(&qword_100124AD8, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000525C4(&qword_100124AE0);
  sub_100065088();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1001288E0 = result;
  return result;
}

uint64_t sub_100064DB4()
{
  if (qword_100123FE0 != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

id sub_100064E64()
{
  if (qword_100123FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001288E0;
  qword_1001288E8 = qword_1001288E0;

  return v1;
}

id sub_100064EEC(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_100064F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailQueueManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100064FF4()
{
  result = qword_100124AD0;
  if (!qword_100124AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124AD0);
  }

  return result;
}

uint64_t sub_100065040(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100065088()
{
  result = qword_100124AE8;
  if (!qword_100124AE8)
  {
    sub_10005BA5C(&qword_100124AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124AE8);
  }

  return result;
}

void *sub_1000650EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_100066174();
          sub_1000525C4(&unk_100124BC0);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_100066174();
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000525C4(&unk_100124BC0);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

char *sub_1000652B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = &_swiftEmptyArrayStorage;
  result = sub_1000A8E70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000525C4(&unk_100124BB0);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000A8E70((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_100064228(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1000525C4(&unk_100124BB0);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1000A8E70((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_100064228(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1000654EC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for Features()) init];
  Features.showTranscriptWithoutConfidenceFiltering.getter();

  v3 = [*(v1 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [objc_allocWithZone(NSAttributedString) initWithString:v3];

  return v4;
}

id sub_1000659A0(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___MPVisualMessage_vmMessage];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

id sub_100065ED8(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, "init");
}

unint64_t sub_100066174()
{
  result = qword_1001243E0;
  if (!qword_1001243E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001243E0);
  }

  return result;
}

void sub_1000661CC(void *a1)
{
  v2 = v1;
  if (qword_100124050 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000046F4(v4, qword_1001289E8);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62 = v8;
    *v7 = 136315138;
    ObjectType = swift_getObjectType();
    v63 = a1;
    v10 = sub_1000A1720(&v63, ObjectType);
    v12 = sub_10000607C(v10, v11, &v62);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "showScreenTimeShield for %s", v7, 0xCu);
    sub_100005964(v8);
  }

  v13 = swift_getObjectType();
  v14 = [a1 bundleIdentifier];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v1 lockoutViewController];
  if (v16)
  {

    sub_1000669B8(0);
  }

  v17 = [a1 sanitizedHandles];
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *(v18 + 16);
  if (!v13)
  {

LABEL_15:
    v28 = [objc_opt_self() sharedInstance];
    v29 = [v28 contactStore];

    v30 = [a1 contactNamesByHandleWithContactsDataSource:v29];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [objc_opt_self() lockoutViewControllerWithBundleIdentifier:v15 contactsHandles:isa contactNameByHandle:v32];

    [v33 setViewControllerDelegate:v2];
    [v33 setOkButtonAction:1];
    v34 = v33;
    [v2 setLockoutViewController:v34];
    v35 = [v34 view];

    if (!v35)
    {
      sub_1000669B8(0);

      return;
    }

    [v35 setAlpha:0.0];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addChildViewController:v34];
    v36 = [v2 view];
    if (v36)
    {
      v37 = v36;
      [v36 addSubview:v35];

      sub_1000525C4(&qword_100124C30);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000D7A70;
      v39 = [v35 topAnchor];
      v40 = [v2 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 topAnchor];

        v43 = [v39 constraintEqualToAnchor:v42];
        *(v38 + 32) = v43;
        v44 = [v35 bottomAnchor];
        v45 = [v2 view];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 bottomAnchor];

          v48 = [v44 constraintEqualToAnchor:v47];
          *(v38 + 40) = v48;
          v49 = [v35 leadingAnchor];
          v50 = [v2 detailsViewController];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 view];

            if (v52)
            {
              v53 = [v52 trailingAnchor];

              v54 = [v49 constraintEqualToAnchor:v53];
              *(v38 + 48) = v54;
              v55 = [v35 trailingAnchor];
              v56 = [v2 view];
              if (v56)
              {
                v57 = v56;
                v58 = objc_opt_self();
                v59 = [v57 trailingAnchor];

                v60 = [v55 constraintEqualToAnchor:v59];
                *(v38 + 56) = v60;
                sub_1000672F8();
                v61 = Array._bridgeToObjectiveC()().super.isa;

                [v58 activateConstraints:v61];

                sub_100066B20(1, 1, 0, 0);
                return;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v19 = sub_1000522C4(*(v18 + 16), 0);
  v20 = sub_10005A7D4(&v62, v19 + 4, v13, v18);
  sub_10000AC64();
  if (v20 == v13)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_11:
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v62 = v24;
    *v23 = 136315138;
    v63 = a1;
    v25 = sub_1000A1720(&v63, v13);
    v27 = sub_10000607C(v25, v26, &v62);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Could not find bundle identifier for TUFilteredRequest %s", v23, 0xCu);
    sub_100005964(v24);
  }
}

id sub_1000669B8(char a1)
{
  result = [v1 lockoutViewController];
  if (result)
  {

    if (qword_100124050 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000046F4(v4, qword_1001289E8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "removeScreenTimeShield", v7, 2u);
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100066B20(0, a1 & 1, sub_100067360, v8);
  }

  return result;
}

void sub_100066B20(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  if (a2)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100067344;
    *(v11 + 24) = v9;
    v25 = sub_100067350;
    v26 = v11;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10000A6C0;
    v24 = &unk_10010C3E8;
    v12 = _Block_copy(&v21);

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v25 = sub_100067358;
    v26 = v13;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000671DC;
    v24 = &unk_10010C438;
    v14 = _Block_copy(&v21);
    sub_100004E30(a3);

    [v10 animateWithDuration:v12 animations:v14 completion:0.2];

    _Block_release(v14);
    _Block_release(v12);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v16 = Strong;

  v17 = [v16 lockoutViewController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (v19)
    {
      v20 = 0.0;
      if (a1)
      {
        v20 = 1.0;
      }

      [v19 setAlpha:v20];

LABEL_9:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100066EB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong lockoutViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 view];

      if (v4)
      {
        [v4 removeFromSuperview];

        v5 = [v1 lockoutViewController];
        if (v5)
        {
          v6 = v5;
          [v5 removeFromParentViewController];

          [v1 setLockoutViewController:0];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100066FAC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong lockoutViewController];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 view];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = 0.0;
  if (a2)
  {
    v8 = 1.0;
  }

  [v7 setAlpha:v8];
}

uint64_t sub_100067070(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_100067120(char a1, void (*a2)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if ((a1 & 1) != 0 && a2)
  {
    a2(isCurrentExecutor);
  }
}

uint64_t sub_1000671DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_1000672F8()
{
  result = qword_100124C38;
  if (!qword_100124C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124C38);
  }

  return result;
}

void *sub_100067370(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100052444(v3, 0);
  sub_100098908(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100067404()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_100124C40);
  v1 = sub_1000046F4(v0, qword_100124C40);
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v2 = sub_1000046F4(v0, qword_100128980);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000674DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = v4;
  swift_unknownObjectRetain();
  if (v6 && (v8 = sub_100052F60(v7), (v9 & 1) != 0))
  {
    v15 = *(*(v5 + 56) + 8 * v8);
    swift_unknownObjectRetain();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    sub_1000B9788(v15, v7, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();

    v11 = v14;
  }

  else
  {
    sub_1000525C4(&qword_100124C30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000D6C60;
    *(v12 + 32) = v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_1000B9788(v12, v7, v13);

    v11 = v16;
  }

  *a1 = v11;
}

void sub_1000676B8(uint64_t a1, void *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = sub_100059D28(a2, v7, v8, (v6 + 16));
    v8 = v10;
    v7 = v11;

    if (v8)
    {
LABEL_9:
      sub_10006B4BC(a2);
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_15:
      specialized ContiguousArray._endMutation()();
      return;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for MessageID(0);
  v9 = 0;
  while (1)
  {
    v12 = *(v7 + 8 * v9);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = v2[2];
  v14 = v2 + 2;
  v15 = v16;
  if (v9 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_10005C9F4(v15);
      *v14 = v15;
    }

    if (v9 < *(v15 + 16))
    {
      *(v15 + 8 * v9 + 32) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100067860(uint64_t a1, void **a2, uint64_t a3, void **a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = *a2;
  v14 = *a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = [v13 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v14 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v16) = static Date.> infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);
  return v16 & 1;
}

unint64_t sub_100067A38(unint64_t result, char a2)
{
  v3 = v2;
  v23 = result;
  if (result >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v23 & 0xC000000000000001;
      v27 = v23 + 32;
      v28 = v23 & 0xFFFFFFFFFFFFFF8;
      v25 = v23 & 0xC000000000000001;
      v26 = v4;
      while (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_27;
        }

LABEL_9:
        type metadata accessor for VoicemailActor();
        swift_initStaticObject();
        sub_10006B000();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v9 = [v7 identifier];
        swift_beginAccess();
        v11 = v3[2];
        v10 = v3[3];
        v12 = v10 + 32;
        v13 = *(v10 + 16);
        if (v11)
        {
          swift_unknownObjectRetain();

          v14 = sub_100059D28(v9, v12, v13, (v11 + 16));
          v16 = v15;

          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          swift_unknownObjectRetain();
          if (!v13)
          {
LABEL_4:
            sub_10006B4BC(v9);

            swift_unknownObjectRetain();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          type metadata accessor for MessageID(0);
          v14 = 0;
          while (1)
          {
            v17 = *(v12 + 8 * v14);
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              break;
            }

            if (v13 == ++v14)
            {
              v6 = v25;
              v4 = v26;
              goto LABEL_4;
            }
          }

          v6 = v25;
          v4 = v26;
        }

        v19 = v3[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[4] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_10005C9F4(v19);
          v3[4] = v19;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v14 >= *(v19 + 16))
        {
          goto LABEL_30;
        }

        *(v19 + 8 * v14 + 32) = v7;
        swift_unknownObjectRelease();
        specialized ContiguousArray._endMutation()();
LABEL_5:
        swift_endAccess();
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          goto LABEL_32;
        }
      }

      if (v5 >= *(v28 + 16))
      {
        goto LABEL_28;
      }

      v7 = *(v27 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

LABEL_32:
  if (a2)
  {
    swift_beginAccess();
    v21 = v3[4];
    v29 = sub_10006D8B8(v3[3], v21);
    sub_10006D524(&v29, sub_100067860);
    v22 = v29[2];
    if (v22 == *(v21 + 16))
    {
      sub_10006BE04((v29 + 4), v22, v3 + 2);

      return swift_endAccess();
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100067DC0()
{

  return swift_deallocClassInstance();
}

void sub_100067EC4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = a1;
  os_unfair_lock_unlock(v3);
  v4 = [objc_allocWithZone(NSUserDefaults) init];
  os_unfair_lock_lock(v3);
  v5 = *(v3 + 8);
  os_unfair_lock_unlock(v3);
  _StringGuts.grow(_:)(26);

  v6._object = 0x80000001000DC8C0;
  v6._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 setInteger:v5 forKey:v7];
}

uint64_t sub_100067FE4()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068078, v1, v0);
}

uint64_t sub_100068078()
{
  if (qword_100123FF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100124C40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "This must be overriden, its a misuse to use this directly without overriding this property", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

uint64_t sub_100068198()
{
  v1[10] = v0;
  sub_1000525C4(&qword_100124480);
  v1[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[12] = swift_initStaticObject();
  v1[13] = sub_10006B000();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_100068270, v3, v2);
}

uint64_t sub_100068270()
{
  v36 = v0;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000046F4(v1, qword_100128980);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v35);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s", v4, 0xCu);
    sub_100005964(v5);
  }

  v6 = v0[10];
  v7 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state;
  v8 = *(v6 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state);
  v0[17] = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;

      swift_beginAccess();
      v11 = *(v6 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);
          v35 = v8 & 0x3FFFFFFFFFFFFFFFLL;

          v14(&v35);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v6 + v10) = _swiftEmptyArrayStorage;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v35);
        _os_log_impl(&_mh_execute_header, v15, v16, "CachedVoicemailManager: %s returning voicemails", v17, 0xCu);
        sub_100005964(v18);
      }

      swift_beginAccess();
      v19 = v9[2];
      v20 = v9[3];
      v21 = v9[4];

      v22 = sub_10005313C(v19, v20, v21);

      v23 = v0[1];

      return v23(v22);
    }

    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v28;
    v33[4] = v32;
    v8 = sub_10009AC58(0, 0, v30, &unk_1000D7B60, v33);
    v0[19] = v8;
    *(v6 + v7) = v8;

    v34 = swift_task_alloc();
    v0[20] = v34;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v34 = v0;
    v34[1] = sub_100068B38;
    v27 = v0 + 9;
  }

  else
  {

    v25 = swift_task_alloc();
    v0[18] = v25;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v25 = v0;
    v25[1] = sub_1000687C0;
    v27 = v0 + 8;
  }

  return Task<>.value.getter(v27, v8, v26);
}

uint64_t sub_1000687C0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1000688E0, v3, v2);
}

uint64_t sub_1000688E0()
{
  v19 = v0;

  v1 = v0[8];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100005964(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_10005313C(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100068B38()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100068C58, v3, v2);
}

uint64_t sub_100068C58()
{
  v19 = v0;

  v1 = v0[9];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    sub_100005964(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = sub_10005313C(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_100068EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_100068F40, v6, v5);
}

uint64_t sub_100068F40()
{
  v16 = v0;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_1000046F4(v1, qword_100128980);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s inside of a task", v4, 0xCu);
    sub_100005964(v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v14 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_10006921C;

    return v14();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    v9 = swift_allocObject();
    sub_10006D5A8(_swiftEmptyArrayStorage);
    v9[2] = v10;
    v9[3] = v11;
    v9[4] = v12;
    **(v0 + 64) = v9;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10006921C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100069564;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100069344;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100069344()
{
  v17 = v0;
  v1 = *(v0 + 104);
  v2 = sub_10006DA78(*(v0 + 128), 1);
  *(v1 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state) = v2 | 0x4000000000000000;
  swift_retain_n();

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);

  v6 = sub_10005313C(v3, v4, v5);

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  sub_100067EC4(v7);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10000607C(0x73654D6863746566, 0xEF29287365676173, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning cache from a task", v12, 0xCu);
    sub_100005964(v13);
  }

  **(v0 + 64) = v2;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100069564()
{
  v1 = *(v0 + 104);
  type metadata accessor for CachedVoicemailManager.Cache();
  v2 = swift_allocObject();
  sub_10006D5A8(_swiftEmptyArrayStorage);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v8;
  **(v0 + 64) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100069794(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006982C, v4, v3);
}

uint64_t sub_10006982C()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1000698D0;

  return sub_100068198();
}

uint64_t sub_1000698D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v6 = *v0;

  sub_1000525C4(&qword_100124DB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100069A48(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_100069AE0, v4, v3);
}

uint64_t sub_100069AE0()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state);
  v0[13] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[9];
      v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      swift_beginAccess();
      v4 = v3[2];
      v5 = v3[3];
      v6 = v3[4];

      sub_10006EB80(v2, v4, v5, v6);
      v8 = v7;

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = v0[1];

    return v12(v9);
  }

  else
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    v11 = type metadata accessor for CachedVoicemailManager.Cache();
    *v10 = v0;
    v10[1] = sub_100069C88;

    return Task<>.value.getter(v0 + 8, v1, v11);
  }
}

uint64_t sub_100069C88()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100069DA8, v3, v2);
}

uint64_t sub_100069DA8()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_10006EB80(v2, v3, v4, v5);
  v7 = v6;

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10006A018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006A0B4, v5, v4);
}

uint64_t sub_10006A0B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10006A170;
  v6 = *(v0 + 16);

  return sub_100069A48(v6);
}

uint64_t sub_10006A170(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_10006A2D8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_100067A38(a2, 1);
}

uint64_t sub_10006A370(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state);
  if (!(v4 >> 62))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v17 = *(v1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_100052190(0, v17[2] + 1, 1, v17);
      *(v1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_100052190((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_10006E6A0;
    v21[5] = v15;
    *(v1 + v16) = v17;
    swift_endAccess();
    v14 = 1;
    v24 = 1;
    sub_10006DA24();
    swift_willThrowTypedImpl();
    return v14;
  }

  if (v4 >> 62 != 1)
  {
    v24 = 0;
    sub_10006DA24();
    swift_willThrowTypedImpl();
    return 0;
  }

  v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = _swiftEmptyArrayStorage;
  swift_retain_n();
  sub_10006C8AC(a1, v5, &v25);

  swift_beginAccess();
  v6 = v5[4];
  v23 = sub_10006D8B8(v5[3], v6);
  sub_10006D524(&v23, sub_100067860);
  if (!v2)
  {
    v7 = v23[2];
    if (v7 == *(v6 + 16))
    {
      sub_10006BE04((v23 + 4), v7, v5 + 2);

      swift_endAccess();
      v8 = v25;

      v10 = sub_100098F48(v9);

      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = __CocoaSet.count.getter();
        v10 = sub_1000953C4(v11, v12);
      }

      v13 = sub_10006BEDC(v8, v10);
      v14 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_12:

          v24 = v14;
          sub_10006DA24();
          swift_willThrowTypedImpl();

          return v14;
        }
      }

      else if (*(v13 + 16))
      {
        goto LABEL_12;
      }

      v14 = sub_100067370(v8);

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A67C(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = _swiftEmptyArrayStorage;

  sub_10006C8AC(a2, v3, &v8);

  swift_beginAccess();
  v4 = v3[4];
  v7 = sub_10006D8B8(v3[3], v4);
  sub_10006D524(&v7, sub_100067860);
  v5 = v7[2];
  if (v5 == *(v4 + 16))
  {
    sub_10006BE04((v7 + 4), v5, v3 + 2);

    swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10006A7D0(unint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {

      sub_10006A9D0((v4 & 0x3FFFFFFFFFFFFFFFLL), a1);
    }

    else
    {
      sub_10006DA24();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10006D9F0;
    *(v5 + 24) = v3;
    v6 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v7 = *(v1 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100052190(0, v7[2] + 1, 1, v7);
      *(v1 + v6) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_100052190((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_10006D9F8;
    v11[5] = v5;
    *(v1 + v6) = v7;
    swift_endAccess();
    v1 = 1;
    sub_10006DA24();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_10006A9D0(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = v2 & 0xC000000000000001;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v26 = v2 & 0xC000000000000001;
    v27 = i;
    while (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      type metadata accessor for VoicemailActor();
      swift_initStaticObject();
      sub_10006B000();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ObjectType = swift_getObjectType();
      v10 = [v7 identifier];
      swift_beginAccess();
      sub_1000676B8(v7, v10);
      v12 = v11;
      swift_endAccess();

      if (v12)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_100123FF0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000046F4(v13, qword_100124C40);
        swift_unknownObjectRetain();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v30 = v7;
          v31[0] = v17;
          *v16 = 136315138;
          v18 = sub_1000A1720(&v30, ObjectType);
          log = v14;
          v20 = a1;
          v21 = v2;
          v22 = sub_10000607C(v18, v19, v31);

          *(v16 + 4) = v22;
          v2 = v21;
          a1 = v20;
          v14 = log;
          _os_log_impl(&_mh_execute_header, log, v15, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v16, 0xCu);
          sub_100005964(v17);
          i = v27;

          v6 = v26;
        }

        swift_unknownObjectRelease();
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_22;
      }
    }

    if (v5 >= *(v29 + 16))
    {
      goto LABEL_20;
    }

    v7 = *(v2 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:
  swift_beginAccess();
  v23 = a1[4];
  v30 = sub_10006D8B8(a1[3], v23);
  sub_10006D524(&v30, sub_100067860);
  v24 = v30[2];
  if (v24 == *(v23 + 16))
  {
    sub_10006BE04((v30 + 4), v24, a1 + 2);

    return swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

id sub_10006AE00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10006AEE0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10006AF08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10006AF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10006AFC4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_10006B000()
{
  result = qword_100125090;
  if (!qword_100125090)
  {
    type metadata accessor for VoicemailActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125090);
  }

  return result;
}

uint64_t sub_10006B058(char *__dst, char *__src, char *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v62 = (v16 + 16 * v12);
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v59 = v9;
      v19 = v7;
      v20 = *v8;
      v21 = *(v8 + 1);
      v22 = v8;
      v23 = *v16;
      v24 = *(v16 + 8);
      v25 = v16;
      v67 = v20;
      v65 = v23;
      v66 = v21;
      v64 = v24;
      v26 = v20;
      swift_unknownObjectRetain();
      v27 = v23;
      swift_unknownObjectRetain();
      v28 = a5(&v67, &v66, &v65, &v64);
      if (v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v51 = &v62[-v25 + 15];
        if (&v62[-v25] >= 0)
        {
          v51 = &v62[-v25];
        }

        v49 = v59;
        if (v59 < v25 || v59 >= v25 + (v51 & 0xFFFFFFFFFFFFFFF0) || v59 != v25)
        {
          v52 = 16 * (v51 >> 4);
          v50 = v25;
          goto LABEL_57;
        }

        return 1;
      }

      v29 = v28;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v29)
      {
        break;
      }

      v17 = v25;
      v16 = v25 + 16;
      v8 = v22;
      v18 = v59;
      v7 = v19;
      if (v59 != v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v18 + 16;
      if (v16 >= v62)
      {
        goto LABEL_10;
      }
    }

    v30 = v22;
    v17 = v22;
    v8 = v22 + 16;
    v18 = v59;
    v7 = v19;
    v16 = v25;
    if (v59 == v30)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    v31 = a4;
    memmove(a4, __src, 16 * v15);
    a4 = v31;
  }

  v62 = (a4 + 16 * v15);
  v32 = v13 < 16;
  v16 = a4;
  if (v32 || v8 <= v9)
  {
LABEL_51:
    v53 = &v62[-v16 + 15];
    if (&v62[-v16] >= 0)
    {
      v53 = &v62[-v16];
    }

    if (v8 < v16 || v8 >= v16 + (v53 & 0xFFFFFFFFFFFFFFF0) || v8 != v16)
    {
      v52 = 16 * (v53 >> 4);
      v49 = v8;
      v50 = v16;
LABEL_57:
      memmove(v49, v50, v52);
      return 1;
    }

    return 1;
  }

  v33 = -a4;
  v57 = a4;
  v60 = v9;
  v55 = -a4;
LABEL_25:
  v63 = v6;
  v56 = v8 - 16;
  v34 = v62;
  v35 = &v62[v33];
  v36 = v7 - 16;
  v58 = v8;
  while (1)
  {
    v37 = v36;
    v38 = *(v34 - 2);
    v39 = *(v34 - 1);
    v34 -= 16;
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v67 = v38;
    v65 = v40;
    v66 = v39;
    v64 = v41;
    v42 = v38;
    swift_unknownObjectRetain();
    v43 = v40;
    swift_unknownObjectRetain();
    v44 = a5(&v67, &v66, &v65, &v64);
    if (v63)
    {
      break;
    }

    v45 = v44;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = v37;
    v46 = v37 + 16;
    if (v45)
    {
      if (v46 != v58)
      {
        *v37 = *v56;
      }

      v16 = v57;
      v6 = 0;
      if (v62 <= v57 || (v8 = v56, v33 = v55, v56 <= v60))
      {
        v8 = v56;
        goto LABEL_51;
      }

      goto LABEL_25;
    }

    v8 = v58;
    if (v46 != v62)
    {
      *v37 = *v34;
    }

    v35 -= 16;
    v36 = v37 - 16;
    v62 = v34;
    if (v34 <= v57)
    {
      v62 = v34;
      v16 = v57;
      goto LABEL_51;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v35 >= 0)
  {
    v47 = v35;
  }

  else
  {
    v47 = v35 + 15;
  }

  v48 = v47 >> 4;
  v50 = v57;
  v49 = v58;
  if (v58 < v57 || v58 >= &v57[v47 & 0xFFFFFFFFFFFFFFF0])
  {
    v52 = 16 * v48;
    goto LABEL_57;
  }

  if (v58 != v57)
  {
    memmove(v58, v57, 16 * v48);
  }

  return 1;
}

uint64_t sub_10006B4BC(void *a1)
{
  v2 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v4 = *(v1[1] + 16);
  if (*v1)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v4)
    {
      result = swift_isUniquelyReferenced_native();
      v5 = *v1;
      if ((result & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v6 = _HashTable.copy()();

        *v1 = v6;
        v5 = v6;
      }

      if (v5)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v4 < 0x10)
  {
    return result;
  }

  return sub_1000A8EF0();
}

void sub_10006B5F4(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_10006B754(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    sub_10006B754(a1);
    sub_1000A8EF0();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_10006B7E0(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10006B9C0(a1, a1 + 1, v4, (v9 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_10006B754(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10005C9F4(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

void sub_10006B7E0(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v19)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *a2;
      v12 = *(v10 + 8 * v8 + 32);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_24;
      }

      v15 = (v14 - 1) & v13;
      if (v6 >= v7)
      {
        if (v15 >= v7 && v6 >= v15)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v6 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v15 >= v7 || v6 >= v15)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void sub_10006B9C0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (a1)
        {
          v11 = 0;
          while (1)
          {
            v12 = *a4;
            v13 = *(v10 + 32 + 8 * v11);
            NSObject._rawHashValue(seed:)(v12);
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v14 = _HashTable.BucketIterator.currentValue.getter();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            _HashTable.BucketIterator.currentValue.setter();

            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = _HashTable.BucketIterator.currentValue.getter();
      if ((v22 & 1) != 0 || v21 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v20 = (v19 & (((v16 >> 6) - v5) >> 63)) + (v16 >> 6) - v5;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v23 = _HashTable.BucketIterator.currentValue.getter();
      if ((v24 & 1) == 0 && v23 >= v4)
      {
        if (__OFSUB__(v23, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      do
      {
        v25 = *a4;
        v26 = *(a3 + 32 + 8 * v4);
        NSObject._rawHashValue(seed:)(v25);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v27 = _HashTable.BucketIterator.currentValue.getter();
            if ((v28 & 1) == 0 && v27 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v9);
    }
  }
}

uint64_t sub_10006BE04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10006C5DC(a1, a2, sub_10006C894);
  v7 = v6;
  v8 = sub_1000592EC();
  v9 = sub_100059374(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  sub_10006C5DC(a1, a2, sub_10006C8A0);
  a3[2] = v10;
}

void *sub_10006BEDC(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = v2 + 7;
      while (1)
      {
        if (v50)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for MessageID(0);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        __chkstk_darwin(v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_1000A9660(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(v24[6] + 8 * v26);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_10006C3AC(v39, v42, v37, v8, v53);
      v2 = v40;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_10006C3AC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_1000A9660(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for MessageID(0);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10006C5DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (!a2)
  {
    v6 = _swiftEmptyArrayStorage;
    v11 = 0;
    goto LABEL_31;
  }

  if (a2 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[3];
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000525C4(&qword_100124C30);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 25;
    }

    v9 = (2 * (v8 >> 3)) | 1;
    v6[2] = a2;
    v6[3] = v9;
    if (v4)
    {
LABEL_6:
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
        if (v4)
        {
          goto LABEL_8;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a2 < 0)
  {
    goto LABEL_41;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_8:
  v11 = (v9 >> 1) - a2;
  v12 = a2 - 1;
  v13 = v6 + 5;
  if (v4 == v10)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = *(v4 + 8);
      v36 = *v4;
      v37 = v14;
      v15 = v36;
      swift_unknownObjectRetain();
      a3(&v35, &v36);
      swift_unknownObjectRelease();

      *(v13 - 1) = v35;
      if (!v12)
      {
        break;
      }

      --v12;
      ++v13;
      v4 += 16;
      if (v4 == v10)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = v4 + 16;
  if (v16 != v10)
  {
    v34 = a3;
    do
    {
      v17 = *(v16 + 8);
      v36 = *v16;
      v37 = v17;
      v18 = v36;
      swift_unknownObjectRetain();
      v34(&v35, &v36);
      swift_unknownObjectRelease();

      v19 = v35;
      if (!v11)
      {
        v20 = v6[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_1000525C4(&qword_100124C30);
        v23 = swift_allocObject();
        v24 = j__malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 25;
        }

        v26 = v25 >> 3;
        v23[2] = v22;
        v23[3] = (2 * (v25 >> 3)) | 1;
        v27 = (v23 + 4);
        v28 = v6[3] >> 1;
        if (v6[2])
        {
          v29 = v6 + 4;
          if (v23 != v6 || v27 >= v29 + 8 * v28)
          {
            memmove(v23 + 4, v29, 8 * v28);
          }

          v6[2] = 0;
        }

        v13 = (v27 + 8 * v28);
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v6 = v23;
      }

      v30 = __OFSUB__(v11--, 1);
      if (v30)
      {
        goto LABEL_39;
      }

      v16 += 16;
      *v13++ = v19;
    }

    while (v16 != v10);
  }

LABEL_31:
  v31 = v6[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v30 = __OFSUB__(v32, v11);
  v33 = v32 - v11;
  if (v30)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v6[2] = v33;
}

id sub_10006C894@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10006C8AC(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v24 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 32 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      type metadata accessor for VoicemailActor();
      swift_initStaticObject();
      sub_10006B000();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_beginAccess();
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = v9 + 32;
      v12 = *(v9 + 16);
      if (v10)
      {

        v13 = sub_100059D28(v7, v11, v12, (v10 + 16));
        v15 = v14;
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (v12)
      {
        type metadata accessor for MessageID(0);
        v13 = 0;
        while (1)
        {
          v18 = *(v11 + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_4;
          }
        }

        v17 = 0;
LABEL_21:
        sub_10006B5F4(v13, v17);

        sub_10006B754(v13);
        swift_endAccess();
        swift_unknownObjectRelease();
        v21 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_5;
      }

LABEL_4:
      swift_endAccess();
LABEL_5:

      if (v5 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }
}

void sub_10006CB3C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_90:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v8)
    {
      v25 = v10 + 1;
    }

    else
    {
      v109 = v8;
      v13 = *v7;
      v14 = *v7 + 16 * (v10 + 1);
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v13 + 16 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v115 = v16;
      v116 = v15;
      v113 = v19;
      v114 = v18;
      v20 = v15;
      swift_unknownObjectRetain();
      v10 = v18;
      swift_unknownObjectRetain();
      v107 = a5(&v116, &v115, &v114, &v113);
      if (v6)
      {
LABEL_101:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v21 = v12;
      v22 = v12 + 2;
      v103 = v21;
      v23 = 16 * v21;
      v24 = (v13 + 16 * v21 + 24);
      while (1)
      {
        v25 = v109;
        if (v109 == v22)
        {
          break;
        }

        v26 = v24[1];
        v27 = *(v24 - 1);
        v28 = *v24;
        v115 = v24[2];
        v116 = v26;
        v113 = v28;
        v114 = v27;
        v29 = v26;
        swift_unknownObjectRetain();
        v10 = v27;
        swift_unknownObjectRetain();
        LODWORD(v27) = a5(&v116, &v115, &v114, &v113);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        ++v22;
        v24 += 2;
        if ((v107 ^ v27))
        {
          v25 = v22 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v103;
      v9 = a4;
      if (v107)
      {
        if (v25 < v103)
        {
          goto LABEL_124;
        }

        if (v103 < v25)
        {
          v30 = 16 * v25 - 16;
          v31 = v25;
          v32 = v103;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v34 = *(v33 + v23);
              *(v33 + v23) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 16;
            v23 += 16;
          }

          while (v32 < v31);
        }
      }

      v6 = 0;
    }

    v35 = v7[1];
    if (v25 >= v35)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v25, v12))
    {
      goto LABEL_120;
    }

    if (v25 - v12 >= v9)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, v9))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v12 + v9 >= v35)
    {
      v36 = v7[1];
    }

    else
    {
      v36 = v12 + v9;
    }

    if (v36 < v12)
    {
      goto LABEL_123;
    }

    if (v25 == v36)
    {
LABEL_29:
      v37 = v25;
      if (v25 < v12)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v11;
      v100 = v36;
      v112 = v6;
      v85 = *v7;
      v86 = *v7 + 16 * v25 - 16;
      v104 = v12;
      v87 = v12 - v25;
      do
      {
        v108 = v86;
        v110 = v25;
        v88 = *(v85 + 16 * v25);
        v101 = v87;
        do
        {
          v89 = *v86;
          v90 = *(v86 + 8);
          v115 = *(&v88 + 1);
          v116 = v88;
          v113 = v90;
          v114 = v89;
          v20 = v88;
          swift_unknownObjectRetain();
          v10 = v89;
          swift_unknownObjectRetain();
          v91 = a5(&v116, &v115, &v114, &v113);
          if (v112)
          {
            goto LABEL_101;
          }

          v92 = v91;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v92 & 1) == 0)
          {
            break;
          }

          if (!v85)
          {
            goto LABEL_126;
          }

          v93 = *v86;
          v88 = *(v86 + 16);
          *v86 = v88;
          *(v86 + 16) = v93;
          v86 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        v25 = v110 + 1;
        v86 = v108 + 16;
        v37 = v100;
        v87 = v101 - 1;
      }

      while (v110 + 1 != v100);
      v6 = 0;
      v7 = a3;
      v12 = v104;
      v11 = v99;
      if (v100 < v104)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000519DC(0, *(v11 + 2) + 1, 1, v11);
    }

    v39 = *(v11 + 2);
    v38 = *(v11 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v11 = sub_1000519DC((v38 > 1), v39 + 1, 1, v11);
    }

    *(v11 + 2) = v40;
    v41 = &v11[16 * v39];
    *(v41 + 4) = v12;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v10 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = v7[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v11[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v11[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v11[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v40 == 3)
    {
      v44 = *(v11 + 4);
      v45 = *(v11 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_49:
      if (v47)
      {
        goto LABEL_108;
      }

      v60 = &v11[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v66 = &v11[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_115;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v70 = &v11[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_63:
    if (v65)
    {
      goto LABEL_110;
    }

    v73 = &v11[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_113;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_70:
    v81 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_125;
    }

    v82 = *&v11[16 * v81 + 32];
    v83 = *&v11[16 * v43 + 40];
    sub_10006B058((*v7 + 16 * v82), (*v7 + 16 * *&v11[16 * v43 + 32]), (*v7 + 16 * v83), v42, a5);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v83 < v82)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100056BCC(v11);
    }

    if (v81 >= *(v11 + 2))
    {
      goto LABEL_105;
    }

    v84 = &v11[16 * v81];
    *(v84 + 4) = v82;
    *(v84 + 5) = v83;
    v117 = v11;
    sub_100056B40(v43);
    v11 = v117;
    v40 = *(v117 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
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
  v11 = sub_100056BCC(v11);
LABEL_92:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v96 = *&v11[16 * v95];
      v97 = *&v11[16 * v95 + 24];
      sub_10006B058((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v10, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100056BCC(v11);
      }

      if (v95 - 2 >= *(v11 + 2))
      {
        goto LABEL_117;
      }

      v98 = &v11[16 * v95];
      *v98 = v96;
      *(v98 + 1) = v97;
      v117 = v11;
      sub_100056B40(v95 - 1);
      v11 = v117;
      v95 = *(v117 + 2);
      if (v95 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

void sub_10006D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = a1 - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return;
      }

      if (!v7)
      {
        __break(1u);
        return;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_10006D3FC(uint64_t *a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000525C4(&qword_100124588);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10006CB3C(v9, v10, a1, v6, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10006D2AC(0, v4, 1, a1, a2);
  }
}

void sub_10006D524(void **a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10005A0EC(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  sub_10006D3FC(v6, a2);
  *a1 = v4;
}

void sub_10006D5A8(uint64_t a1)
{
  v21 = 0;
  v22 = sub_100059B44(_swiftEmptyArrayStorage);
  sub_100059B2C(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  sub_1000A9198(v2, 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  v20 = v2;
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v7 = *(a1 + 32 + 16 * v3);
    v8 = (v22 + 4);
    v9 = v22[2];
    if (!v21)
    {
      break;
    }

    v10 = v7;
    swift_unknownObjectRetain();

    sub_100059D28(v10, v8, v9, (v21 + 16));
    LOBYTE(v10) = v11;

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_15:
    v15 = v7;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v16 = v22[2];
    if (v21)
    {
      swift_beginAccess();
      if (static _HashTable.maximumCapacity(forScale:)() >= v16)
      {
        v18 = v21;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v19 = _HashTable.copy()();

          v21 = v19;
          v18 = v19;
        }

        if (!v18)
        {
          goto LABEL_28;
        }

        _HashTable.UnsafeHandle.subscript.setter();
      }

      else
      {
        v17 = *(v21 + 24) & 0x3FLL;
        if (v16 > 0xF || v17)
        {
          goto LABEL_3;
        }

        v21 = 0;
      }
    }

    else if (v16 > 0xF)
    {
      v17 = 0;
LABEL_3:
      v4 = static _HashTable.scale(forCapacity:)();
      if (v17 <= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v17;
      }

      v6 = sub_100059374(v22, v5, 0, v17);

      v21 = v6;
    }

    ++v3;
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    if (v3 == v20)
    {
      return;
    }
  }

  v12 = v7;
  swift_unknownObjectRetain();
  if (!v9)
  {
    goto LABEL_15;
  }

  type metadata accessor for MessageID(0);
  while (1)
  {
    v13 = *v8;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    ++v8;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  __break(1u);
}

uint64_t sub_10006D8B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1000525C4(&qword_100124580);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 17;
    }

    v9 = v8 >> 4;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a1 + 32);
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = v4 - 1;
      v14 = 4;
      while (1)
      {
        v15 = &v6[v14];
        v9 = *v11;
        v16 = *v12;
        *v15 = *v11;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v9;
        swift_unknownObjectRetain();
        v14 += 2;
        ++v11;
        ++v12;
        --v13;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    v18 = v9;
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v20 = v6[3];
  if (v20 < 2)
  {
    return v6;
  }

  v21 = v20 >> 1;
  v22 = __OFSUB__(v21, v2);
  v23 = v21 - v2;
  if (!v22)
  {
    v6[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10006DA24()
{
  result = qword_100124DB0;
  if (!qword_100124DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DB0);
  }

  return result;
}

void *sub_10006DA78(unint64_t a1, char a2)
{
  LOBYTE(v5) = a2;
  inited = a1;
  if (a1 >> 62)
  {
    goto LABEL_99;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = _swiftEmptyArrayStorage;
    v86 = v5;
    if (i)
    {
      v91[0] = _swiftEmptyArrayStorage;
      sub_1000A8E90(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_101:
        swift_once();
        goto LABEL_42;
      }

      v8 = v91[0];
      *&v90 = inited & 0xC000000000000001;
      LOBYTE(v5) = type metadata accessor for VoicemailActor();
      swift_initStaticObject();
      v9 = 0;
      do
      {
        if (v90)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(inited + 8 * v9 + 32);
          swift_unknownObjectRetain();
        }

        v11 = inited;
        sub_10006B000();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v12 = [v10 identifier];
        v91[0] = v8;
        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v16 = v12;
          sub_1000A8E90((v13 > 1), v14 + 1, 1);
          v12 = v16;
          v8 = v91[0];
        }

        ++v9;
        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v12;
        v15[5] = v10;
        inited = v11;
      }

      while (i != v9);
    }

    v17 = sub_1000BFBB0(_swiftEmptyArrayStorage);
    v92[0] = v17;
    v3 = v8[2];
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v2 = 0;
    while (v4 < v8[2])
    {
      v90 = *&v8[2 * v4 + 4];
      *v91 = v90;
      v5 = v90;
      swift_unknownObjectRetain();
      sub_1000674DC(v92, v91);
      swift_unknownObjectRelease();

      if (v3 == ++v4)
      {
        v87 = 0;
        v18 = v92[0];
        goto LABEL_20;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    ;
  }

  v18 = v17;
  v87 = 0;
LABEL_20:
  v4 = (v18 + 8);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  inited = v20 & v18[8];
  v2 = (v19 + 63) >> 6;

  v21 = 0;
  v88 = _swiftEmptyArrayStorage;
  v89 = v18 + 8;
  *&v90 = v18;
  while (inited)
  {
    v22 = v21;
LABEL_28:
    v23 = (v22 << 9) | (8 * __clz(__rbit64(inited)));
    v24 = *(v18[6] + v23);
    v5 = *(v18[7] + v23);
    v3 = type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_10006B000();
    dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v5 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v89;
    inited &= inited - 1;
    if (v26 > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_10005205C(0, v88[2] + 1, 1, v88);
      }

      v28 = v88[2];
      v27 = v88[3];
      v3 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v88 = sub_10005205C((v27 > 1), v28 + 1, 1, v88);
      }

      v88[2] = v3;
      v29 = &v88[2 * v28];
      v29[4] = v25;
      v29[5] = v5;
      v21 = v22;
      v4 = v89;
      v18 = v90;
    }

    else
    {

      v21 = v22;
      v18 = v90;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    if (v22 >= v2)
    {
      break;
    }

    inited = *(v4 + 8 * v22);
    ++v21;
    if (inited)
    {
      goto LABEL_28;
    }
  }

  v3 = v88;
  if (!v88[2])
  {

    v2 = 0;
    if (qword_100123FF0 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

  v2 = 0;
  if (qword_100123FF0 != -1)
  {
    goto LABEL_101;
  }

LABEL_42:
  v30 = type metadata accessor for Logger();
  sub_1000046F4(v30, qword_100124C40);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v83 = v32;
    log = v31;
    v33 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v91[0] = v82;
    *v33 = 136315394;
    v34 = *(v3 + 16);
    v85 = v33;
    if (v34)
    {
      v92[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for VoicemailActor();
      swift_initStaticObject();
      sub_10006B000();
      v35 = v3 + 40;
      v36 = v34;
      do
      {
        v37 = *(v35 - 8);
        dispatch thunk of Actor.unownedExecutor.getter();
        inited = v38;
        v39 = v37;

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v35 += 16;
        --v36;
      }

      while (v36);
      v4 = v89;
      v33 = v85;
    }

    type metadata accessor for MessageID(0);
    v44 = Array.description.getter();
    v46 = v45;

    v47 = sub_10000607C(v44, v46, v91);

    *(v33 + 4) = v47;
    *(v33 + 12) = 2080;
    if (v34)
    {
      v92[0] = _swiftEmptyArrayStorage;
      sub_1000A8EB0(0, v34, 0);
      v48 = v92[0];
      type metadata accessor for VoicemailActor();
      inited = swift_initStaticObject();
      sub_10006B000();
      v49 = v88 + 5;
      do
      {
        v50 = *(v49 - 1);
        v51 = *v49;
        dispatch thunk of Actor.unownedExecutor.getter();
        v52 = v50;

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v92[0] = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          sub_1000A8EB0((v53 > 1), v54 + 1, 1);
          v48 = v92[0];
        }

        v48[2] = v54 + 1;
        v48[v54 + 4] = v51;
        v49 += 2;
        --v34;
      }

      while (v34);

      v4 = v89;
      v33 = v85;
    }

    else
    {
    }

    sub_1000525C4(&qword_100125730);
    v55 = Array.description.getter();
    v3 = v56;

    v57 = sub_10000607C(v55, v3, v91);

    *(v33 + 14) = v57;
    _os_log_impl(&_mh_execute_header, log, v83, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v33, 0x16u);
    swift_arrayDestroy();

    v2 = v87;
  }

  else
  {
  }

  v5 = v90;
  v58 = 1 << *(v90 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v90 + 64);
  v61 = (v58 + 63) >> 6;

  v62 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (2)
  {
    v63 = v62;
    if (!v60)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v64 = v2;
      v62 = v63;
LABEL_73:
      v65 = (v62 << 9) | (8 * __clz(__rbit64(v60)));
      v66 = *(*(v5 + 48) + v65);
      v67 = *(*(v5 + 56) + v65);
      type metadata accessor for VoicemailActor();
      swift_initStaticObject();
      sub_10006B000();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      inited = v68;
      v69 = v66;

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v70 = v67 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v2 = v64;
      v60 &= v60 - 1;
      v4 = v89;
      if (v70)
      {
        break;
      }

      v63 = v62;
      v5 = v90;
      if (!v60)
      {
LABEL_69:
        while (1)
        {
          v62 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_98;
          }

          if (v62 >= v61)
          {

            while (1)
            {
              sub_10006D5A8(v8);
              v74 = v73;
              v76 = v75;
              v78 = v77;

              type metadata accessor for CachedVoicemailManager.Cache();
              result = swift_allocObject();
              result[2] = v74;
              v80 = result + 2;
              result[3] = v76;
              result[4] = v78;
              if ((v86 & 1) == 0)
              {
                return result;
              }

              v8 = result;
              swift_beginAccess();
              v92[0] = sub_10006D8B8(v76, v78);
              sub_10006D524(v92, sub_100067860);
              if (v2)
              {
                goto LABEL_105;
              }

              v81 = v92[0][2];
              if (v81 == *(v78 + 16))
              {
                sub_10006BE04((v92[0] + 4), v81, v80);

                swift_endAccess();
                return v8;
              }

              __break(1u);
LABEL_103:
              swift_once();
LABEL_49:
              v40 = type metadata accessor for Logger();
              sub_1000046F4(v40, qword_100124C40);
              v41 = Logger.logObject.getter();
              v42 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v41, v42))
              {
                v43 = swift_slowAlloc();
                *v43 = 0;
                _os_log_impl(&_mh_execute_header, v41, v42, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v43, 2u);
              }
            }
          }

          v60 = *(v4 + 8 * v62);
          ++v63;
          if (v60)
          {
            v64 = v2;
            goto LABEL_73;
          }
        }
      }
    }

    if ((v67 & 0xC000000000000001) != 0)
    {
      inited = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_84;
    }

    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      inited = *(v67 + 32);
      swift_unknownObjectRetain();
LABEL_84:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100051F28(0, v8[2] + 1, 1, v8);
      }

      v3 = v8[2];
      v71 = v8[3];
      if (v3 >= v71 >> 1)
      {
        v8 = sub_100051F28((v71 > 1), v3 + 1, 1, v8);
      }

      v8[2] = v3 + 1;
      v72 = &v8[2 * v3];
      v72[4] = v69;
      v72[5] = inited;
      v5 = v90;
      continue;
    }

    break;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);
LABEL_105:

  __break(1u);
  return result;
}