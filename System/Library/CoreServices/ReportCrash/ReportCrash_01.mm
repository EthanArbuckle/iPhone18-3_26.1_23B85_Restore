uint64_t sub_10002D5B8(char *a1, char *a2)
{
  v31 = a1;
  v4 = type metadata accessor for CrashPatternAction();
  v30 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10002F880(&qword_100053EA8);
  v37 = a2;
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v36 = v5;
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  v34 = v5 + 56;
  v10 = *(v4 - 8);
  v11 = *(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9;
  v28 = v10;
  v29 = v4 - 8;
  if (v11)
  {
    v32 = ~v8;
    v35 = v10[2];
    v12 = v10[8];
    v33 = v10[9];
    v13 = (v10 + 1);
    while (1)
    {
      __chkstk_darwin(v7);
      v14 = v33 * v9;
      v35(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *(v36 + 48) + v33 * v9, v4);
      sub_10002F880(&qword_100053EB0);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v16 = *v13;
      v7 = (*v13)(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v32;
      if (((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16(v37, v4);
    v35(v31, *(v36 + 48) + v14, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v30;
    v18 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = isUniquelyReferenced_nonNull_native;
    v21 = v28;
    v22 = v28[8];
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v24 = &v27 - v23;
    v25 = v37;
    (v21[2])(&v27 - v23, v37, v4);
    v38 = *v17;
    sub_10002DF80(v24, v9, v20);
    *v17 = v38;
    (v21[4])(v31, v25, v4);
    return 1;
  }
}

uint64_t sub_10002D8A0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10002E1E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10002D9F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026CC8(&qword_100053EB8, &qword_10003C270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
    v37 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = type metadata accessor for CrashPatternAction();
      v39 = &v35;
      v20 = *(v19 - 8);
      v21 = v20[8];
      __chkstk_darwin(v19);
      v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = v20[9];
      v25 = *(v3 + 48) + v24 * v18;
      v38 = v20[4];
      v38(v23, v25, v19);
      v6 = v37;
      v26 = *(v37 + 40);
      sub_10002F880(&qword_100053EA8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (v38)(*(v6 + 48) + v14 * v24, v23, v19);
      ++*(v6 + 16);
      v11 = v40;
      v3 = v36;
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
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10002DD20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026CC8(&qword_100053BA8, &unk_10003C0B8);
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

uint64_t sub_10002DF80(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002D9F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10002E364();
      goto LABEL_12;
    }

    sub_10002E704(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = type metadata accessor for CrashPatternAction();
  sub_10002F880(&qword_100053EA8);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v7 + 56;
  v29 = v7;
  v11 = -1 << *(v7 + 32);
  a2 = v10 & ~v11;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v11;
    v12 = *(v9 - 8);
    v13 = v12[2];
    v14 = v12[8];
    v15 = v12[9];
    v16 = (v12 + 1);
    do
    {
      __chkstk_darwin(v10);
      v13(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *(v29 + 48) + v15 * a2, v9);
      sub_10002F880(&qword_100053EB0);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v10 = (*v16)(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v28 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = type metadata accessor for CrashPatternAction();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v30, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v18 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10002E1E4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10002DD20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002E5A8();
      goto LABEL_16;
    }

    sub_10002EA14(v8 + 1);
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

void *sub_10002E364()
{
  v1 = v0;
  sub_100026CC8(&qword_100053EB8, &qword_10003C270);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v27 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
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
        v18 = v15 | (v8 << 6);
        v19 = type metadata accessor for CrashPatternAction();
        v20 = *(v19 - 8);
        v21 = *(v20 + 64);
        __chkstk_darwin(v19);
        v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = *(v24 + 72) * v18;
        (*(v20 + 16))(v23, *(v2 + 48) + v25, v19);
        result = (*(v20 + 32))(*(v27 + 48) + v25, v23, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v26;
        v4 = v27;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10002E5A8()
{
  v1 = v0;
  sub_100026CC8(&qword_100053BA8, &unk_10003C0B8);
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

uint64_t sub_10002E704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026CC8(&qword_100053EB8, &qword_10003C270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v39 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = type metadata accessor for CrashPatternAction();
      v40 = &v36;
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v24;
      v26 = *(v3 + 48);
      v27 = *(v25 + 72);
      (*(v20 + 16))(v23, v26 + v27 * v18, v19);
      v6 = v39;
      v28 = *(v39 + 40);
      sub_10002F880(&qword_100053EA8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (*(v20 + 32))(*(v6 + 48) + v14 * v27, v23, v19);
      ++*(v6 + 16);
      v11 = v41;
      v3 = v38;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v37;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
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

uint64_t sub_10002EA14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026CC8(&qword_100053BA8, &unk_10003C0B8);
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

unint64_t sub_10002EC4C(unint64_t result)
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

void *sub_10002ECD8(void *result, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v27 = 0;
    v9 = 0;
LABEL_25:
    *result = v4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v27;
    result[4] = v8;
    return v9;
  }

  v9 = a3;
  if (!a3)
  {
    v27 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v38 = result;
    v39 = a4 + 56;
    v37 = v6;
    v11 = (63 - v6) >> 6;
    v12 = type metadata accessor for CrashPatternAction();
    result = 0;
    v43 = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v44 = v9;
    v45 = v14;
    v41 = v13 + 16;
    v42 = v13;
    v40 = v13 + 32;
    v15 = 1;
    while (1)
    {
      v49 = v10;
      v16 = __chkstk_darwin(result);
      v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = __chkstk_darwin(v16);
      v23 = &v36 - v21;
      if (!v8)
      {
        break;
      }

      v46 = v20;
      v47 = v15;
      v48 = v19;
LABEL_15:
      v26 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v27 = v22;
      v28 = v4;
      v29 = *(v4 + 48);
      v30 = v42;
      v31 = v43;
      v32 = *(v42 + 72);
      (*(v42 + 16))(&v36 - v21, v29 + v32 * (v26 | (v22 << 6)), v43);
      v33 = *(v30 + 32);
      v33(v18, v23, v31);
      v34 = v49;
      v33(v49, v18, v31);
      v9 = v44;
      if (v47 == v44)
      {
        v6 = v37;
        result = v38;
        v4 = v28;
        v5 = v39;
        goto LABEL_25;
      }

      v10 = &v34[v32];
      result = v47;
      v15 = v47 + 1;
      v4 = v28;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v24 = v22;
    v5 = v39;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v11)
      {
        break;
      }

      v8 = *(v39 + 8 * v25);
      ++v24;
      if (v8)
      {
        v46 = v20;
        v47 = v15;
        v48 = v19;
        v22 = v25;
        goto LABEL_15;
      }
    }

    if (v11 <= v22 + 1)
    {
      v35 = v22 + 1;
    }

    else
    {
      v35 = v11;
    }

    v27 = v35 - 1;
    v8 = 0;
    v9 = result;
    v6 = v37;
    result = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10002EF9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10002F108(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026CC8(&qword_100053B20, &qword_10003BFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002F178()
{
  result = qword_100053B28;
  if (!qword_100053B28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053B28);
  }

  return result;
}

unint64_t sub_10002F1C4()
{
  result = qword_100053B30;
  if (!qword_100053B30)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B30);
  }

  return result;
}

unint64_t sub_10002F21C()
{
  result = qword_100053B40;
  if (!qword_100053B40)
  {
    sub_100026D7C(&qword_100053B38, &qword_10003BFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B40);
  }

  return result;
}

uint64_t sub_10002F280(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for CrashPatternAction();
  sub_10002F880(&qword_100053EA8);
  result = Set.init(minimumCapacity:)();
  v16 = result;
  if (v2)
  {
    v5 = *(v3 - 8);
    v6 = *(v5 + 16);
    v14[1] = v5 + 16;
    v15 = v6;
    v7 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 64);
    v14[0] = *(v5 + 72);
    v9 = (v5 + 8);
    do
    {
      v10 = __chkstk_darwin(result);
      v11 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      __chkstk_darwin(v10);
      v13 = v14 - v12;
      v15(v14 - v12, v7, v3);
      sub_10002D5B8(v11, v13);
      result = (*v9)(v11, v3);
      v7 += v14[0];
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

uint64_t sub_10002F3EC(uint64_t a1)
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

      sub_10002D8A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10002F4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

char *sub_10002F4F0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 37;
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 37;
  *(v5 + 48) = 0u;
  *(v5 + 61) = 0;
  *(v5 + 32) = 0u;
  v6 = sysctlbyname("kern.bootsessionuuid", (v5 + 32), &v21, 0, 0);
  if (v6)
  {
    v8 = v6;
    result = strerror(v6);
    if (result)
    {
      v10 = String.init(utf8String:)();
      v12 = v11;

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      Logger.init()();

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        if (!v12)
        {
          v10 = 0x6E776F6E6B6E55;
        }

        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22 = v17;
        *v16 = 136315394;
        v18 = sub_10000750C(v10, v13, &v22);

        *(v16 + 4) = v18;
        *(v16 + 12) = 1024;
        *(v16 + 14) = v8;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get boot session UUID: %s (%d)", v16, 0x12u);
        sub_100007740(v17);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_10002F4A4(v5, v7);

    return v19;
  }

  return result;
}

uint64_t sub_10002F7B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10002F810@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  v6 = sub_10002C284();
  LOBYTE(v3) = sub_10000F378(v3, v4, v6);

  *a1 = v3 & 1;
  return result;
}

uint64_t sub_10002F880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CrashPatternAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WatchdogTerminationReason.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogTerminationReason();
  return objc_msgSendSuper2(&v2, "init");
}

id WatchdogTerminationReason.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogTerminationReason();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002FA4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10002FAD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportingOperations();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002FB28()
{
  v1 = open(_:_:)();
  if ((v1 & 0x80000000) == 0)
  {
    v2 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v1 closeOnDealloc:1];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v6[4] = sub_10002FDA0;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10002FCC4;
    v6[3] = &unk_1000460A8;
    v4 = _Block_copy(v6);
    v5 = v2;

    [v0 streamContentAtLevel:1 withBlock:v4];
    _Block_release(v4);
  }
}

uint64_t sub_10002FC48(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 60 != 15)
  {
    sub_10002FE10(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [a3 writeData:isa];

    sub_10002FDA8(a1, a2);
  }

  return 0;
}

uint64_t sub_10002FCC4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v8 = v4(v2, v7);
  sub_10002FDA8(v2, v7);

  return v8;
}

uint64_t sub_10002FDA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002FDBC(a1, a2);
  }

  return a1;
}

uint64_t sub_10002FDBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002FE10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10002FE78()
{
  result = qword_100053B00;
  if (!qword_100053B00)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B00);
  }

  return result;
}

unint64_t sub_10002FED0()
{
  result = qword_100053B10;
  if (!qword_100053B10)
  {
    sub_100026D7C(&qword_100053B08, &qword_10003BFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053B10);
  }

  return result;
}

void sub_100030044()
{
  sub_100023CAC();
  sub_10000A4A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000300C8()
{
  sub_100023C94();
  sub_10000A4A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100030140()
{
  sub_100023C94();
  sub_10000A4A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000301B8(int *a1)
{
  v6 = *a1;
  sub_10000A4A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100030288(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 unsignedLongLongValue];
  *a1 = 134217984;
  *a3 = v5;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Thread %llu has only exclave frames", a1, 0xCu);
}

void sub_1000302EC()
{
  sub_100023CAC();
  sub_100023C88();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030428()
{
  sub_100023CAC();
  sub_10000A4A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030604()
{
  sub_100023CAC();
  sub_100023C88();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003067C(void *a1)
{
  [a1 count];
  sub_100023C88();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100030798(uint64_t *a1)
{
  v6 = *a1;
  sub_100023C88();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100030818(int *a1)
{
  v6 = *a1;
  sub_10000A4A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100030B7C(mach_error_t a1)
{
  mach_error_string(a1);
  sub_10000A4A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100030C78(int *a1)
{
  v6 = *a1;
  sub_10000A4A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_100030DC0(kern_return_t a1)
{
  bootstrap_strerror(a1);
  sub_10000A4A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}