uint64_t sub_1000348AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100037218(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100007644(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10003467C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100007644(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_100034A3C(char *a1, int64_t a2, char a3)
{
  result = sub_100034B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100034A5C(void *a1, int64_t a2, char a3)
{
  result = sub_100034C14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100034A7C(size_t a1, int64_t a2, char a3)
{
  result = sub_100034D5C(a1, a2, a3, *v3, &qword_10006C030, &qword_100056D48, &type metadata accessor for AuthorizationRecord);
  *v3 = result;
  return result;
}

size_t sub_100034AC0(size_t a1, int64_t a2, char a3)
{
  result = sub_100034D5C(a1, a2, a3, *v3, &qword_10006BFD8, &qword_1000579E0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
  *v3 = result;
  return result;
}

char *sub_100034B04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006C278, &qword_1000570E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034C14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003720(&qword_10006BFC0, &qword_100056D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003720(&qword_10006BF90, &unk_100056CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100034D5C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003720(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_100034F38(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100036020(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100035088(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_10000DA30(a2, a3);
    sub_1000361A0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
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
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_10000DA30(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_10000DA30(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_10000DA30(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_10003467C(v33, a2, v46, v52);
    sub_100007644(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_10000DA30(v19, v18);
LABEL_60:
  sub_10003467C(v52, a2, a3, &v51);
  sub_100007644(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_100007644(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_10000DA30(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_100035510(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100035748(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100035B98(v21 + 1);
    }

    v19 = v8;
    sub_100007698(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100036618(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100035748(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003720(&qword_10006B9C8, &qword_100056688);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100035B98(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100035938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006C298, &qword_1000570F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100035B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006B9C8, &qword_100056688);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100035DC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006C240, &qword_1000570D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100036020(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100035938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100036788();
      goto LABEL_16;
    }

    sub_100036B90(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000361A0(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100035DC0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1000368E4();
        goto LABEL_68;
      }

      sub_100036DC8(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v46 = v18;
      v45 = HIDWORD(v7) - v7;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = v7;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_10000DA30(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_10000DA30(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_10000DA30(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v42;
              a2 = v43;
              sub_10003467C(v35, v42, v43, v51);
              result = sub_100007644(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_10000DA30(v21, v20);
            v14 = v47;
          }

          sub_10003467C(v51, v7, a2, &v50);
          result = sub_100007644(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  return result;
}

void sub_100036618(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100035B98(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100036A40();
      goto LABEL_12;
    }

    sub_100037004(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000112B4(0, &qword_10006B9B8, MOApplication_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100036788()
{
  v1 = v0;
  sub_100003720(&qword_10006C298, &qword_1000570F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000368E4()
{
  v1 = v0;
  sub_100003720(&qword_10006C240, &qword_1000570D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10000DA30(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100036A40()
{
  v1 = v0;
  sub_100003720(&qword_10006B9C8, &qword_100056688);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100036B90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006C298, &qword_1000570F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100036DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006C240, &qword_1000570D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_10000DA30(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100037004(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003720(&qword_10006B9C8, &qword_100056688);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100037218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10003467C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1000372D0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000DA30(a3, a4);
          return sub_1000348AC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100037438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003720(&qword_10006C248, &unk_100057A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CKSyncEngine.State.Serialization();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  sub_10001DD64(a1, v10, &qword_10006C248, &unk_100057A00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000D5C4(v10, &qword_10006C248, &unk_100057A00);
    URL.path(percentEncoded:)(1);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 fileExistsAtPath:v17];

    if (v18)
    {
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v62 = 0;
      v22 = [v16 removeItemAtURL:v20 error:&v62];

      if (v22)
      {
        v23 = v62;
      }

      else
      {
        v50 = v62;
        v51 = _convertNSErrorToError(_:)();

        v61 = v51;
        swift_willThrow();
      }
    }
  }

  else
  {
    v56 = a2;
    v57 = v16;
    (*(v12 + 32))(v15, v10, v11);
    v24 = type metadata accessor for PropertyListEncoder();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    sub_100003720(&qword_10006C250, &qword_1000570D8);
    v27 = (sub_100003720(&qword_10006C258, &qword_100057550) - 8);
    v28 = *(*v27 + 72);
    v29 = v15;
    v30 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100056C30;
    v32 = (v31 + v30);
    v33 = v27[14];
    *v32 = 0xD000000000000014;
    *(v32 + 1) = 0x80000001000589F0;
    (*(v12 + 16))(&v32[v33], v29, v11);
    v34 = sub_1000419E0(v31);
    swift_setDeallocating();
    sub_10000D5C4(v32, &qword_10006C258, &qword_100057550);
    swift_deallocClassInstance();
    v62 = v34;
    sub_100003720(&qword_10006C260, &qword_1000570E0);
    sub_100037F44();
    v35 = v61;
    v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v61 = v35;
    if (!v35)
    {
      v38 = v36;
      v54 = v37;
      v55 = v29;

      URL.path(percentEncoded:)(1);
      v39 = String._bridgeToObjectiveC()();

      v40 = v57;
      v41 = [v57 fileExistsAtPath:v39];

      if ((v41 & 1) == 0)
      {
        v42 = v58;
        URL.deletingLastPathComponent()();
        URL._bridgeToObjectiveC()(v43);
        v45 = v44;
        (*(v59 + 8))(v42, v60);
        v62 = 0;
        LODWORD(v42) = [v40 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:&v62];

        if (!v42)
        {
          v52 = v62;
          v53 = _convertNSErrorToError(_:)();

          v61 = v53;
          swift_willThrow();
          sub_100007644(v38, v54);

          (*(v12 + 8))(v55, v11);
          return;
        }

        v46 = v62;
      }

      v47 = v38;
      v48 = v54;
      v49 = v61;
      Data.write(to:options:)();
      v61 = v49;
      (*(v12 + 8))(v55, v11);
      sub_100007644(v47, v48);

      return;
    }

    (*(v12 + 8))(v29, v11);
  }
}

void sub_100037A68(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 zoneID];
  static Logger.syncEngine.getter();
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    v14 = v8;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v2;
    v18 = v17;

    v19 = sub_100002CB4(v16, v18, &v24);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Saved zone: %{public}s", v12, 0xCu);
    sub_1000032BC(v13);

    (*(v23 + 8))(v6, v22);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v20 = [objc_opt_self() defaultCenter];
  if (qword_10006B7C0 != -1)
  {
    swift_once();
  }

  [v20 postNotificationName:qword_10006C998 object:v8];
}

uint64_t sub_100037D04(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v13 = v7;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100002CB4(v15, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Will fetch changes for %{public}s", v11, 0xCu);
    sub_1000032BC(v12);

    return (*(v3 + 8))(v6, v20);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100037EFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DA30(a1, a2);
  }

  return a1;
}

uint64_t sub_100037F10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007644(a1, a2);
  }

  return a1;
}

unint64_t sub_100037F44()
{
  result = qword_10006C268;
  if (!qword_10006C268)
  {
    sub_1000075FC(&qword_10006C260, &qword_1000570E0);
    sub_1000380BC(&qword_10006C270, &type metadata accessor for CKSyncEngine.State.Serialization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C268);
  }

  return result;
}

unint64_t sub_100038000()
{
  result = qword_10006C288;
  if (!qword_10006C288)
  {
    sub_1000075FC(&qword_10006C260, &qword_1000570E0);
    sub_1000380BC(&qword_10006C290, &type metadata accessor for CKSyncEngine.State.Serialization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C288);
  }

  return result;
}

uint64_t sub_1000380BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v68 = &v64 - v18;
  v19 = __chkstk_darwin(v17);
  v67 = &v64 - v20;
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v23 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v74 = &v64 - v25;
  v26 = swift_projectBox();
  v27 = v26;
  if (!a1)
  {
    v35 = a5;
    if (a2)
    {
      v72 = v11;
      swift_errorRetain();
      static Logger.permissions.getter();
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v73 = v27;
        v39 = v38;
        v69 = swift_slowAlloc();
        v75 = v69;
        *v39 = 136315138;
        swift_getErrorValue();
        LODWORD(v68) = v37;
        v40 = Error.localizedDescription.getter();
        v42 = sub_100002CB4(v40, v41, &v75);

        *(v39 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v68, "Failed to fetch Family Circle with error: %s", v39, 0xCu);
        sub_1000032BC(v69);

        v27 = v73;

        (*(v12 + 8))(v16, v72);
LABEL_31:
        v35 = a5;
        goto LABEL_32;
      }

      (*(v12 + 8))(v16, v72);
    }

LABEL_32:
    swift_beginAccess();
    v61 = *(a3 + 16);
    swift_beginAccess();
    v62 = v74;
    sub_10003AC08(v27, v74);
    v35(v61, v62);
    return sub_10003AB6C(v62);
  }

  v65 = v22;
  v73 = v26;
  v28 = a1;
  v29 = [v28 members];
  sub_10003AC78();
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = a6;
  v71 = a5;
  v72 = v11;
  v69 = v28;
  if (v30 >> 62)
  {
LABEL_35:
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v12;
  if (!v31)
  {
LABEL_14:

    v35 = v71;
    v27 = v73;
    goto LABEL_32;
  }

  v32 = 0;
  while (1)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    v34 = v33;
    v12 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v33 isMe])
    {
      break;
    }

    ++v32;
    if (v12 == v31)
    {
      goto LABEL_14;
    }
  }

  v43 = [v34 memberType];
  if ((v43 - 1) < 2)
  {

    swift_beginAccess();
    *(a3 + 16) = 1;
    v44 = type metadata accessor for FamilyControlsError();
    v45 = v74;
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v27 = v73;
    swift_beginAccess();
    sub_10003ACC4(v45, v27);
    v46 = v65;
    static Logger.permissions.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    a5 = v71;
    v50 = v66;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Family Controls permissions requirement is satisfied", v51, 2u);
      v27 = v73;
    }

    (*(v50 + 8))(v46, v72);
    goto LABEL_31;
  }

  a5 = v71;
  v52 = v66;
  v27 = v73;
  if (v43 == -1)
  {

    v53 = v68;
    static Logger.permissions.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Family Controls permissions requirement is not satisfied (account is type unknown)", v56, 2u);
    }

    (*(v52 + 8))(v53, v72);
    goto LABEL_31;
  }

  if (!v43)
  {

    v57 = v67;
    static Logger.permissions.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Family Controls permissions requirement is not satisfied (account is type adult)", v60, 2u);
      v27 = v73;
    }

    (*(v52 + 8))(v57, v72);
    goto LABEL_31;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000388EC(void *a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = a1;
  if (sub_10000E710(0))
  {
    static Logger.permissions.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Family Controls permission requirement for a child account type is satisfied by override", v15, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v16 = type metadata accessor for FamilyControlsError();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_100023090(1, v5, v12);
    sub_10003AB6C(v5);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocBox();
    v20 = v19;
    v21 = enum case for FamilyControlsError.invalidAccountType(_:);
    v22 = type metadata accessor for FamilyControlsError();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v20, v21, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
    v24 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v24 setCachePolicy:1];
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = sub_10003AE6C;
    v25[5] = v11;
    aBlock[4] = sub_10003AEC4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_1000671A0;
    v26 = _Block_copy(aBlock);

    [v24 startRequestWithCompletionHandler:v26];
    _Block_release(v26);
  }
}

void sub_100038CE4(void *a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 sharedConnection];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 installedMDMProfileIdentifier];

    if (v18)
    {

      if ((sub_10000E710(1) & 1) == 0)
      {
        static Logger.permissions.getter();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v25, 2u);
        }

        (*(v7 + 8))(v11, v6);
        v26 = enum case for FamilyControlsError.restricted(_:);
        v27 = type metadata accessor for FamilyControlsError();
        v28 = *(v27 - 8);
        (*(v28 + 104))(v5, v26, v27);
        (*(v28 + 56))(v5, 0, 1, v27);
        sub_100023090(0, v5, v15);
        sub_10003AB6C(v5);
        goto LABEL_11;
      }

      static Logger.permissions.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Family Controls permission requirement for no MDM management is satisfied by override", v21, 2u);
      }

      (*(v7 + 8))(v13, v6);
    }

    v22 = v15;
    sub_1000388EC(v22);

LABEL_11:
    return;
  }

  __break(1u);
}

void sub_100039044(uint64_t a1, void (*a2)(id, void), uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for AuthorizationStatus();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v70 - v15;
  v16 = type metadata accessor for AuthorizationRecord();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  __chkstk_darwin(v16);
  v81 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v82 = a1;
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v25 = a5;

  v26 = a4;
  if ((sub_10000E710(0) & 1) == 0)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    sub_100003720(&qword_10006C0E8, &qword_100056F48);
    v40 = swift_allocBox();
    v42 = v41;
    v43 = enum case for FamilyControlsError.invalidAccountType(_:);
    v44 = type metadata accessor for FamilyControlsError();
    v45 = *(v44 - 8);
    (*(v45 + 104))(v42, v43, v44);
    (*(v45 + 56))(v42, 0, 1, v44);
    v46 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v46 setCachePolicy:1];
    v47 = swift_allocObject();
    v47[2] = v39;
    v47[3] = v40;
    v47[4] = sub_10003ADC8;
    v47[5] = v24;
    v86 = sub_10003AEC4;
    v87 = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    v85 = &unk_1000670D8;
    v48 = _Block_copy(aBlock);

    [v46 startRequestWithCompletionHandler:v48];
    _Block_release(v48);

    return;
  }

  v73 = v26;
  v74 = a2;
  v75 = a3;
  static Logger.permissions.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Family Controls permission requirement for a child account type is satisfied by override", v29, 2u);
  }

  (*(v20 + 8))(v23, v19);
  FamilyControlsMember.rawValue.getter();
  FamilyControlsMember.rawValue.getter();
  if (a5)
  {
    v31 = *&v73[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
    v30 = *&v73[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 128];
    v32 = v25;
    v31(aBlock);
    v33 = sub_100007504(aBlock, v85);
    v34 = v33[2];
    if (v34)
    {
      v35 = v33[1];
      v36 = sub_100007504(aBlock, v85);
      v37 = v36[4];
      if (v37)
      {
        v38 = v36[3];

        sub_10003BCF4(v35, v34, v38, v37, v81);

        v72 = v32;

        sub_1000032BC(aBlock);
        v54 = v76;
        AuthorizationRecord.status.getter();
        v55 = enum case for AuthorizationStatus.approved(_:);
        v57 = v77;
        v56 = v78;
        v71 = *(v77 + 104);
        v71(v14, enum case for AuthorizationStatus.approved(_:), v78);
        sub_10003AD34(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v58 = *(v57 + 8);
        v58(v14, v56);
        v58(v54, v56);
        if (aBlock[0] == v83)
        {
          v71(v54, v55, v56);
          v59 = AuthorizationStatus.rawValue.getter();
          v58(v54, v56);
          v60 = [objc_allocWithZone(NSNumber) initWithInteger:v59];
          v74(v60, 0);

          (*(v79 + 8))(v81, v80);
        }

        else
        {
          (*(v79 + 8))(v81, v80);
          v61 = v74;
          v62 = v75;
          if (qword_10006B7F0 != -1)
          {
            swift_once();
          }

          v63 = qword_10006C9C8;
          v64 = swift_allocObject();
          v65 = v73;
          v66 = v82;
          v64[2] = v73;
          v64[3] = v66;
          v64[4] = a5;
          v64[5] = v63;
          v64[6] = v61;
          v64[7] = v62;
          v67 = swift_allocObject();
          v67[2] = v63;
          v67[3] = sub_10003AEC8;
          v67[4] = v64;
          swift_retain_n();

          v68 = v65;
          v69 = v72;

          sub_100044BE4(1, 0, sub_10002B8A4, v67);
        }

        goto LABEL_12;
      }
    }

    v49 = type metadata accessor for FamilyControlsError();
    sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for FamilyControlsError.invalidArgument(_:), v49);
    swift_willThrow();

    sub_1000032BC(aBlock);
  }

  else
  {
    v52 = type metadata accessor for FamilyControlsError();
    sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v50 = swift_allocError();
    (*(*(v52 - 8) + 104))(v53, enum case for FamilyControlsError.invalidArgument(_:), v52);
    swift_willThrow();
  }

  swift_errorRetain();
  v74(0, v50);

LABEL_12:
}

void sub_1000399B4(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v92 = a2;
  v93 = a1;
  v8 = type metadata accessor for AuthorizationStatus();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  v10 = __chkstk_darwin(v8);
  v84 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v82 - v12;
  v13 = type metadata accessor for AuthorizationRecord();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  __chkstk_darwin(v13);
  v90 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v82 - v21;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v82 - v28;
  v30 = objc_opt_self();
  v94 = a5;

  v95 = a4;
  v31 = [v30 sharedConnection];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 installedMDMProfileIdentifier];

    if (!v33)
    {
LABEL_7:

      v37 = v95;
      v38 = v94;
      sub_100039044(v93, v92, a3, v37, a5);

      return;
    }

    if (sub_10000E710(1))
    {
      static Logger.permissions.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Family Controls permission requirement for no MDM management is satisfied by override", v36, 2u);
      }

      (*(v23 + 8))(v29, v22);
      goto LABEL_7;
    }

    static Logger.permissions.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v41, 2u);
    }

    (*(v23 + 8))(v27, v22);
    v42 = enum case for FamilyControlsError.restricted(_:);
    v43 = type metadata accessor for FamilyControlsError();
    v44 = *(v43 - 8);
    v45 = *(v44 + 104);
    v46 = v91;
    v45(v91, v42, v43);
    (*(v44 + 56))(v46, 0, 1, v43);
    v47 = FamilyControlsMember.rawValue.getter();
    if (v47 == FamilyControlsMember.rawValue.getter())
    {
      sub_10003AC08(v46, v20);
      if ((*(v44 + 48))(v20, 1, v43) == 1)
      {
        sub_10003AB6C(v20);
        v48 = 0;
      }

      else
      {
        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v48 = swift_allocError();
        (*(v44 + 32))(v57, v20, v43);
      }

      v92(0, v48);
    }

    else
    {
      if (a5)
      {
        v50 = *&v95[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 120];
        v49 = *&v95[OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager + 128];
        v83 = v94;
        v50(v97);
        v51 = sub_100007504(v97, v98);
        v52 = v51[2];
        if (v52)
        {
          v53 = v51[1];
          v54 = sub_100007504(v97, v98);
          if (v54[4])
          {
            v55 = v54[4];
            v56 = v54[3];

            sub_10003BCF4(v53, v52, v56, v55, v90);

            sub_1000032BC(v97);
            v62 = v85;
            AuthorizationRecord.status.getter();
            v63 = enum case for AuthorizationStatus.approved(_:);
            v65 = v86;
            v64 = v87;
            v66 = v84;
            v82 = *(v86 + 104);
            v82(v84, enum case for AuthorizationStatus.approved(_:), v87);
            sub_10003AD34(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v67 = v62;
            v68 = *(v65 + 8);
            v68(v66, v64);
            v68(v62, v64);
            v46 = v91;
            if (v97[0] == v96)
            {
              v82(v67, v63, v64);
              v69 = v67;
              v70 = AuthorizationStatus.rawValue.getter();
              v68(v69, v64);
              v71 = [objc_allocWithZone(NSNumber) initWithInteger:v70];
              v92(v71, 0);

              (*(v88 + 8))(v90, v89);
              sub_10003AB6C(v46);
              v61 = v83;
              goto LABEL_24;
            }

            (*(v88 + 8))(v90, v89);
            if (qword_10006B7F0 != -1)
            {
              swift_once();
            }

            v72 = qword_10006C9C8;
            v73 = swift_allocObject();
            v74 = v95;
            v75 = v92;
            v76 = v93;
            v73[2] = v95;
            v73[3] = v76;
            v73[4] = a5;
            v73[5] = v72;
            v73[6] = v75;
            v73[7] = a3;
            v77 = swift_allocObject();
            v77[2] = v72;
            v77[3] = sub_10003AD7C;
            v77[4] = v73;
            swift_retain_n();

            v78 = v74;
            v79 = v83;

            sub_100044BE4(1, 0, sub_100028990, v77);

LABEL_23:
            sub_10003AB6C(v46);
            v61 = v94;
LABEL_24:

            return;
          }
        }

        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v58 = swift_allocError();
        v45(v59, enum case for FamilyControlsError.invalidArgument(_:), v43);
        swift_willThrow();

        sub_1000032BC(v97);
        v46 = v91;
      }

      else
      {
        sub_10003AD34(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v58 = swift_allocError();
        v45(v60, enum case for FamilyControlsError.invalidArgument(_:), v43);
        swift_willThrow();
      }

      swift_errorRetain();
      v92(0, v58);
    }

    goto LABEL_23;
  }

  v80 = v94;

  v81 = v95;

  __break(1u);
}

void sub_10003A460(void (*a1)(uint64_t, char *), uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000E710(0))
  {
    static Logger.permissions.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Family Controls permission requirement for a child account type is satisfied by override", v15, 2u);
    }

    (*(v9 + 8))(v12, v8);
    v16 = type metadata accessor for FamilyControlsError();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    a1(1, v7);
    sub_10003AB6C(v7);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocBox();
    v20 = v19;
    v21 = enum case for FamilyControlsError.invalidAccountType(_:);
    v22 = type metadata accessor for FamilyControlsError();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v20, v21, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
    v24 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v24 setCachePolicy:1];
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = a1;
    v25[5] = a2;
    aBlock[4] = sub_10003ABE4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_100067010;
    v26 = _Block_copy(aBlock);

    [v24 startRequestWithCompletionHandler:v26];
    _Block_release(v26);
  }
}

void sub_10003A81C(void (*a1)(uint64_t, char *), uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = [objc_opt_self() sharedConnection];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 installedMDMProfileIdentifier];

    if (!v18)
    {
LABEL_7:
      sub_10003A460(a1, a2);
      return;
    }

    if (sub_10000E710(1))
    {
      static Logger.permissions.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Family Controls permission requirement for no MDM management is satisfied by override", v21, 2u);
      }

      (*(v9 + 8))(v13, v8);
      goto LABEL_7;
    }

    static Logger.permissions.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Family Controls permission requirement is not satisfied (device is managed by MDM)", v24, 2u);
    }

    (*(v9 + 8))(v15, v8);
    v25 = enum case for FamilyControlsError.restricted(_:);
    v26 = type metadata accessor for FamilyControlsError();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v7, v25, v26);
    (*(v27 + 56))(v7, 0, 1, v26);
    a1(0, v7);
    sub_10003AB6C(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003AB6C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003ABF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003AC78()
{
  result = qword_10006C2A0;
  if (!qword_10006C2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C2A0);
  }

  return result;
}

uint64_t sub_10003ACC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006C0E8, &qword_100056F48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AD34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003AD80()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ADE0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003AE34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AE74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AEE4(uint64_t a1)
{
  v43 = a1;
  v3 = type metadata accessor for AuthorizationRecord();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[4];
  sub_100007504(v1, v1[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v12 = [objc_opt_self() defaultManager];
  v13 = type metadata accessor for PropertyListDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v12 fileExistsAtPath:v16];

  if (v17)
  {
    v40 = v7;
    v18 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (*(v44 + 8))(v10, v40);
    }

    v23 = v18;
    v24 = v19;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100007644(v23, v24);

    v20 = v45;
    v7 = v40;
  }

  else
  {

    v20 = &_swiftEmptyArrayStorage;
  }

  v47 = v20;

  v21 = sub_10003C9A4(v43, v20);

  if (v21 == NSNotFound.getter())
  {

    return (*(v44 + 8))(v10, v7);
  }

  sub_10003CE90(v21, v6);
  (*(v41 + 8))(v6, v42);
  sub_10003CB70(v47);
  if (v2)
  {
    (*(v44 + 8))(v10, v7);
  }

  v25 = AuthorizationRecord.bundleIdentifier.getter();
  v27 = v26;
  v28 = AuthorizationRecord.teamIdentifier.getter();
  v29 = v7;
  v31 = v30;
  v45 = 45;
  v46 = 0xE100000000000000;
  v32._countAndFlagsBits = v25;
  v32._object = v27;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 45;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = v28;
  v34._object = v31;
  String.append(_:)(v34);
  v35._countAndFlagsBits = v45;
  v36 = v46;
  v45 = 0xD000000000000026;
  v46 = 0x80000001000585F0;
  v35._object = v36;
  String.append(_:)(v35);

  v37 = String.utf8CString.getter();

  notify_post((v37 + 32));

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = String.utf8CString.getter();

  notify_post((v38 + 32));
  (*(v44 + 8))(v10, v29);
}

size_t sub_10003B3DC(uint64_t a1)
{
  v43 = a1;
  v44 = type metadata accessor for AuthorizationRecord();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[4];
  sub_100007504(v1, v1[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v11 = [objc_opt_self() defaultManager];
  v12 = type metadata accessor for PropertyListDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v11 fileExistsAtPath:v15];

  if (v16)
  {
    v41 = v6;
    v17 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (*(v47 + 8))(v9, v41);
    }

    v39 = v17;
    v40 = v18;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_100007644(v39, v40);

    v19 = v45;
    v6 = v41;
  }

  else
  {

    v19 = &_swiftEmptyArrayStorage;
  }

  v20 = v43;
  v21 = sub_10003C9A4(v43, v19);

  if (v21 == NSNotFound.getter())
  {
    (*(v3 + 16))(v42, v20, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10001CA3C(0, v19[2] + 1, 1, v19);
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_10001CA3C(v22 > 1, v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v42, v44);
    goto LABEL_15;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_10001D024(v19);
  v19 = result;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (v21 < v19[2])
  {
    (*(v3 + 24))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v20, v44);
LABEL_15:
    sub_10003CB70(v19);
    if (v2)
    {
      (*(v47 + 8))(v9, v6);
    }

    v25 = AuthorizationRecord.bundleIdentifier.getter();
    v27 = v26;
    v28 = AuthorizationRecord.teamIdentifier.getter();
    v29 = v6;
    v31 = v30;
    v45 = 45;
    v46 = 0xE100000000000000;
    v32._countAndFlagsBits = v25;
    v32._object = v27;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 45;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v28;
    v34._object = v31;
    String.append(_:)(v34);
    v35._countAndFlagsBits = v45;
    v36 = v46;
    v45 = 0xD000000000000026;
    v46 = 0x80000001000585F0;
    v35._object = v36;
    String.append(_:)(v35);

    v37 = String.utf8CString.getter();

    notify_post((v37 + 32));

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String.utf8CString.getter();

    notify_post((v38 + 32));
    (*(v47 + 8))(v9, v29);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003B998(uint64_t a1)
{
  v22[1] = a1;
  v26 = type metadata accessor for URL();
  v25 = *(v26 - 8);
  v1 = *(v25 + 64);
  __chkstk_darwin(v26);
  v23 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for AuthorizationStatus();
  v3 = *(v22[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22[0]);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for AuthorizationRecord();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  __chkstk_darwin(v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v3 + 104))(v6, enum case for AuthorizationStatus.approved(_:), v22[0]);
  v15 = v9;
  AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
  sub_100003720(&qword_10006C030, &qword_100056D48);
  v16 = *(v10 + 72);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100056C30;
  (*(v11 + 16))(v18 + v17, v14, v15);
  v19 = v24[4];
  sub_100007504(v24, v24[3]);
  v20 = v23;
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  sub_10003CB70(v18);

  (*(v25 + 8))(v20, v26);
  return (*(v11 + 8))(v14, v15);
}

uint64_t sub_10003BCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v63 = a5;
  v6 = type metadata accessor for AuthorizationStatus();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AuthorizationRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v64 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = *(v13 + 56);
  v65 = &v55 - v27;
  v68 = v12;
  v57 = v26;
  v58 = v13 + 56;
  v26();
  v28 = v5[4];
  sub_100007504(v5, v5[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v29 = [objc_opt_self() defaultManager];
  v30 = type metadata accessor for PropertyListDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v29 fileExistsAtPath:v33];

  if (v34)
  {
    v67 = v17;
    v35 = v66;
    v36 = Data.init(contentsOf:options:)();
    if (v35)
    {

      (*(v18 + 8))(v21, v67);
      return sub_10003D064(v65);
    }

    v56 = v36;
    v51 = v37;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0);
    v55 = v51;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v66 = 0;
    (*(v18 + 8))(v21, v67);
    sub_100007644(v56, v55);

    v39 = v73;
  }

  else
  {
    (*(v18 + 8))(v21, v17);

    v39 = &_swiftEmptyArrayStorage;
  }

  v40 = v39[2];
  v41 = v68;
  if (v40)
  {
    v42 = 0;
    v43 = v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v67 = v13;
    v44 = (v13 + 8);
    while (1)
    {
      if (v42 >= v39[2])
      {
        __break(1u);
        return result;
      }

      (*(v67 + 16))(v16, &v43[*(v67 + 72) * v42], v41);
      if (AuthorizationRecord.bundleIdentifier.getter() == v72 && v46 == v70)
      {
        break;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        goto LABEL_14;
      }

LABEL_8:
      ++v42;
      v41 = v68;
      result = (*v44)(v16, v68);
      if (v40 == v42)
      {

        v50 = v63;
        v49 = v65;
        v13 = v67;
        goto LABEL_21;
      }
    }

LABEL_14:
    if (AuthorizationRecord.teamIdentifier.getter() == v71 && v48 == v69)
    {

LABEL_17:
      v49 = v65;
      sub_10003D064(v65);

      v13 = v67;
      v41 = v68;
      (*(v67 + 32))(v49, v16, v68);
      (v57)(v49, 0, 1, v41);
      v50 = v63;
      goto LABEL_21;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v49 = v65;
  v50 = v63;
LABEL_21:
  v52 = v64;
  sub_10003D0CC(v49, v64);
  v53 = *(v13 + 48);
  if (v53(v52, 1, v41) == 1)
  {

    UUID.init()();
    (*(v61 + 104))(v60, enum case for AuthorizationStatus.notDetermined(_:), v62);
    v54 = v64;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003D064(v49);
    result = v53(v54, 1, v41);
    if (result != 1)
    {
      return sub_10003D064(v54);
    }
  }

  else
  {
    sub_10003D064(v49);
    return (*(v13 + 32))(v50, v52, v41);
  }

  return result;
}

uint64_t sub_10003C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v51 = type metadata accessor for UUID();
  v44 = *(v51 - 8);
  v5 = *(v44 + 8);
  __chkstk_darwin(v51);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthorizationRecord();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v8;
  v16 = v8[7];
  v46 = v8 + 7;
  v47 = a2;
  v45 = v16;
  v16(a2, 1, 1, v7);
  v17 = v15;
  v18 = v2[4];
  sub_100007504(v2, v2[3]);
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v19 = [objc_opt_self() defaultManager];
  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v23 = String._bridgeToObjectiveC()();

  LODWORD(v18) = [v19 fileExistsAtPath:v23];

  if (v18)
  {
    v24 = Data.init(contentsOf:options:)();
    if (v3)
    {

      (*(v12 + 8))(v17, v11);
      return sub_10003D064(v47);
    }

    v42 = v25;
    v38 = v24;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_10003CF98(&qword_10006B998, &qword_10006B9A0);
    v48 = v38;
    v39 = v42;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v12 + 8))(v17, v11);
    sub_100007644(v48, v39);

    v26 = v53;
  }

  else
  {
    (*(v12 + 8))(v17, v11);

    v26 = &_swiftEmptyArrayStorage;
  }

  v27 = v26[2];
  v28 = v43;
  if (v27)
  {
    v41 = v26;
    v42 = v3;
    v29 = (v49 + 2);
    v30 = v49[2];
    v31 = v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v48 = v49[9];
    v49 = v30;
    v32 = (v44 + 8);
    v44 = v29 - 8;
    v33 = (v29 + 16);
    (v30)(v43, v31, v7);
    while (1)
    {
      v35 = v7;
      v36 = v50;
      AuthorizationRecord.recordIdentifier.getter();
      v37 = static UUID.== infix(_:_:)();
      (*v32)(v36, v51);
      if (v37)
      {
        v34 = v47;
        sub_10003D064(v47);
        (*v33)(v34, v28, v35);
        v45(v34, 0, 1, v35);
      }

      else
      {
        (*v44)(v28, v35);
      }

      v7 = v35;
      v31 += v48;
      if (!--v27)
      {
        break;
      }

      (v49)(v28, v31, v35);
    }
  }
}

uint64_t sub_10003C9A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  AuthorizationRecord.recordIdentifier.getter();
  v11 = NSNotFound.getter();
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = (v4 + 8);
  v21[0] = v11;
  v21[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v13 != v12)
  {
    v15 = v12 + 1;
    v16 = *(type metadata accessor for AuthorizationRecord() - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;
    AuthorizationRecord.recordIdentifier.getter();
    LOBYTE(v17) = static UUID.== infix(_:_:)();
    v18 = *v14;
    (*v14)(v8, v3);
    ++v12;
    if (v17)
    {
      v19 = v15 - 1;
      goto LABEL_6;
    }
  }

  v18 = *v14;
  v19 = v21[0];
LABEL_6:
  v18(v10, v3);
  return v19;
}

uint64_t sub_10003CB70(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = type metadata accessor for PropertyListEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v36 = a1;
  sub_100003720(&qword_10006B990, &qword_100056680);
  sub_10003CF98(&qword_10006C2A8, &unk_10006C2B0);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v33 = v4;
    v34 = v12;
    v35 = v13;
    URL.path.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v8 fileExistsAtPath:v14];

    if (a1[2])
    {
      if (v15)
      {
LABEL_6:
        v22 = v34;
        v23 = v35;
        Data.write(to:options:)();
        v24 = v22;
        v25 = v23;
LABEL_12:
        sub_100007644(v24, v25);
        goto LABEL_13;
      }

      URL.deletingLastPathComponent()();
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      (*(v33 + 8))(v7, v3);
      v36 = 0;
      v19 = [v8 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v36];

      v20 = v36;
      if (v19)
      {
        v21 = v36;
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v15)
    {
      URL._bridgeToObjectiveC()(0);
      v27 = v26;
      v36 = 0;
      v28 = [v8 removeItemAtURL:v26 error:&v36];

      v20 = v36;
      if (!v28)
      {
LABEL_10:
        v30 = v20;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_11;
      }

      v29 = v36;
    }

LABEL_11:
    v24 = v34;
    v25 = v35;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_10003CE90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001D024(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for AuthorizationRecord();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10003CF98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(&qword_10006B990, &qword_100056680);
    sub_10003D020(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D020(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AuthorizationRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003D064(uint64_t a1)
{
  v2 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003D0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10003D13C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003D150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003D198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *FamilyControlsService.remoteInterface.unsafeMutableAddressor()
{
  if (qword_10006B7D0 != -1)
  {
    swift_once();
  }

  return &static FamilyControlsService.remoteInterface;
}

id sub_10003D240()
{
  result = sub_10003D260();
  static FamilyControlsService.remoteInterface = result;
  return result;
}

id sub_10003D260()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FamilyControlsAgent25FamilyControlsAgentRemote_];
  sub_1000112B4(0, &unk_10006C2C0, NSSet_ptr);
  sub_100003720(&qword_10006C278, &qword_1000570E8);
  v6 = swift_allocObject();
  v22 = xmmword_100056C30;
  *(v6 + 16) = xmmword_100056C30;
  v7 = sub_1000112B4(0, &qword_10006C2D0, UISSlotStyle_ptr);
  *(v6 + 56) = sub_100003720(&qword_10006C2D8, &qword_100057168);
  *(v6 + 32) = v7;
  v8 = NSSet.init(objects:)();
  v23 = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  if (v23)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v22;
    v10 = sub_1000112B4(0, &qword_10006C2E0, UISSlotTag_ptr);
    *(v9 + 56) = sub_100003720(&qword_10006C2E8, &qword_100057170);
    *(v9 + 32) = v10;
    v11 = NSSet.init(objects:)();
    v23 = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v23)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v22;
      v13 = sub_1000112B4(0, &qword_10006C2F0, UISSlotRemoteContent_ptr);
      *(v12 + 56) = sub_100003720(&qword_10006C2F8, qword_100057178);
      *(v12 + 32) = v13;
      v14 = NSSet.init(objects:)();
      v23 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v23)
      {
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v5 setClasses:isa forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:1 ofReply:0];

        v16 = Set._bridgeToObjectiveC()().super.isa;

        [v5 setClasses:v16 forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:2 ofReply:0];

        v17 = Set._bridgeToObjectiveC()().super.isa;

        [v5 setClasses:v17 forSelector:"getRemoteContentForLayerContextWithId:style:tag:reply:" argumentIndex:0 ofReply:1];

        return v5;
      }
    }
  }

  static Logger.agent.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to set allowed classes", v20, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return v5;
}

id static FamilyControlsService.remoteInterface.getter()
{
  if (qword_10006B7D0 != -1)
  {
    swift_once();
  }

  v1 = static FamilyControlsService.remoteInterface;

  return v1;
}

uint64_t sub_10003D6F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003D768(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 6448503;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10003D854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003D8E8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10003D968()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003D9F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100040060(*a1);
  *a2 = result;
  return result;
}

void sub_10003DA28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003DA78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003DB14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003DB84(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_10004015C(a5, a6, a1);
  a2();
}

uint64_t sub_10003DBE0(uint64_t a1)
{
  if (qword_10006B7D8 != -1)
  {
    swift_once();
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_11:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = sub_100013058();

    return v10;
  }

  v8 = [objc_opt_self() localizedNameForIdentifier:a1];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_10003DD20()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v3 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__localizedName;
  v5 = sub_100003720(&qword_10006C5B0, &qword_100057510);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isDisplayable;
  v7 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v6], v7);
  v8(&v0[OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__requiresRemoteIconFetch], v7);
  v8(&v0[OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch], v7);
  v8(&v0[OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected], v7);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityItem()
{
  result = qword_10006C358;
  if (!qword_10006C358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003DF24()
{
  sub_10003E100();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10003E164(319, &qword_10006C370);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10003E164(319, &unk_10006C378);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_10003E060()
{
  Hasher.init(_seed:)();
  *(v0 + 16);
  String.hash(into:)();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003E100()
{
  if (!qword_10006C368)
  {
    sub_1000075FC(&qword_10006BE08, &qword_100056988);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10006C368);
    }
  }
}

void sub_10003E164(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_10003E1D0()
{
  result = qword_10006C598;
  if (!qword_10006C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C598);
  }

  return result;
}

uint64_t sub_10003E230@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10003DB80();
  *a1 = result;
  return result;
}

uint64_t sub_10003E280()
{
  v1 = *v0;
  *(*v0 + 16);
  String.hash(into:)();

  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return String.hash(into:)();
}

Swift::Int sub_10003E31C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16) == 1;
  }

  String.hash(into:)();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003E3C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityItem();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

NSString sub_10003E458()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C9B0 = result;
  return result;
}

uint64_t sub_10003E490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10003E510(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003E594(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003E610(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_10001DD64(a1, &v13 - v9, &qword_10006BE08, &qword_100056988);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001DD64(v10, v8, &qword_10006BE08, &qword_100056988);

  static Published.subscript.setter();
  return sub_10000D5C4(v10, &qword_10006BE08, &qword_100056988);
}

uint64_t sub_10003E768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003E7E4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003E854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v3 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 7368801;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  if (*(a2 + 16) != 1)
  {
    v9 = 6448503;
    v8 = 0xE300000000000000;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 7368801;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

UIImage sub_10003E9A4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006B7D8 != -1)
  {
    swift_once();
  }

  v7 = 0x737070416C6C41;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    v14 = 0xE700000000000000;
    goto LABEL_22;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    v14 = 0xEA00000000007974;
    v7 = 0x6976697461657243;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v17 != v18)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_22;
      }

      v7 = 0x6F69746163756445;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
      {

        v14 = 0xE90000000000006ELL;
        goto LABEL_22;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = 0xE90000000000006ELL;
      if (v25)
      {
        goto LABEL_22;
      }

      v14 = 0xED0000746E656D6ELL;
      v7 = 0x6961747265746E45;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
      if (v26 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v28 != v29)
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_22;
        }

        v7 = 0x73656D6147;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
        if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
        {

          v14 = 0xE500000000000000;
          goto LABEL_22;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          v14 = 0xE500000000000000;
          goto LABEL_22;
        }

        v14 = 0xED00007373656E74;
        v7 = 0x694668746C616548;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        if (v38 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v40 != v41)
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_22;
          }

          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
          if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
          {

LABEL_36:
            v14 = 0x8000000100058BF0;
            v7 = 0xD000000000000014;
            goto LABEL_22;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v47)
          {
            goto LABEL_36;
          }

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
          if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
          {

LABEL_41:
            v14 = 0xE500000000000000;
            v7 = 0x726568744FLL;
            goto LABEL_22;
          }

          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v52)
          {
            goto LABEL_41;
          }

          v14 = 0xEC00000079746976;
          v7 = 0x69746375646F7250;
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
          if (v53 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v55 != v56)
          {
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v57)
            {
              goto LABEL_22;
            }

            v14 = 0xEF646F6F46646E41;
            v7 = 0x676E6970706F6853;
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;
            if (v58 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v60 != v61)
            {
              v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v62)
              {
                goto LABEL_22;
              }

              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
              {
              }

              else
              {
                v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v67 & 1) == 0)
                {
                  v7 = 0x6C6576617254;
                  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v70 = v69;
                  if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
                  {

                    v14 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v72)
                  {
                    v14 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v7 = 0x656974696C697455;
                  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v75 = v74;
                  if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
                  {

                    v14 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v77)
                  {
                    v14 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  static Logger.activityPicker.getter();
                  v78 = a1;
                  v79 = Logger.logObject.getter();
                  v80 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v79, v80))
                  {
                    v81 = swift_slowAlloc();
                    v82 = swift_slowAlloc();
                    v87 = v82;
                    *v81 = 136315138;
                    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v85 = sub_100002CB4(v83, v84, &v87);

                    *(v81 + 4) = v85;
                    _os_log_impl(&_mh_execute_header, v79, v80, "Failed to resolve icon for category identifier: %s", v81, 0xCu);
                    sub_1000032BC(v82);
                  }

                  (*(v3 + 8))(v6, v2);
                  goto LABEL_41;
                }
              }

              v7 = 0xD000000000000010;
              v14 = 0x8000000100058BD0;
              goto LABEL_22;
            }
          }
        }
      }
    }

    goto LABEL_22;
  }

  v14 = 0xE700000000000000;
LABEL_22:
  sub_100041168();
  v30._countAndFlagsBits = v7;
  v30._object = v14;
  return UIImage.init(imageLiteralResourceName:)(v30);
}

uint64_t sub_10003F2CC(uint64_t a1, unint64_t a2)
{
  v81 = a1;
  v3 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  __chkstk_darwin(v3);
  v76 = &v71 - v5;
  v6 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v75 = &v71 - v9;
  v83 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v10 = *(*(v83 - 8) + 64);
  v11 = __chkstk_darwin(v83);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v79 = &v71 - v15;
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_10003DBE0(v23);
  v82 = a2;
  v80 = v13;
  if (v25)
  {
    v73 = v25;
    v74 = v24;
  }

  else
  {
    v71 = v17;
    static Logger.activityPicker.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v74 = v7;
      v29 = v23;
      v30 = v28;
      v31 = swift_slowAlloc();
      v86 = v31;
      *v30 = 136315138;
      v32 = v81;
      *(v30 + 4) = sub_100002CB4(v81, v82, &v86);
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to resolve localized name for category identifier: %s", v30, 0xCu);
      sub_1000032BC(v31);
      a2 = v82;

      v23 = v29;
      v7 = v74;

      (*(v19 + 8))(v22, v18);
    }

    else
    {

      (*(v19 + 8))(v22, v18);
      v32 = v81;
    }

    v73 = a2;
    v74 = v32;
    v17 = v71;
    v13 = v80;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v23;
  if (v33 == v36 && v35 == v37)
  {
    goto LABEL_9;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
LABEL_12:

    goto LABEL_13;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v61 != v62)
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v23;
      v66 = v64;
      v68 = v67;

      if (v66 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v68 != v69)
      {
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LODWORD(v71) = v70 ^ 1;
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:

LABEL_10:

LABEL_13:
  LODWORD(v71) = 0;
LABEL_14:
  v39 = type metadata accessor for URL();
  v40 = *(*(v39 - 8) + 56);
  v40(v17, 1, 1, v39);
  v41 = type metadata accessor for ActivityItem();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v46 = v79;
  v40(v79, 1, 1, v39);
  sub_10001DD64(v46, v13, &qword_10006BE08, &qword_100056988);
  v47 = v75;
  Published.init(initialValue:)();
  sub_10000D5C4(v46, &qword_10006BE08, &qword_100056988);
  v48 = v7;
  (*(v7 + 32))(v44 + v45, v47, v6);
  v49 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  LOBYTE(v86) = 0;
  v50 = v76;
  Published.init(initialValue:)();
  v75 = v6;
  v51 = v48;
  v52 = v17;
  v53 = v78;
  v54 = *(v77 + 32);
  v54(v44 + v49, v50, v78);
  v55 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  LOBYTE(v86) = 0;
  Published.init(initialValue:)();
  v54(v44 + v55, v50, v53);
  *(v44 + 16) = 1;
  v56 = v82;
  *(v44 + 24) = v81;
  *(v44 + 32) = v56;
  swift_beginAccess();
  v84 = v74;
  v85 = v73;

  Published.init(initialValue:)();
  swift_endAccess();
  sub_10001DD64(v52, v46, &qword_10006BE08, &qword_100056988);
  v57 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v51 + 8))(v44 + v57, v75);
  sub_10001DD64(v46, v80, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v46, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v84) = v71 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v84) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = 0;

  static Published.subscript.setter();

  sub_10000D5C4(v52, &qword_10006BE08, &qword_100056988);
  return v44;
}

uint64_t sub_10003FB5C(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - v4;
  v37 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v44 = *(v37 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v37);
  v8 = &v36 - v7;
  v38 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v9 = *(*(v38 - 8) + 64);
  v10 = __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v39 = &v36 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v20 = type metadata accessor for ActivityItem();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v19(v15, 1, 1, v18);
  sub_10001DD64(v15, v12, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v15, &qword_10006BE08, &qword_100056988);
  v25 = v23 + v24;
  v26 = v37;
  (*(v44 + 32))(v25, v8, v37);
  v27 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  v47 = 0;
  Published.init(initialValue:)();
  v28 = v41;
  v29 = *(v40 + 32);
  v29(v23 + v27, v5, v41);
  v30 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  v47 = 0;
  Published.init(initialValue:)();
  v29(v23 + v30, v5, v28);
  *(v23 + 16) = 2;
  v32 = v42;
  v31 = v43;
  *(v23 + 24) = v42;
  *(v23 + 32) = v31;
  swift_beginAccess();
  v45 = v32;
  v46 = v31;
  swift_bridgeObjectRetain_n();
  Published.init(initialValue:)();
  swift_endAccess();
  v33 = v39;
  sub_10001DD64(v39, v15, &qword_10006BE08, &qword_100056988);
  v34 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v44 + 8))(v23 + v34, v26);
  sub_10001DD64(v15, v12, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v15, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = 0;

  static Published.subscript.setter();
  sub_10000D5C4(v33, &qword_10006BE08, &qword_100056988);
  return v23;
}

unint64_t sub_100040060(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100065C50, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004015C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v120 = a2;
  v5 = sub_100003720(&qword_10006C5B8, &qword_100057518);
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  __chkstk_darwin(v5);
  v104 = &v97 - v7;
  v117 = sub_100003720(&qword_10006C5A8, &qword_100057508);
  v107 = *(v117 - 8);
  v8 = *(v107 + 64);
  __chkstk_darwin(v117);
  v103 = &v97 - v9;
  v108 = sub_100003720(&qword_10006C5C0, &qword_100057520);
  v10 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v100 = &v97 - v11;
  v12 = sub_100003720(&qword_10006C5C8, &qword_100057528);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v97 - v18;
  __chkstk_darwin(v17);
  v110 = &v97 - v20;
  v101 = type metadata accessor for Logger();
  v21 = *(v101 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v101);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppInfoSource();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  v27 = __chkstk_darwin(v25);
  v98 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v99 = &v97 - v29;
  v113 = type metadata accessor for URL();
  v118 = *(v113 - 8);
  v30 = *(v118 + 64);
  __chkstk_darwin(v113);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v33 = *(*(v115 - 8) + 64);
  v34 = __chkstk_darwin(v115);
  v114 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v102 = &v97 - v37;
  v38 = __chkstk_darwin(v36);
  v116 = &v97 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v97 - v41;
  __chkstk_darwin(v40);
  v119 = &v97 - v43;
  v112 = a1;
  if (!a3)
  {
LABEL_9:
    v109 = v16;
    v47 = a3;
    static Logger.activityPicker.getter();
    v48 = v120;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v123 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100002CB4(v112, v120, &v123);
      _os_log_impl(&_mh_execute_header, v49, v50, "Could not initially resolve app info for bundle identifier: %s", v51, 0xCu);
      sub_1000032BC(v52);
      v48 = v120;
    }

    (*(v21 + 8))(v24, v101);
    v53 = v110;
    v54 = v25;
    v55 = v118 + 56;
    v56 = 1;
    v101 = *(v118 + 56);
    v101(v119, 1, 1, v113);
    if (v47)
    {
      dispatch thunk of AppInfo.source.getter();
      v56 = 0;
    }

    v118 = v55 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57 = v111;
    v58 = *(v111 + 56);
    v58(v53, v56, 1, v25);
    (*(v57 + 104))(v19, enum case for AppInfoSource.unknown(_:), v25);
    v58(v19, 0, 1, v25);
    v59 = *(v108 + 48);
    v60 = v100;
    sub_10001DD64(v53, v100, &qword_10006C5C8, &qword_100057528);
    sub_10001DD64(v19, v60 + v59, &qword_10006C5C8, &qword_100057528);
    v61 = v53;
    v62 = *(v57 + 48);
    if (v62(v60, 1, v54) == 1)
    {
      sub_10000D5C4(v19, &qword_10006C5C8, &qword_100057528);
      sub_10000D5C4(v61, &qword_10006C5C8, &qword_100057528);
      if (v62(v60 + v59, 1, v54) == 1)
      {
        sub_10000D5C4(v60, &qword_10006C5C8, &qword_100057528);
        LODWORD(v108) = 1;
LABEL_19:
        v64 = v112;
        v65 = v113;
LABEL_21:

        LODWORD(v111) = 0;
        v109 = v64;
        v110 = v48;
        v69 = v101;
        goto LABEL_22;
      }
    }

    else
    {
      v63 = v109;
      sub_10001DD64(v60, v109, &qword_10006C5C8, &qword_100057528);
      if (v62(v60 + v59, 1, v54) != 1)
      {
        v66 = v111;
        v67 = v99;
        (*(v111 + 32))(v99, v60 + v59, v54);
        sub_100041120(&qword_10006C5D0, &type metadata accessor for AppInfoSource);
        LODWORD(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
        v68 = *(v66 + 8);
        v68(v67, v54);
        sub_10000D5C4(v19, &qword_10006C5C8, &qword_100057528);
        sub_10000D5C4(v110, &qword_10006C5C8, &qword_100057528);
        v68(v63, v54);
        sub_10000D5C4(v60, &qword_10006C5C8, &qword_100057528);
        v64 = v112;
        v65 = v113;
        goto LABEL_21;
      }

      sub_10000D5C4(v19, &qword_10006C5C8, &qword_100057528);
      sub_10000D5C4(v110, &qword_10006C5C8, &qword_100057528);
      (*(v111 + 8))(v63, v54);
    }

    sub_10000D5C4(v60, &qword_10006C5C0, &qword_100057520);
    LODWORD(v108) = 0;
    goto LABEL_19;
  }

  v44 = dispatch thunk of AppInfo.displayName.getter();
  if (!v45)
  {

    goto LABEL_9;
  }

  if (v44 == a1 && v45 == v120 || (v109 = v44, v46 = v45, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    goto LABEL_9;
  }

  v110 = v46;
  dispatch thunk of AppInfo.artworkURL.getter();
  v86 = v118;
  v65 = v113;
  if ((*(v118 + 48))(v42, 1, v113) == 1)
  {
    sub_10000D5C4(v42, &qword_10006BE08, &qword_100056988);
    v69 = *(v86 + 56);
    v69(v119, 1, 1, v65);
    v87 = v99;
    dispatch thunk of AppInfo.source.getter();
    v88 = v111;
    v89 = v98;
    (*(v111 + 104))(v98, enum case for AppInfoSource.unknown(_:), v25);
    sub_100041120(&qword_10006C5D8, &type metadata accessor for AppInfoSource);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();

    v90 = *(v88 + 8);
    v90(v89, v25);
    v90(v87, v25);
    LODWORD(v111) = 0;
    LODWORD(v108) = v123 == v121;
  }

  else
  {
    (*(v86 + 32))(v32, v42, v65);
    v91 = v119;
    (*(v86 + 16))(v119, v32, v65);
    v101 = *(v86 + 56);
    v100 = (v86 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v101(v91, 0, 1, v65);
    v92 = v99;
    dispatch thunk of AppInfo.source.getter();
    v93 = v111;
    v94 = v98;
    (*(v111 + 104))(v98, enum case for AppInfoSource.appStore(_:), v25);
    sub_100041120(&qword_10006C5D8, &type metadata accessor for AppInfoSource);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();

    v95 = *(v93 + 8);
    v95(v94, v25);
    v95(v92, v25);
    v96 = v32;
    v69 = v101;
    (*(v86 + 8))(v96, v65);
    LODWORD(v108) = 0;
    LODWORD(v111) = v123 == v121;
  }

  v64 = v112;
LABEL_22:
  sub_10001DD64(v119, v116, &qword_10006BE08, &qword_100056988);
  v70 = type metadata accessor for ActivityItem();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  v74 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  v75 = v102;
  v69(v102, 1, 1, v65);
  sub_10001DD64(v75, v114, &qword_10006BE08, &qword_100056988);
  v76 = v103;
  Published.init(initialValue:)();
  sub_10000D5C4(v75, &qword_10006BE08, &qword_100056988);
  v77 = v107;
  (*(v107 + 32))(v73 + v74, v76, v117);
  v78 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__needsSecondFetch;
  LOBYTE(v123) = 0;
  v79 = v104;
  Published.init(initialValue:)();
  v80 = v106;
  v81 = *(v105 + 32);
  v81(v73 + v78, v79, v106);
  v82 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__isSelected;
  LOBYTE(v123) = 0;
  Published.init(initialValue:)();
  v81(v73 + v82, v79, v80);
  *(v73 + 16) = 0;
  *(v73 + 24) = v64;
  *(v73 + 32) = v120;
  swift_beginAccess();
  v121 = v109;
  v122 = v110;

  Published.init(initialValue:)();
  swift_endAccess();
  v83 = v116;
  sub_10001DD64(v116, v75, &qword_10006BE08, &qword_100056988);
  v84 = OBJC_IVAR____TtC19FamilyControlsAgent12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v77 + 8))(v73 + v84, v117);
  sub_10001DD64(v75, v114, &qword_10006BE08, &qword_100056988);
  Published.init(initialValue:)();
  sub_10000D5C4(v75, &qword_10006BE08, &qword_100056988);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v121) = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v121) = v111;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v123) = v108 & 1;

  static Published.subscript.setter();
  sub_10000D5C4(v83, &qword_10006BE08, &qword_100056988);
  sub_10000D5C4(v119, &qword_10006BE08, &qword_100056988);
  return v73;
}

uint64_t sub_100041120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100041168()
{
  result = qword_10006C5E0;
  if (!qword_10006C5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006C5E0);
  }

  return result;
}

Swift::Int sub_1000411C4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100041230()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100041270(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000414E4(a1, a2, v6);
}

unint64_t sub_1000412E8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100041914(a1, v4, &qword_10006BE90, CKRecordZoneID_ptr);
}

unint64_t sub_100041338(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004159C(a1, v4);
}

unint64_t sub_10004137C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100041664(a1, v4);
}

unint64_t sub_100041410(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for URL();
  sub_100042DD4(&qword_10006C008);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100041768(a1, v5);
}

unint64_t sub_100041494(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100041914(a1, v4, &qword_10006BF40, NSString_ptr);
}

unint64_t sub_1000414E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004159C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001D79C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100042D80(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100041664(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100041768(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100042DD4(&qword_10006C658);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100041914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000112B4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000419E0(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C258, &qword_100057550);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003720(&qword_10006C630, &qword_100057558);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001DD64(v10, v6, &qword_10006C258, &qword_100057550);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100041270(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CKSyncEngine.State.Serialization();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100041BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C648, &unk_100057580);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1000412E8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100041CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C638, &unk_100057560);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, &v13, &unk_10006BC60, &unk_100056CE0);
      v5 = v13;
      v6 = v14;
      result = sub_100041270(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DE0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100041DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C660, qword_100057598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, &v11, &unk_10006BE18, &unk_100056A70);
      v5 = v11;
      result = sub_10004137C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001DE0C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100041F1C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BFF8, &qword_100056D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003720(&qword_10006C650, &qword_100057590);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001DD64(v10, v6, &qword_10006BFF8, &qword_100056D38);
      result = sub_100041410(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100042104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006BF98, &qword_100057570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001DD64(v4, v13, &qword_10006C640, &qword_100057578);
      result = sub_100041338(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10001DE0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100042240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003720(&qword_10006C628, &qword_100057548);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10000DA30(v7, v8);
      result = sub_100041270(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

uint64_t sub_100042358(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = type metadata accessor for PropertyListEncoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_100003720(&qword_10006C608, &qword_100057538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056C30;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_10000DA30(a1, a2);
  v19 = sub_100042240(inited);
  swift_setDeallocating();
  sub_100042C40(inited + 32);
  v39 = v19;
  sub_100003720(&qword_10006C5E8, &qword_100057530);
  sub_100042CA8(&qword_10006C618, sub_100042D2C);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  if (v3)
  {
  }

  v36 = v22;
  v23 = a3[4];
  sub_100007504(a3, a3[3]);
  dispatch thunk of Locatable.familyControlsKeyData.getter();
  v24 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = v37;
  v29 = *(v38 + 8);
  v38 += 8;
  v29(v12, v37);
  v39 = 0;
  v30 = [v24 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v39];

  if (v30)
  {
    v31 = v39;
    v32 = v36;
    Data.write(to:options:)();
    v29(v14, v28);
    sub_100007644(v20, v32);
  }

  v34 = v39;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100007644(v20, v36);

  return (v29)(v14, v28);
}

uint64_t sub_1000426F0(uint64_t *a1)
{
  v2 = type metadata accessor for KeyGenerator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = a1[4];
  sub_100007504(a1, a1[3]);
  dispatch thunk of Locatable.familyControlsKeyData.getter();
  URL.path.getter();
  v13 = String._bridgeToObjectiveC()();

  v35 = v11;
  v14 = [v11 fileExistsAtPath:v13];

  if (!v14)
  {
    KeyGenerator.init()();
    v18 = v6;
    v23 = v34;
    v24 = KeyGenerator.generateKeyData()();
    if (!v23)
    {
      v18 = v24;
      v29 = v25;
      (*(v3 + 8))(v6, v2);
      sub_100042358(v18, v29, a1);
      (*(v36 + 8))(v10, v37);

      goto LABEL_8;
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_6;
  }

  v15 = type metadata accessor for PropertyListDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = PropertyListDecoder.init()();
  v20 = v34;
  v21 = Data.init(contentsOf:options:)();
  if (!v20)
  {
    v26 = v21;
    v27 = v22;
    sub_100003720(&qword_10006C5E8, &qword_100057530);
    sub_100042CA8(&qword_10006C5F0, sub_100042B98);
    v18 = v19;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v30 = v38;
    if (*(v38 + 16))
    {
      v18 = v38;
      v31 = sub_100041270(1635017060, 0xE400000000000000);
      if (v32)
      {
        v33 = *(v30 + 56) + 16 * v31;
        v18 = *v33;
        sub_10000DA30(*v33, *(v33 + 8));
        sub_100007644(v26, v27);

        (*(v36 + 8))(v10, v37);
        goto LABEL_8;
      }
    }

    sub_100042BEC();
    swift_allocError();
    swift_willThrow();
    sub_100007644(v26, v27);

LABEL_6:
    (*(v36 + 8))(v10, v37);
    goto LABEL_8;
  }

  (*(v36 + 8))(v10, v37);

LABEL_8:
  sub_1000032BC(a1);
  return v18;
}

unint64_t sub_100042B98()
{
  result = qword_10006C5F8;
  if (!qword_10006C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C5F8);
  }

  return result;
}

unint64_t sub_100042BEC()
{
  result = qword_10006C600;
  if (!qword_10006C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C600);
  }

  return result;
}

uint64_t sub_100042C40(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006C610, &qword_100057540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042CA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000075FC(&qword_10006C5E8, &qword_100057530);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100042D2C()
{
  result = qword_10006C620;
  if (!qword_10006C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C620);
  }

  return result;
}

uint64_t sub_100042DD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationKeyError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AuthorizationKeyError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100042F04()
{
  result = qword_10006C668;
  if (!qword_10006C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006C668);
  }

  return result;
}

id sub_100042FC4()
{
  v1 = [*v0 recordID];

  return v1;
}

void sub_100042FFC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    isa = 0;
    goto LABEL_5;
  }

  v8 = sub_1000431D0(a1);

  if (v8)
  {
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_5:
    [v1 setRecordsToSave:isa];
    v9 = isa;

    return;
  }

  static Logger.syncEngine.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "New value does not contain CKRecords", v12, 2u);
  }

  (*(v4 + 8))(v7, v3);
}

void *sub_1000431D0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10001D958(i, v6);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1000432FC(uint64_t result, void *a2, char a3, void (*a4)(uint64_t, void *))
{
  v5 = result;
  if (a3)
  {
    if (!a4)
    {
      return result;
    }

    v8[0] = a2;
    v9 = 1;
    swift_errorRetain();
  }

  else
  {
    if (!a4)
    {
      return result;
    }

    v8[3] = sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
    v8[4] = &off_100067398;
    v8[0] = a2;
    v9 = 0;
    v7 = a2;
  }

  a4(v5, v8);
  return sub_1000441B0(v8);
}

uint64_t sub_1000433A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100011230(a1);
  CKModifyRecordsOperation.perRecordSaveBlock.setter();

  return sub_100011140(a1);
}

void sub_100043470(uint64_t a1, SEL *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001D958(a1, v15);
  sub_100003720(&qword_10006BF90, &unk_100056CD0);
  sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  if (swift_dynamicCast())
  {
    v10 = v14;
    [v2 *a2];
  }

  else
  {
    static Logger.syncEngine.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Participant is not a CKShare.Participant", v13, 2u);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void *sub_100043628()
{
  v1 = [*v0 participants];
  sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100016D98(v2);

  return v3;
}

uint64_t sub_1000436A4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_100043748(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecordZoneID:a1];

  *a2 = v4;
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    aBlock[4] = sub_10004415C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100043AA4;
    aBlock[3] = &unk_100067560;
    v11 = _Block_copy(aBlock);
    sub_100011230(a1);

    [v2 setShareParticipantFetchedBlock:v11];
    sub_100011140(a1);
    _Block_release(v11);
  }

  else
  {
    static Logger.syncEngine.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "New value is not of type ((CKShare.Participant) -> Void)?", v15, 2u);

      sub_100011140(0);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100043A2C(void *a1, void (*a2)(uint64_t *))
{
  v6[3] = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
  v6[4] = &off_100067470;
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1000032BC(v6);
}

void sub_100043AA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100043B0C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000112B4(0, &qword_10006C6C0, CKUserIdentityLookupInfo_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithUserIdentityLookupInfos:isa];

  *a1 = v4;
}

void sub_100043BBC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100012D58;
    v5[3] = &unk_100067510;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setFetchShareParticipantsCompletionBlock:v4];
  _Block_release(v4);
}

id sub_100043C78()
{
  v1 = [*v0 invitationToken];

  return v1;
}

uint64_t sub_100043CE4@<X0>(void *a1@<X8>)
{
  v3 = [*v1 userIdentity];
  result = sub_1000112B4(0, &qword_10006C6B8, CKUserIdentity_ptr);
  a1[3] = result;
  a1[4] = &off_1000674D8;
  *a1 = v3;
  return result;
}

void sub_100043D64(uint64_t a1, unint64_t *a2, uint64_t *a3, const char *a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001D958(a1, v19);
  sub_100003720(&qword_10006C6A8, &qword_1000578F8);
  sub_1000112B4(0, a2, a3);
  if (swift_dynamicCast())
  {
    v14 = v18;
    [v4 addOperation:v18];
  }

  else
  {
    static Logger.syncEngine.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a4, v17, 2u);
    }

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_100043F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000DF48;
  v8[3] = &unk_1000674E8;
  v6 = _Block_copy(v8);

  [v5 saveRecordZone:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100044028()
{
  sub_1000440C8(&qword_10006B860);
  _BridgedStoredNSError.code.getter();
  return v1;
}

uint64_t sub_100044084(uint64_t a1)
{
  result = sub_1000440C8(&qword_10006B820);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000440C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004410C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100044124()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044164()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000441B0(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BF70, &qword_100056CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044230(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_1000442DC()
{
  v1 = [v0 bundleIdentifier];
  if (!v1)
  {
    return;
  }

  v2 = [v0 bundleIdentifier];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._object = 0x8000000100058E00;
  v4._countAndFlagsBits = 0xD000000000000010;
  LOBYTE(v3) = String.hasPrefix(_:)(v4);

  if (v3)
  {
    return;
  }

  v5 = [v0 compatibilityObject];
  v6 = [v5 applicationType];

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return;
  }

  v12 = [v0 compatibilityObject];
  v13 = [v12 applicationType];

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_7:

    return;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v19 = [v0 appTags];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24[0] = 0x6E6564646968;
    v24[1] = 0xE600000000000000;
    __chkstk_darwin(v21);
    v23[2] = v24;
    LOBYTE(v19) = sub_100044230(sub_100053198, v23, v20);

    if ((v19 & 1) == 0 && ([v0 isLaunchProhibited] & 1) == 0)
    {
      v22 = [v0 applicationState];
      [v22 isRestricted];
    }
  }
}

void sub_1000445E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  if (*(v2 + 152) == 1)
  {
    v53 = v2;
    v54 = a1;
    v55 = a2;
    static Logger.syncEngine.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Updating installed applications", v20, 2u);
    }

    v52 = v6;

    (*(v11 + 8))(v17, v10);
    v51 = [objc_opt_self() enumeratorWithOptions:0];
    NSEnumerator.makeIterator()();
    v21 = sub_1000535B4(&qword_10006C8B0, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v62)
    {
      v22 = &_swiftEmptyArrayStorage;
      v23 = &unk_10006C8B8;
      v24 = &type metadata for Any;
      v25 = LSApplicationRecord_ptr;
      v56 = v21;
      while (1)
      {
        sub_10001DE0C(&aBlock, v59);
        sub_1000036C4(v59, v58);
        sub_1000112B4(0, v23, v25);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v26 = v57;
        sub_1000442DC();
        v28 = v27;

        if (v28)
        {
          v29 = [v26 bundleIdentifier];
          if (v29)
          {
            v30 = v29;
            v31 = v9;
            v32 = v5;
            v33 = v25;
            v34 = v24;
            v35 = v23;
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            sub_1000032BC(v59);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_10001C90C(0, *(v22 + 2) + 1, 1, v22);
            }

            v40 = *(v22 + 2);
            v39 = *(v22 + 3);
            if (v40 >= v39 >> 1)
            {
              v22 = sub_10001C90C((v39 > 1), v40 + 1, 1, v22);
            }

            *(v22 + 2) = v40 + 1;
            v41 = &v22[16 * v40];
            *(v41 + 4) = v36;
            *(v41 + 5) = v38;
            v23 = v35;
            v24 = v34;
            v25 = v33;
            v5 = v32;
            v9 = v31;
          }

          else
          {

            sub_1000032BC(v59);
          }
        }

        else
        {
          sub_1000032BC(v59);
        }

        dispatch thunk of IteratorProtocol.next()();
        if (!v62)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v22 = &_swiftEmptyArrayStorage;
LABEL_21:
      (*(v52 + 8))(v9, v5);
      v45 = [objc_opt_self() sharedCategories];
      isa = Array._bridgeToObjectiveC()().super.isa;
      v47 = CTOSPlatformCurrent;
      v48 = swift_allocObject();
      v48[2] = v22;
      v49 = v54;
      v48[3] = v53;
      v48[4] = v49;
      v48[5] = v55;
      v63 = sub_10005318C;
      v64 = v48;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v61 = sub_10004E32C;
      v62 = &unk_100067808;
      v50 = _Block_copy(&aBlock);

      sub_100011230(v49);

      [v45 categoriesForBundleIDs:isa platform:v47 completionHandler:v50];
      _Block_release(v50);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Skipping installed application update because we haven't started collecting activity", v44, 2u);
    }

    (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_100044BE4(char a1, char a2, NSObject *a3, uint64_t a4)
{
  v8 = *v4;
  v30 = a3;
  v31 = v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [objc_opt_self() fetchAllRecordZonesOperation];
  [v18 setQualityOfService:25];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v17;
  *(v19 + 32) = v4;
  *(v19 + 40) = a2;
  v20 = v17;

  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
  v21 = swift_allocObject();
  v22 = v30;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a4;
  v30 = v20;

  CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v18;
  *(v24 + 24) = v25;
  aBlock[4] = sub_1000532CC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000678A8;
  v26 = _Block_copy(aBlock);
  v27 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v34 + 8))(v12, v9);
  return (*(v32 + 8))(v16, v33);
}

uint64_t sub_100044FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  if (*(v3 + 152) == 1)
  {
    v55 = v5;
    v56 = v4;
    static Logger.syncEngine.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Updating all activity", v25, 2u);
    }

    (*(v16 + 8))(v22, v15);
    v26 = *(v3 + 176);
    v27 = String._bridgeToObjectiveC()();
    LOBYTE(v26) = [v26 BOOLForKey:v27];

    if ((v26 & 1) == 0)
    {
      v28 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

      CKSyncEngine.state.getter();

      sub_100003720(&qword_10006C888, &qword_1000579E8);
      v29 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100056C30;
      if (qword_10006B790 != -1)
      {
        swift_once();
      }

      v34 = qword_10006C968;
      *(v33 + v32) = qword_10006C968;
      (*(v30 + 104))(v33 + v32, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v29);
      v35 = v34;
      CKSyncEngine.State.add(pendingDatabaseChanges:)(v33);
    }

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = dispatch_group_create();
    dispatch_group_enter(v37);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;

    v39 = v37;
    sub_1000445E4(sub_100052E94, v38);

    dispatch_group_enter(v39);
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    *(v40 + 24) = v39;

    v41 = v39;
    sub_10004CBA8(sub_100052EBC, v40);

    sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v42 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v43 = swift_allocObject();
    v45 = v57;
    v44 = v58;
    v43[2] = v36;
    v43[3] = v45;
    v43[4] = v44;
    aBlock[4] = sub_100052F2C;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017E50;
    aBlock[3] = &unk_100067768;
    v46 = _Block_copy(aBlock);

    sub_100011230(v45);
    v47 = v59;
    static DispatchQoS.unspecified.getter();
    v63 = &_swiftEmptyArrayStorage;
    sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003720(&qword_10006C0E0, &unk_100056C80);
    sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
    v48 = v61;
    v49 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v46);

    (*(v55 + 8))(v48, v49);
    (*(v60 + 8))(v47, v62);
  }

  else
  {
    static Logger.syncEngine.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Skipping activity update because we haven't started collecting activity", v53, 2u);
    }

    return (*(v16 + 8))(v20, v15);
  }
}

uint64_t sub_1000457E0(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v30[4] = a2;
  v32 = a1;
  v31 = type metadata accessor for URL();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v30[2] = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  static Logger.syncEngine.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing all activity", v17, 2u);
  }

  v18 = *(v9 + 8);
  v30[3] = v8;
  v30[1] = v18;
  v18(v14, v8);
  v19 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006C888, &qword_1000579E8);
  v20 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100056C30;
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v25 = qword_10006C960;
  *(v24 + v23) = qword_10006C960;
  (*(v21 + 104))(v24 + v23, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v20);
  v26 = v25;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v24);

  v27 = *(v3 + 176);
  v28 = String._bridgeToObjectiveC()();
  [v27 removeObjectForKey:v28];

  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  UsageStore.removeAll()();

  static UsageStore.shared.getter();
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  (*(v4 + 8))(v7, v31);

  if (v32)
  {
    return v32(0, 0);
  }

  return result;
}

double sub_100045D54()
{
  result = XPC_ACTIVITY_INTERVAL_1_HOUR;
  *&qword_10006C9B8 = XPC_ACTIVITY_INTERVAL_1_HOUR;
  return result;
}

double sub_100045D70()
{
  result = XPC_ACTIVITY_INTERVAL_1_DAY;
  *&qword_10006C9C0 = XPC_ACTIVITY_INTERVAL_1_DAY;
  return result;
}

uint64_t sub_100045D8C()
{
  v0 = sub_1000112B4(0, &qword_10006C8E8, USUsageReporter_ptr);
  v1 = type metadata accessor for FamilySyncEngine();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_100046090(v0, &off_1000663C8);
  qword_10006C9C8 = result;
  return result;
}

void sub_100045DF4()
{
  v0 = objc_allocWithZone(CKContainerID);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithContainerIdentifier:v1 environment:1];

  qword_10006C9D0 = v2;
}

void sub_100045E68()
{
  v0 = [objc_allocWithZone(CKContainerOptions) init];
  [v0 setUseZoneWidePCS:1];
  if (qword_10006B7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_10006C9D0;
  v2 = objc_allocWithZone(CKContainer);
  v3 = v0;
  v4 = [v2 initWithContainerID:v1 options:v3];

  qword_10006C9D8 = v4;
}

uint64_t sub_100045F34()
{
  v1 = *(v0 + 184);
  v2 = dispatch thunk of FamilyCircle.guardians.getter();
  v3 = dispatch thunk of FamilyCircle.children.getter();
  v15 = v2;
  sub_10004BD00(v3);
  dispatch thunk of FamilyCircle.currentMember.getter();
  v4 = v14;
  if (v14)
  {
    sub_100007504(v13, v14);
    v5 = dispatch thunk of FamilyMemberable.altDSID.getter();
    v4 = v6;
    sub_1000032BC(v13);
  }

  else
  {
    sub_10000D5C4(v13, &qword_10006C0C8, &qword_100056F40);
    v5 = 0;
  }

  v7 = sub_100052AE0(&v15, v5, v4);

  v9 = v15;
  v10 = v15[2];
  if (v7 > v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v10, v7 - v10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > v9[3] >> 1)
  {
    if (v10 <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    v9 = sub_10001CA18(isUniquelyReferenced_nonNull_native, v12, 1, v9);
    v15 = v9;
  }

  sub_10001DD2C(v7, v10, 0);

  return v9;
}

uint64_t sub_100046090(char *a1, void *a2)
{
  v3 = v2;
  v158 = a1;
  v159 = a2;
  v4 = type metadata accessor for Logger();
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = *(v133 + 64);
  __chkstk_darwin(v4);
  v132 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v132 - v9;
  v162 = sub_100003720(&qword_10006C8F0, &unk_100057A10);
  v11 = *(*(v162 - 8) + 64);
  v12 = __chkstk_darwin(v162);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v160 = &v132 - v16;
  __chkstk_darwin(v15);
  v163 = &v132 - v17;
  v18 = type metadata accessor for Locations();
  v156 = *(v18 - 8);
  v19 = v156[8];
  __chkstk_darwin(v18);
  v155 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v153 = *(v21 - 1);
  v154 = v21;
  v22 = v153[8];
  __chkstk_darwin(v21);
  v152 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v147 = *(v24 - 8);
  v148 = v24;
  v25 = *(v147 + 64);
  __chkstk_darwin(v24);
  v146 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OS_dispatch_queue.Attributes();
  v27 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v145 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v150 = *(v29 - 8);
  v151 = v29;
  v30 = *(v150 + 64);
  __chkstk_darwin(v29);
  v149 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AuthorizationAuthenticator();
  v33 = [objc_allocWithZone(v32) init];
  v182 = v32;
  v183 = &off_1000661B8;
  v181[0] = v33;
  v157 = v18;
  v179 = v18;
  v180 = &protocol witness table for Locations;
  sub_10001C8A8(v178);
  Locations.init(useExplicitLocations:)();
  v34 = [objc_allocWithZone(MOLocalSettingsStore) init];
  v176 = &type metadata for AuthorizationManagedSettings;
  v177 = &off_100066F80;
  v175[0] = v34;
  *(&v173 + 1) = sub_100004080;
  v174 = 0;
  sub_10001D958(v181, &v169);
  sub_10001D958(v178, v171 + 8);
  sub_10001D958(v175, v172);
  v35 = objc_opt_self();
  v36 = [v35 standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 BOOLForKey:v37];

  if ((v38 & 1) == 0)
  {
    if (sub_100003A18())
    {
      v39 = sub_100007504(v175, v176);
      sub_10002B9C4(0, *v39);
    }

    v40 = String._bridgeToObjectiveC()();
    [v36 setBool:1 forKey:v40];

    v36 = v40;
  }

  v161 = v10;
  v164 = v14;

  sub_1000032BC(v178);
  sub_1000032BC(v181);
  v41 = v173;
  *(v3 + 112) = v172[1];
  *(v3 + 128) = v41;
  *(v3 + 144) = v174;
  v42 = v171[1];
  *(v3 + 48) = v171[0];
  *(v3 + 64) = v42;
  v43 = v172[0];
  *(v3 + 80) = v171[2];
  *(v3 + 96) = v43;
  v44 = v170;
  *(v3 + 16) = v169;
  *(v3 + 32) = v44;
  sub_1000032BC(v175);
  *(v3 + 152) = 0;
  v45 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 initWithIdentifier:v46];

  *(v3 + 160) = v47;
  *(v3 + 176) = [v35 standardUserDefaults];
  v48 = type metadata accessor for FamilyCircle();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *(v3 + 184) = FamilyCircle.init()();
  v142 = v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  Locations.init(useExplicitLocations:)();
  v51 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing;
  v52 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 initWithIdentifier:v53];

  *(v3 + v51) = v54;
  v141 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator;
  v140 = sub_1000112B4(0, &qword_10006C8F8, CKShare_ptr);
  v143 = v3;
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v55 = qword_10006C9D8;
  v182 = sub_1000112B4(0, &qword_10006C900, CKContainer_ptr);
  v183 = &off_100067368;
  v181[0] = v55;
  v56 = [v55 privateCloudDatabase];
  v179 = sub_1000112B4(0, &qword_10006C908, CKDatabase_ptr);
  v180 = &off_1000674B0;
  v178[0] = v56;
  static FamilyControlsService.nameIDS.getter();
  v57 = objc_allocWithZone(IDSInvitationManager);
  v58 = String._bridgeToObjectiveC()();

  v59 = [v57 initWithServiceIdentifier:v58];
  v139 = v59;

  v176 = sub_1000112B4(0, &qword_10006C910, IDSInvitationManager_ptr);
  v177 = &off_1000660E0;
  v175[0] = v59;
  v138 = sub_1000112B4(0, &qword_10006C918, CKModifyRecordsOperation_ptr);
  v137 = sub_1000112B4(0, &qword_10006C920, CKFetchShareParticipantsOperation_ptr);
  v136 = sub_1000112B4(0, &qword_10006C928, IDSIDQueryController_ptr);
  v135 = _s18SharingCoordinatorCMa();
  v60 = objc_allocWithZone(v135);
  v61 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v62 = v149;
  static DispatchQoS.unspecified.getter();
  *&v169 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_10002B4A4(&qword_10006BC80, &qword_10006BC78, qword_1000568C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v147 + 104))(v146, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v148);
  *&v60[v61] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v63 = &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing];
  *v63 = v140;
  v63[1] = &off_1000673F0;
  sub_10001D958(v181, &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container]);
  sub_10001D958(v178, &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database]);
  sub_10001D958(v175, &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager]);
  v64 = &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying];
  v65 = v137;
  *v64 = v138;
  v64[1] = &off_1000673A8;
  v66 = &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching];
  *v66 = v65;
  v66[1] = &off_100067428;
  v67 = &v60[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  *v67 = v136;
  v67[1] = &off_10006BAD8;
  v168.receiver = v60;
  v168.super_class = v135;
  v68 = objc_msgSendSuper2(&v168, "init");
  v69 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  v70 = *&v68[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue];
  v71 = v68;
  [v139 setDelegate:v71 queue:v70];
  v72 = *&v68[v69];
  sub_10001D958(v175, v167);
  v73 = swift_allocObject();
  sub_10001D888(v167, v73 + 16);
  *(v73 + 56) = v71;
  *&v171[0] = sub_10005363C;
  *(&v171[0] + 1) = v73;
  *&v169 = _NSConcreteStackBlock;
  *(&v169 + 1) = 1107296256;
  *&v170 = sub_100017E50;
  *(&v170 + 1) = &unk_100067B28;
  v74 = _Block_copy(&v169);
  v75 = v72;
  static DispatchQoS.unspecified.getter();
  v166 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v76 = v152;
  v77 = v154;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v74);

  (v153[1])(v76, v77);
  (*(v150 + 8))(v62, v151);
  sub_1000032BC(v178);
  sub_1000032BC(v181);

  sub_1000032BC(v175);
  v78 = v142;
  v79 = v143;
  *(v143 + v141) = v71;
  v80 = (v79 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
  v81 = v159;
  *v80 = v158;
  v80[1] = v81;
  v83 = v155;
  v82 = v156;
  v84 = v156[2];
  v85 = v157;
  v84(v155, v78, v157);
  v86 = _s10DataSourceCMa();
  v87 = objc_allocWithZone(v86);
  *&v87[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_cachedAuthorizationKeyRecord] = 0;
  v87[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity] = 0;
  v84(&v87[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_locations], v83, v85);
  v165.receiver = v87;
  v165.super_class = v86;
  v88 = objc_msgSendSuper2(&v165, "init");
  (v82[1])(v83, v85);
  *(v79 + 168) = v88;
  v90 = v162;
  v89 = v163;
  v91 = *(v162 + 48);
  v92 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  Locations.familyControlsPrivateSyncMetadata.getter();
  v159 = v92;
  Locations.familyControlsPrivateSyncSerialization.getter();
  v93 = v79;
  if (qword_10006B778 != -1)
  {
    swift_once();
  }

  v153 = *(v79 + 168);
  v154 = qword_10006C950;
  v94 = v160;
  sub_10001DD64(v89, v160, &qword_10006C8F0, &unk_100057A10);
  v158 = *(v90 + 48);
  v95 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  v96 = *(v95 + 48);
  v97 = type metadata accessor for URL();
  v98 = *(v97 - 8);
  v99 = *(v98 + 32);
  v100 = v98 + 32;
  v101 = v161;
  v99(v161, v94, v97);
  v102 = &v158[v94];
  v157 = v100;
  v158 = v99;
  v99((v101 + v96), v102, v97);
  v103 = *(v95 - 8);
  v104 = *(v103 + 56);
  v155 = (v103 + 56);
  v156 = v104;
  (v104)(v101, 0, 1, v95);
  v105 = sub_100051BC8(v154, v153, v101);
  sub_10000D5C4(v101, &qword_10006C8D0, &qword_1000579F0);
  *(v93 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v105;
  v106 = *(v90 + 48);
  v107 = v164;
  Locations.familyControlsSharedSyncMetadata.getter();
  v108 = v93;
  Locations.familyControlsSharedSyncSerialization.getter();
  if (qword_10006B780 != -1)
  {
    swift_once();
  }

  v159 = qword_10006C958;
  v154 = *(v93 + 168);
  sub_10001DD64(v107, v94, &qword_10006C8F0, &unk_100057A10);
  v109 = *(v162 + 48);
  v110 = *(v95 + 48);
  v111 = v158;
  (v158)(v101, v94, v97);
  v111(v101 + v110, v94 + v109, v97);
  (v156)(v101, 0, 1, v95);
  v112 = sub_100051BC8(v159, v154, v101);
  sub_10000D5C4(v101, &qword_10006C8D0, &qword_1000579F0);
  *(v108 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharedEngine) = v112;
  v113 = *(v108 + 176);
  v114 = String._bridgeToObjectiveC()();
  v115 = [v113 BOOLForKey:v114];

  v116 = v108;
  if ((v115 & 1) == 0)
  {
    v117 = v132;
    static Logger.syncEngine.getter();
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "Migrating CloudKit record names to UUIDs", v120, 2u);
    }

    (*(v133 + 8))(v117, v134);
    if (qword_10006B788 != -1)
    {
      swift_once();
    }

    sub_100047460(qword_10006C960);
    v121 = *(v108 + 176);
    v122 = String._bridgeToObjectiveC()();
    [v121 setBool:1 forKey:v122];
  }

  [*(v108 + 160) setRepeats:1];
  v123 = qword_10006B7E8;
  v124 = *(v108 + 160);
  if (v123 != -1)
  {
    swift_once();
  }

  [v124 setInterval:*&qword_10006C9C0];

  v125 = [objc_opt_self() defaultCenter];
  v126 = qword_10006B7C0;

  v127 = v164;
  if (v126 != -1)
  {
    swift_once();
  }

  [v125 addObserver:v108 selector:"recordZoneWasSavedWithNotification:" name:qword_10006C998 object:0];

  v128 = qword_10006B7B8;

  if (v128 != -1)
  {
    swift_once();
  }

  [v125 addObserver:v116 selector:"recordZoneWasDeletedWithNotification:" name:qword_10006C990 object:0];

  v129 = qword_10006B7C8;

  if (v129 != -1)
  {
    swift_once();
  }

  [v125 addObserver:v116 selector:"privateAuthorizationKeyNeedsUpdateWithNotification:" name:qword_10006C9A0 object:0];

  v130 = qword_10006B7B0;

  if (v130 != -1)
  {
    swift_once();
  }

  [v125 addObserver:v116 selector:"retrySharingWithNotification:" name:qword_10006C988 object:0];

  sub_10000D5C4(v127, &qword_10006C8F0, &unk_100057A10);
  sub_10000D5C4(v163, &qword_10006C8F0, &unk_100057A10);
  return v116;
}

uint64_t sub_100047460(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004AE4();
  v10 = [a1 zoneName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = v11 == 0x7974697669746341 && v13 == 0xE800000000000000;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v15 = *(v2 + 176);
    v16 = String._bridgeToObjectiveC()();
    [v15 removeObjectForKey:v16];

    sub_1000457E0(0, 0);
    if (v9)
    {
      sub_100044FEC(0, 0);
    }

    v17 = *(v2 + 184);
    dispatch thunk of FamilyCircle.currentMember.getter();
    if (!v53)
    {
      return sub_10000D5C4(v52, &qword_10006C0C8, &qword_100056F40);
    }

    sub_100007504(v52, v53);
    v18 = dispatch thunk of FamilyMemberable.isParent.getter();
    result = sub_1000032BC(v52);
    if (v18)
    {
      return sub_100044BE4(0, 1, sub_100049B28, 0);
    }

    return result;
  }

  if (v11 == 0x7A69726F68747541 && v13 == 0xED00006E6F697461)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      static Logger.syncEngine.getter();
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *&v51 = swift_slowAlloc();
        v52[0] = v51;
        *v25 = 136446210;
        v26 = v22;
        v27 = [v26 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_100002CB4(v28, v30, v52);

        *(v25 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Unknown zone was deleted %{public}s", v25, 0xCu);
        sub_1000032BC(v51);
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  v32 = *(v2 + 176);
  v33 = String._bridgeToObjectiveC()();
  [v32 removeObjectForKey:v33];

  v34 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v35 = *(v2 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006C888, &qword_1000579E8);
  v36 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v51 = xmmword_100056C30;
  *(v40 + 16) = xmmword_100056C30;
  if (qword_10006B7A0 != -1)
  {
    swift_once();
  }

  v41 = qword_10006C978;
  *(v40 + v39) = qword_10006C978;
  (*(v37 + 104))(v40 + v39, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v36);
  v42 = v41;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v40);

  if (v9)
  {
    v43 = *(v2 + v34);

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006BFD8, &qword_1000579E0);
    v44 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v51;
    if (qword_10006B7A8 != -1)
    {
      swift_once();
    }

    v49 = qword_10006C980;
    *(v48 + v47) = qword_10006C980;
    (*(v45 + 104))(v48 + v47, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v44);
    v50 = v49;
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v48);
  }

  return result;
}

void sub_100047AE4(int a1, int a2)
{
  v3 = v2;
  v64 = a1;
  v65 = a2;
  v4 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  static Logger.syncEngine.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting up the sync engine, updating all activity data, and scheduling a background web sync", v18, 2u);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  v20 = *(sub_10000423C() + 2);

  if (v20 || !sub_1000046B0())
  {
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = String._bridgeToObjectiveC()();
    [v30 setBool:0 forKey:v31];

    *(v3 + 152) = 1;
    v32 = *(v3 + 168);
    v32[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity] = 1;
    if (v64)
    {
      if (qword_10006B778 != -1)
      {
        swift_once();
      }

      v33 = qword_10006C950;
      v34 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
      (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
      v35 = sub_100051BC8(v33, v32, v7);
      sub_10000D5C4(v7, &qword_10006C8D0, &qword_1000579F0);
      v36 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);
      *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v35;
    }

    sub_100044FEC(0, 0);
    sub_100048430("Scheduling a background activity to sync web usage data", sub_100053560, &unk_100067A88);
    if (v65)
    {
      sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
      v37 = sub_100003A18();
      v38 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      if (v37)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100056900;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v40 = qword_10006C960;
        *(inited + 32) = qword_10006C960;
        v41 = *(v3 + 184);
        v42 = v40;
        *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v43 = qword_10006C970;
        *(inited + 48) = qword_10006C970;
        v44 = v43;
        *(inited + 56) = sub_100045F34();
        v45 = sub_100041BCC(inited);
        swift_setDeallocating();
        sub_100003720(&qword_10006C880, &unk_1000579D0);
        swift_arrayDestroy();
      }

      else
      {
        v49 = swift_initStackObject();
        *(v49 + 16) = xmmword_100056C30;
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v50 = qword_10006C970;
        *(v49 + 32) = qword_10006C970;
        v51 = v50;
        *(v49 + 40) = sub_100045F34();
        v45 = sub_100041BCC(v49);
        swift_setDeallocating();
        sub_10000D5C4(v49 + 32, &qword_10006C880, &unk_1000579D0);
      }

      sub_100015DB0(v45, 0, 0);
    }

    else
    {
      v46 = *(v3 + 176);
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 objectForKey:v47];

      if (v48)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
      }

      v69[0] = v67;
      v69[1] = v68;
      if (!*(&v68 + 1))
      {
        sub_10000D5C4(v69, &qword_10006BE28, qword_100056F60);
        return;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v52 = v66;
      v53 = sub_100003A18();
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      if (v53)
      {
        v54 = swift_initStackObject();
        *(v54 + 16) = xmmword_100056900;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v55 = qword_10006C960;
        *(v54 + 32) = qword_10006C960;
        v56 = *(v3 + 184);
        v57 = v55;
        *(v54 + 40) = dispatch thunk of FamilyCircle.guardians.getter();
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v58 = qword_10006C970;
        *(v54 + 48) = qword_10006C970;
        v59 = v58;
        *(v54 + 56) = sub_100045F34();
        v60 = sub_100041BCC(v54);
        swift_setDeallocating();
        sub_100003720(&qword_10006C880, &unk_1000579D0);
        swift_arrayDestroy();
      }

      else
      {
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_100056C30;
        if (qword_10006B798 != -1)
        {
          swift_once();
        }

        v62 = qword_10006C970;
        *(v61 + 32) = qword_10006C970;
        v63 = v62;
        *(v61 + 40) = sub_100045F34();
        v60 = sub_100041BCC(v61);
        swift_setDeallocating();
        sub_10000D5C4(v61 + 32, &qword_10006C880, &unk_1000579D0);
      }

      sub_10004881C(v60, v52);
    }
  }

  else
  {
    static Logger.syncEngine.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Only the internal ScreenTime client is authorized, skipping sync", v23, 2u);
    }

    v19(v13, v8);
    v24 = objc_opt_self();
    v25 = [v24 standardUserDefaults];
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 BOOLForKey:v26];

    if ((v27 & 1) == 0)
    {
      sub_100048C54();
      v28 = [v24 standardUserDefaults];
      v29 = String._bridgeToObjectiveC()();
      [v28 setBool:1 forKey:v29];
    }
  }
}

uint64_t sub_100048430(const char *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = v12;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, v25, v20, 2u);
    v12 = v24;
  }

  (*(v14 + 8))(v17, v13);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  aBlock[4] = v26;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v29 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v28);
}

uint64_t sub_10004881C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v26 = v13;
    *v21 = 134349056;
    *(v21 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v19, v20, "Scheduling a background activity to retry sharing in %{public}f seconds", v21, 0xCu);
    v13 = v26;
  }

  (*(v15 + 8))(v18, v14);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = a2;
  *(v23 + 32) = a1;
  aBlock[4] = sub_100052D7C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_100067600;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v29 + 8))(v9, v6);
  return (*(v27 + 8))(v13, v28);
}

uint64_t sub_100048C54()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Stopping the sync engine, removing all activity data, and invalidating the background web sync", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + 152) = 0;
  *(*(v1 + 168) + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine10DataSource_collectActivity) = 0;
  sub_1000457E0(0, 0);
  sub_100048430("Invalidating daily web sync activity", sub_1000534E8, &unk_100067A60);
  sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
  v10 = *(v1 + 184);
  dispatch thunk of FamilyCircle.currentMember.getter();
  if (!v15)
  {
    return sub_10000D5C4(v14, &qword_10006C0C8, &qword_100056F40);
  }

  sub_100007504(v14, v15);
  v11 = dispatch thunk of FamilyMemberable.isParent.getter();
  result = sub_1000032BC(v14);
  if (v11)
  {
    return sub_100044BE4(1, 1, sub_100048E98, 0);
  }

  return result;
}

uint64_t sub_100048EA4()
{
  sub_10002B4F8(v0 + 16);

  v1 = *(v0 + 184);

  v2 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v3 = type metadata accessor for Locations();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

  v5 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharedEngine);

  return v0;
}

uint64_t sub_100048F6C()
{
  sub_100048EA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySyncEngine()
{
  result = qword_10006C728;
  if (!qword_10006C728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049018()
{
  result = type metadata accessor for Locations();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1000490F0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  Notification.object.getter();
  if (!v44[3])
  {
    sub_10000D5C4(v44, &qword_10006BE28, qword_100056F60);
    goto LABEL_9;
  }

  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    static Logger.syncEngine.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to get zone ID from zone saved notification", v24, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return;
  }

  v10 = v43;
  v11 = [v43 zoneName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0x7974697669746341 && v14 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v15 = *(v1 + 176);
    v16 = String._bridgeToObjectiveC()();
    [v15 setBool:1 forKey:v16];

    if (sub_100003A18())
    {
      v17 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);
      sub_100003720(&qword_10006C878, &qword_1000579C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100056C30;
      *(inited + 32) = v10;
      v19 = *(v1 + 184);
      v20 = v10;
      *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
      v21 = sub_100041BCC(inited);
      swift_setDeallocating();
      sub_10000D5C4(inited + 32, &qword_10006C880, &unk_1000579D0);
      sub_100015DB0(v21, 0, 0);
    }

    else
    {
    }

    return;
  }

  if (v12 == 0x7A69726F68747541 && v14 == 0xED00006E6F697461)
  {

LABEL_18:
    v26 = *(v1 + 176);
    v27 = String._bridgeToObjectiveC()();
    [v26 setBool:1 forKey:v27];

    v28 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);
    sub_100003720(&qword_10006C878, &qword_1000579C8);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_100056C30;
    *(v29 + 32) = v10;
    v30 = v10;
    *(v29 + 40) = sub_100045F34();
    v31 = sub_100041BCC(v29);
    swift_setDeallocating();
    sub_10000D5C4(v29 + 32, &qword_10006C880, &unk_1000579D0);
    sub_100015DB0(v31, 0, 0);

    return;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_18;
  }

  static Logger.syncEngine.getter();
  v32 = v10;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44[0] = v42;
    *v35 = 136315138;
    v36 = v32;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_100002CB4(v38, v40, v44);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unknown zone was saved %s", v35, 0xCu);
    sub_1000032BC(v42);
  }

  else
  {
  }

  (*(v3 + 8))(v9, v2);
}

void sub_1000496C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v12)
  {
    sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
    if (swift_dynamicCast())
    {
      v5 = v10;
      sub_100047460(v10);

      return;
    }
  }

  else
  {
    sub_10000D5C4(v11, &qword_10006BE28, qword_100056F60);
  }

  static Logger.syncEngine.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get zone ID from zone deletion notification", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_100049898()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating private authorization key", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006BFD8, &qword_1000579E0);
  v11 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100056C30;
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v16 = qword_10006C980;
  *(v15 + v14) = qword_10006C980;
  (*(v12 + 104))(v15 + v14, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v11);
  v17 = v16;
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v15);
}

uint64_t sub_100049B34(uint64_t a1, char a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (a2)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = a1;
      v26 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v18 = String.init<A>(describing:)();
      v20 = sub_100002CB4(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch all shared zones: %{public}s", v16, 0xCu);
      sub_1000032BC(v17);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    static Logger.syncEngine.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, a3, v24, 2u);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

void sub_100049DB8(uint64_t a1, void *a2, char a3, char a4, NSObject *a5, uint64_t a6, char a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  if (a3)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = a2;
      v55 = v24;
      *v23 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100002CB4(v25, v26, &v55);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch shared zones: %{public}s", v23, 0xCu);
      sub_1000032BC(v24);
    }

    (*(v14 + 8))(v18, v13);
    return;
  }

  v51 = v13;
  v52 = a6;
  v53 = [a2 zoneID];
  v28 = [v53 zoneName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = v29 == 0x7A69726F68747541 && v31 == 0xED00006E6F697461;
  if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (a4)
    {
      dispatch_group_enter(a5);
      v33 = swift_allocObject();
      *(v33 + 16) = a5;
      v34 = a5;
      sub_10004A2B8(0, v53, sub_1000533D4, v33);
LABEL_13:
    }
  }

  else
  {
    if (v29 == 0x7974697669746341 && v31 == 0xE800000000000000)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        static Logger.syncEngine.getter();
        v38 = v53;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v55 = v42;
          *v41 = 136446210;
          v43 = [v38 zoneName];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = sub_100002CB4(v44, v46, &v55);

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "Unknown record zone: %{public}s", v41, 0xCu);
          sub_1000032BC(v42);
        }

        else
        {
        }

        (*(v14 + 8))(v20, v51);
        return;
      }
    }

    if (a7)
    {
      dispatch_group_enter(a5);
      v48 = swift_allocObject();
      *(v48 + 16) = a5;
      v49 = a5;
      sub_10004ABB4(0, v53, sub_1000533A4, v48);
      goto LABEL_13;
    }
  }

  v35 = v53;
}

uint64_t sub_10004A2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = *v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v69 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v67 = v14;
  v68 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v66 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v61 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v64 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v58 = v26;
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v26 = 136446210;
    v27 = v22;
    v28 = [v27 description];
    v57 = v23;
    v29 = a1;
    v30 = a4;
    v31 = v28;
    v32 = a3;
    v33 = v5;
    v34 = v11;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v10;
    v37 = v36;

    a4 = v30;
    a1 = v29;
    v38 = v35;
    v11 = v34;
    v5 = v33;
    a3 = v32;
    v39 = sub_100002CB4(v38, v37, aBlock);
    v10 = v60;

    v40 = v58;
    *(v58 + 1) = v39;
    v41 = v57;
    _os_log_impl(&_mh_execute_header, v57, v61, "Fetching authorization key for zone: %{public}s", v40, 0xCu);
    sub_1000032BC(v59);
  }

  else
  {
  }

  (*(v62 + 8))(v21, v63);
  if (a1)
  {
    v42 = [objc_allocWithZone(CKQueryOperation) initWithCursor:a1];
  }

  else
  {
    sub_1000112B4(0, &qword_10006C8C8, CKQuery_ptr);
    v43 = [objc_opt_self() predicateWithValue:1];
    v44._object = 0x80000001000581B0;
    v44._countAndFlagsBits = 0xD000000000000010;
    isa = CKQuery.init(recordType:predicate:)(v44, v43).super.isa;
    v42 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
  }

  v46 = v42;
  v47 = v64;
  [v46 setZoneID:v64];
  [v46 setQualityOfService:25];

  CKQueryOperation.recordMatchedBlock.setter();
  v48 = swift_allocObject();
  v48[2] = v5;
  v48[3] = v47;
  v48[4] = a3;
  v48[5] = a4;
  v49 = v47;

  CKQueryOperation.queryResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v50 = static OS_dispatch_queue.main.getter();
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = v46;
  *(v51 + 24) = v52;
  aBlock[4] = sub_100053918;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000679C0;
  v53 = _Block_copy(aBlock);

  v54 = v66;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v55 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);

  (*(v11 + 8))(v55, v10);
  return (*(v68 + 8))(v54, v67);
}

void sub_10004A91C(uint64_t a1, char a2, NSObject *a3, const char *a4, const char *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (a2)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = a3;
      v31 = a1;
      v22 = v21;
      v32 = v21;
      *v20 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100002CB4(v23, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, a5, v20, 0xCu);
      sub_1000032BC(v22);
      a3 = v30;
    }

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    static Logger.syncEngine.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, a4, v28, 2u);
    }

    (*(v11 + 8))(v17, v10);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_10004ABB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v64 = *v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v60 = v23;
  v24 = os_log_type_enabled(v22, v23);
  v69 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = v25;
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v25 = 136446210;
    v26 = v21;
    v27 = [v26 description];
    v56 = v22;
    v28 = a1;
    v29 = a4;
    v30 = v27;
    v31 = v5;
    v32 = v10;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v9;
    v35 = v34;

    a4 = v29;
    a1 = v28;
    v36 = v33;
    v10 = v32;
    v5 = v31;
    v21 = v69;
    v37 = sub_100002CB4(v36, v35, aBlock);
    v9 = v59;

    v39 = v56;
    v38 = v57;
    *(v57 + 1) = v37;
    _os_log_impl(&_mh_execute_header, v39, v60, "Fetching all shared activity from %{public}s", v38, 0xCu);
    sub_1000032BC(v58);
  }

  else
  {
  }

  (*(v62 + 8))(v20, v63);
  sub_100037D04(v21);
  if (a1)
  {
    v40 = [objc_allocWithZone(CKQueryOperation) initWithCursor:a1];
  }

  else
  {
    sub_1000112B4(0, &qword_10006C8C8, CKQuery_ptr);
    v41 = [objc_opt_self() predicateWithValue:1];
    v42._countAndFlagsBits = 0x7974697669746361;
    v42._object = 0xE800000000000000;
    isa = CKQuery.init(recordType:predicate:)(v42, v41).super.isa;
    v40 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
  }

  v44 = v40;
  v45 = v69;
  [v44 setZoneID:v69];
  [v44 setQualityOfService:25];

  CKQueryOperation.recordMatchedBlock.setter();
  v46 = swift_allocObject();
  v46[2] = v5;
  v46[3] = v45;
  v46[4] = v61;
  v46[5] = a4;
  v47 = v45;

  CKQueryOperation.queryResultBlock.setter();
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v48 = static OS_dispatch_queue.main.getter();
  v49 = swift_allocObject();
  v50 = v64;
  *(v49 + 16) = v44;
  *(v49 + 24) = v50;
  aBlock[4] = sub_100053918;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_100067A38;
  v51 = _Block_copy(aBlock);

  v52 = v65;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  v53 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v51);

  (*(v10 + 8))(v53, v9);
  return (*(v67 + 8))(v52, v66);
}

uint64_t sub_10004B218(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(a3);
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2 & 1;
  aBlock[4] = sub_10005332C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017E50;
  aBlock[3] = &unk_1000678F8;
  v20 = _Block_copy(aBlock);

  sub_100053360(a1, a2 & 1);
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_1000535B4(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003720(&qword_10006C0E0, &unk_100056C80);
  sub_10002B4A4(&qword_10006BF30, &qword_10006C0E0, &unk_100056C80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_10004B52C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  Notification.object.getter();
  if (!v62[3])
  {
    sub_10000D5C4(v62, &qword_10006BE28, qword_100056F60);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    static Logger.syncEngine.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get retry urgency from notification", v22, 2u);
    }

    return (*(v3 + 8))(v7, v2);
  }

  v10 = v63;
  LOBYTE(v11) = v64;
  v12 = sub_100003A18();
  sub_100003720(&qword_10006C878, &qword_1000579C8);
  if (v12)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100056900;
    if (qword_10006B788 != -1)
    {
LABEL_43:
      swift_once();
    }

    v14 = qword_10006C960;
    *(inited + 32) = qword_10006C960;
    v15 = *(v1 + 184);
    v16 = v14;
    *(inited + 40) = dispatch thunk of FamilyCircle.guardians.getter();
    if (qword_10006B798 != -1)
    {
      swift_once();
    }

    v17 = qword_10006C970;
    *(inited + 48) = qword_10006C970;
    v18 = v17;
    *(inited + 56) = sub_100045F34();
    v19 = sub_100041BCC(inited);
    swift_setDeallocating();
    sub_100003720(&qword_10006C880, &unk_1000579D0);
    swift_arrayDestroy();
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_100056C30;
    if (qword_10006B798 != -1)
    {
      swift_once();
    }

    v25 = qword_10006C970;
    *(v24 + 32) = qword_10006C970;
    v26 = v25;
    *(v24 + 40) = sub_100045F34();
    v19 = sub_100041BCC(v24);
    swift_setDeallocating();
    sub_10000D5C4(v24 + 32, &qword_10006C880, &unk_1000579D0);
    if ((v11 & 1) == 0)
    {
LABEL_8:
      sub_10004881C(v19, *&v10);
    }
  }

  v27 = *(v1 + 176);

  v57 = "or";
  v28 = String._bridgeToObjectiveC()();
  v58 = v27;
  v29 = [v27 stringArrayForKey:v28];

  v61 = v1;
  if (v29)
  {
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v63 = v11;
  v30 = *(v11 + 16);
  if (!v30)
  {
LABEL_36:

    sub_10004BE08(v10);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v50 = String._bridgeToObjectiveC()();
    [v58 setObject:isa forKey:v50];

    v51 = v61;
    sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
    v52 = *(v51 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);
    sub_100015DB0(v19, 0, 0);
    sub_100052D10(v10, 1);
  }

  v1 = 0;
  v60 = v11 + 32;
  inited = v10 + 56;
  v55 = v9;
  v59 = v19;
  v56 = v30;
  while (1)
  {
    if (v1 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*(v10 + 16))
    {
      break;
    }

LABEL_22:
    if (++v1 == v30)
    {
      goto LABEL_36;
    }
  }

  v31 = (v60 + 16 * v1);
  v33 = *v31;
  v32 = v31[1];
  v34 = *(v10 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v35 = Hasher._finalize()();
  v36 = -1 << *(v10 + 32);
  v37 = v35 & ~v36;
  if (((*(inited + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
  {
LABEL_21:

    v19 = v59;
    v30 = v56;
    goto LABEL_22;
  }

  v9 = ~v36;
  while (1)
  {
    v38 = (*(v10 + 48) + 16 * v37);
    v39 = *v38 == v33 && v38[1] == v32;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v37 = (v37 + 1) & v9;
    if (((*(inited + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  swift_bridgeObjectRelease_n();
  v40 = v55;
  static Logger.syncEngine.getter();
  sub_100052D04(v10, 1);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  sub_100052D10(v10, 1);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v43 = 136446210;
    v45 = Set.description.getter();
    v47 = v46;
    sub_100052D10(v10, 1);
    v48 = sub_100002CB4(v45, v47, v62);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s has already accepted their verification invitation to bootstrap their CloudKit container. Skipping high urgency attempt to retry sharing.", v43, 0xCu);
    sub_1000032BC(v44);
  }

  else
  {
    sub_100052D10(v10, 1);
  }

  (*(v3 + 8))(v40, v2);
  v53 = v59;
  if (qword_10006B7E0 != -1)
  {
    swift_once();
  }

  sub_10004881C(v53, *&qword_10006C9B8);
  sub_100052D10(v10, 1);
}