uint64_t sub_1002174A0(char *a1, char *a2, _OWORD *a3, char *a4, uint64_t (*a5)(id *, uint64_t *, void **, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 >= v10)
  {
    sub_100240348(a2, (a3 - a2) / 16, a4);
    v11 = (v5 + 16 * v10);
    v26 = -v5;
    __srca = v5;
    v50 = v8;
    v48 = -v5;
LABEL_15:
    v49 = (v7 - 16);
    --v6;
    v27 = v11 + v26;
    v52 = v7;
    while (1)
    {
      if (v11 <= v5 || v7 <= v8)
      {
LABEL_29:
        v39 = (v11 - v5) / 16;
        v40 = v7 < v5 || v7 >= v5 + 16 * v39;
        if (v40 || v7 != v5)
        {
          v41 = 16 * v39;
          v42 = v7;
          v43 = v5;
          goto LABEL_47;
        }

        return 1;
      }

      v54 = v27;
      v29 = v11;
      v31 = *(v11 - 1);
      v30 = v11 - 1;
      v32 = *(v7 - 16);
      v33 = *(v7 - 8);
      v62 = *(v11 - 2);
      v60 = v32;
      v61 = v31;
      v59 = v33;
      v34 = v62;
      swift_unknownObjectRetain();
      v35 = v32;
      swift_unknownObjectRetain();
      v36 = a5(&v62, &v61, &v60, &v59);
      if (v58)
      {
        break;
      }

      v37 = v36;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v38 = v6 + 1;
      if (v37)
      {
        v8 = v50;
        v25 = v38 == v52;
        v26 = v48;
        v7 = v49;
        v5 = __srca;
        v11 = v29;
        if (!v25)
        {
          *v6 = *v49;
          v7 = v49;
        }

        goto LABEL_15;
      }

      v7 = v52;
      if (v29 != v38)
      {
        *v6 = *v30;
      }

      --v6;
      v27 = v54 - 16;
      v11 = v30;
      v5 = __srca;
      v8 = v50;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v42 = v52;
    v44 = v54 / 16;
    v43 = __srca;
    if (v52 < __srca || v52 >= __srca + 16 * (v54 / 16))
    {
      goto LABEL_46;
    }

LABEL_45:
    if (v42 == v43)
    {
      return 1;
    }

    goto LABEL_46;
  }

  sub_100240348(a1, (a2 - a1) / 16, a4);
  v11 = (v5 + 16 * v9);
  v51 = v6;
  for (i = v11; ; v11 = i)
  {
    if (v5 >= v11 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_29;
    }

    v13 = v8;
    v14 = *v7;
    v15 = *(v7 + 8);
    v16 = v7;
    v17 = *v5;
    v18 = *(v5 + 8);
    __src = v5;
    v62 = v14;
    v60 = v17;
    v61 = v15;
    v59 = v18;
    v19 = v14;
    swift_unknownObjectRetain();
    v20 = v17;
    swift_unknownObjectRetain();
    v21 = a5(&v62, &v61, &v60, &v59);
    if (v58)
    {
      break;
    }

    v22 = v21;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v23 = v13;
    if (v22)
    {
      v24 = v16;
      v7 = (v16 + 1);
      v25 = v13 == v16;
      v5 = __src;
    }

    else
    {
      v24 = __src;
      v5 = (__src + 1);
      v25 = v13 == __src;
      v7 = v16;
    }

    v6 = v51;
    if (!v25)
    {
      *v23 = *v24;
    }

    v8 = (v23 + 1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v43 = v5;
  v44 = (i - v5) / 16;
  v42 = v13;
  if (v13 >= v5 && v13 < v5 + 16 * v44)
  {
    goto LABEL_45;
  }

LABEL_46:
  v41 = 16 * v44;
LABEL_47:
  memmove(v42, v43, v41);
  return 1;
}

char *sub_10021781C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10014EA98(&unk_1003B0240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_10021791C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  v5 = 0;
  v51[0] = a1;
  v6 = sub_100017230(a1);
  v48 = v4 & 0xC000000000000001;
  v43 = v4 + 32;
  v50 = v3 + 7;

  v7 = -1;
  v46 = v6;
  v47 = 0;
LABEL_3:
  if (v5 != v6)
  {
    v8 = v48;
    sub_100017238(v5, v48 == 0, v4);
    if (v48)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v43 + 8 * v5);
    }

    v49 = v9;
    v10 = __OFADD__(v5, 1);
    v5 = v5 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v2 = v11 & v12;
        v6 = (v11 & v12) >> 6;
        v7 = 1 << (v11 & v12);
        if ((v7 & v50[v6]) == 0)
        {

          v6 = v46;
          v7 = -1;
          goto LABEL_3;
        }

        type metadata accessor for MessageID(v47);
        v13 = *(v3[6] + 8 * v2);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          break;
        }

        v11 = v2 + 1;
      }

      v51[1] = v5;

      v17 = *(v3 + 32);
      v40 = ((1 << v17) + 63) >> 6;
      v8 = 8 * v40;
      if ((v17 & 0x3Fu) <= 0xD)
      {
LABEL_14:
        v41 = &v39;
        __chkstk_darwin(v15, v16);
        v18 = &v39 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v18, v50, v8);
        v19 = v3[2];
        v20 = *&v18[8 * v6] & ~v7;
        v44 = v18;
        *&v18[8 * v6] = v20;
        v42 = v19 - 1;
        v21 = sub_100017230(v4);
        v45 = v4;
        v46 = v21;
        while (1)
        {
LABEL_15:
          if (v5 == v46)
          {
            v3 = sub_100217F9C(v44, v40, v42, v3);
            goto LABEL_29;
          }

          v22 = v48;
          sub_100017238(v5, v48 == 0, v4);
          v23 = v22 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v43 + 8 * v5);
          v24 = v23;
          v10 = __OFADD__(v5, 1);
          v25 = v5 + 1;
          if (v10)
          {
            break;
          }

          v49 = v25;
          v26 = NSObject._rawHashValue(seed:)(v3[5]);
          v27 = v3;
          v28 = ~(-1 << *(v3 + 32));
          do
          {
            v29 = v26 & v28;
            v30 = (v26 & v28) >> 6;
            v31 = 1 << (v26 & v28);
            if ((v31 & v50[v30]) == 0)
            {

              v3 = v27;
              v4 = v45;
              v5 = v49;
              goto LABEL_15;
            }

            v32 = *(v27[6] + 8 * v29);
            v33 = static NSObject.== infix(_:_:)();

            v26 = v29 + 1;
          }

          while ((v33 & 1) == 0);

          v4 = v45;
          v34 = v44[v30];
          v44[v30] = v34 & ~v31;
          v3 = v27;
          v5 = v49;
          if ((v34 & v31) != 0)
          {
            v35 = v42 - 1;
            if (__OFSUB__(v42, 1))
            {
              __break(1u);
            }

            --v42;
            if (!v35)
            {
              goto LABEL_33;
            }
          }
        }

        __break(1u);
LABEL_33:

        v3 = &_swiftEmptySetSingleton;
        goto LABEL_29;
      }
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();
      v38 = sub_100217F14(v37, v40, v50, v40, v3, v2, v51);

      return v38;
    }

    goto LABEL_14;
  }

LABEL_29:

  return v3;
}

void sub_100217D54(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v29 = v8;
LABEL_3:
    v10 = sub_100017230(*v5);
    v11 = v5[1];
    if (v11 == v10)
    {

      sub_100217F9C(a1, a2, v29, a3);
      return;
    }

    v12 = *v5;
    v13 = *v5 & 0xC000000000000001;
    sub_100017238(v5[1], v13 == 0, *v5);
    v14 = v13 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v12 + 8 * v11 + 32);
    v15 = v14;
    v16 = v5[1];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v5[1] = v18;
    v19 = NSObject._rawHashValue(seed:)(*(a3 + 40));
    v20 = ~(-1 << *(a3 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(v9 + 8 * v22)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      type metadata accessor for MessageID(0);
      v24 = *(*(a3 + 48) + 8 * v21);
      v25 = static NSObject.== infix(_:_:)();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = a1[v22];
    a1[v22] = v26 & ~v23;
    v27 = (v26 & v23) == 0;
    v5 = a5;
    if (v27)
    {
      goto LABEL_3;
    }

    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_19;
    }

    if (v29 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_100217F14(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_100217D54(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_100217F9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10014EA98(&qword_1003ABCC0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_100218188(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10021822C(void *a1)
{
  v2 = v1;
  v3 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v5 = *v1;
  v6 = *(v1[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() < v6)
    {
      v7 = *(v5 + 24) & 0x3FLL;
      if (v6 <= 0xF && v7 == 0)
      {

        *v2 = 0;
        return result;
      }

      goto LABEL_11;
    }

    result = sub_10021839C();
    if (*v2)
    {
      return sub_1002183F4();
    }

    else
    {
      __break(1u);
    }
  }

  else if (v6 > 0xF)
  {
    v7 = 0;
LABEL_11:
    v9 = static _HashTable.scale(forCapacity:)();
    return sub_10021845C(v9, v7);
  }

  return result;
}

void *sub_10021834C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10021839C()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = _HashTable.copy()();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10021845C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_1002184A4(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_1002184A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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
  v8 = 0;
  if (v7 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 5)
  {
    v8 = _HashTable.init(scale:reservedScale:)();
    sub_10021851C(a1, (v8 + 16));
  }

  return v8;
}

Swift::Int sub_10021855C(Swift::Int result, uint64_t a2, Swift::Int *a3)
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

uint64_t sub_100218660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    type metadata accessor for MessageID(0);
    v6 = *(a2 + 8 * i);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_1002186EC(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v7 = v11;
    if ((v12 & 1) == 0)
    {
      do
      {
        type metadata accessor for MessageID(0);
        v8 = *(a2 + 8 * v7);
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v10 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_100218808(uint64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  v8 = v7;
  if (a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v9 = *(v5 + 24) & 0x3FLL;
  }

  if (v6 < v8)
  {
    v10 = v8;
    return sub_10021845C(v10, v9);
  }

  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v8)
  {
    v10 = v8;
  }

  if (v10 < v6)
  {
    return sub_10021845C(v10, v9);
  }

  result = sub_10021839C();
  v11 = *v3;
  if (!v11)
  {
    if (!v9)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v11 + 24) & 0x3FLL) != v9)
  {
    *(v11 + 24) = *(v11 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }

  return result;
}

unint64_t sub_100218944(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

void sub_100218968(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_100218B0C(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_12:
    sub_100218B0C(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    if (v11 || *(*v5 + 16) >= 0x10uLL)
    {
      v12 = static _HashTable.scale(forCapacity:)();
      sub_10021845C(v12, v11);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_10021839C();
  v9 = *v3;
  if (*v3)
  {

    sub_100218BB4(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_100218D8C(a1, a1 + 1, v10, (v9 + 16));

      sub_100218B0C(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100218B0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10003C270(v3);
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
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_10003D8B0((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v9;
  }

  return result;
}

void sub_100218BB4(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v20 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v20)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      v9 = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(a4 + 8);
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_24;
      }

      v12 = *a2;
      v13 = *(v11 + 8 * v9 + 32);
      v14 = NSObject._rawHashValue(seed:)(v12);

      v15 = 1 << *a2;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_25;
      }

      v16 = (v15 - 1) & v14;
      if (v8 >= v7)
      {
        if (v16 >= v7 && v8 >= v16)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v16 >= v7 || v8 >= v16)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void sub_100218D8C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v14 = a2;
      v15 = __OFSUB__(v8, a2);
      v16 = v8 - a2;
      if (v15)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v16 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v29 = _HashTable.BucketIterator.currentValue.getter();
        if ((v30 & 1) == 0 && v29 >= v14)
        {
          if (__OFSUB__(v29, v4))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_1002191B4(v14, a3);
      v18 = v17;
      v20 = v19;
      v22 = v21 >> 1;
      while (v20 != v22)
      {
        if (v20 >= v22)
        {
          goto LABEL_51;
        }

        v23 = *a4;
        v24 = *(v18 + 8 * v20);
        NSObject._rawHashValue(seed:)(v23);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v25 = _HashTable.BucketIterator.currentValue.getter();
            if ((v26 & 1) == 0 && v25 == v14)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v14, v4))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v15 = __OFADD__(v14++, 1);
        if (v15)
        {
          goto LABEL_54;
        }

        ++v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v10 = *a4;
          v11 = *(a3 + 32 + 8 * i);
          NSObject._rawHashValue(seed:)(v10);
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v12 = _HashTable.BucketIterator.currentValue.getter();
              if ((v13 & 1) == 0 && v12 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v27 = _HashTable.BucketIterator.currentValue.getter();
      if ((v28 & 1) == 0 && v27 < a1)
      {
        if (__OFADD__(v27, v4))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v31 = a4[1];
      if (__OFSUB__(v31 >> 6, v4))
      {
        goto LABEL_59;
      }

      v32 = 1 << *a4;
      v15 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v15)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v34 = (v33 & (((v31 >> 6) - v4) >> 63)) + (v31 >> 6) - v4;
      if (v34 < v33)
      {
        v33 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v34 - v33) << 6);
    }
  }
}

uint64_t sub_1002191B4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100219214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100219BA4(a1, a2, sub_100219B44);
  v7 = v6;
  v8 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();
  v9 = sub_1002184A4(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  sub_100219BA4(a1, a2, sub_100219B74);
  a3[2] = v10;
}

void sub_1002192F4()
{
  sub_100005510();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000085C0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_100017230(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_1000064BC(0, &qword_1003AAF70);
        sub_100007BE0();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_10021A50C(&qword_1003AF1B0, &qword_1003AF1A8);
        do
        {
          v7 = sub_10014EA98(&qword_1003AF1A8);
          v15 = sub_100005A2C(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_1001C7654(v15, v16, v17);
          v20 = *v19;
          v18(v24, 0);
          sub_100008858();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100219438()
{
  sub_100005510();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000085C0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_100017230(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_1000064BC(0, &qword_1003ACFE0);
        sub_100007BE0();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v23 = v6;
        sub_10021A50C(&qword_1003AF1C0, &qword_1003AF1B8);
        do
        {
          v7 = sub_10014EA98(&qword_1003AF1B8);
          v15 = sub_100005A2C(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
          v18 = sub_1001C7654(v15, v16, v17);
          v20 = *v19;
          v18(v24, 0);
          sub_100008858();
        }

        while (!v21);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10021957C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_100017230(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10021A50C(&qword_1003AF188, &qword_1003AF180);
        for (i = 0; i != v7; ++i)
        {
          sub_10014EA98(&qword_1003AF180);
          v9 = sub_1001C771C(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002196F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_100017230(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_10014EA98(&qword_1003AA7A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10021A50C(&qword_1003AF1A0, &qword_1003AF190);
        for (i = 0; i != v7; ++i)
        {
          sub_10014EA98(&qword_1003AF190);
          v9 = sub_1001C76B4(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100219870(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
    v12 = 0;
    v13 = *(a6 + 16);
    v14 = a3 - 1;
    while (1)
    {
      if (v13 == v12)
      {
        v10 = v13;
        goto LABEL_12;
      }

      if (v12 >= *(a6 + 16))
      {
        break;
      }

      *(a2 + 8 * v12) = *(a6 + 32 + 8 * v12);
      if (v14 == v12)
      {
        swift_unknownObjectRetain();
        goto LABEL_12;
      }

      result = swift_unknownObjectRetain();
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100219938(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100219A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1002186EC(v8, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_100218660(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

id sub_100219B44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_100219B74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002192EC();
  *a1 = result;
  return result;
}

void sub_100219BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = _swiftEmptyArrayStorage;
      v7 = _swiftEmptyArrayStorage[3];
    }

    else
    {
      sub_10014EA98(&unk_1003AAAA0);
      v6 = swift_allocObject();
      v7 = (2 * ((j__malloc_size(v6) - 32) / 8)) | 1;
      v6[2] = a2;
      v6[3] = v7;
    }

    if (v4)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
LABEL_12:
        v8 = (v7 >> 1) - a2;
        v9 = v6 + 5;
        v11 = a2 - 1;
        if (v4)
        {
          while (v10 != v4)
          {
            v3 = v4 + 16;
            v12 = *v4;
            v13 = *(v4 + 8);
            v33 = v12;
            v34 = v13;
            v14 = v12;
            swift_unknownObjectRetain();
            a3(&v32, &v33);
            swift_unknownObjectRelease();

            *(v9 - 1) = v32;
            if (!v11)
            {
              goto LABEL_33;
            }

            ++v9;
            --v11;
            v4 = v3;
            if (!v3)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          __break(1u);
          while (1)
          {
            v15 = *(v3 + 8);
            v33 = *v3;
            v34 = v15;
            v16 = v33;
            swift_unknownObjectRetain();
            a3(&v32, &v33);
            swift_unknownObjectRelease();

            v17 = v32;
            if (!v8)
            {
              v18 = v6[3];
              if (((v18 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_40;
              }

              v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
              if (v19 <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = v19;
              }

              sub_10014EA98(&unk_1003AAAA0);
              v21 = swift_allocObject();
              v22 = (j__malloc_size(v21) - 32) / 8;
              v21[2] = v20;
              v21[3] = (2 * v22) | 1;
              v23 = (v21 + 4);
              v24 = v6[3];
              v25 = v24 >> 1;
              if (v6[2])
              {
                if (v21 != v6 || v23 >= &v6[v25 + 4])
                {
                  memmove(v21 + 4, v6 + 4, 8 * v25);
                }

                v6[2] = 0;
              }

              v9 = (v23 + 8 * v25);
              v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

              v6 = v21;
            }

            v27 = __OFSUB__(v8--, 1);
            if (v27)
            {
              break;
            }

            v3 += 16;
            *v9++ = v17;
LABEL_33:
            if (v3 == v10)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_42;
  }

  v6 = _swiftEmptyArrayStorage;
  v8 = 0;
  if (a1)
  {
    v9 = &_swiftEmptyArrayStorage[4];
    v10 = a1;
    v3 = a1;
    goto LABEL_33;
  }

LABEL_34:
  v28 = v6[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v8);
    v30 = v29 - v8;
    if (v27)
    {
LABEL_42:
      __break(1u);
      return;
    }

    v6[2] = v30;
  }
}

void sub_100219E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_10014EA98(&qword_1003AF178);
    v6 = swift_allocObject();
    v7 = (j__malloc_size(v6) - 32) / 16;
    v6[2] = v3;
    v6[3] = 2 * v7;
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = (a2 + 32);
    v10 = (a3 + 32);
    v11 = *(a2 + 16);
    v12 = v8 - 1;
    v13 = v3 - 1;
    v14 = 4;
    if (v11)
    {
      while (1)
      {
        v15 = &v6[v14];
        v8 = *v9;
        v16 = *v10;
        *v15 = *v9;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v8;
        swift_unknownObjectRetain();
        --v12;
        v14 += 2;
        --v11;
        --v13;
        ++v9;
        ++v10;
        if (!v11)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      __break(1u);
    }

    v18 = v8;
    swift_unknownObjectRetain();
  }

  else
  {
    v12 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v19 = v6[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v21 = __OFSUB__(v20, v12);
    v22 = v20 - v12;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      v6[2] = v22;
    }
  }
}

uint64_t sub_100219F88()
{
  sub_1000058A8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008204;

  return sub_100215B7C(v2, v3, v4);
}

uint64_t sub_10021A038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008204;

  return sub_100216418(v2, v3, v4);
}

uint64_t sub_10021A0F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10021A138()
{
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008204;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A1F4()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008204;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A298()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008208;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A33C()
{
  sub_1000058A8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;
  v2 = sub_1000085C0();

  return v3(v2);
}

uint64_t sub_10021A41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021A46C()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v4[1] = sub_100008208;
  v6 = sub_10000A544();

  return sub_1002151B8(v6, v7, v1, v2);
}

uint64_t sub_10021A50C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10021A560(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10021A578(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021A5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10021A628(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_10021A670(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ICSInterruptCallAlert_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10021A7D8(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_10021A86C()
{
  v1 = *(v0 + OBJC_IVAR___ICSInterruptCallAlert_callback);

  v1(v2);
}

id sub_10021A9C0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_10016D16C(a1, a2);
  return v6;
}

id sub_10021AA38()
{
  result = [objc_opt_self() tu_contactStore];
  qword_1003AF1F8 = result;
  return result;
}

void sub_10021AA74()
{
  v1 = v0;
  v2 = [v0 existingPrioritizedCall];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 defaultNoPosterAvatarView];
  [v4 removeFromSuperview];

  [v1 setDefaultNoPosterAvatarView:0];
  v5 = [v1 contactForCall:v3];
  v6 = v5;
  if (!v5)
  {
    v20 = [v1 existingPrioritizedCall];
    v6 = v20;
    if (!v20)
    {
LABEL_16:
      v25 = v6;
      v6 = [objc_allocWithZone(CNMutableContact) init];
      v14 = [objc_allocWithZone(CNAvatarView) initWithContact:v6];
      goto LABEL_17;
    }

    v21 = [v20 handle];

    if (!v21)
    {
      v6 = 0;
      goto LABEL_16;
    }

    sub_1000064BC(0, &qword_1003AAF78);
    v6 = CNMutableContact.init(handle:)();
  }

  v7 = v5;
  v8 = sub_10021AE68(v6);
  v10 = v9;
  v11 = sub_10021C03C(v6);
  if (v12 >> 60 != 15)
  {
    sub_100034FE0(v11, v12);

    v14 = [objc_allocWithZone(CNAvatarView) initWithContact:v6];
    goto LABEL_10;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_16;
  }

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [objc_opt_self() systemFontOfSize:1000.0 weight:UIFontWeightSemibold];
  [v14 setFont:v15];

  [v14 setAdjustsFontSizeToFitWidth:1];
  v16 = sub_10000C618([v14 setMinimumScaleFactor:0.1], "setNumberOfLines:");
  sub_10000C618(v16, "setTextAlignment:");
  v17 = [objc_opt_self() whiteColor];
  v18 = [v17 colorWithAlphaComponent:0.3];

  [v14 setTextColor:v18];
  sub_10021BFD8(v8, v10, v14);
  sub_10000C618(v19, "setBaselineAdjustment:");
LABEL_10:
  v25 = v6;
LABEL_17:

  sub_10000C618(v22, "setContentMode:");
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [v1 backgroundController];
  [*&v23[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer] addSubview:v14];

  v24 = v14;
  [v1 setDefaultNoPosterAvatarView:v24];
}

uint64_t sub_10021AE68(void *a1)
{
  v2 = sub_10014EA98(&qword_1003AF208);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v29 - v4;
  v30 = type metadata accessor for PersonNameComponents();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_opt_self();
  v12 = [a1 namePrefix];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29[4] = v14;
  v29[5] = v13;

  v15 = [a1 givenName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29[2] = v17;
  v29[3] = v16;

  v18 = [a1 middleName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29[0] = v20;
  v29[1] = v19;

  v21 = [a1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [a1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v30;
  sub_100006848(v5, 1, 1, v30);
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v11, v24);
  v26 = [v31 localizedStringFromPersonNameComponents:isa style:4 options:0];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v27;
}

void sub_10021B188()
{
  v1 = [v0 defaultNoPosterAvatarView];
  if (v1)
  {
    v10 = v1;
    v2 = [v0 existingPrioritizedCall];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 contactForCall:v2];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 callDisplayStyleManager];
        v7 = [v6 callDisplayStyle];

        [v10 setHidden:{(v7 != 2) | (objc_msgSend(v0, "contactHasPoster:", v5) & 1)}];
        v8 = v3;
        v3 = v5;
      }

      else
      {
        v8 = v10;
      }

      v9 = v3;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_10021B31C(void *a1)
{
  v2 = type metadata accessor for PosterSlot();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PosterDataService();
  v9 = qword_1003AA0E0;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1003AF1F8;
  PosterDataService.__allocating_init(contact:contactStore:)();
  (*(v4 + 104))(v8, enum case for PosterSlot.current(_:), v2);
  v13 = PosterDataService.posterConfiguration(for:)();
  (*(v4 + 8))(v8, v2);

  if (!v13)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10021B598(uint64_t (*a1)(void))
{
  v3 = [v1 posterViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      v5 = a1();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10021B620(void *a1)
{
  v3 = [v1 existingPrioritizedCall];
  if (v3)
  {
    v6 = v3;
    if (sub_10021B6C8(v3) || (v4 = sub_10021B808(v6)) == 0)
    {
      sub_10021B770(a1);
    }

    else
    {
      v5 = v4;
      sub_10021B890(v4, a1);
    }
  }
}

BOOL sub_10021B6C8(uint64_t a1)
{
  v2 = [v1 associatedCallGroupForCall:a1];
  v3 = [v2 calls];
  sub_1000064BC(0, &qword_1003ADBE0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100017230(v4);

  return v5 > 1;
}

void sub_10021B770(void *a1)
{
  v2 = [objc_opt_self() systemBlackColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  [a1 setBackgroundColor:v3];
}

id sub_10021B808(uint64_t a1)
{
  v2 = [v1 contactForCall:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_10021C0A0(v2);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  sub_1000064BC(0, &qword_1003AAA98);
  return sub_10021A9C0(v6, v7);
}

uint64_t sub_10021B890(void *a1, void *a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_100006848(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a1;
  v11 = a2;
  v12 = v2;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  sub_1001621BC();
}

uint64_t sub_10021BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = type metadata accessor for ColorComponents();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v9;
  v6[27] = v8;

  return _swift_task_switch(sub_10021BB14, v9, v8);
}

uint64_t sub_10021BB14()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021BC4C;
  v3 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AF200);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10021BF6C;
  v0[13] = &unk_100360970;
  v0[14] = v3;
  [v2 fetchColorsForImage:v1 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021BC4C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return _swift_task_switch(sub_10021BD54, v2, v1);
}

uint64_t sub_10021BD54()
{

  v1 = *(v0 + 144);
  if (sub_100017230(v1))
  {
    sub_100017238(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v2 = *(v1 + 32);
    }

    v3 = v2;

    static ColorComponents.componentsFromColor(color:)();
    ColorComponents.red.getter();
    ColorComponents.green.getter();
    ColorComponents.blue.getter();
    if (static ColorComponents.isGray(_:_:_:)())
    {
      sub_10021B770(*(v0 + 160));
    }

    else
    {
      [*(v0 + 160) setBackgroundColor:v3];
    }

    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10021BEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001559CC;

  return sub_10021BA1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021BF6C(uint64_t a1)
{
  v1 = *sub_100008878((a1 + 32), *(a1 + 56));
  sub_1000064BC(0, &qword_1003B0520);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_10021A9A0(v1, v2);
}

void sub_10021BFD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setText:v4];
}

uint64_t sub_10021C03C(void *a1)
{
  v1 = [a1 fullscreenImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10021C0A0(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t EndControlService.__allocating_init(callCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *sub_10021C1C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v9 = _swiftEmptyArrayStorage;
  result = sub_10021D7FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_10014EA98(&qword_1003AAF80);
      swift_dynamicCast();
      v9 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_10021D7FC((v6 > 1), v7 + 1, 1);
        v3 = v9;
      }

      ++v5;
      v3[2] = v7 + 1;
      sub_100034DBC(&v8, &v3[4 * v7 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_10021C370()
{
  v0 = [objc_allocWithZone(type metadata accessor for Features()) init];
  Features.showTranscriptWithoutConfidenceFiltering.getter();

  sub_10021E014();
  sub_10021C3D8();
  return sub_1001A584C();
}

uint64_t sub_10021C3D8()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10021C680()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) identifier];
  v2 = objc_allocWithZone(type metadata accessor for MessageID(0));
  return sub_10017281C(v1);
}

uint64_t sub_10021C738()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 providerManager];

  v2 = [v1 telephonyProvider];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10021C8F0()
{
  type metadata accessor for UUID();
  v0 = sub_100006F38();

  return sub_100006848(v0, v1, v2, v3);
}

id sub_10021C970()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  v2 = [v1 senderDestinationID];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v1 senderISOCountryCode];
  v6 = [v4 normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v5];

  return v6;
}

id sub_10021CA3C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_10021CAE0(a3);
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

uint64_t sub_10021CAE0(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10021CB84()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  if ([v1 isDeleted])
  {
    return 0;
  }

  if ([v1 isBlocked])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if ([v1 isTrashed])
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

void sub_10021CD84()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10021D014()
{
  result = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) transcript];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for VisualTranscriptionMessage();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

uint64_t sub_10021D1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) dataURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for URL();

  return sub_100006848(a1, 0, 1, v4);
}

uint64_t sub_10021D334()
{
  type metadata accessor for URL();
  v0 = sub_100006F38();

  return sub_100006848(v0, v1, v2, v3);
}

id sub_10021D3D0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_10021D4CC(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___MPVisualMessage_vmMessage);
  sub_10021C1C8(a2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 contactUsingContactStore:a1 withKeysToFetch:isa];

  return v6;
}

uint64_t sub_10021D5EC(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) displayNameUsingContactStore:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

char *sub_10021D75C(char *a1, int64_t a2, char a3)
{
  result = sub_10021D83C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10021D77C(void *a1, int64_t a2, char a3)
{
  result = sub_10021D92C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10021D79C(size_t a1, int64_t a2, char a3)
{
  result = sub_10021DB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D7BC(char *a1, int64_t a2, char a3)
{
  result = sub_10021DCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10021D7DC(void *a1, int64_t a2, char a3)
{
  result = sub_10021DE00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D7FC(char *a1, int64_t a2, char a3)
{
  result = sub_10021DF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D81C(char *a1, int64_t a2, char a3)
{
  result = sub_10021E058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D83C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AAF10);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_10000C630(v11);
      if (v5)
      {
LABEL_13:
        sub_10003D890((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10021D92C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF350);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10024034C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF358);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021DA3C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF178);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_10000C630(v11);
      if (v5)
      {
LABEL_13:
        sub_100240348((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF320);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_10021DB3C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10014EA98(&qword_1003AA8D8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1002401A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10021DCF0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF340);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100240348((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&qword_1003AF348);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10021DE00(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&unk_1003AF330);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10024034C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&qword_1003AF190);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021DF10(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AC338);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100240180((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10021E014()
{
  result = qword_1003ACC30;
  if (!qword_1003ACC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003ACC30);
  }

  return result;
}

char *sub_10021E058(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF368);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_100240280((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF370);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10021E1A4()
{
  v1 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
  v2 = v1;
  return v1;
}

char *sub_10021E290(void *a1)
{
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] = 0;
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_callDisplayStyleManager] = a1;
  v3 = objc_allocWithZone(type metadata accessor for ScreenSharingSpectatorViewController());
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController] = v5;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  v6 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:"pipStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];

  v10 = *&v8[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController];
  ScreenSharingSpectatorViewController.screenInfoDidChangeSubject.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014EA98(&qword_1003AF3D8);
  sub_10021EFF0();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v8;
}

void sub_10021E48C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
    [*(Strong + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController) updatePIPSize];
    v3 = *&v1[v2];
    [v3 updatePIPFrame];
  }
}

void sub_10021E540()
{
  *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10021E5DC()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v39, "loadView");
  [v0 setOverrideUserInterfaceStyle:2];
  v1 = *&v0[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController];
  v2 = sub_100006BD0();
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = sub_100006C60();
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_100006BD0();
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v5 addSubview:v6];

  [v0 addChildViewController:v1];
  [v1 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FB360;
  v9 = sub_100006BD0();
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = sub_100006C60();
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = sub_100007768();
  *(v8 + 32) = v15;
  v16 = sub_100006BD0();
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = sub_100006C60();
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = sub_100007768();
  *(v8 + 40) = v22;
  v23 = sub_100006BD0();
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = sub_100006C60();
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = sub_100007768();
  *(v8 + 48) = v29;
  v30 = sub_100006BD0();
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = sub_100006C60();
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 bottomAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v8 + 56) = v37;
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_10021E9D8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v1 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  [*&v0[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] updatePIPSize];
  [*&v0[v1] updatePIPFrame];
  return [v0 setNeedsStatusBarAppearanceUpdate];
}

id sub_10021EA94(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  [*&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] updatePIPSize];
  return [*&v1[v3] updatePIPFrame];
}

void sub_10021EB54()
{
  v1 = v0;
  Notification.object.getter();
  if (!v9)
  {
    sub_10015E258(v8);
    goto LABEL_9;
  }

  sub_1000064BC(0, &qword_1003AF3D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
    goto LABEL_10;
  }

  v2 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  v3 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
  if (!v7)
  {
LABEL_10:
    if (v3)
    {
      return;
    }

    v6 = 0;
    goto LABEL_12;
  }

  if (!v3)
  {

    return;
  }

  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = *(v1 + v2);
    if (v6)
    {
      v6 = [v6 pipState];
    }

LABEL_12:
    sub_10001DB7C(v6, &off_10035A4D8);
    dispatch thunk of ScreenSharingSpectatorViewController.isPipped.setter();
  }
}

id sub_10021EF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10021EFF0()
{
  result = qword_1003AF3E0;
  if (!qword_1003AF3E0)
  {
    sub_100155B7C(&qword_1003AF3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF3E0);
  }

  return result;
}

id sub_10021F080()
{
  result = [objc_opt_self() civicBlurAvatarsEnabled];
  if (result)
  {
    return (sub_100014424() & 1);
  }

  return result;
}

id sub_10021F0D4()
{
  result = [objc_opt_self() civicBlurPosterEnabled];
  if (result)
  {
    return [objc_opt_self() isCommunicationSafetyEnabled];
  }

  return result;
}

uint64_t sub_10021F16C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021F1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10021F23C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v25 = _swiftEmptyArrayStorage;
  sub_10021D81C(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v20 = *i;

    a1(&v21, &v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v25 = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v18 = v23;
      v19 = v22;
      sub_10021D81C((v14 > 1), v15 + 1, 1);
      v12 = v18;
      v11 = v19;
      v6 = v25;
    }

    v6[2] = v15 + 1;
    v16 = &v6[6 * v15];
    v16[4] = v10;
    *(v16 + 5) = v11;
    *(v16 + 7) = v12;
    v16[9] = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_10021F390(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AF418);
  sub_1000058E8();
  __chkstk_darwin(v5, v6);
  v8 = (&v41 - v7);
  v41 = sub_10014EA98(&qword_1003AF420);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41, v9);
  v11 = &v41 - v10;
  *v8 = static Alignment.center.getter();
  v8[1] = v12;
  v13 = sub_10014EA98(&qword_1003AF428);
  sub_10021F898(v1, v8 + *(v13 + 44));
  sub_100008740();
  v14 = swift_allocObject();
  sub_100006A74(v14);
  sub_10022285C(v2, &v45);
  v15 = static Alignment.center.getter();
  v16 = (v8 + *(v4 + 36));
  *v16 = sub_100222854;
  v16[1] = v14;
  v16[2] = v15;
  v16[3] = v17;
  v43 = *v2;
  LODWORD(v44) = sub_10023E2B0();
  sub_100008740();
  v18 = swift_allocObject();
  sub_100006A74(v18);
  sub_10022285C(v2, &v45);
  type metadata accessor for TUCallStatus(0);
  v20 = v19;
  v21 = sub_10022289C();
  v22 = sub_100228AC0(&qword_1003AA2A0, type metadata accessor for TUCallStatus);
  View.onChange<A>(of:initial:_:)();

  sub_100008360(v8, &qword_1003AF418);
  v45 = *(v2 + 48);
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  sub_100008740();
  v23 = swift_allocObject();
  sub_100006A74(v23);
  sub_10022285C(v2, &v45);
  *&v45 = v4;
  *(&v45 + 1) = v20;
  v46 = v21;
  v47 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v41;
  View.onChange<A>(of:initial:_:)();

  (*(v42 + 8))(v11, v24);
  LOBYTE(v14) = static Edge.Set.bottom.getter();
  *(a1 + *(sub_10014EA98(&qword_1003AF458) + 36)) = v14;
  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_100221FD4(&v45);
  v28 = v45;
  LOBYTE(v11) = BYTE8(v45);
  LOBYTE(v4) = BYTE9(v45);
  sub_10014EA98(&qword_1003AF460);
  sub_100027010();
  *v29 = v28;
  *(v29 + 8) = v11;
  *(v29 + 9) = v4;
  *(v29 + 16) = v25;
  *(v29 + 24) = v27;
  KeyPath = swift_getKeyPath();
  v31 = (a1 + *(sub_10014EA98(&qword_1003AF468) + 36));
  v32 = *(sub_10014EA98(&qword_1003AF470) + 28);
  v33 = enum case for ColorScheme.dark(_:);
  type metadata accessor for ColorScheme();
  sub_100006F4C();
  (*(v34 + 104))(v31 + v32, v33);
  *v31 = KeyPath;
  v35 = static Animation.default.getter();
  LODWORD(KeyPath) = sub_10023E2B0();
  sub_10014EA98(&qword_1003AF478);
  sub_100027010();
  *v36 = v35;
  *(v36 + 8) = KeyPath;
  v37 = static Animation.default.getter();
  v45 = *(v2 + 64);
  sub_10014EA98(&qword_1003AF480);
  State.wrappedValue.getter();
  v38 = v44;
  sub_10014EA98(&qword_1003AF488);
  sub_100027010();
  *v39 = v37;
  v39[1] = v38;
  sub_10014EA98(&qword_1003AF490);
  sub_100027010();
  *v40 = 0;
  v40[1] = 0;
  v40[2] = sub_100222174;
  v40[3] = 0;
}

uint64_t sub_10021F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10014EA98(&qword_1003AF4D8);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &__src[-v6];
  v8 = sub_10014EA98(&qword_1003AF4E0);
  v9 = v8 - 8;
  v11 = __chkstk_darwin(v8, v10);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &__src[-v16];
  __chkstk_darwin(v15, v18);
  v20 = &__src[-v19];
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = sub_10014EA98(&qword_1003AF4E8);
  sub_10021FB0C(a1, &v7[*(v21 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100226E60(v7, v17, &qword_1003AF4D8);
  memcpy(&v17[*(v9 + 44)], __src, 0x70uLL);
  sub_100226E60(v17, v20, &qword_1003AF4E0);
  v22 = sub_1001FD880();
  sub_10022709C(v20, v13, &qword_1003AF4E0);
  sub_10022709C(v13, a2, &qword_1003AF4E0);
  *(a2 + *(sub_10014EA98(&qword_1003AF4F0) + 48)) = v22;

  sub_100008360(v20, &qword_1003AF4E0);

  return sub_100008360(v13, &qword_1003AF4E0);
}

uint64_t sub_10021FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_10014EA98(&qword_1003AF4F8);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v73 = (&v63 - v8);
  v9 = type metadata accessor for MoveTransition();
  v66 = *(v9 - 8);
  v67 = v9;
  v11 = __chkstk_darwin(v9, v10);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v64 = &v63 - v14;
  v68 = sub_10014EA98(&qword_1003AF500) - 8;
  __chkstk_darwin(v68, v15);
  v17 = &v63 - v16;
  v70 = sub_10014EA98(&qword_1003AF508);
  v19 = __chkstk_darwin(v70, v18);
  v72 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v69 = &v63 - v23;
  __chkstk_darwin(v22, v24);
  v71 = &v63 - v25;
  v26 = sub_100220070();
  v28 = v27;
  v30 = v29;
  v63 = v31;
  v32 = sub_10014EA98(&qword_1003AF510);
  sub_1002202F0(&v17[v32[9]]);
  v33 = sub_100220A14();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = sub_100220CBC();
  *v17 = v26;
  *(v17 + 1) = v28;
  v17[16] = v30 & 1;
  *(v17 + 3) = v63;
  v41 = &v17[v32[10]];
  *v41 = v33;
  *(v41 + 1) = v35;
  v42 = a1;
  v41[16] = v37 & 1;
  *(v41 + 3) = v39;
  v17[v32[11]] = v40;
  v43 = v32[12];
  *&v17[v43] = static Font.body.getter();
  v44 = v64;
  MoveTransition.init(edge:)();
  v45 = v66;
  v46 = v67;
  (*(v66 + 16))(v65, v44, v67);
  sub_100228AC0(&qword_1003AF518, &type metadata accessor for MoveTransition);
  v47 = v46;
  v48 = AnyTransition.init<A>(_:)();
  (*(v45 + 8))(v44, v47);
  *&v17[*(sub_10014EA98(&qword_1003AF520) + 36)] = v48;
  v49 = static Color.black.getter();
  v50 = static Edge.Set.all.getter();
  v51 = &v17[*(v68 + 44)];
  *v51 = v49;
  v51[8] = v50;
  if (!sub_1001FD880() || (, v77 = *(v42 + 48), sub_10014EA98(&qword_1003AFBC0), State.wrappedValue.getter(), v52 = 0.0, v76 == 1))
  {
    v52 = 1.0;
  }

  v53 = v69;
  sub_100226E60(v17, v69, &qword_1003AF500);
  v54 = v71;
  *(v53 + *(v70 + 36)) = v52;
  sub_100226E60(v53, v54, &qword_1003AF508);
  v55 = static HorizontalAlignment.center.getter();
  v56 = v73;
  *v73 = v55;
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  v57 = sub_10014EA98(&qword_1003AF528);
  sub_100220D4C(v42, v56 + *(v57 + 44));
  v58 = v72;
  sub_10022709C(v54, v72, &qword_1003AF508);
  v59 = v75;
  sub_10022709C(v56, v75, &qword_1003AF4F8);
  v60 = v74;
  sub_10022709C(v58, v74, &qword_1003AF508);
  v61 = sub_10014EA98(&qword_1003AF530);
  sub_10022709C(v59, v60 + *(v61 + 48), &qword_1003AF4F8);
  sub_100008360(v56, &qword_1003AF4F8);
  sub_100008360(v54, &qword_1003AF508);
  sub_100008360(v59, &qword_1003AF4F8);
  return sub_100008360(v58, &qword_1003AF508);
}

uint64_t sub_100220070()
{
  v1 = sub_10014EA98(&qword_1003AF498);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v16[-v3];
  v5 = type metadata accessor for ClarityUIContact();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_10023E2B0() == 3 || (v17 = *(v0 + 48), sub_10014EA98(&qword_1003AFBC0), State.wrappedValue.getter(), v16[15] == 1))
  {
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    v11 = sub_10023E310();
    sub_10023ADF0(v11, v4);

    if (sub_100006AC0(v4, 1, v5) == 1)
    {
      sub_100008360(v4, &qword_1003AF498);
      v12 = sub_10023E388();
      v14 = v13;
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v12 = ClarityUIContact.displayName.getter();
      v14 = v15;
      (*(v6 + 8))(v9, v5);
    }

    *&v17 = v12;
    *(&v17 + 1) = v14;
    sub_100028A30();
    return Text.init<A>(_:)();
  }
}

uint64_t sub_1002202F0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = type metadata accessor for ClarityUIContactAvatar();
  v39 = *(v43 - 8);
  __chkstk_darwin(v43, v2);
  v41 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10014EA98(&qword_1003AF498);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v37 - v6;
  v8 = type metadata accessor for ClarityUIContact();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v40 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10014EA98(&qword_1003AF5C0);
  __chkstk_darwin(v42, v11);
  v13 = (v37 - v12);
  v14 = sub_10014EA98(&qword_1003AF5C8);
  __chkstk_darwin(v14, v15);
  v17 = (v37 - v16);
  v18 = sub_10014EA98(&qword_1003AF5D0);
  __chkstk_darwin(v18, v19);
  v21 = v37 - v20;
  v22 = sub_10014EA98(&qword_1003AF5D8);
  __chkstk_darwin(v22 - 8, v23);
  v25 = v37 - v24;
  v46 = *(v1 + 48);
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  if (v45 == 1)
  {
    Image.init(systemName:)();
    v26 = enum case for Image.TemplateRenderingMode.original(_:);
    v27 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v27 - 8) + 104))(v25, v26, v27);
    sub_100006848(v25, 0, 1, v27);
    v28 = Image.renderingMode(_:)();

    sub_100008360(v25, &qword_1003AF5D8);
    v29 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    *v17 = v28;
    v17[1] = KeyPath;
    v17[2] = v29;
    swift_storeEnumTagMultiPayload();

    sub_10014EA98(&qword_1003AEBA0);
    sub_1002055DC();
    sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar);
    _ConditionalContent<>.init(storage:)();
    sub_10022709C(v21, v13, &qword_1003AF5D0);
    swift_storeEnumTagMultiPayload();
    sub_1002270E4();
    _ConditionalContent<>.init(storage:)();

    return sub_100008360(v21, &qword_1003AF5D0);
  }

  else
  {
    v37[1] = v18;
    v32 = v43;
    v33 = sub_10023E310();
    sub_10023ADF0(v33, v7);

    if (sub_100006AC0(v7, 1, v8) == 1)
    {
      sub_100008360(v7, &qword_1003AF498);
      *v13 = Image.init(systemName:)();
      swift_storeEnumTagMultiPayload();
      sub_1002270E4();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v34 = v38;
      (*(v38 + 32))(v40, v7, v8);
      v35 = v41;
      ClarityUIContact.avatar.getter();
      v36 = v39;
      (*(v39 + 16))(v17, v35, v32);
      swift_storeEnumTagMultiPayload();
      sub_10014EA98(&qword_1003AEBA0);
      sub_1002055DC();
      sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar);
      _ConditionalContent<>.init(storage:)();
      sub_10022709C(v21, v13, &qword_1003AF5D0);
      swift_storeEnumTagMultiPayload();
      sub_1002270E4();
      _ConditionalContent<>.init(storage:)();
      sub_100008360(v21, &qword_1003AF5D0);
      (*(v36 + 8))(v41, v32);
      return (*(v34 + 8))(v40, v8);
    }
  }
}

uint64_t sub_100220A14()
{
  v1 = sub_10014EA98(&qword_1003AF498);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v17[-v3];
  v5 = type metadata accessor for ClarityUIContact();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v0 + 48);
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  if (v17[15] == 1)
  {
    goto LABEL_10;
  }

  v10 = sub_10023E2B0();
  if (v10 == 4)
  {
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    sub_100222260();
LABEL_10:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  v11 = sub_10023E310();
  sub_10023ADF0(v11, v4);

  if (sub_100006AC0(v4, 1, v5) == 1)
  {
    sub_100008360(v4, &qword_1003AF498);
    v12 = sub_10023E388();
    v14 = v13;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v12 = ClarityUIContact.displayName.getter();
    v14 = v15;
    (*(v6 + 8))(v9, v5);
  }

  *&v18 = v12;
  *(&v18 + 1) = v14;
  sub_100028A30();
  return Text.init<A>(_:)();
}

BOOL sub_100220CBC()
{
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  if (v3)
  {
    return 1;
  }

  v0 = sub_10023E2B0();
  return (v0 - 3) < 2 || v0 == 1 && sub_1002221FC();
}

uint64_t sub_100220D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_10014EA98(&qword_1003AF538);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v53[-v5];
  v63 = sub_10014EA98(&qword_1003AF540);
  v8 = __chkstk_darwin(v63, v7);
  v67 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v53[-v12];
  __chkstk_darwin(v11, v14);
  v66 = &v53[-v15];
  v17 = *a1;
  v16 = a1[1];
  swift_retain_n();
  v64 = v16;

  LODWORD(v62) = sub_10023E2B0();
  v84 = *(a1 + 3);
  v69 = *(a1 + 3);
  v59 = sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  LODWORD(v61) = LOBYTE(v68[0]);
  v18 = sub_100220CBC();
  v58 = (ClarityUIPreferences.inCallKeypadEnabled.getter() & 1) != 0 && sub_10023E3EC();
  v19 = ClarityUIPreferences.speakerOptionEnabled.getter();
  v65 = v17;
  if (v19)
  {
    v20 = sub_10023E240();
    v21 = [v20 isVideo];

    v57 = v21 ^ 1;
  }

  else
  {
    v57 = 0;
  }

  v69 = *(a1 + 1);
  v70 = *(a1 + 32);
  sub_10014EA98(&qword_1003AF548);
  Binding.projectedValue.getter();
  v55 = *(&v68[0] + 1);
  v56 = *&v68[0];
  v54 = LOBYTE(v68[1]);
  v22 = a1[5];
  v23 = swift_allocObject();
  memcpy((v23 + 16), a1, 0x98uLL);
  v24 = v22;
  sub_10022285C(a1, &v69);
  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_1002213E4();
  if (sub_100220CBC())
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = a1[17];
  v30 = v6;
  v31 = v18;
  v32 = v58;
  v33 = &v13[*(v63 + 36)];
  sub_100226E60(v30, v33, &qword_1003AF538);
  *(v33 + *(sub_10014EA98(&qword_1003AF550) + 36)) = v28;
  v34 = (v33 + *(sub_10014EA98(&qword_1003AF558) + 36));
  *v34 = v25;
  v34[1] = v27;
  v35 = v64;
  *v13 = v65;
  *(v13 + 1) = v35;
  *(v13 + 4) = v62;
  *(v13 + 3) = v29;
  v13[32] = v61;
  v13[33] = v31;
  v13[34] = v32;
  v13[35] = v57;
  v36 = v55;
  *(v13 + 5) = v56;
  *(v13 + 6) = v36;
  v13[56] = v54;
  *(v13 + 8) = v24;
  *(v13 + 9) = sub_100226E58;
  *(v13 + 10) = v23;
  v37 = v13;
  v38 = v66;
  sub_100226E60(v37, v66, &qword_1003AF540);
  v63 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = v79;
  v61 = v78;
  v62 = v80;
  v40 = v81;
  v64 = v82;
  v56 = v83;
  v41 = static Anchor.Source<A>.bounds.getter();
  LOBYTE(v69) = v39;
  v57 = v39;
  v58 = v40;
  v68[0] = v84;
  State.projectedValue.getter();
  v42 = *(&v69 + 1);
  v55 = v69;
  LODWORD(v59) = v70;
  v43 = swift_allocObject();
  memcpy((v43 + 16), a1, 0x98uLL);
  v44 = v38;
  v45 = v67;
  sub_10022709C(v44, v67, &qword_1003AF540);
  v46 = v45;
  v47 = v60;
  sub_10022709C(v46, v60, &qword_1003AF540);
  v48 = sub_10014EA98(&qword_1003AF560);
  v49 = *(v48 + 48);
  *&v68[0] = v63;
  *(&v68[0] + 1) = v61;
  LOBYTE(v68[1]) = v39;
  *(&v68[1] + 1) = v62;
  LOBYTE(v68[2]) = v40;
  v50 = v56;
  *(&v68[2] + 1) = v64;
  *&v68[3] = v56;
  *(&v68[3] + 1) = v41;
  *&v68[4] = sub_100228E7C;
  *(&v68[4] + 1) = 0;
  memcpy((v47 + v49), v68, 0x50uLL);
  v51 = v47 + *(v48 + 64);
  *v51 = v55;
  *(v51 + 8) = v42;
  *(v51 + 16) = v59;
  *(v51 + 24) = v65;
  *(v51 + 32) = sub_100226F24;
  *(v51 + 40) = v43;
  sub_10022285C(a1, &v69);
  sub_10022709C(v68, &v69, &qword_1003AF568);

  sub_100008360(v66, &qword_1003AF540);

  *&v69 = v63;
  *(&v69 + 1) = v61;
  v70 = v57;
  v71 = v62;
  v72 = v58;
  v73 = v64;
  v74 = v50;
  v75 = v41;
  v76 = sub_100228E7C;
  v77 = 0;
  sub_100008360(&v69, &qword_1003AF568);
  return sub_100008360(v67, &qword_1003AF540);
}

void sub_100221364()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10023E240();
  [v0 disconnectCall:v1];
}

uint64_t sub_1002213E4()
{
  v0 = sub_10014EA98(&qword_1003AF578);
  __chkstk_darwin(v0, v1);
  v3 = v16 - v2;
  v4 = sub_10014EA98(&qword_1003AF580);
  __chkstk_darwin(v4, v5);
  v7 = v16 - v6;
  sub_10023E2B0();
  if (sub_100222260())
  {
    static Material.thin.getter();
    *&v7[*(sub_10014EA98(&qword_1003AF5A8) + 56)] = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v8 = &v7[*(sub_10014EA98(&qword_1003AF598) + 36)];
    v9 = v16[1];
    *v8 = v16[0];
    *(v8 + 1) = v9;
    *(v8 + 2) = v16[2];
    v10 = static Alignment.center.getter();
    v12 = v11;
    v13 = &v7[*(v4 + 36)];
    sub_100222310();
    v14 = &v13[*(sub_10014EA98(&qword_1003AF5B8) + 36)];
    *v14 = v10;
    v14[1] = v12;
    sub_10022709C(v7, v3, &qword_1003AF580);
    swift_storeEnumTagMultiPayload();
    sub_100226F2C();
    _ConditionalContent<>.init(storage:)();
    return sub_100008360(v7, &qword_1003AF580);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100226F2C();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100221668()
{
  if (sub_10023E2B0() == 3)
  {
    v0 = [objc_opt_self() sharedInstance];
    v1 = sub_10023E240();
    [v0 disconnectCall:v1];
  }

  else
  {
    sub_10014EA98(&qword_1003AFBC0);
    State.wrappedValue.setter();
  }
}

uint64_t sub_10022173C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ContactBackground();
  __chkstk_darwin(v4, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10014EA98(&qword_1003AF4B8);
  __chkstk_darwin(v8, v9);
  v11 = &v22[-v10];
  v12 = *a1;
  v13 = *a2;

  v14 = sub_10023E240();
  v15 = [v14 isVideo];

  if (v15)
  {

    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    memcpy((v16 + 24), a2, 0x98uLL);
    *v11 = sub_100226E2C;
    v11[1] = v16;
    swift_storeEnumTagMultiPayload();

    sub_10022285C(a2, v22);
    sub_10014EA98(&qword_1003AF4C0);
    sub_100027E08(&qword_1003AF4C8, &qword_1003AF4C0);
    sub_100228AC0(&qword_1003AF4D0, type metadata accessor for ContactBackground);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v18 = sub_10023E310();
    sub_10023ADF0(v18, v7 + v4[5]);

    *v7 = v13;
    *(v7 + v4[6]) = 0x404E000000000000;
    v19 = v4[7];
    *(v7 + v19) = static Color.black.getter();
    v20 = v4[8];
    static Color.black.getter();
    v21 = Color.opacity(_:)();

    *(v7 + v20) = v21;
    sub_100226D6C(v7, v11);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF4C0);
    sub_100027E08(&qword_1003AF4C8, &qword_1003AF4C0);
    sub_100228AC0(&qword_1003AF4D0, type metadata accessor for ContactBackground);
    _ConditionalContent<>.init(storage:)();
    return sub_100226DD0(v7);
  }
}

uint64_t sub_100221A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15[2] = a3;
  v15[3] = a1;
  v5 = sub_10021F23C(sub_100226E38, v15, a2);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 48 * v6);
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = v7[1];
    v12 = v7[2];
    v13 = v7[3];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = v12;
  a4[5] = v13;
  return result;
}

uint64_t sub_100221B4C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  Height = CGRectGetHeight(v9);
  GeometryProxy.subscript.getter();
  v5 = CGRectGetHeight(v8);
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  v6 = 1.0;
  if (LOBYTE(v8.origin.x))
  {
    v6 = 0.5;
  }

  *a2 = *a1;
  *(a2 + 8) = Height;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;
}

uint64_t sub_100221C74(int a1, int a2)
{
  v3 = v2;
  v6 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v19 - v8;
  v11 = v2[8];
  v10 = v2[9];
  v23 = v10;
  v24[0] = v11;
  v20 = v11;
  v21 = v10;
  sub_10022709C(v24, &v22, &qword_1003AC8A0);
  sub_10022709C(&v23, &v22, &qword_1003AF4B0);
  sub_10022709C(v24, &v22, &qword_1003AC8A0);
  sub_10022709C(&v23, &v22, &qword_1003AF4B0);
  sub_10014EA98(&qword_1003AF480);
  State.wrappedValue.getter();
  if (v22)
  {
    sub_10014EA98(&qword_1003AAC00);
    Task.cancel()();
  }

  if (a1 != 3 || a2 != 1)
  {
    sub_100008360(v24, &qword_1003AC8A0);
    sub_100008360(&v23, &qword_1003AF4B0);
LABEL_10:
    v20 = v11;
    v21 = v10;
    v22 = 0;
    goto LABEL_11;
  }

  v13 = sub_100222260();
  sub_100008360(v24, &qword_1003AC8A0);
  sub_100008360(&v23, &qword_1003AF4B0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for TaskPriority();
  sub_100006848(v9, 1, 1, v14);
  type metadata accessor for MainActor();
  sub_10022285C(v3, &v20);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  memcpy(v16 + 4, v3, 0x98uLL);
  v17 = sub_10016ECCC();
  v20 = v11;
  v21 = v10;
  v22 = v17;
LABEL_11:
  State.wrappedValue.setter();
  sub_100008360(v24, &qword_1003AC8A0);
  return sub_100008360(&v23, &qword_1003AF4B0);
}

void sub_100221F78()
{
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  sub_1001FD5BC(v0);
}

uint64_t sub_100221FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&qword_1003AF498);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_10023E310();
  sub_10023ADF0(v6, v5);

  v7 = type metadata accessor for ClarityUIContact();
  v8 = sub_100006AC0(v5, 1, v7);
  sub_100008360(v5, &qword_1003AF498);
  if (v8 == 1)
  {
    v9 = sub_10023E240();
    v10 = [v9 isVideo];

    if ((v10 & 1) == 0)
    {
      if (!sub_1001FD880())
      {
        v16 = static Color.gray.getter();
        v17 = static Edge.Set.all.getter();
        v18 = v16;
        v19 = v17;
        v20 = 1;
        goto LABEL_6;
      }
    }
  }

  v11 = static Color.black.getter();
  v12 = static Edge.Set.all.getter();
  v18 = v11;
  v19 = v12;
  v20 = 0;
LABEL_6:
  sub_10014EA98(&qword_1003AF4A0);
  sub_100222988();
  result = _ConditionalContent<>.init(storage:)();
  v14 = v22;
  v15 = v23;
  *a1 = v21;
  *(a1 + 8) = v14;
  *(a1 + 9) = v15;
  return result;
}

void sub_100222174()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 videoDeviceController];

  [v1 stopPreview];
}

BOOL sub_1002221FC()
{
  sub_10014EA98(&qword_1003AF480);
  State.wrappedValue.getter();
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_100222260()
{
  v0 = sub_10023E240();
  v1 = [v0 isVideo];

  if ((v1 & 1) != 0 || (ClarityUIPreferences.inCallKeypadEnabled.getter() & 1) != 0 && sub_10023E3EC())
  {
    return 0;
  }

  if ((ClarityUIPreferences.speakerOptionEnabled.getter() & 1) == 0)
  {
    return 1;
  }

  v3 = sub_10023E240();
  v2 = [v3 isVideo];

  return v2;
}

uint64_t sub_100222310()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8, v1);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);

  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringKey.init(stringInterpolation:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  sub_1001AD540(v4, v6, v8 & 1);

  sub_10023E2B0();
  static Animation.linear(duration:)();
  View.repeatingOpacity(from:to:animation:)();

  sub_1001AD540(v9, v11, v13 & 1);
}

uint64_t sub_1002224FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = *(a4 + 128);
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_1002225B4;

  return static Task<>.sleep(nanoseconds:)(v6);
}

uint64_t sub_1002225B4()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1002227AC;
  }

  else
  {
    v4 = sub_100222710;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100222710()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *(v1 + 64);
  *(v0 + 32) = 0;
  sub_10014EA98(&qword_1003AF480);
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002227AC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10022289C()
{
  result = qword_1003AF430;
  if (!qword_1003AF430)
  {
    sub_100155B7C(&qword_1003AF418);
    sub_100027E08(&qword_1003AF438, &qword_1003AF440);
    sub_100027E08(&qword_1003AF448, &qword_1003AF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF430);
  }

  return result;
}

unint64_t sub_100222988()
{
  result = qword_1003AF4A8;
  if (!qword_1003AF4A8)
  {
    sub_100155B7C(&qword_1003AF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF4A8);
  }

  return result;
}

uint64_t sub_100222A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = sub_100155B7C(&qword_1003AF928);
  v3 = *(a1 + 16);
  v4 = sub_100027E08(&qword_1003AF930, &qword_1003AF928);
  v5 = *(a1 + 24);
  v38 = v26;
  v39 = v3;
  v40 = v4;
  v41 = v5;
  v6 = type metadata accessor for ClarityUITitleHeader();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v25 - v9;
  sub_100155B7C(&qword_1003AE898);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v25 - v18;
  v33 = v3;
  v34 = v5;
  v35 = v27;
  v29 = v3;
  v30 = v5;
  v31 = v27;
  sub_1001EF6FC(sub_100228684, v32, sub_100228690);
  WitnessTable = swift_getWitnessTable();
  View.zIndex(_:)();
  (*(v7 + 8))(v10, v6);
  v21 = sub_100027E08(&qword_1003AE890, &qword_1003AE898);
  v36 = WitnessTable;
  v37 = v21;
  v22 = swift_getWitnessTable();
  sub_1001F0504(v16, v11, v22);
  v23 = *(v12 + 8);
  v23(v16, v11);
  sub_1001F0504(v19, v11, v22);
  return (v23)(v19, v11);
}

void *sub_100222D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v10 = 1;
  sub_100222E20(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10022709C(__dst, v7, &qword_1003AF938);
  sub_100008360(v12, &qword_1003AF938);
  memcpy(&v9[7], __dst, 0x48uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x4FuLL);
}

uint64_t sub_100222E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for CallTitleHeader();
  v9 = Text.font(_:)();
  v13 = v9;
  v14 = v10;
  v15 = *(a1 + *(v8 + 44)) == 0;
  v16 = v11 & 1;
  v17 = 0.0;
  if (!v15)
  {
    v17 = 1.0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11 & 1;
  *(a2 + 56) = v12;
  *(a2 + 64) = v17;
  sub_1001AD550(v4, v5, v6);

  sub_1001AD550(v4, v5, v6);

  sub_1001AD550(v13, v14, v16);

  sub_1001AD540(v13, v14, v16);

  sub_1001AD540(v4, v5, v6);
}

uint64_t sub_100222F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallTitleHeader();
  sub_1001F0504(a1 + *(v9 + 36), a2, a3);
  sub_1001F0504(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_100223074()
{
  v1 = sub_10014EA98(&qword_1003AF818);
  __chkstk_darwin(v1, v2);
  v4 = &v14[-v3];
  v5 = *(v0 + 24);
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = v5;
  v4[16] = 0;
  v6 = sub_10014EA98(&qword_1003AF820);
  sub_1002231C4(v0, &v4[*(v6 + 44)]);
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = &v4[*(v1 + 36)];
  *v8 = v7;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  *(v8 + 4) = v12;
  v8[40] = 0;
  v14[15] = 0;
  sub_100228294();
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return sub_100008360(v4, &qword_1003AF818);
}

uint64_t sub_1002231C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v156 = sub_10014EA98(&qword_1003AF848);
  __chkstk_darwin(v156, v3);
  v147 = &v124 - v4;
  v146 = sub_10014EA98(&qword_1003AF850);
  __chkstk_darwin(v146, v5);
  v138 = &v124 - v6;
  v7 = sub_10014EA98(&qword_1003AF858);
  v130 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v129 = &v124 - v9;
  v10 = sub_10014EA98(&qword_1003AF860);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v133 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v140 = &v124 - v15;
  v139 = sub_10014EA98(&qword_1003AF868);
  v128 = *(v139 - 8);
  __chkstk_darwin(v139, v16);
  v127 = &v124 - v17;
  v18 = sub_10014EA98(&qword_1003AF870);
  v20 = __chkstk_darwin(v18 - 8, v19);
  v136 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v135 = &v124 - v23;
  v132 = sub_10014EA98(&qword_1003AF878);
  v126 = *(v132 - 8);
  __chkstk_darwin(v132, v24);
  v125 = &v124 - v25;
  v26 = sub_10014EA98(&qword_1003AF880);
  v28 = __chkstk_darwin(v26 - 8, v27);
  v134 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v143 = &v124 - v31;
  v32 = sub_10014EA98(&qword_1003AF888);
  v34 = __chkstk_darwin(v32 - 8, v33);
  v145 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v148 = &v124 - v37;
  v142 = sub_10014EA98(&qword_1003AF890);
  v38 = *(v142 - 8);
  __chkstk_darwin(v142, v39);
  v131 = &v124 - v40;
  v41 = sub_10014EA98(&qword_1003AF898);
  v43 = __chkstk_darwin(v41 - 8, v42);
  v144 = &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v47 = &v124 - v46;
  v149 = sub_10014EA98(&qword_1003AF8A0);
  __chkstk_darwin(v149, v48);
  v151 = &v124 - v49;
  v152 = sub_10014EA98(&qword_1003AF810);
  v50 = *(v152 - 8);
  __chkstk_darwin(v152, v51);
  v141 = &v124 - v52;
  v53 = sub_10014EA98(&qword_1003AF8A8);
  v55 = __chkstk_darwin(v53 - 8, v54);
  v155 = &v124 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v57);
  v59 = &v124 - v58;
  v60 = sub_10014EA98(&qword_1003AF8B0);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60, v62);
  v64 = &v124 - v63;
  v65 = sub_10014EA98(&qword_1003AF8B8);
  v67 = __chkstk_darwin(v65 - 8, v66);
  v153 = &v124 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v67, v69);
  v73 = &v124 - v72;
  v74 = *(a1 + 16);
  v150 = &v124 - v72;
  v137 = v7;
  if (v74 == 4)
  {
    __chkstk_darwin(v70, v71);
    *(&v124 - 2) = a1;
    sub_100228630();
    ClarityUIButtonRowContainer.init(content:)();
    v73 = v150;
    (*(v61 + 32))(v150, v64, v60);
    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v76 = sub_100006848(v73, v75, 1, v60);
  if (*(a1 + 32))
  {
    __chkstk_darwin(v76, v77);
    *(&v124 - 2) = a1;
    sub_100227DF0();
    v78 = v141;
    ClarityUIButtonRowContainer.init(content:)();
    v79 = v152;
    (*(v50 + 16))(v151, v78, v152);
    swift_storeEnumTagMultiPayload();
    sub_100027E08(&qword_1003AF808, &qword_1003AF810);
    sub_100027E08(&qword_1003AF8D0, &qword_1003AF848);
    _ConditionalContent<>.init(storage:)();
    (*(v50 + 8))(v78, v79);
  }

  else
  {
    v80 = sub_1001FD960();
    if (v80)
    {
      __chkstk_darwin(v80, v81);
      *(&v124 - 2) = a1;
      sub_1002285CC();
      v82 = v131;
      ClarityUIButtonRowContainer.init(content:)();
      v83 = v142;
      (*(v38 + 32))(v47, v82, v142);
      v84 = 0;
    }

    else
    {
      v84 = 1;
      v83 = v142;
    }

    v141 = v47;
    v142 = v59;
    v85 = 1;
    sub_100006848(v47, v84, 1, v83);
    if ((sub_1001FD988() & 1) == 0)
    {
      v86 = sub_1001FD974();
      if (v86)
      {
        __chkstk_darwin(v86, v87);
        *(&v124 - 2) = a1;
        sub_100228570();
        v88 = v125;
        ClarityUIButtonRowContainer.init(content:)();
        v89 = v143;
        v90 = v88;
        v91 = v132;
        (*(v126 + 32))(v143, v90, v132);
        v92 = 0;
        v93 = v137;
        v94 = v135;
      }

      else
      {
        v92 = 1;
        v93 = v137;
        v94 = v135;
        v89 = v143;
        v91 = v132;
      }

      v95 = 1;
      v96 = sub_100006848(v89, v92, 1, v91);
      if (*(a1 + 34))
      {
        __chkstk_darwin(v96, v97);
        *(&v124 - 2) = a1;
        sub_10014EA98(&qword_1003AF8F8);
        sub_100228490();
        v98 = v127;
        ClarityUIButtonRowContainer.init(content:)();
        (*(v128 + 32))(v94, v98, v139);
        v95 = 0;
      }

      v99 = v133;
      v100 = 1;
      v101 = sub_100006848(v94, v95, 1, v139);
      if (*(a1 + 35))
      {
        __chkstk_darwin(v101, v102);
        *(&v124 - 2) = a1;
        sub_10014EA98(&qword_1003AF8E0);
        sub_1002283A8();
        v103 = v129;
        ClarityUIButtonRowContainer.init(content:)();
        (*(v130 + 32))(v140, v103, v93);
        v100 = 0;
      }

      v104 = v140;
      sub_100006848(v140, v100, 1, v93);
      v105 = v143;
      v106 = v134;
      sub_10022709C(v143, v134, &qword_1003AF880);
      v107 = v136;
      sub_10022709C(v94, v136, &qword_1003AF870);
      sub_10022709C(v104, v99, &qword_1003AF860);
      v108 = v138;
      sub_10022709C(v106, v138, &qword_1003AF880);
      v109 = v94;
      v110 = sub_10014EA98(&qword_1003AF8C0);
      sub_10022709C(v107, v108 + *(v110 + 48), &qword_1003AF870);
      sub_10022709C(v99, v108 + *(v110 + 64), &qword_1003AF860);
      sub_100008360(v104, &qword_1003AF860);
      sub_100008360(v109, &qword_1003AF870);
      sub_100008360(v105, &qword_1003AF880);
      sub_100008360(v99, &qword_1003AF860);
      sub_100008360(v107, &qword_1003AF870);
      sub_100008360(v106, &qword_1003AF880);
      sub_100226E60(v108, v148, &qword_1003AF850);
      v85 = 0;
    }

    v111 = v148;
    sub_100006848(v148, v85, 1, v146);
    v112 = v141;
    v113 = v144;
    sub_10022709C(v141, v144, &qword_1003AF898);
    v114 = v145;
    sub_10022709C(v111, v145, &qword_1003AF888);
    v115 = v147;
    sub_10022709C(v113, v147, &qword_1003AF898);
    v116 = sub_10014EA98(&qword_1003AF8C8);
    sub_10022709C(v114, v115 + *(v116 + 48), &qword_1003AF888);
    sub_100008360(v114, &qword_1003AF888);
    sub_100008360(v113, &qword_1003AF898);
    sub_10022709C(v115, v151, &qword_1003AF848);
    swift_storeEnumTagMultiPayload();
    sub_100027E08(&qword_1003AF808, &qword_1003AF810);
    sub_100027E08(&qword_1003AF8D0, &qword_1003AF848);
    v117 = v142;
    _ConditionalContent<>.init(storage:)();
    v59 = v117;
    sub_100008360(v115, &qword_1003AF848);
    sub_100008360(v111, &qword_1003AF888);
    sub_100008360(v112, &qword_1003AF898);
    v73 = v150;
  }

  v118 = v153;
  sub_10022709C(v73, v153, &qword_1003AF8B8);
  v119 = v155;
  sub_10022709C(v59, v155, &qword_1003AF8A8);
  v120 = v154;
  sub_10022709C(v118, v154, &qword_1003AF8B8);
  v121 = sub_10014EA98(&qword_1003AF8D8);
  sub_10022709C(v119, v120 + *(v121 + 48), &qword_1003AF8A8);
  v122 = v120 + *(v121 + 64);
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_100008360(v59, &qword_1003AF8A8);
  sub_100008360(v73, &qword_1003AF8B8);
  sub_100008360(v119, &qword_1003AF8A8);
  return sub_100008360(v118, &qword_1003AF8B8);
}

uint64_t sub_1002242F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[10];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_10022433C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10014EA98(&qword_1003AF548);
  result = Binding.projectedValue.getter();
  v5 = 1.0;
  if (*(a1 + 33))
  {
    v5 = 0.0;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1002243C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 33);
  v3 = 1.0;
  v4 = *(a1 + 8);
  if (v2)
  {
    v3 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_100224430()
{
  v1 = sub_10014EA98(&qword_1003AF790);
  __chkstk_darwin(v1, v2);
  v4 = &v34[-v3];
  v5 = sub_10014EA98(&qword_1003AF798);
  __chkstk_darwin(v5, v6);
  v8 = &v34[-v7];
  v10 = *v0;
  v9 = v0[1];
  LOBYTE(v7) = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v9;
  v36 = v7;
  sub_10014EA98(&qword_1003AF548);
  v11 = Binding.wrappedValue.getter();
  if (v34[0] == 1)
  {
    v35[0] = v10;
    v13 = swift_allocObject();
    v14 = *(v0 + 1);
    v13[1] = *v0;
    v13[2] = v14;
    v13[3] = *(v0 + 2);
    sub_100228238(v35, v34);

    v15 = static Anchor.Source<A>.bounds.getter();
    v16 = static Color.black.getter();
    v17 = static Edge.Set.all.getter();
    *v8 = sub_100228230;
    *(v8 + 1) = v13;
    *(v8 + 2) = v15;
    *(v8 + 3) = sub_100228E7C;
    *(v8 + 4) = 0;
    *(v8 + 5) = v16;
    v8[48] = v17;
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF7B8);
    sub_100227E44();
    sub_100228008();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v11, v12);
    *&v34[-16] = v0;
    sub_100227DF0();
    ClarityUIButtonRowContainer.init(content:)();
    static ClarityUIMetrics.backButtonPadding.getter();
    v19 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = &v4[*(sub_10014EA98(&qword_1003AF7A8) + 36)];
    *v28 = v19;
    *(v28 + 1) = v21;
    *(v28 + 2) = v23;
    *(v28 + 3) = v25;
    *(v28 + 4) = v27;
    v28[40] = 0;
    v29 = static Anchor.Source<A>.bounds.getter();
    v30 = &v4[*(sub_10014EA98(&qword_1003AF7B0) + 36)];
    *v30 = v29;
    v30[1] = sub_100228E7C;
    v30[2] = 0;
    v31 = static Color.black.getter();
    v32 = static Edge.Set.all.getter();
    v33 = &v4[*(v1 + 36)];
    *v33 = v31;
    v33[8] = v32;
    sub_10022709C(v4, v8, &qword_1003AF790);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF7B8);
    sub_100227E44();
    sub_100228008();
    _ConditionalContent<>.init(storage:)();
    return sub_100008360(v4, &qword_1003AF790);
  }
}

uint64_t sub_100224848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v2;
}

uint64_t sub_100224890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10014EA98(&qword_1003AF570);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  *(v4 + 32) = a1;
  *a2 = v4;
}

uint64_t sub_100224938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v23 = a2;
  v22 = type metadata accessor for BorderedProminentButtonStyle();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10014EA98(&qword_1003AA9C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v21 - v9;

  sub_10014EA98(&qword_1003AA9E0);
  v11 = sub_100155B7C(&qword_1003AA9E8);
  v12 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v13 = sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  v14 = sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0);
  sub_100228AC0(&qword_1003AF990, &type metadata accessor for BorderedProminentButtonStyle);
  v16 = v22;
  v15 = v23;
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v5, v16);
  (*(v7 + 8))(v10, v6);
  v17 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10014EA98(&qword_1003AF998);
  v20 = (v15 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v17;
  return result;
}

void sub_100224C8C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10023E240();
  [v0 answerCall:v1];
}

uint64_t sub_100224D0C()
{
  v0 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10014EA98(&qword_1003AA9E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11 - v8;
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100224F60@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100224FD8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225020(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  sub_10014EA98(&qword_1003AA9E8);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);

  return Button.init(action:label:)();
}

uint64_t sub_1002251CC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100225244@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225290()
{
  v0 = sub_10014EA98(&qword_1003AF980);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v6[-v3];

  sub_10014EA98(&qword_1003AA9E8);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  Button.init(action:label:)();
  v6[15] = sub_10024B11C() & 1;
  sub_100027E08(&qword_1003AF988, &qword_1003AF980);
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002254F0@<X0>(uint64_t a1@<X8>)
{
  sub_10024B11C();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100225588@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002255D0(void *a1)
{
  v2 = sub_10014EA98(&qword_1003AF980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  v7 = a1;
  sub_10014EA98(&qword_1003AA9E8);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  Button.init(action:label:)();
  v11 = sub_1001FD988() & 1;
  sub_100027E08(&qword_1003AF988, &qword_1003AF980);
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100225840@<X0>(uint64_t a1@<X8>)
{
  sub_1001FD988();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1002258D8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225920(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_10014EA98(&qword_1003AA9E8);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);

  return Button.init(action:label:)();
}

uint64_t sub_100225A5C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100225AD4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AA9C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v17[-v9];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v18 = a1;
  v19 = a2;
  v20 = a3;

  sub_10014EA98(&qword_1003AA9E0);
  v12 = sub_100155B7C(&qword_1003AA9E8);
  v13 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v14 = sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  v15 = sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0);
  sub_100228988();
  View.buttonStyle<A>(_:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100225DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10014EA98(&qword_1003AA9E8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v18 - v15;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8);
  sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_100226010@<X0>(uint64_t a1@<X8>)
{
  sub_10023E2B0();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1002260AC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100226100@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = type metadata accessor for PlatterButtonType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonStyleConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10014EA98(&qword_1003AF968);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v24 - v17;
  (*(v10 + 16))(v13, v25, v9);
  v27 = a2;
  if (a2)
  {
    static Color.black.getter();
  }

  else
  {
    static Color.white.getter();
  }

  (*(v5 + 104))(v8, enum case for PlatterButtonType.roundedRectangle(_:), v4);
  sub_1002289E8();
  PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
  v19 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v21 = v26;
  (*(v15 + 32))(v26, v18, v14);
  result = sub_10014EA98(&qword_1003AF978);
  v23 = (v21 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v19;
  return result;
}

uint64_t sub_100226398(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Material();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static Color.white.getter();
    Color._apply(to:)();
  }

  else
  {
    static Material.ultraThin.getter();
    Material._apply(to:)();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1002264F4(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonStyleConfiguration();
  __chkstk_darwin(v7, v8);
  (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v12[1] = static Color.red.getter();
  static Color.white.getter();
  (*(v3 + 104))(v6, enum case for PlatterButtonType.ultraRoundedRectangle(_:), v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

void *sub_10022669C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10014EA98(&qword_1003AF498);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ClarityUIContact();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10023E240();
  v18 = [v17 isVideo];

  if (v18)
  {
    goto LABEL_7;
  }

  v19 = type metadata accessor for ContactBackground();
  sub_10022709C(v2 + *(v19 + 20), v11, &qword_1003AF498);
  if (sub_100006AC0(v11, 1, v12) == 1)
  {
    sub_100008360(v11, &qword_1003AF498);
LABEL_7:
    v26 = static Color.clear.getter();
    __src[0] = 1;
    v37[0] = v26;
    BYTE1(v37[8]) = 1;
    sub_10014EA98(&qword_1003AF780);
    sub_100227D5C();
    _ConditionalContent<>.init(storage:)();
    return memcpy(v30, __dst, 0x42uLL);
  }

  (*(v13 + 32))(v16, v11, v12);
  if (!ClarityUIContact.fullImage.getter())
  {
    (*(v13 + 8))(v16, v12);
    goto LABEL_7;
  }

  (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
  v29 = Image.resizable(capInsets:resizingMode:)();
  (*(v4 + 8))(v7, v3);
  v20 = ClarityUIContact.preferredContentMode.getter();
  ClarityUIContact.preferredContentMode.getter();
  static ContentMode.== infix(_:_:)();
  v21 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v36 = 1;
  v33 = 0;
  *__src = v29;
  *&__src[8] = 0;
  __src[16] = 1;
  __src[17] = v20 & 1;
  *&__src[18] = *&v34[7];
  *&__src[22] = v35;
  __src[24] = v21;
  *&__src[25] = *v34;
  *&__src[28] = *&v34[3];
  *&__src[32] = v22;
  *&__src[40] = v23;
  *&__src[48] = v24;
  *&__src[56] = v25;
  __src[64] = 0;
  memcpy(__dst, __src, 0x41uLL);
  v32 = 0;
  __dst[65] = 0;
  sub_10022709C(__src, v37, &qword_1003AF780);
  sub_10022709C(__src, v37, &qword_1003AF780);
  sub_10014EA98(&qword_1003AF780);
  sub_100227D5C();
  _ConditionalContent<>.init(storage:)();

  sub_100008360(__src, &qword_1003AF780);
  sub_100008360(__src, &qword_1003AF780);
  (*(v13 + 8))(v16, v12);
  memcpy(__dst, v37, sizeof(__dst));
  return memcpy(v30, __dst, 0x42uLL);
}

uint64_t sub_100226BF8@<X0>(void *a1@<X8>)
{
  if (qword_1003AA0E8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1003AF410;
}

uint64_t sub_100226C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001559CC;

  return sub_1002224FC(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for ContactBackground()
{
  result = qword_1003AF648;
  if (!qword_1003AF648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100226D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactBackground();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100226DD0(uint64_t a1)
{
  v2 = type metadata accessor for ContactBackground();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226E60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100008020(a1, a2, a3);
  sub_100006F4C();
  v4 = sub_1000085C0();
  v5(v4);
  return v3;
}

uint64_t sub_100226EA8()
{

  sub_100008740();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_100226F2C()
{
  result = qword_1003AF588;
  if (!qword_1003AF588)
  {
    sub_100155B7C(&qword_1003AF580);
    sub_100226FE4();
    sub_100027E08(&qword_1003AF5B0, &qword_1003AF5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF588);
  }

  return result;
}

unint64_t sub_100226FE4()
{
  result = qword_1003AF590;
  if (!qword_1003AF590)
  {
    sub_100155B7C(&qword_1003AF598);
    sub_100027E08(&qword_1003AF5A0, &qword_1003AF5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF590);
  }

  return result;
}

uint64_t sub_10022709C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100008020(a1, a2, a3);
  sub_100006F4C();
  v4 = sub_1000085C0();
  v5(v4);
  return v3;
}

unint64_t sub_1002270E4()
{
  result = qword_1003AF5E0;
  if (!qword_1003AF5E0)
  {
    sub_100155B7C(&qword_1003AF5D0);
    sub_1002055DC();
    sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF5E0);
  }

  return result;
}

void sub_1002271C8()
{
  type metadata accessor for ClarityUICall();
  if (v0 <= 0x3F)
  {
    sub_100227260();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100227260()
{
  if (!qword_1003AF658)
  {
    type metadata accessor for ClarityUIContact();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AF658);
    }
  }
}

uint64_t sub_1002272B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002272F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10022736C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002273AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100227410()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002274A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100006AC0((result + v7 + 32) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 24);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1002275EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 32] & ~v10;

            sub_100006848(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 2) = 0;
            *(a1 + 3) = 0;
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 3) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1002277E8()
{
  result = qword_1003AF718;
  if (!qword_1003AF718)
  {
    sub_100155B7C(&qword_1003AF490);
    sub_100227874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF718);
  }

  return result;
}

unint64_t sub_100227874()
{
  result = qword_1003AF720;
  if (!qword_1003AF720)
  {
    sub_100155B7C(&qword_1003AF488);
    sub_10022792C();
    sub_100027E08(&qword_1003AF770, &qword_1003AF778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF720);
  }

  return result;
}

unint64_t sub_10022792C()
{
  result = qword_1003AF728;
  if (!qword_1003AF728)
  {
    sub_100155B7C(&qword_1003AF478);
    sub_1002279E4();
    sub_100027E08(&qword_1003AF760, &qword_1003AF768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF728);
  }

  return result;
}

unint64_t sub_1002279E4()
{
  result = qword_1003AF730;
  if (!qword_1003AF730)
  {
    sub_100155B7C(&qword_1003AF468);
    sub_100227A9C();
    sub_100027E08(&qword_1003AF758, &qword_1003AF470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF730);
  }

  return result;
}

unint64_t sub_100227A9C()
{
  result = qword_1003AF738;
  if (!qword_1003AF738)
  {
    sub_100155B7C(&qword_1003AF460);
    sub_100227B54();
    sub_100027E08(&qword_1003AF748, &qword_1003AF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF738);
  }

  return result;
}

unint64_t sub_100227B54()
{
  result = qword_1003AF740;
  if (!qword_1003AF740)
  {
    sub_100155B7C(&qword_1003AF458);
    sub_100155B7C(&qword_1003AF420);
    sub_100155B7C(&qword_1003AF418);
    type metadata accessor for TUCallStatus(255);
    sub_10022289C();
    sub_100228AC0(&qword_1003AA2A0, type metadata accessor for TUCallStatus);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF740);
  }

  return result;
}

unint64_t sub_100227D5C()
{
  result = qword_1003AF788;
  if (!qword_1003AF788)
  {
    sub_100155B7C(&qword_1003AF780);
    sub_10017FA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF788);
  }

  return result;
}

unint64_t sub_100227DF0()
{
  result = qword_1003AF7A0;
  if (!qword_1003AF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7A0);
  }

  return result;
}

unint64_t sub_100227E44()
{
  result = qword_1003AF7C0;
  if (!qword_1003AF7C0)
  {
    sub_100155B7C(&qword_1003AF7B8);
    sub_100227EFC();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7C0);
  }

  return result;
}

unint64_t sub_100227EFC()
{
  result = qword_1003AF7C8;
  if (!qword_1003AF7C8)
  {
    sub_100155B7C(&qword_1003AF7D0);
    sub_100227FB4();
    sub_100027E08(&qword_1003AF7E0, &qword_1003AF7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7C8);
  }

  return result;
}

unint64_t sub_100227FB4()
{
  result = qword_1003AF7D8;
  if (!qword_1003AF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7D8);
  }

  return result;
}

unint64_t sub_100228008()
{
  result = qword_1003AF7F0;
  if (!qword_1003AF7F0)
  {
    sub_100155B7C(&qword_1003AF790);
    sub_1002280C0();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7F0);
  }

  return result;
}

unint64_t sub_1002280C0()
{
  result = qword_1003AF7F8;
  if (!qword_1003AF7F8)
  {
    sub_100155B7C(&qword_1003AF7B0);
    sub_100228178();
    sub_100027E08(&qword_1003AF7E0, &qword_1003AF7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7F8);
  }

  return result;
}

unint64_t sub_100228178()
{
  result = qword_1003AF800;
  if (!qword_1003AF800)
  {
    sub_100155B7C(&qword_1003AF7A8);
    sub_100027E08(&qword_1003AF808, &qword_1003AF810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF800);
  }

  return result;
}

unint64_t sub_100228294()
{
  result = qword_1003AF828;
  if (!qword_1003AF828)
  {
    sub_100155B7C(&qword_1003AF818);
    sub_100027E08(&qword_1003AF830, &qword_1003AF838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF828);
  }

  return result;
}

unint64_t sub_10022834C()
{
  result = qword_1003AF840;
  if (!qword_1003AF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF840);
  }

  return result;
}

unint64_t sub_1002283A8()
{
  result = qword_1003AF8E8;
  if (!qword_1003AF8E8)
  {
    sub_100155B7C(&qword_1003AF8E0);
    sub_100228434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF8E8);
  }

  return result;
}

unint64_t sub_100228434()
{
  result = qword_1003AF8F0;
  if (!qword_1003AF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF8F0);
  }

  return result;
}

unint64_t sub_100228490()
{
  result = qword_1003AF900;
  if (!qword_1003AF900)
  {
    sub_100155B7C(&qword_1003AF8F8);
    sub_10022851C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF900);
  }

  return result;
}

unint64_t sub_10022851C()
{
  result = qword_1003AF908;
  if (!qword_1003AF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF908);
  }

  return result;
}

unint64_t sub_100228570()
{
  result = qword_1003AF910;
  if (!qword_1003AF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF910);
  }

  return result;
}

unint64_t sub_1002285CC()
{
  result = qword_1003AF918;
  if (!qword_1003AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF918);
  }

  return result;
}

unint64_t sub_100228630()
{
  result = qword_1003AF920;
  if (!qword_1003AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF920);
  }

  return result;
}

__n128 sub_1002286BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002286D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100228710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002287A0()
{
  result = qword_1003AF940;
  if (!qword_1003AF940)
  {
    sub_100155B7C(&qword_1003AF948);
    sub_100227D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF940);
  }

  return result;
}

unint64_t sub_10022882C()
{
  result = qword_1003AF950;
  if (!qword_1003AF950)
  {
    sub_100155B7C(&qword_1003AF958);
    sub_100227E44();
    sub_100228008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF950);
  }

  return result;
}

unint64_t sub_100228988()
{
  result = qword_1003AF960;
  if (!qword_1003AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF960);
  }

  return result;
}

unint64_t sub_1002289E8()
{
  result = qword_1003AF970;
  if (!qword_1003AF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF970);
  }

  return result;
}

uint64_t sub_100228AC0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100228B18(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100228BF4()
{
  result = qword_1003AF9A0;
  if (!qword_1003AF9A0)
  {
    sub_100155B7C(&qword_1003AF978);
    sub_100027E08(&qword_1003AF9A8, &qword_1003AF968);
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF9A0);
  }

  return result;
}

unint64_t sub_100228CD8()
{
  result = qword_1003AF9B0;
  if (!qword_1003AF9B0)
  {
    sub_100155B7C(&qword_1003AF998);
    sub_100155B7C(&qword_1003AA9C0);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0);
    sub_100228AC0(&qword_1003AF990, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF9B0);
  }

  return result;
}

id sub_100228E88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13InCallService11PHAssertion_cancellable;
  *&v2[OBJC_IVAR____TtC13InCallService11PHAssertion_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC13InCallService11PHAssertion_reason] = a1;
  sub_100229124();
  v5 = a1;
  sub_100240354(v5);
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v6 = v5;
  *&v2[v4] = AnyCancellable.init(_:)();

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PHAssertion();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id sub_100229080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHAssertion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100229124()
{
  result = qword_1003AF9F0;
  if (!qword_1003AF9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AF9F0);
  }

  return result;
}

void *sub_1002292A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionProgress);
  v2 = v1;
  return v1;
}

id sub_1002293C8(char a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed] = a1;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online] = a2;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting] = a3;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_storageUsage] = a4;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionEnabled] = a5;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionProgress] = a6;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_accounts] = a7;
  v17.receiver = v7;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10022963C()
{
  _StringGuts.grow(_:)(126);
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x80000001002AD9A0;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x656E696C6E6F2029;
  v5._object = 0xEB0000000028203ALL;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001002AD9E0;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x80000001002ADA00;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6E756F6363612029;
  v15._object = 0xED000028203A7374;
  String.append(_:)(v15);
  type metadata accessor for VoicemailAccount();
  v16._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_10022986C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001002AC360 == a2;
  if (v3 || (sub_100006DD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_100006DD0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001002A4E10 == a2;
      if (v7 || (sub_100006DD0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == sub_100025C34() && a2 == v8;
        if (v9 || (sub_100006DD0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0xD000000000000014 && 0x80000001002AC390 == a2;
          if (v10 || (sub_100006DD0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v12 = sub_100006DD0();

            if (v12)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100229A00(char a1)
{
  result = 0x656E696C6E6FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = sub_100025C34();
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x73746E756F636361;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_100229AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10022986C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100229AF4(uint64_t a1)
{
  v2 = sub_10022A1F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229B30(uint64_t a1)
{
  v2 = sub_10022A1F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100229B6C(void *a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AFA58);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v18 - v10;
  v12 = sub_100008878(a1, a1[3]);
  sub_10022A1F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v27 = 0;
    sub_10000C674();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = 1;
    sub_10000C674();
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = 2;
    sub_10000C674();
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = 3;
    sub_10000C674();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 4;
    sub_10000C674();
    HIDWORD(v18) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10014EA98(&qword_1003AC888);
    v22 = 5;
    sub_10022A248(&qword_1003AFA68, &qword_1003AFA70);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v21;
    v17 = objc_allocWithZone(v3);
    v12 = sub_1002293C8(v13 & 1, v14 & 1, v20 & 1, v19, BYTE4(v18) & 1, 0, v16);
    (*(v7 + 8))(v11, v5);
  }

  sub_100005B2C(a1);
  return v12;
}

uint64_t sub_100229E24(void *a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AFA78);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_100008878(a1, a1[3]);
  sub_10022A1F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  sub_100007A78();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = 1;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 3;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 4;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_accounts);
    v13[15] = 5;
    sub_10014EA98(&qword_1003AC888);
    sub_10022A248(&qword_1003AFA80, &qword_1003AFA88);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_10022A088@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100229B6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10022A0D8(uint64_t a1)
{
  sub_10015FE80(a1, v4);
  if (!v5)
  {
    sub_10015E258(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  sub_1001CC5B0();
  v1 = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

unint64_t sub_10022A1F4()
{
  result = qword_1003AFA60;
  if (!qword_1003AFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA60);
  }

  return result;
}

uint64_t sub_10022A248(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(&qword_1003AC888);
    sub_10022A2D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10022A2D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10022A3F4()
{
  result = qword_1003AFA90;
  if (!qword_1003AFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA90);
  }

  return result;
}

unint64_t sub_10022A44C()
{
  result = qword_1003AFA98;
  if (!qword_1003AFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA98);
  }

  return result;
}

unint64_t sub_10022A4A4()
{
  result = qword_1003AFAA0;
  if (!qword_1003AFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFAA0);
  }

  return result;
}

id sub_10022A504()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithDictionaryRepresentation:isa];

  return v2;
}

uint64_t sub_10022A58C()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

id sub_10022A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = String._bridgeToObjectiveC()();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

id sub_10022A6B0()
{
  v0 = [objc_allocWithZone(UIVisualEffectView) init];
  isa = [objc_opt_self() effectWithBlurRadius:50.0];
  static CallsColorMatrix.background.getter();
  v2 = static ColorMatrixConvertion.colorEffect(_:)();
  v3 = v2;
  if (isa)
  {
    if (v2)
    {
      sub_10014EA98(&unk_1003AAAA0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1002F96C0;
      *(v4 + 32) = isa;
      *(v4 + 40) = v3;
      sub_1000064BC(0, &unk_1003AAFA0);
      v5 = isa;
      v6 = v3;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v0 setBackgroundEffects:isa];
    }
  }

  else
  {
    isa = v2;
  }

  return v0;
}

void iPadAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    objc_opt_self();
    sub_10000FF90();
    if (swift_dynamicCastObjCClass() && (v8 = ICSApplicationDelegate.bannerPresentationManager.getter(), v9 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter(), v8, v9))
    {
      v10 = String._bridgeToObjectiveC()();
      v14[4] = a3;
      v14[5] = a4;
      sub_100006C90();
      v14[1] = 1107296256;
      v14[2] = sub_100164920;
      v14[3] = &unk_100361170;
      v11 = _Block_copy(v14);

      v12 = sub_100005DE8();
      [v12 v13];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t iPadAudioCallViewController.makeLockObserver(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhoneLockStateObserver();
  v6 = static PhoneLockStateObserver.shared.getter();
  sub_100006BE8();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

  result = type metadata accessor for AnyCancellable();
  a3[3] = result;
  *a3 = v8;
  return result;
}

id iPadAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0();
  v7 = *(a1 + v6);
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v8)
  {
    if (a2)
    {
      v15 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
      return sub_100012544(1, 0);
    }

    v8 = 0;
LABEL_9:
    v16 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
    v14 = sub_100012544(0, 0);

    return v14;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v9 = v8;
  if (![v3 parentViewController])
  {
    v10 = v3;
  }

  objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
  v11 = v9;
  swift_unknownObjectRetain();
  v12 = CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)();
  v13 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
  v14 = sub_100012544(2, v12);

  return v14;
}

void iPadAudioCallViewController.makeHeldCallControls(callCenter:style:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for HeldInCallControlsView.Style();
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100005BD0();
  sub_100006634();
  v12 = [v4 features];
  v13 = [v12 shouldEmbedSwapBanner];

  if (v13)
  {
    v14 = &enum case for HeldInCallControlsView.Style.ambient(_:);
    if (a2 != 3)
    {
      v14 = &enum case for HeldInCallControlsView.Style.regular(_:);
    }

    (*(v9 + 104))(v3, *v14, v7);
    type metadata accessor for HeldInCallControlsView();
    v15 = a1;
    HeldInCallControlsView.__allocating_init(callCenter:style:)();
  }

  sub_1001A0B10();
}

void sub_10022AF68()
{
  v1 = v0;
  v2 = [v0 features];
  v3 = [v2 isNameAndPhotoC3Enabled];

  if (v3)
  {
    type metadata accessor for NameAndPhotoUtilities();
    v4 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&unk_1003AFB50, &unk_1003ADBD0);
    swift_unknownObjectRetain();
    NameAndPhotoUtilities.delegate.setter();

    swift_unknownObjectWeakInit();
    sub_10022B754(v1);
    swift_unknownObjectWeakDestroy();
  }
}

void sub_10022B048()
{
  sub_100005D28();
  v1 = v0;
  v83 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v90 = v4;
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  v89 = v8 - v7;
  sub_100008A4C();
  v9 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v88 = v10;
  __chkstk_darwin(v11, v12);
  sub_100005BD0();
  v87 = v14 - v13;
  sub_100008A4C();
  type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v81 = v16;
  v82 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15, v19);
  v80 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A4C();
  type metadata accessor for DispatchTime();
  sub_10000688C();
  v85 = v21;
  v86 = v20;
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v84 = &v74 - v27;
  sub_100008A4C();
  v28 = type metadata accessor for UUID();
  sub_10000688C();
  v30 = v29;
  __chkstk_darwin(v31, v32);
  sub_100005BD0();
  v35 = v34 - v33;
  v36 = v1;
  v37 = [v1 callCenter];
  v38 = [v37 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0);
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100017230(v39))
  {
    v79 = v3;
    v40 = sub_100005D40();
    sub_100017238(v40, v41, v39);
    v77 = v18;
    v78 = v9;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v39 + 32);
    }

    v43 = v42;
    v44 = v36;

    v45 = [v36 callUUIDsThatPresentedSNaPHUD];
    v46 = v43;
    v47 = [v43 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v49 = *(v30 + 8);
    v49(v35, v28);
    v50 = [v45 containsObject:isa];

    if (v50)
    {
      if (qword_1003A9F48 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000058D0(v51, &unk_1003B8838);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = sub_100005924();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "We have already present SNaPHUD once. So dismiss this time.", v54, 2u);
        sub_100005BB8();
      }
    }

    else
    {
      v56 = [v44 callUUIDsThatPresentedSNaPHUD];
      v76 = v46;
      v57 = [v46 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = UUID._bridgeToObjectiveC()().super.isa;
      v49(v35, v28);
      [v56 addObject:v58];

      sub_1000064BC(0, &qword_1003AAAB0);
      v75 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      type metadata accessor for NameAndPhotoUtilities();
      static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner.getter();
      v59 = v84;
      + infix(_:_:)();
      v60 = v86;
      v85 = *(v85 + 8);
      (v85)(v25, v86);
      v62 = v80;
      v61 = v81;
      v63 = v82;
      (*(v81 + 16))(v80, v83, v82);
      v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v65 = (v77 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      (*(v61 + 32))(v66 + v64, v62, v63);
      *(v66 + v65) = v44;
      sub_100006A90();
      v91[1] = 1107296256;
      sub_1000070E4();
      v91[2] = v67;
      v91[3] = &unk_100361328;
      v68 = _Block_copy(v91);
      v69 = v44;

      v70 = v87;
      static DispatchQoS.unspecified.getter();
      v91[0] = _swiftEmptyArrayStorage;
      sub_100158FC0();
      sub_10014EA98(&unk_1003AAAC0);
      sub_100032638();
      v71 = v89;
      v72 = v79;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v73 = v75;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v68);

      (*(v90 + 8))(v71, v72);
      (*(v88 + 8))(v70, v78);
      (v85)(v59, v60);
    }

    sub_100007B28();
  }

  else
  {
    sub_100007B28();
  }
}

void sub_10022B754(void *a1)
{
  v2 = sub_10014EA98(&unk_1003AAE40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ConversationControlsType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 callCenter];
  v12 = [v11 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100017230(v13))
  {
    sub_100017238(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v13 + 32);
    }

    v15 = v14;

    type metadata accessor for NameAndPhotoUtilities();
    v16 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0);
    v17 = v15;
    NameAndPhotoUtilities.suggestedBannerType(for:)();

    if (sub_100006AC0(v5, 1, v6) == 1)
    {

      sub_10000830C(v5, &unk_1003AAE40);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if ([v17 status] == 1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          sub_10022B048();

          v17 = v19;
        }

        (*(v7 + 8))(v10, v6);
      }

      else
      {
        (*(v7 + 8))(v10, v6);
      }
    }
  }

  else
  {
  }
}

void sub_10022BB00(uint64_t a1, objc_class *a2)
{
  v3 = v2;
  v6 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0();
  v7 = *(a1 + v6);
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (v8)
  {
    sub_10003012C(&unk_1003AFB40, &unk_1003ADBD0);
    v9 = v8;
    v10 = v3;
    dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();

    v11 = v9;
    v12.value.super.super.isa = a2;
    ConversationControlsManager.presentShareCard(source:)(v12);
  }
}

void sub_10022BC50(void *a1)
{
  v2 = v1;
  sub_10014EA98(&qword_1003AAF90);
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    v5 = LockStateViewController.contentViewController.getter();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      CallScreeningViewController.updateTextFieldContainer(_:)(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10022BD80(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for ConversationControlsType();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v33 - v10;
  if (qword_1003A9F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008A14(v12, &unk_1003B8838);
  v36 = *(v4 + 16);
  v37 = v4 + 16;
  v36(v11, a1, v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315138;
    v18 = ConversationControlsType.debugDescription.getter();
    v33 = v8;
    v20 = v19;
    v21 = *(v4 + 8);
    v21(v11, v3);
    v22 = sub_100008ADC(v18, v20, &v38);
    v8 = v33;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "we are going to present SNaP hud, because suggestedBannerType = %s.", v16, 0xCu);
    sub_100005B2C(v17);

    a1 = v34;

    v23 = v21;
  }

  else
  {

    v23 = *(v4 + 8);
    v23(v11, v3);
  }

  v24 = [objc_opt_self() sharedApplication];
  v25 = [v24 delegate];

  if (v25)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (!v26)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    v27 = v26;
    v36(v8, a1, v3);
    v28 = (*(v4 + 88))(v8, v3);
    if (v28 == enum case for ConversationControlsType.shareNameAndPhoto(_:))
    {
      v29 = [v27 bannerPresentationManager];
      v30 = v29;
      v31 = "iPadAudioCallViewController requesting showShareNameAndPhotoHUD";
      v32 = &BannerPresentationManager.showShareNameAndPhotoHUD();
    }

    else
    {
      if (v28 != enum case for ConversationControlsType.shareName(_:))
      {
        if (v28 != enum case for ConversationControlsType.incomingNameUpdate(_:))
        {
          swift_unknownObjectRelease();
          v23(v8, v3);
          return;
        }

        v30 = [v27 bannerPresentationManager];
        sub_10022C2C8(v30);
        goto LABEL_13;
      }

      v29 = [v27 bannerPresentationManager];
      v30 = v29;
      v31 = "iPadAudioCallViewController requesting showShareNameHUD";
      v32 = &BannerPresentationManager.showShareNameHUD();
    }

    sub_10022C19C(v29, v31, v32);
LABEL_13:

    goto LABEL_14;
  }
}

void sub_10022C19C(uint64_t a1, const char *a2, void (*a3)(void))
{
  v7 = [v3 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  if (v8)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v9 = type metadata accessor for Logger();
    sub_1000058D0(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100005924();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 2u);
      sub_100005BB8();
    }

    v13 = direct field offset for CNKBannerPresentationManager.value;
    sub_1000087D0();
    v14 = *(a1 + v13);
    a3();
  }
}

void sub_10022C2C8(uint64_t a1)
{
  v3 = [v1 features];
  v4 = [v3 isNameAndPhotoC3Enabled];

  if (v4)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "iPadAudioCallViewController requesting showIncomingNameUpdateHUD", v8, 2u);
    }

    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 delegate];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 setIsShowingIncomingNameUpdate:1];
      }

      swift_unknownObjectRelease();
    }

    v12 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v13 = *(a1 + v12);
    BannerPresentationManager.showIncomingNameUpdateHUD()();
  }
}

uint64_t sub_10022C48C()
{
  type metadata accessor for NameAndPhotoUtilities();
  v0 = static NameAndPhotoUtilities.shared.getter();
  v1 = NameAndPhotoUtilities.currentIMNickname(matching:)();

  return v1;
}

uint64_t sub_10022C6FC(void *a1)
{
  v2 = v1;
  v4 = [v2 features];
  v5 = [v4 isNameAndPhotoC3Enabled];

  result = 0;
  if (v5 && a1)
  {
    v7 = a1;
    v8 = [v2 contactToDisplayInCallWallpaperForCall:v7];
    v9 = [v2 sharedProfileStateOracleForCall:v7];
    if (![objc_opt_self() contactIsInAutoUpdateState:v8])
    {

      return 0;
    }

    v10 = v7;
    v11 = sub_100013DA8(a1);

    if (v11)
    {
      v12 = sub_1000053A8();
      sub_100014194(v12, v13, v11, v14);

      if (*(&v52 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v16 = v50[0];
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v50[1];
        }

        else
        {
          v17 = 0;
        }

LABEL_16:
        v18 = [v9 avatarViewAnimationTypeForEffectiveState];
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v19 = type metadata accessor for Logger();
        sub_1000058D0(v19, &unk_1003B8820);

        v20 = v9;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v23 = &selRef_countByEnumeratingWithState_objects_count_;
        if (os_log_type_enabled(v21, v22))
        {
          v49 = v16;
          v24 = swift_slowAlloc();
          v50[0] = swift_slowAlloc();
          *v24 = 136315906;
          v48 = v18;
          *&v51 = v18;
          type metadata accessor for CNSharedProfileAvatarAnimationType(0);
          v25 = String.init<A>(reflecting:)();
          v27 = v26;
          sub_100008ADC(v25, v26, v50);
          sub_1000055A8();
          *(v24 + 4) = v16;
          *(v24 + 12) = 2080;
          v28 = [v20 currentNickname];
          if (v28 && (v27 = v28, v16 = [v28 wallpaper], v27, v16) && (v29 = sub_100231C60(v16), v30))
          {
            *&v51 = v29;
            *(&v51 + 1) = v30;
            v31 = String.init<A>(reflecting:)();
            v27 = v32;
          }

          else
          {

            v31 = sub_100007B58();
          }

          sub_100008ADC(v31, v27, v50);
          sub_1000055A8();
          *(v24 + 14) = v16;
          *(v24 + 22) = 2080;
          v41 = [v20 pendingNickname];
          v42 = [v41 wallpaper];

          if (v42)
          {
            *&v51 = v42;
            sub_1000064BC(0, &qword_1003AAF48);
            v43 = String.init<A>(reflecting:)();
            v42 = v44;
          }

          else
          {
            v43 = sub_100007B58();
          }

          sub_100008ADC(v43, v42, v50);
          sub_1000055A8();
          *(v24 + 24) = v41;
          *(v24 + 32) = 2080;
          if (v17)
          {
            *&v51 = v49;
            *(&v51 + 1) = v17;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = 7104878;
          }

          sub_100008ADC(v45, v47, v50);
          sub_1000055A8();
          *(v24 + 34) = v41;
          _os_log_impl(&_mh_execute_header, v21, v22, "SNAP: suggestedNewPosterSourceAfterCallConnects effectiveAnimationType: %s \n oracle.currentNickname.wallpaper.filePath: %s \n oracle.pendingNickname.wallpaper: %s \n lastSeenContacts: %s", v24, 0x2Au);
          swift_arrayDestroy();
          sub_10000558C();
          sub_100005BB8();

          v16 = v49;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          if (!v48)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (!v18)
          {
LABEL_47:

            return 3;
          }
        }

        v33 = [v20 v23[66]];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v17)
          {
            if (v36 == v16 && v37 == v17)
            {

              return 0;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }
        }

        else if (!v17)
        {
LABEL_41:

          return 0;
        }

LABEL_36:
        v40 = [objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(v2, "currentDisplayedPosterSourceForCall:", v10)}];

        if ((v40 & 1) == 0)
        {
          return 2;
        }

        return 0;
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_10000830C(&v51, &unk_1003AAF50);
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10022CD10(void *a1)
{
  v3 = [v1 callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    goto LABEL_2;
  }

  v7 = [v1 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  v5 = 0;
  if (v8 && a1)
  {
    v9 = a1;
    v10 = sub_100005DE8();
    v12 = [v10 v11];
    v13 = sub_100005DE8();
    v15 = [v13 v14];
    if (v15 == 1)
    {

LABEL_8:
      v5 = 1;
      return v5 & 1;
    }

    if ([objc_opt_self() posterSourceIsSyncedWithContacts:v15])
    {

LABEL_11:
LABEL_2:
      v5 = 0;
      return v5 & 1;
    }

    v16 = sub_100005DE8();
    v18 = [v16 v17];
    v19 = [v18 effectiveStateForContact];
    if (v19 == 3)
    {
      v20 = [v18 pendingNickname];
      v21 = [v20 wallpaper];

      if (!v21)
      {
        v22 = [v18 currentNickname];
        v21 = [v22 wallpaper];

        if (!v21)
        {

          goto LABEL_11;
        }
      }
    }

    v23 = v9;
    v24 = sub_10016D3EC();
    v25 = sub_100013DA8(v24);

    if (v25)
    {
      v26 = sub_1000053A8();
      sub_100014194(v26, v27, v25, v28);

      if (*(&v42 + 1))
      {
        v29 = sub_100008D28();
        if (v29)
        {
          v30 = v39;
        }

        else
        {
          v30 = 0;
        }

        if (v29)
        {
          v31 = v40;
        }

        else
        {
          v31 = 0;
        }

LABEL_26:
        if ((v19 | 2) != 3)
        {

          goto LABEL_2;
        }

        v32 = [v18 currentNickname];
        if (v32 && (v33 = v32, v34 = [v32 wallpaper], v33, v34) && (v35 = sub_100231C60(v34), v36))
        {
          if (v31)
          {
            if (v35 == v30 && v36 == v31)
            {

              v5 = 0;
            }

            else
            {
              v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v38 ^ 1;
            }

            return v5 & 1;
          }
        }

        else
        {

          if (!v31)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    sub_10000830C(&v41, &unk_1003AAF50);
    v30 = 0;
    v31 = 0;
    goto LABEL_26;
  }

  return v5 & 1;
}

void sub_10022D0F8()
{
  sub_100005D28();
  v27 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  sub_100006634();
  v28 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  sub_100005BD0();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14, v15);
  sub_100005BD0();
  v18 = v17 - v16;
  sub_1000064BC(0, &qword_1003AAAB0);
  (*(v13 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v18, v11);
  sub_100006BE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  *(v20 + 24) = v27;
  v29[4] = sub_100231D9C;
  v29[5] = v20;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  sub_1000070E4();
  v29[2] = v21;
  v29[3] = &unk_100361288;
  v22 = _Block_copy(v29);
  v23 = v27;
  v24 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0);
  sub_100032638();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  v25 = sub_100008E74();
  v26(v25);
  (*(v5 + 8))(v10, v28);

  sub_100007B28();
}

void sub_10022D3E4(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v185 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 features];
  v14 = [v13 isNameAndPhotoC3Enabled];

  if (!v14 || !a2)
  {
    return;
  }

  v186 = a2;
  v15 = sub_1000140C4(v186);
  if (!v15)
  {
    goto LABEL_18;
  }

  if (!v15[2])
  {

    goto LABEL_14;
  }

  v179 = v5;
  v16 = v15[5];
  v181 = v15[4];

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v184 = sub_100008A14(v17, &unk_1003B8820);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v183 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "SNAP: writeToLastSeenPosterCacheIfNecessary", v21, 2u);
  }

  if (![objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(a1, "currentDisplayedPosterSourceForCall:", v186)}])
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "SNAP: Not updating last seen poster cache because displayed poster is not synced with contacts.", v30, 2u);
    }

LABEL_18:
    v31 = v186;

    return;
  }

  v178 = [a1 sharedProfileStateOracleForCall:v186];
  v22 = [v178 currentNickname];
  v23 = [v22 wallpaper];

  v177 = v23;
  if (v23)
  {
    v24 = v23;
    v174 = sub_100231C60(v24);
    v182 = v25;
    v180 = sub_100231CD0(v24);
    v27 = v26;
  }

  else
  {
    v180 = 0;
    v174 = 0;
    v182 = 0;
    v27 = 0xF000000000000000;
  }

  v186 = v186;
  v32 = sub_100013DA8(a2);
  if (v32)
  {
    sub_100014194(0xD000000000000013, 0x80000001002A6610, v32, &v191);

    if (v192)
    {
      if (swift_dynamicCast())
      {
        if (v182)
        {
          if (v174 == *&v190[0] && v182 == *(&v190[0] + 1))
          {

            goto LABEL_59;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {

LABEL_59:

            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              *v106 = 0;
              _os_log_impl(&_mh_execute_header, v104, v105, "SNAP: Not updating last seen poster cache because displayed poster is not different from the one in the cache.", v106, 2u);
            }

            sub_100034FE0(v180, v27);
LABEL_94:

            return;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000830C(&v191, &unk_1003AAF50);
    }
  }

  v35 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v36[2])
  {

    v50 = v186;
    sub_100034FE0(v180, v27);

    goto LABEL_14;
  }

  v176 = v27;
  v38 = v36[4];
  v37 = v36[5];

  v188 = v38;
  v189 = v37;
  v39._countAndFlagsBits = 0xD000000000000018;
  v39._object = 0x80000001002A65B0;
  String.append(_:)(v39);
  v172 = objc_opt_self();
  v40 = [v172 defaultManager];
  v173 = v188;
  v175 = v189;
  v41 = String._bridgeToObjectiveC()();
  LOBYTE(v38) = [v40 fileExistsAtPath:v41 isDirectory:0];

  if (v38)
  {
LABEL_41:
    v55 = v176;
    if (v176 >> 60 == 15)
    {
      v173 = 0;
      v56 = 0;
    }

    else
    {
      sub_10016D1C4(v180, v176);
      UUID.init()();
      v57 = UUID.uuidString.getter();
      v59 = v58;
      (*(v185 + 8))(v12, v9);
      *&v191 = 47;
      *(&v191 + 1) = 0xE100000000000000;
      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      v61 = sub_10022A58C();
      v56 = v62;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v185 = v56;
        v66 = v65;
        v67 = v61;
        v68 = swift_slowAlloc();
        *&v191 = v68;
        *v66 = 136315138;
        *(v66 + 4) = sub_100008ADC(7104878, 0xE300000000000000, &v191);
        _os_log_impl(&_mh_execute_header, v63, v64, "SNAP: Requesting to write last seen poster to cache path %s", v66, 0xCu);
        sub_100005B2C(v68);
        v61 = v67;

        v56 = v185;
      }

      URL.init(fileURLWithPath:)();
      v69 = v180;
      v55 = v176;
      Data.write(to:options:)();
      v173 = v61;
      (v179)[1](v8, v4);
      sub_100034FE0(v69, v55);
    }

    v85 = sub_100013DA8(a2);

    v185 = v56;
    if (v85)
    {
      sub_100014194(0xD000000000000013, 0x80000001002A65F0, v85, &v191);

      if (v192)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_65;
        }

        v86 = v190[0];

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v190[0] = v90;
          *v89 = 136315138;
          v191 = v86;

          v91 = String.init<A>(reflecting:)();
          v93 = sub_100008ADC(v91, v92, v190);

          *(v89 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v87, v88, "SNAP: Requesting to remove previous last seen poster file %s", v89, 0xCu);
          sub_100005B2C(v90);
        }

        v94 = v172;
        v95 = [v172 defaultManager];
        v96 = String._bridgeToObjectiveC()();
        v97 = [v95 contentsAtPath:v96];

        if (v97)
        {
          v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          sub_10016D16C(v98, v100);
          v101 = [v94 defaultManager];
          v102 = String._bridgeToObjectiveC()();
          *&v191 = 0;
          LODWORD(v100) = [v101 removeItemAtPath:v102 error:&v191];

          if (v100)
          {
            v103 = v191;

            v56 = v185;
            goto LABEL_65;
          }

          v157 = v191;

          v158 = _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *&v190[0] = swift_slowAlloc();
            *v161 = 136315394;
            v191 = v86;
            v162 = String.init<A>(reflecting:)();
            v164 = sub_100008ADC(v162, v163, v190);

            *(v161 + 4) = v164;
            *(v161 + 12) = 2080;
            *&v191 = v158;
            swift_errorRetain();
            sub_10014EA98(&qword_1003AAC00);
            v165 = String.init<A>(reflecting:)();
            v167 = sub_100008ADC(v165, v166, v190);

            *(v161 + 14) = v167;
            _os_log_impl(&_mh_execute_header, v159, v160, "SNAP: Failed to remove old last seen file path %s with error %s", v161, 0x16u);
            swift_arrayDestroy();

            sub_100034FE0(v180, v55);
          }

          else
          {

            sub_100034FE0(v180, v55);
          }

LABEL_14:

          return;
        }

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        v109 = os_log_type_enabled(v107, v108);
        v56 = v185;
        if (v109)
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v107, v108, "SNAP: last seen poster file already doesn't exist, don't need to request FileManager to remove it, but we still need to replace the last seen poster data with current poster data)", v110, 2u);
        }
      }

      else
      {
        sub_10000830C(&v191, &unk_1003AAF50);
      }
    }

LABEL_65:

    swift_bridgeObjectRetain_n();
    v111 = v177;
    v112 = v177;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    v179 = v112;

    if (os_log_type_enabled(v113, v114))
    {
      v115 = 7104878;
      v116 = v56;
      v117 = swift_slowAlloc();
      *&v190[0] = swift_slowAlloc();
      *v117 = 136315650;
      if (v116)
      {
        *&v191 = v173;
        *(&v191 + 1) = v116;
        v118 = String.init<A>(reflecting:)();
        v120 = v119;
      }

      else
      {
        v120 = 0xE300000000000000;
        v118 = 7104878;
      }

      v122 = sub_100008ADC(v118, v120, v190);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2080;
      if (v182)
      {
        *&v191 = v174;
        *(&v191 + 1) = v182;

        v123 = String.init<A>(reflecting:)();
        v125 = v124;
      }

      else
      {
        v125 = 0xE300000000000000;
        v123 = 7104878;
      }

      v126 = sub_100008ADC(v123, v125, v190);

      *(v117 + 14) = v126;
      *(v117 + 22) = 2080;
      if (v111)
      {
        v127 = v179;
        *&v191 = v179;
        sub_1000064BC(0, &qword_1003AAF48);
        v128 = v127;
        v115 = String.init<A>(reflecting:)();
        v130 = v129;
      }

      else
      {
        v130 = 0xE300000000000000;
      }

      v121 = v183;
      v131 = sub_100008ADC(v115, v130, v190);

      *(v117 + 24) = v131;
      _os_log_impl(&_mh_execute_header, v113, v114, "SNAP: - filePath: %s, currentIMWallpaperFilePath: %s, currentIMWallpaper: %s ", v117, 0x20u);
      swift_arrayDestroy();

      v56 = v185;
    }

    else
    {

      v121 = v183;
    }

    if (v56)
    {
      if (!v182)
      {
LABEL_86:

        v138 = Dictionary.init(dictionaryLiteral:)();
LABEL_87:
        swift_bridgeObjectRetain_n();

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          *&v191 = v142;
          *v141 = 136315138;
          sub_10014EA98(&qword_1003AAF38);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FAB60;
          *(inited + 32) = v181;
          *(inited + 40) = v121;
          *(inited + 48) = v138;

          sub_10014EA98(&qword_1003AAF30);
          *&v190[0] = Dictionary.init(dictionaryLiteral:)();
          sub_10014EA98(&qword_1003AAF40);
          v144 = String.init<A>(reflecting:)();
          v146 = sub_100008ADC(v144, v145, &v191);

          *(v141 + 4) = v146;
          _os_log_impl(&_mh_execute_header, v139, v140, "SNAP: Adding item to user defaults %s", v141, 0xCu);
          sub_100005B2C(v142);
        }

        else
        {
        }

        v147 = objc_opt_self();
        v148 = [v147 standardUserDefaults];
        v149 = String._bridgeToObjectiveC()();
        v150 = [v148 dictionaryForKey:v149];

        if (v150)
        {
          v151 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v192 = sub_10014EA98(&qword_1003AAF30);
          *&v191 = v138;
          sub_100034DBC(&v191, v190);
          swift_isUniquelyReferenced_nonNull_native();
          v187 = v151;
          sub_100034E40(v190, v181, v183);
        }

        else
        {
          sub_10014EA98(&qword_1003AAF28);
          v152 = swift_initStackObject();
          *(v152 + 16) = xmmword_1002FAB60;
          v153 = v183;
          *(v152 + 32) = v181;
          *(v152 + 40) = v153;
          *(v152 + 72) = sub_10014EA98(&qword_1003AAF30);
          *(v152 + 48) = v138;
          Dictionary.init(dictionaryLiteral:)();
        }

        v154 = [v147 standardUserDefaults];
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v156 = String._bridgeToObjectiveC()();
        [v154 setValue:isa forKey:v156];

        sub_100034FE0(v180, v176);

        goto LABEL_94;
      }

      if (v111)
      {
        sub_10014EA98(&qword_1003AAF28);
        v132 = swift_initStackObject();
        *(v132 + 16) = xmmword_1002FB3B0;
        *(v132 + 32) = 0xD000000000000013;
        *(v132 + 40) = 0x80000001002A65F0;
        *(v132 + 48) = v173;
        *(v132 + 56) = v56;
        *(v132 + 72) = &type metadata for String;
        *(v132 + 80) = 0xD000000000000013;
        v133 = v174;
        *(v132 + 88) = 0x80000001002A6610;
        *(v132 + 96) = v133;
        *(v132 + 104) = v182;
        *(v132 + 120) = &type metadata for String;
        strcpy((v132 + 128), "isSensitiveKey");
        *(v132 + 143) = -18;
        v134 = v179;

        *(v132 + 144) = [v134 contentIsSensitive];
        *(v132 + 168) = &type metadata for Bool;
        *(v132 + 176) = 0xD000000000000016;
        *(v132 + 184) = 0x80000001002A6630;
        v135 = [v134 metadata];
        v136 = v135;
        if (v135)
        {
          v137 = [v135 dictionaryRepresentation];

          v136 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        *(v132 + 216) = sub_10014EA98(&qword_1003AAF30);
        if (!v136)
        {
          v136 = Dictionary.init(dictionaryLiteral:)();
        }

        *(v132 + 192) = v136;
        v138 = Dictionary.init(dictionaryLiteral:)();

        goto LABEL_87;
      }
    }

    goto LABEL_86;
  }

  v42 = v175;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v171 = v44;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v170 = v45;
    v169 = swift_slowAlloc();
    *&v190[0] = v169;
    *v45 = 136315138;
    v168 = v43;
    *&v191 = v173;
    *(&v191 + 1) = v42;

    v46 = String.init<A>(reflecting:)();
    v48 = sub_100008ADC(v46, v47, v190);

    v49 = v170;
    *(v170 + 1) = v48;
    v43 = v168;
    _os_log_impl(&_mh_execute_header, v168, v171, "SNAP: Could not find existing cache path directory, so creating %s", v49, 0xCu);
    sub_100005B2C(v169);
  }

  v51 = [v172 defaultManager];
  v52 = String._bridgeToObjectiveC()();
  *&v191 = 0;
  v53 = [v51 createDirectoryAtPath:v52 withIntermediateDirectories:0 attributes:0 error:&v191];

  if (v53)
  {
    v54 = v191;
    goto LABEL_41;
  }

  v70 = v191;

  v71 = v186;

  v72 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v73 = v175;

  swift_errorRetain();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v176;
  if (v76)
  {
    v78 = swift_slowAlloc();
    *&v190[0] = swift_slowAlloc();
    *v78 = 136315394;
    *&v191 = v173;
    *(&v191 + 1) = v73;
    v79 = String.init<A>(reflecting:)();
    v81 = sub_100008ADC(v79, v80, v190);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *&v191 = v72;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00);
    v82 = String.init<A>(reflecting:)();
    v84 = sub_100008ADC(v82, v83, v190);

    *(v78 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v74, v75, "SNAP: Failed to create caches directory %s with error %s", v78, 0x16u);
    swift_arrayDestroy();

    sub_100034FE0(v180, v77);
  }

  else
  {

    sub_100034FE0(v180, v77);
  }
}