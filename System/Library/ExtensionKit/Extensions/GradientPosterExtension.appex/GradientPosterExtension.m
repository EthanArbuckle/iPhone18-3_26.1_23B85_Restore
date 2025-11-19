uint64_t sub_100001788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_10000D150();
  sub_10000CF40();
  v7 = sub_10000D160();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_10000D120() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100001954(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000041F0(0, &unk_100018F00, PRPosterDescriptor_ptr);
    isa = sub_10000CF80().super.isa;
  }

  if (a2)
  {
    v6 = sub_10000CC70();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

id sub_100001AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientUpdatingDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001B30(uint64_t a1, id *a2)
{
  result = sub_10000CF10();
  *a2 = 0;
  return result;
}

uint64_t sub_100001BAC(uint64_t a1, id *a2)
{
  v3 = sub_10000CF20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001C30@<X0>(void *a1@<X8>)
{
  sub_10000CF30();
  v2 = sub_10000CF00();

  *a1 = v2;
  return result;
}

void *sub_100001C74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001C90(uint64_t a1)
{
  v2 = sub_100001F10(&qword_100018F88, type metadata accessor for PRTimeFontIdentifier);
  v3 = sub_100001F10(&unk_100018F90, type metadata accessor for PRTimeFontIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001D50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10000CF00();

  *a2 = v5;
  return result;
}

uint64_t sub_100001D98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000CF30();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001DC4(uint64_t a1)
{
  v2 = sub_100001F10(&qword_100018EF0, type metadata accessor for Identifier);
  v3 = sub_100001F10(&qword_100018EF8, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001F5C()
{
  v1 = *v0;
  sub_10000CF30();
  v2 = sub_10000CF50();

  return v2;
}

uint64_t sub_100001F9C()
{
  v1 = *v0;
  sub_10000CF30();
  sub_10000CF40();
}

Swift::Int sub_100001FF4()
{
  v1 = *v0;
  sub_10000CF30();
  sub_10000D150();
  sub_10000CF40();
  v2 = sub_10000D160();

  return v2;
}

uint64_t sub_10000206C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10000CF30();
  v6 = v5;
  if (v4 == sub_10000CF30() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10000D120();
  }

  return v9 & 1;
}

uint64_t sub_10000213C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000217C(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100002B78(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000022B4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10000D150();
  sub_10000CF40();
  v9 = sub_10000D160();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10000D120() & 1) != 0)
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

    sub_100002664(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100002404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  result = sub_10000D040();
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
      sub_10000D150();
      sub_10000CF40();
      result = sub_10000D160();
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

Swift::Int sub_100002664(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100002404(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000027E4();
      goto LABEL_16;
    }

    sub_100002940(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10000D150();
  sub_10000CF40();
  result = sub_10000D160();
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

      result = sub_10000D120();
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
  result = sub_10000D130();
  __break(1u);
  return result;
}

void *sub_1000027E4()
{
  v1 = v0;
  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  v2 = *v0;
  v3 = sub_10000D030();
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

uint64_t sub_100002940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  result = sub_10000D040();
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
      sub_10000D150();

      sub_10000CF40();
      result = sub_10000D160();
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

size_t sub_100002B78(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040D4(&qword_100018F50, &qword_10000DDF8);
  v10 = *(sub_1000040D4(&qword_1000191A0, &qword_10000E160) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000040D4(&qword_1000191A0, &qword_10000E160) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_100002D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
    v3 = sub_10000D050();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_10000D150();

      sub_10000CF40();
      result = sub_10000D160();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_10000D120();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100002ED0()
{
  sub_1000040D4(&qword_100018F40, &qword_10000DDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000DB90;
  strcpy((inited + 32), "plum.preset3");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x800000010000E2A0;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x800000010000E2C0;
  *(inited + 80) = 0xD000000000000029;
  *(inited + 88) = 0x800000010000E2E0;
  strcpy((inited + 96), "peach.preset1");
  *(inited + 110) = -4864;
  *(inited + 112) = 0xD000000000000018;
  *(inited + 120) = 0x800000010000E2A0;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000010000E2C0;
  *(inited + 144) = 0xD000000000000028;
  *(inited + 152) = 0x800000010000E310;
  v1 = sub_10000A960(inited);
  swift_setDeallocating();
  sub_1000040D4(&qword_100018F48, &qword_10000DDF0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100003018()
{
  sub_1000040D4(&qword_100018F30, &qword_10000DDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000DBA0;
  *(inited + 32) = 0xD000000000000011;
  v1 = PRTimeFontIdentifierSoft;
  *(inited + 40) = 0x800000010000E1E0;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000010000E260;
  v2 = PRTimeFontIdentifierSlab;
  *(inited + 72) = PRTimeFontIdentifierSlab;
  strcpy((inited + 80), "plum.preset3");
  v3 = PRTimeFontIdentifierRail;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v3;
  strcpy((inited + 104), "pink.preset5");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v4 = PRTimeFontIdentifierRounded;
  *(inited + 120) = PRTimeFontIdentifierRounded;
  strcpy((inited + 128), "pink.preset2");
  v5 = PRTimeFontIdentifierNewYork;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v5;
  strcpy((inited + 152), "coral.preset2");
  *(inited + 166) = -4864;
  *(inited + 168) = v3;
  strcpy((inited + 176), "peach.preset1");
  *(inited + 190) = -4864;
  *(inited + 192) = v5;
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x800000010000E280;
  v6 = PRTimeFontIdentifierStencil;
  *(inited + 216) = PRTimeFontIdentifierStencil;
  strcpy((inited + 224), "green.preset5");
  *(inited + 238) = -4864;
  *(inited + 240) = v1;
  *(inited + 248) = 0x6C616E6F73726570;
  *(inited + 256) = 0xE800000000000000;
  *(inited + 264) = v4;
  *(inited + 272) = 1802661751;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v4;
  *(inited + 296) = 0x7065656C73;
  *(inited + 304) = 0xE500000000000000;
  *(inited + 312) = v4;
  *(inited + 320) = 0x7373656E746966;
  *(inited + 328) = 0xE700000000000000;
  *(inited + 336) = v6;
  *(inited + 344) = 0x676E696D6167;
  *(inited + 352) = 0xE600000000000000;
  *(inited + 360) = v3;
  *(inited + 368) = 0x6E6C7566646E696DLL;
  *(inited + 376) = 0xEB00000000737365;
  *(inited + 384) = v4;
  *(inited + 392) = 0x676E6964616572;
  *(inited + 400) = 0xE700000000000000;
  *(inited + 408) = v5;
  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v1;
  v14 = v6;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v2;
  v21 = sub_10000AAAC(inited);
  swift_setDeallocating();
  sub_1000040D4(&qword_100018F38, &qword_10000DDE0);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_100003338(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v93[1] = a3;
  v94 = a2;
  v104 = sub_10000CE30();
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v117 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000CDE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v103 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = v93 - v12;
  v13 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v114 = (v93 - v16);
  v121 = &_swiftEmptyArrayStorage;
  v120 = &_swiftEmptySetSingleton;
  v17 = sub_10000CCB0();
  v18 = sub_10000CCC0();
  v125 = v17;
  sub_10000217C(v18);
  v19 = v125;
  v113 = v125[2];
  if (!v113)
  {

    v91 = &_swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v20 = 0;
  v100 = 0;
  v21 = *(v14 + 80);
  v110 = *(v13 + 64);
  v109 = v125 + ((v21 + 32) & ~v21);
  v108 = *(v13 + 80);
  v107 = (v8 + 32);
  v106 = (v8 + 8);
  v101 = (v8 + 16);
  v102 = (v4 + 8);
  v95 = &_swiftEmptyArrayStorage;
  v96 = xmmword_10000DBB0;
  v105 = v7;
  v22 = v115;
  v112 = v14;
  v111 = v125;
  do
  {
    if (v20 >= v19[2])
    {
      __break(1u);
    }

    v24 = *(v14 + 72);
    v118 = v20;
    v25 = v114;
    sub_10000411C(&v109[v24 * v20], v114);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = *(v25 + v108);
    (*v107)(v22, v25 + v110, v7);
    v30 = v120;
    if (v120[2])
    {
      v31 = v120[5];
      sub_10000D150();
      sub_10000CF40();
      v32 = sub_10000D160();
      v33 = -1 << *(v30 + 32);
      v34 = v32 & ~v33;
      if ((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v34))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (v30[6] + 16 * v34);
          v37 = *v36 == v27 && v36[1] == v26;
          if (v37 || (sub_10000D120() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v34) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_29;
      }
    }

LABEL_16:
    if (*(a1 + 16))
    {
      v38 = sub_100008F60(v27, v26);
      if (v39)
      {
        v40 = *(*(a1 + 56) + 8 * v38);
        v125 = 0;
        v41 = v40;
        v42 = [v41 loadUserInfoWithError:&v125];
        v43 = v125;
        if (v42)
        {
          v44 = v42;
          v45 = sub_10000CED0();
          v46 = v43;

          *&v123 = 0x6E6F6973726576;
          *(&v123 + 1) = 0xE700000000000000;
          sub_10000D020();
          if (*(v45 + 16) && (v47 = sub_100008FD8(&v125), (v48 & 1) != 0))
          {
            sub_1000042A0(*(v45 + 56) + 32 * v47, &v123);
            sub_10000419C(&v125);
            sub_100004238(&v123);
            *&v122 = 0x6E6F6973726576;
            *(&v122 + 1) = 0xE700000000000000;
            sub_10000D020();
            v7 = v105;
            if (*(v45 + 16) && (v49 = sub_100008FD8(&v125), (v50 & 1) != 0))
            {
              sub_1000042A0(*(v45 + 56) + 32 * v49, &v123);
              sub_10000419C(&v125);

              if ((swift_dynamicCast() & 1) != 0 && v122 == 1)
              {
                v51 = v41;
                sub_10000CF70();
                if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v90 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_10000CF90();
                }

                sub_10000CFA0();
                v95 = v121;
                sub_1000022B4(&v125, v27, v26);

LABEL_29:

                v22 = v115;
                (*v106)(v115, v7);
                goto LABEL_5;
              }
            }

            else
            {

              sub_10000419C(&v125);
            }
          }

          else
          {
            sub_10000419C(&v125);
            v123 = 0u;
            v124 = 0u;
            sub_100004238(&v123);

            v7 = v105;
          }
        }

        else
        {
          v52 = v125;
          sub_10000CC80();

          swift_willThrow();

          v100 = 0;
        }
      }
    }

    v22 = v115;
    v53 = sub_10000CF00();
    v54 = [objc_opt_self() mutableDescriptorWithIdentifier:v53];

    (*v101)(v103, v22, v7);
    v55 = v28;
    sub_10000CE10();
    v56 = sub_10000CE00();
    *&v123 = 0x6E6F6973726576;
    *(&v123 + 1) = 0xE700000000000000;
    sub_10000D020();
    *(&v124 + 1) = &type metadata for Int;
    *&v123 = 1;
    sub_10000418C(&v123, &v122);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v56;
    sub_100009CAC(&v122, &v125, isUniquelyReferenced_nonNull_native);
    sub_10000419C(&v125);
    v116 = v119;
    v58 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    v59 = v58;
    if (v29)
    {
      [v58 setFocus:v29];
      [v59 setOnlyEligibleForMadeForFocusSection:1];
    }

    v60 = sub_100002ED0();
    if (*(v60 + 16) && (v61 = sub_100008F60(v27, v26), (v62 & 1) != 0))
    {
      v63 = (*(v60 + 56) + 48 * v61);
      v64 = a1;
      v65 = *v63;
      v66 = v63[1];
      v98 = v54;
      v68 = v63[2];
      v67 = v63[3];
      v97 = v63[4];
      v99 = v55;
      v69 = v63[5];

      v70 = objc_allocWithZone(CHSWidget);
      v71 = sub_10000CF00();
      a1 = v64;

      v72 = sub_10000CF00();
      v54 = v98;

      v73 = sub_10000CF00();
      v55 = v99;

      v74 = [v70 initWithExtensionBundleIdentifier:v71 containerBundleIdentifier:v72 kind:v73 family:12 intent:0];

      v22 = v115;
      [v59 setPreferredInlineComplication:v74];
    }

    else
    {
    }

    v75 = sub_100003018();
    if (*(v75 + 16) && (v76 = sub_100008F60(v27, v26), (v77 & 1) != 0))
    {
      v78 = *(*(v75 + 56) + 8 * v76);

      sub_1000040D4(&qword_100018F10, &qword_10000DDC0);
      v79 = swift_allocObject();
      *(v79 + 16) = v96;
      v80 = v54;
      *(v79 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v78];
      sub_1000041F0(0, &qword_100018F18, PRTimeFontConfiguration_ptr);
      isa = sub_10000CF80().super.isa;

      [v80 setPreferredTimeFontConfigurations:isa];

      v54 = v80;
    }

    else
    {
    }

    v82 = sub_100002D68(&off_1000148C8);
    swift_arrayDestroy();
    v83 = sub_100001788(v27, v26, v82);

    [v59 setAllowsSystemSuggestedComplications:(v83 & 1) == 0];
    v125 = 0;
    if (![v54 storeGalleryOptions:v59 error:&v125])
    {
      v23 = v125;

LABEL_4:
      sub_10000CC80();

      swift_willThrow();
      (*v102)(v117, v104);
      v7 = v105;
      (*v106)(v22, v105);

      v100 = 0;
      goto LABEL_5;
    }

    v84 = v125;
    v85 = sub_10000CEC0().super.isa;

    v125 = 0;
    v86 = [v54 storeUserInfo:v85 error:&v125];

    if (!v86)
    {
      v23 = v125;

      goto LABEL_4;
    }

    v87 = v125;
    v88 = v54;
    sub_10000CF70();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10000CF90();
    }

    sub_10000CFA0();
    v95 = v121;
    sub_1000022B4(&v125, v27, v26);

    (*v102)(v117, v104);
    v7 = v105;
    (*v106)(v22, v105);
LABEL_5:
    v20 = v118 + 1;
    v14 = v112;
    v19 = v111;
  }

  while (v118 + 1 != v113);

  v91 = v95;
LABEL_52:

  v94(v91, 0);
}

uint64_t sub_1000040D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000418C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000041F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100004238(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_100018F20, &qword_10000DDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000042A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100004314(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100004394(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000044E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000CEA0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10000CEB0();
  v5 = sub_10000CE70();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_10000CE80();
  sub_1000040D4(&qword_100019020, &qword_10000E0A0);
  v8 = *(sub_10000CCA0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10000DB90;
  sub_100004994(&qword_100019028, &type metadata accessor for PRRenderingConfiguration);

  sub_10000CC90();
  sub_100004994(&qword_100019030, &type metadata accessor for PREditingConfiguration);

  sub_10000CC90();

  *a1 = v11;
  return result;
}

id sub_100004710()
{
  v0 = objc_allocWithZone(type metadata accessor for GradientPosterController());

  return [v0 init];
}

uint64_t sub_10000474C()
{
  [objc_allocWithZone(type metadata accessor for GradientUpdatingDelegate()) init];
  v0 = sub_1000040D4(&qword_100019010, &unk_10000E030);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_10000CE90();
  sub_100004A10(&qword_100019018);
  sub_10000CE60();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000048B0();
  sub_100004A10(&qword_100019008);
  sub_10000CE40();
  return 0;
}

unint64_t sub_1000048B0()
{
  result = qword_100019000;
  if (!qword_100019000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019000);
  }

  return result;
}

uint64_t sub_100004904(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004A10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004904(&qword_100019010, &unk_10000E030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100004A64(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor) = a1;
  v5 = a1;

  sub_100005178();
  v3 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor;
  [*(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) updateActions];
  v4 = *(v1 + v3);
  [v4 updateLuminanceValuesForLooks];
}

id sub_100004AF0()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle;
  v2 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle);
  }

  else
  {
    sub_10000CD30();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100004B80(double a1)
{
  v2 = v1;
  v4 = sub_10000CDE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v50 - v11;
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = sub_1000040D4(&qword_1000191B8, &qword_10000E170);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  if (v21)
  {
    v22 = v21;
    sub_10000CD00();

LABEL_25:
    *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = a1;
  }

  else
  {
    v59 = &v50 - v20;
    v53 = v14;
    v63 = v12;
    v64 = v9;
    v23 = v5;
    v24 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v25 = *(v2 + v24);
    v26 = v25 + 64;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 64);
    v30 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    v55 = v25;

    v58 = v30;
    swift_beginAccess();
    v31 = 0;
    v50 = (v27 + 63) >> 6;
    v60 = (v23 + 32);
    v61 = (v23 + 16);
    v54 = v23;
    v56 = (v23 + 8);
    v62 = v19;
    v52 = v26;
    v57 = v4;
    v51 = v2;
    while (v29)
    {
      v33 = v31;
LABEL_18:
      v36 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v55;
      v39 = v54;
      v40 = v53;
      (*(v54 + 16))(v53, *(v55 + 48) + *(v54 + 72) * v37, v4);
      v41 = *(*(v38 + 56) + 8 * v37);
      v42 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
      v43 = *(v42 + 48);
      v44 = *(v39 + 32);
      v19 = v62;
      v44(v62, v40, v4);
      *&v19[v43] = v41;
      (*(*(v42 - 8) + 56))(v19, 0, 1, v42);
      v45 = v41;
      v2 = v51;
      v26 = v52;
LABEL_19:
      v46 = v59;
      sub_10000B004(v19, v59, &qword_1000191B8, &qword_10000E170);
      v47 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
      {

        goto LABEL_25;
      }

      v48 = *(v46 + *(v47 + 48));
      v4 = v57;
      (*v60)(v63, v46, v57);
      (*v61)(v64, v2 + v58, v4);
      sub_10000B06C(&qword_1000191C8);
      sub_10000CF60();
      sub_10000CF60();
      if (v67 != v65 || v68 != v66)
      {
        sub_10000D120();
      }

      v32 = *v56;
      (*v56)(v64, v4);

      sub_10000CD00();

      v32(v63, v4);
      v19 = v62;
    }

    if (v50 <= v31 + 1)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = v50;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v50)
      {
        v49 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        (*(*(v49 - 8) + 56))(v19, 1, 1, v49);
        v29 = 0;
        v31 = v35;
        goto LABEL_19;
      }

      v29 = *(v26 + 8 * v33);
      ++v31;
      if (v29)
      {
        v31 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100005178()
{
  v1 = sub_1000040D4(&qword_1000191B8, &qword_10000E170);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v76 - v6;
  v96 = sub_10000CCE0();
  v100 = *(v96 - 8);
  v8 = *(v100 + 64);
  __chkstk_darwin(v96);
  v95 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000CD80();
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  __chkstk_darwin(v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10000CE30();
  v99 = *(v94 - 8);
  v19 = *(v99 + 64);
  __chkstk_darwin(v94);
  v21 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  v102 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21)
  {
    v22 = v0;
    v23 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
    v24 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    swift_beginAccess();
    (*(v15 + 16))(v18, v22 + v24, v14);
    v25 = v21;
    v26 = v23;
    sub_10000CE10();
    v27 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
    swift_beginAccess();
    v28 = v88;
    v29 = *(v88 + 16);
    v29(v13, v22 + v27, v10);
    sub_10000CD50();
    v30 = *(v28 + 8);
    v30(v13, v10);
    sub_10000CD10();
    v31 = *(v22 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle);
    sub_10000CD20();
    [v25 bounds];
    v29(v13, v22 + v27, v10);
    v32 = v95;
    v33 = v102;
    sub_10000CD90();
    v30(v13, v10);
    sub_10000CCF0();

    (*(v100 + 8))(v32, v96);
    return (*(v99 + 8))(v33, v94);
  }

  else
  {
    v101 = v18;
    v92 = v14;
    v91 = v7;
    v93 = v5;
    v97 = v13;
    v89 = v10;
    v35 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v36 = *(v0 + v35);
    v37 = *(v36 + 64);
    v77 = v36 + 64;
    v38 = 1 << *(v36 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & v37;
    v87 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
    v41 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
    v85 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle;
    v79 = v36;

    v90 = v0;
    v86 = v41;
    swift_beginAccess();
    v42 = 0;
    v43 = (v38 + 63) >> 6;
    v78 = v15 + 16;
    v98 = (v15 + 32);
    v83 = (v88 + 16);
    v82 = (v88 + 8);
    v81 = (v100 + 8);
    v80 = (v99 + 8);
    v44 = v15;
    v88 = v15;
    v84 = v43;
    if (v40)
    {
      while (1)
      {
        v45 = v42;
        v47 = v92;
        v46 = v93;
        result = v101;
LABEL_14:
        v51 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v52 = v51 | (v45 << 6);
        v53 = v79;
        v54 = *(v79 + 48) + *(v44 + 72) * v52;
        v55 = result;
        (*(v44 + 16))();
        v56 = *(*(v53 + 56) + 8 * v52);
        v57 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        v58 = *(v57 + 48);
        (*(v44 + 32))(v46, v55, v47);
        *(v46 + v58) = v56;
        (*(*(v57 - 8) + 56))(v46, 0, 1, v57);
        v59 = v56;
        v49 = v45;
        v50 = v97;
LABEL_15:
        v60 = v46;
        v61 = v91;
        sub_10000B004(v60, v91, &qword_1000191B8, &qword_10000E170);
        v62 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
        {
        }

        v63 = *(v61 + *(v62 + 48));
        v64 = v47;
        v65 = v90;
        v66 = *(v90 + v87);
        (*v98)(v101, v61, v64);
        v67 = v66;
        sub_10000CE10();
        v68 = *v83;
        v69 = v86;
        v100 = v49;
        v70 = v89;
        v68(v50, v65 + v86, v89);
        sub_10000CD50();
        v99 = *v82;
        (v99)(v50, v70);
        sub_10000CD10();
        v71 = *(v65 + v85);
        sub_10000CD20();
        [v63 bounds];
        v68(v50, v65 + v69, v70);
        v72 = v95;
        sub_10000CD90();
        (v99)(v50, v70);
        v73 = v94;
        v74 = v102;
        sub_10000CCF0();

        (*v81)(v72, v96);
        (*v80)(v74, v73);
        v42 = v100;
        v44 = v88;
        v43 = v84;
        if (!v40)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v43 <= v42 + 1)
      {
        v48 = v42 + 1;
      }

      else
      {
        v48 = v43;
      }

      v49 = v48 - 1;
      v50 = v97;
      v47 = v92;
      v46 = v93;
      result = v101;
      while (1)
      {
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v45 >= v43)
        {
          v75 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
          (*(*(v75 - 8) + 56))(v46, 1, 1, v75);
          v40 = 0;
          goto LABEL_15;
        }

        v40 = *(v77 + 8 * v45);
        ++v42;
        if (v40)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100005AFC(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (*(v6 + 16))
    {

      v7 = sub_10000907C(a1);
      if (v8)
      {
        v2 = *(*(v6 + 56) + 8 * v7);

        return v2;
      }
    }

    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  v3 = v2;
  return v2;
}

void sub_100005BB8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    v10 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
    *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView) = a1;
    v4 = a1;
  }

  else
  {
    v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v7 = a1;
    v8 = *(v2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_100009DF8(v7, a2, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v11;
    swift_endAccess();
  }
}

void sub_100005CAC()
{
  v1 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v44 - v7;
  v45 = v0;
  v9 = *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor];
  v10 = sub_10000CCB0();
  v11 = *(v10 + 16);
  v46 = v9;
  if (v11)
  {
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_10000D090();
    v12 = *(v2 + 80);
    v44[1] = v10;
    v13 = v10 + ((v12 + 32) & ~v12);
    v47 = *(v2 + 72);
    v14 = v1;
    do
    {
      sub_10000CAF0(v13, v8, &qword_1000191A0, &qword_10000E160);
      sub_10000B004(v8, v6, &qword_1000191A0, &qword_10000E160);
      v15 = *(v6 + 1);

      v16 = *(v6 + 2);
      v17 = *(v14 + 64);
      v18 = sub_10000CDE0();
      (*(*(v18 - 8) + 8))(&v6[v17], v18);
      sub_10000D070();
      v19 = *(aBlock + 16);
      sub_10000D0A0();
      sub_10000D0B0();
      sub_10000D080();
      v13 += v47;
      --v11;
    }

    while (v11);

    v21 = aBlock;
    v9 = v46;
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  v54 = v21;
  *&aBlock = v9;
  __chkstk_darwin(v20);
  v44[-2] = &aBlock;

  v22 = sub_10000A838(sub_10000AF44, &v44[-4], v21);

  if (v22)
  {
    goto LABEL_9;
  }

  v23 = v9;
  sub_10000CF70();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_10000CFA0();
    v21 = v54;
LABEL_9:
    v24 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    v25 = [objc_allocWithZone(PRPosterColor) initWithColor:v9];
    [v24 setSelectedColor:v25];

    if (v21 >> 62)
    {
      v26 = sub_10000D0D0();
      if (!v26)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_21;
      }
    }

    v53 = &_swiftEmptyArrayStorage;
    sub_10000A530(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    sub_10000CF90();
  }

  v47 = v24;
  v27 = 0;
  v28 = v53;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v29 = sub_10000D060();
    }

    else
    {
      v29 = *(v21 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = [objc_allocWithZone(PRPosterColor) initWithColor:v29];
    v50 = sub_1000041F0(0, &qword_100019178, PRPosterColor_ptr);

    *&aBlock = v31;
    v53 = v28;
    v33 = v28[2];
    v32 = v28[3];
    if (v33 >= v32 >> 1)
    {
      sub_10000A530((v32 > 1), v33 + 1, 1);
      v28 = v53;
    }

    ++v27;
    v28[2] = v33 + 1;
    sub_10000418C(&aBlock, &v28[4 * v33 + 4]);
  }

  while (v26 != v27);

  v9 = v46;
  v24 = v47;
LABEL_22:
  isa = sub_10000CF80().super.isa;

  [v24 setSuggestedColors:isa];

  v35 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor;
  v36 = v45;
  v37 = *&v45[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor];
  if (v37)
  {
    v38 = [v37 viewForMenuElementIdentifier:*&v45[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier]];
  }

  else
  {
    v38 = 0;
  }

  [v24 setColorPickerSourceItem:v38];
  swift_unknownObjectRelease();
  v39 = *&v36[v35];
  if (v39)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    v51 = sub_10000AFE4;
    v52 = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v49 = sub_100006350;
    v50 = &unk_100014A98;
    v41 = _Block_copy(&aBlock);
    v42 = v39;
    v43 = v36;

    [v42 presentColorPickerWithConfiguration:v24 changeHandler:v41];

    _Block_release(v41);
    v9 = v42;
  }

  else
  {
  }
}

void sub_10000629C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 color];
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  sub_100004A64([v4 colorWithAlphaComponent:1.0]);
}

void sub_100006350(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000063B8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView))
    {
      return;
    }

    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16) || (, sub_10000907C(a2), v7 = v6, , (v7 & 1) == 0))
  {
LABEL_6:
    sub_10000CD30();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle);
    sub_10000CD20();
    [a1 addSubview:v8];
    v10.super.super.isa = v8;
    sub_10000CFB0(v10);
    sub_100005BB8(v8, a2);
  }
}

void sub_1000064E8()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + v1);

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      [*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) removeFromSuperview];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v11 = *(v0 + v1);
  *(v0 + v1) = &_swiftEmptyDictionarySingleton;

  v12 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView;
  v13 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *(v0 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v0 + v12) = 0;
}

uint64_t sub_10000662C(void *a1)
{
  v3 = sub_10000CDE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = sub_10000CE30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = 0;
  v17 = [a1 loadUserInfoWithError:v28];
  v18 = v28[0];
  if (v17)
  {
    v27[0] = v4;
    v19 = v17;
    sub_10000CED0();
    v20 = v18;

    v21 = v1;
    v22 = sub_100004AF0();
    sub_10000CDA0();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000901C(v11, &qword_100019168, &qword_10000E140);
      return 0;
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      sub_10000CDF0();
      v25 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
      swift_beginAccess();
      (*(v27[0] + 40))(v21 + v25, v7, v3);
      swift_endAccess();
      v26 = sub_10000CE20();
      sub_100004A64(v26);
      (*(v13 + 8))(v16, v12);
      return 1;
    }
  }

  else
  {
    v24 = v28[0];
    sub_10000CC80();

    swift_willThrow();

    return 0;
  }
}

void sub_100006974(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000CDE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer;
  v12 = *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer) = a1;
  v13 = a1;

  swift_getObjectType();
  v14 = [a2 isPreview];
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview) = v14;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [a2 unlockProgress];
  }

  swift_beginAccess();
  sub_10000CD40();
  swift_endAccess();
  [a2 backlightProgress];
  swift_beginAccess();
  sub_10000CD60();
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = sub_10000AED4();
  v15 = *(v3 + v11);
  if (v15)
  {
    v16 = [v15 backgroundView];
    if (v16)
    {
      v17 = v16;
      v18 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
      swift_beginAccess();
      (*(v7 + 16))(v10, v3 + v18, v6);
      sub_1000063B8(v17, v10);
      (*(v7 + 8))(v10, v6);
      LOBYTE(v18) = sub_10000662C([a2 contents]);
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        v19 = [objc_opt_self() blueColor];
        sub_100004A64(v19);
      }
    }
  }
}

void sub_100006DD8(void *a1)
{
  v1 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v10[0] = 0;
  v2 = [v1 loadUserInfoWithError:v10];
  swift_unknownObjectRelease();
  v3 = v10[0];
  if (v2)
  {
    v4 = sub_10000CED0();
    v5 = v3;

    *&v9[0] = 0x546B6E616C427369;
    *(&v9[0] + 1) = 0xEF6574616C706D65;
    sub_10000D020();
    if (*(v4 + 16) && (v6 = sub_100008FD8(v10), (v7 & 1) != 0))
    {
      sub_1000042A0(*(v4 + 56) + 32 * v6, v9);
      sub_10000419C(v10);

      sub_10000901C(v9, &qword_100018F20, &qword_10000DDC8);
      sub_100005CAC();
    }

    else
    {

      sub_10000419C(v10);
      memset(v9, 0, sizeof(v9));
      sub_10000901C(v9, &qword_100018F20, &qword_10000DDC8);
    }
  }

  else
  {
    v8 = v10[0];
    sub_10000CC80();

    swift_willThrow();
  }
}

void sub_100007048(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  a6(a4, a5);

  swift_unknownObjectRelease();
}

void sub_100007174(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [*(a2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor) CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_100007368(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_1000073B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100005CAC();
  }
}

uint64_t sub_1000074A0(void *a1)
{
  v2 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  v6 = sub_10000CE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000CDE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for Look.Variant.preset1(_:), v11);
  v28 = sub_10000CDD0();
  v17 = v16;
  v27 = *(v12 + 8);
  v27(v15, v11);
  v18 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v29 = 0;
  v19 = [v18 loadUserInfoWithError:&v29];
  swift_unknownObjectRelease();
  v20 = v29;
  if (v19)
  {
    v26[1] = v17;
    sub_10000CED0();
    v21 = v20;

    v22 = sub_100004AF0();
    sub_10000CDA0();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000901C(v5, &qword_100019168, &qword_10000E140);
      return v28;
    }

    else
    {

      (*(v7 + 32))(v10, v5, v6);
      sub_10000CDF0();
      v25 = sub_10000CDD0();
      v27(v15, v11);
      (*(v7 + 8))(v10, v6);
      return v25;
    }
  }

  else
  {
    v24 = v29;
    sub_10000CC80();

    swift_willThrow();

    return v28;
  }
}

uint64_t sub_100007980(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v41 = a1;
  v7 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000CE30();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_10000CDE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a3 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_10000901C(v17, &unk_100019180, &unk_10000E150);
  }

  (*(v19 + 32))(v22, v17, v18);
  v25 = [a2 backgroundView];
  sub_1000063B8(v25, v22);

  v26 = *(v4 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  v27 = [objc_msgSend(v41 "environment")];
  swift_unknownObjectRelease();
  v42 = 0;
  v28 = [v27 loadUserInfoWithError:&v42];
  swift_unknownObjectRelease();
  v29 = v42;
  if (v28)
  {
    sub_10000CED0();
    v30 = v29;

    v31 = sub_100004AF0();
    sub_10000CDA0();

    v33 = v39;
    v32 = v40;
    if ((*(v39 + 48))(v10, 1, v40) == 1)
    {
      sub_10000901C(v10, &qword_100019168, &qword_10000E140);
    }

    else
    {
      v35 = v38;
      (*(v33 + 32))(v38, v10, v32);
      v36 = sub_10000CE20();

      (*(v33 + 8))(v35, v32);
      v26 = v36;
    }
  }

  else
  {
    v34 = v42;
    sub_10000CC80();

    swift_willThrow();
  }

  sub_100004A64(v26);
  return (*(v19 + 8))(v22, v18);
}

double sub_100007EAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100008FD8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000A0F8();
      v11 = v13;
    }

    sub_10000419C(*(v11 + 48) + 40 * v8);
    sub_10000418C((*(v11 + 56) + 32 * v8), a2);
    sub_100009B08(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1000080BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  if (v11)
  {
    v12 = v11 == v8;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v18 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
    v19 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    swift_beginAccess();
    (*(v6 + 16))(v10, v2 + v19, v5);
    v20 = v18;
    sub_10000CE10();
    v21 = sub_10000CE30();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  else
  {
    v13 = [objc_msgSend(v8 "environment")];
    swift_unknownObjectRelease();
    v25[0] = 0;
    v14 = [v13 loadUserInfoWithError:v25];
    swift_unknownObjectRelease();
    v15 = v25[0];
    if (v14)
    {
      sub_10000CED0();
      v16 = v15;

      v17 = sub_100004AF0();
      sub_10000CDA0();
    }

    else
    {
      v22 = v25[0];
      sub_10000CC80();

      swift_willThrow();

      v23 = sub_10000CE30();
      (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
    }
  }
}

id sub_1000083D8(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_10000CE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080BC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000901C(v5, &qword_100019168, &qword_10000E140);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    sub_1000040D4(&qword_100019170, &qword_10000E148);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10000E0B0;
    v14 = sub_10000CE20();
    v15 = [objc_allocWithZone(PRPosterColor) initWithColor:v14];

    *(v13 + 56) = sub_1000041F0(0, &qword_100019178, PRPosterColor_ptr);
    *(v13 + 32) = v15;
    isa = sub_10000CF80().super.isa;

    [v12 setSuggestedColors:isa];

    v17 = sub_10000CE20();
    v18 = [objc_allocWithZone(PRPosterColor) initWithColor:v17];

    [v12 setSelectedColor:v18];
    (*(v7 + 8))(v10, v6);
    return v12;
  }
}

id sub_100008684()
{
  v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_looksShareBaseAppearance] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor] = 0;
  sub_10000CD70();
  v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview] = 0;
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier;
  *&v0[v1] = sub_10000CF00();
  v2 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  v3 = enum case for Look.Variant.preset1(_:);
  v4 = sub_10000CDE0();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
  *&v0[v5] = [objc_opt_self() blueColor];
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle] = 0;
  v6 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  *&v0[v6] = sub_10000ACEC(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GradientPosterController();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10000881C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientPosterController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GradientPosterController()
{
  result = qword_100019158;
  if (!qword_100019158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000089D4()
{
  result = sub_10000CD80();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_10000CDE0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100008AF8()
{
  v0 = sub_10000CDE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CDF0();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for Look.Variant.preset1(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x746E6172626956;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0xE700000000000000;
LABEL_8:
    v9.super.isa = v6;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v10 = sub_10000CC60(v8, v7, v9, v14, v12);

    return v10;
  }

  if (v5 == enum case for Look.Variant.preset2(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 1701736276;
LABEL_7:
    v8._object = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v5 == enum case for Look.Variant.preset3(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 1885693252;
    goto LABEL_7;
  }

  if (v5 == enum case for Look.Variant.preset4(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x726F706156;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0xE500000000000000;
    goto LABEL_8;
  }

  if (v5 == enum case for Look.Variant.preset5(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x746867697242;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0xE600000000000000;
    goto LABEL_8;
  }

  if (v5 == enum case for Look.Variant.preset6(_:))
  {
    v6 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x64696C6F53;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._object = 0xE500000000000000;
    goto LABEL_8;
  }

  result = sub_10000D0C0();
  __break(1u);
  return result;
}

unint64_t sub_100008F60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000D150();
  sub_10000CF40();
  v6 = sub_10000D160();

  return sub_100009100(a1, a2, v6);
}

unint64_t sub_100008FD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000D000(*(v2 + 40));

  return sub_1000091B8(a1, v4);
}

uint64_t sub_10000901C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000040D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000907C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10000CDE0();
  sub_10000B06C(&qword_100019190);
  v5 = sub_10000CEE0();

  return sub_1000092DC(a1, v5);
}

unint64_t sub_100009100(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000D120())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000091B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100009280(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000D010();
      sub_10000419C(v8);
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

unint64_t sub_1000092DC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10000CDE0();
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
      sub_10000B06C(&qword_100019198);
      v16 = sub_10000CEF0();
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

uint64_t sub_100009488(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000040D4(&qword_1000191E0, &qword_10000E190);
  result = sub_10000D0F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000418C((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100009280(v24, &v37);
        sub_1000042A0(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_10000D000(*(v8 + 40));
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000418C(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100009740(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10000CDE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000040D4(&qword_1000191B0, &qword_10000E168);
  v43 = a2;
  result = sub_10000D0F0();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10000B06C(&qword_100019190);
      result = sub_10000CEE0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100009B08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000CFF0() + 1) & ~v5;
    do
    {
      sub_100009280(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_10000D000(*(a2 + 40));
      result = sub_10000419C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100009CAC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100008FD8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000A0F8();
      goto LABEL_7;
    }

    sub_100009488(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100008FD8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100009280(a2, v22);
      return sub_100009FC4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_10000D140();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000CAA4(v17);

  return sub_10000418C(a1, v17);
}

void sub_100009DF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10000CDE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000907C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10000A29C();
      goto LABEL_7;
    }

    sub_100009740(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10000907C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_10000A040(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_10000D140();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_100009FC4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000418C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10000A040(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10000CDE0();
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

void *sub_10000A0F8()
{
  v1 = v0;
  sub_1000040D4(&qword_1000191E0, &qword_10000E190);
  v2 = *v0;
  v3 = sub_10000D0E0();
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
        v18 = 40 * v17;
        sub_100009280(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000042A0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000418C(v22, (*(v4 + 56) + v17));
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

char *sub_10000A29C()
{
  v1 = v0;
  v32 = sub_10000CDE0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040D4(&qword_1000191B0, &qword_10000E168);
  v4 = *v0;
  v5 = sub_10000D0E0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

size_t sub_10000A510(size_t a1, int64_t a2, char a3)
{
  result = sub_10000A550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A530(char *a1, int64_t a2, char a3)
{
  result = sub_10000A728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000A550(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040D4(&qword_100019210, &qword_10000E1A8);
  v10 = *(sub_10000CE30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000CE30() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000A728(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040D4(&qword_100019170, &qword_10000E148);
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

uint64_t sub_10000A838(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10000D060();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10000D0D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_10000A960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&unk_100019220, &unk_10000E1B8);
    v3 = sub_10000D100();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_100008F60(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_10000AAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_100019218, &qword_10000E1B0);
    v3 = sub_10000D100();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100008F60(v5, v6);
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

unint64_t sub_10000ABB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_1000191E0, &qword_10000E190);
    v3 = sub_10000D100();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CAF0(v4, v13, &qword_1000191E8, &unk_10000E198);
      result = sub_100008FD8(v13);
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
      result = sub_10000418C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000ACEC(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_1000191D0, &qword_10000E180);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000040D4(&qword_1000191B0, &qword_10000E168);
    v8 = sub_10000D100();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CAF0(v10, v6, &qword_1000191D0, &qword_10000E180);
      result = sub_10000907C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10000CDE0();
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

double sub_10000AED4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = 0.0;
  if (v0)
  {
    v2 = [v0 deviceOrientation];
    if ((v2 - 2) <= 2)
    {
      return dbl_10000E1C8[(v2 - 2)];
    }
  }

  return v1;
}

uint64_t sub_10000AF44(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1000041F0(0, &qword_1000191A8, UIColor_ptr);
  return sub_10000CFD0() & 1;
}

uint64_t sub_10000AFAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B06C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000CDE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000B0B0(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [a1 isPreview];
  *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview) = v6;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [a1 unlockProgress];
  }

  swift_beginAccess();
  sub_10000CD40();
  swift_endAccess();
  [a1 backlightProgress];
  swift_beginAccess();
  sub_10000CD60();
  swift_endAccess();
  v7 = sub_10000AED4();
  if (a2)
  {
    v8 = [a2 animationSettings];
    if (v8)
    {
      v9 = v8;
      [v8 duration];
    }
  }

  if (v7 == *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle))
  {
    v10 = sub_10000662C([a1 contents]);
    swift_unknownObjectRelease();
    if ((v10 & 1) == 0)
    {
      v11 = [objc_opt_self() blueColor];
      sub_100004A64(v11);
    }
  }

  else
  {
    sub_100004B80(v7);
  }
}

void sub_10000B29C()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable;
  v2 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  sub_1000064E8();
  v4 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer);
  *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer) = 0;
}

void sub_10000B304(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_10000AED4();
  if (v4 != *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle))
  {
    v5 = v4;
    if (a2)
    {
      v6 = [a2 animationSettings];
      if (v6)
      {
        v7 = v6;
        [v6 duration];
      }
    }

    sub_100004B80(v5);
  }
}

void *sub_10000B3C8()
{
  v0 = sub_10000CDE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v50 = (v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = v39 - v5;
  v7 = sub_10000CE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = v39 - v13;
  v14 = sub_10000CDB0();
  v15 = *(v14 + 16);
  v53 = v0;
  v54 = v6;
  if (v15)
  {
    v41 = v12;
    v52 = v7;
    v55 = _swiftEmptyArrayStorage;
    sub_10000A510(0, v15, 0);
    v16 = v55;
    v39[1] = v14;
    v40 = v1;
    v18 = *(v1 + 16);
    v17 = v1 + 16;
    v46 = v8;
    v47 = v18;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    v48 = v17;
    v49 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
    v44 = (v17 - 8);
    v45 = v20;
    v43 = v8 + 32;
    v21 = v42;
    do
    {
      v22 = v54;
      v23 = v47;
      v47(v54, v19, v0);
      v24 = v16;
      v25 = *(v49 + v51);
      v23(v50, v22, v0);
      v26 = v25;
      v16 = v24;
      sub_10000CE10();
      (*v44)(v22, v0);
      v55 = v24;
      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        sub_10000A510(v27 > 1, v28 + 1, 1);
        v16 = v55;
      }

      v16[2] = v28 + 1;
      v8 = v46;
      (*(v46 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v21, v52);
      v19 += v45;
      --v15;
      v0 = v53;
    }

    while (v15);

    v7 = v52;
    v6 = v54;
    v1 = v40;
    v12 = v41;
    v29 = v16[2];
    if (v29)
    {
      goto LABEL_7;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v16 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage[2];
  if (!v29)
  {
    goto LABEL_11;
  }

LABEL_7:
  v55 = _swiftEmptyArrayStorage;
  sub_10000D090();
  v31 = *(v8 + 16);
  v30 = v8 + 16;
  v32 = v16 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v51 = *(v30 + 56);
  v52 = v31;
  v50 = (v1 + 8);
  v48 = v16;
  v49 = (v30 - 8);
  do
  {
    v52(v12, v32, v7);
    sub_10000CDF0();
    sub_10000CDD0();
    v33 = v30;
    (*v50)(v6, v0);
    sub_100008AF8();
    v34 = objc_allocWithZone(PREditingLook);
    v35 = sub_10000CF00();

    v36 = sub_10000CF00();
    v0 = v53;

    [v34 initWithIdentifier:v35 displayName:v36];

    (*v49)(v12, v7);
    sub_10000D070();
    v37 = v55[2];
    sub_10000D0A0();
    v30 = v33;
    v6 = v54;
    sub_10000D0B0();
    sub_10000D080();
    v32 += v51;
    --v29;
  }

  while (v29);

  return v55;
}

uint64_t sub_10000B8A0()
{
  v1 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = xmmword_10000E0C0;
  *(v2 + 40) = 0x403D000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10000CB90;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10000CBB0;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007368;
  aBlock[3] = &unk_100014B10;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  v6 = [v1 imageWithActions:v4];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000041F0(0, &unk_1000191F8, UIAction_ptr);
    v8 = objc_opt_self();
    v20 = v1;
    v9 = [v8 mainBundle];
    v19._countAndFlagsBits = 0x800000010000E5C0;
    v22._countAndFlagsBits = 0x695020726F6C6F43;
    v22._object = 0xEC00000072656B63;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v10.super.isa = v9;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_10000CC60(v22, v24, v10, v26, v19);

    v11 = *&v5[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v11;
    v13 = v6;
    v14 = sub_10000CFE0();
    v15 = [v8 mainBundle];
    v23._countAndFlagsBits = 0x695020726F6C6F43;
    v23._object = 0xEC00000072656B63;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v16.super.isa = v15;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_10000CC60(v23, v25, v16, v27, 0x800000010000E5C0);

    v17 = sub_10000CF00();

    [v14 setAccessibilityLabel:v17];

    sub_1000040D4(&qword_100018F10, &qword_10000DDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10000DBB0;
    *(v18 + 32) = v14;

    return v18;
  }

  return result;
}

double sub_10000BC8C(void *a1)
{
  v41 = sub_10000CD80();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v41);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000CCE0();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000CE30();
  v42 = *(v44 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v44);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_10000CDE0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  v23 = [a1 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v22, v14, v15);
    v25 = sub_100005AFC(v22);
    if (v25)
    {
      v26 = v25;
      [v26 bounds];
      if (CGRectGetMaxY(v47) > 0.0)
      {
        v27 = *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
        (*(v16 + 16))(v20, v22, v15);
        v28 = v27;
        v29 = v40;
        sub_10000CE10();
        [v26 bounds];
        v30 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
        swift_beginAccess();
        v31 = v39;
        v32 = v1 + v30;
        v33 = v41;
        (*(v39 + 16))(v5, v32, v41);
        v34 = v43;
        sub_10000CD90();
        (*(v31 + 8))(v5, v33);
        [v26 bounds];

        v35 = sub_10000CCD0();
        if (v36)
        {
          v24 = PREditingLookLuminanceUnknown;
        }

        else
        {
          v37 = *&v35;

          v24 = v37;
        }

        (*(v45 + 8))(v34, v46);
        (*(v42 + 8))(v29, v44);
        goto LABEL_11;
      }
    }

    v24 = PREditingLookLuminanceUnknown;
LABEL_11:
    (*(v16 + 8))(v22, v15);
    return v24;
  }

  sub_10000901C(v14, &unk_100019180, &unk_10000E150);
  return PREditingLookLuminanceUnknown;
}

uint64_t sub_10000C1E0(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v5 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_10000CDE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v48 = sub_10000ABB0(_swiftEmptyArrayStorage);
  v46 = a1;
  v16 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v52[0] = 0;
  v17 = [v16 loadUserInfoWithError:v52];
  swift_unknownObjectRelease();
  v18 = v52[0];
  if (v17)
  {

    v19 = sub_10000CED0();

    v48 = v19;
  }

  else
  {
    v20 = v18;
    sub_10000CC80();

    swift_willThrow();
  }

  v21 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  swift_beginAccess();
  v22 = *(v10 + 16);
  v44 = a2;
  v22(v15, a2 + v21, v9);
  v23 = sub_10000CDD0();
  v25 = v24;
  v26 = *(v10 + 8);
  v26(v15, v9);
  v27 = [v46 currentLook];
  v28 = [v27 identifier];

  sub_10000CF30();
  sub_10000CDC0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000901C(v8, &unk_100019180, &unk_10000E150);
  }

  else
  {

    v29 = v43;
    (*(v10 + 32))(v43, v8, v9);
    v23 = sub_10000CDD0();
    v25 = v30;
    v26(v29, v9);
  }

  *&v50 = 0x6F6C6F4365736162;
  *(&v50 + 1) = 0xE900000000000072;
  sub_10000D020();
  v31 = *(v44 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  v32 = sub_10000CFC0();

  v51 = sub_1000040D4(&qword_1000191D8, &qword_10000E188);
  *&v50 = v32;
  sub_10000418C(&v50, v49);
  v33 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v33;
  sub_100009CAC(v49, v52, isUniquelyReferenced_nonNull_native);
  sub_10000419C(v52);
  v35 = v47;
  *&v50 = 0x746E6169726176;
  *(&v50 + 1) = 0xE700000000000000;
  sub_10000D020();
  v51 = &type metadata for String;
  *&v50 = v23;
  *(&v50 + 1) = v25;
  sub_10000418C(&v50, v49);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v35;
  sub_100009CAC(v49, v52, v36);
  sub_10000419C(v52);
  v48 = v47;
  *&v50 = 0x546B6E616C427369;
  *(&v50 + 1) = 0xEF6574616C706D65;
  sub_10000D020();
  sub_100007EAC(v52, &v50);
  sub_10000419C(v52);
  sub_10000901C(&v50, &qword_100018F20, &qword_10000DDC8);
  *&v50 = 0x6D614E726F6C6F63;
  *(&v50 + 1) = 0xE900000000000065;
  sub_10000D020();
  sub_100007EAC(v52, &v50);
  sub_10000419C(v52);
  sub_10000901C(&v50, &qword_100018F20, &qword_10000DDC8);
  v37 = [objc_msgSend(v46 "environment")];
  swift_unknownObjectRelease();
  isa = sub_10000CEC0().super.isa;

  v52[0] = 0;
  LODWORD(v35) = [v37 storeUserInfo:isa error:v52];

  if (v35)
  {
    v39 = v52[0];
  }

  else
  {
    v40 = v52[0];
    sub_10000CC80();

    swift_willThrow();
  }

  return (*(v45 + 16))();
}

uint64_t sub_10000C85C(void *a1)
{
  v3 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000CDE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = [a1 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000901C(v6, &unk_100019180, &unk_10000E150);
  }

  (*(v8 + 32))(v14, v6, v7);
  (*(v8 + 16))(v12, v14, v7);
  v17 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  swift_beginAccess();
  (*(v8 + 40))(v1 + v17, v12, v7);
  swift_endAccess();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_10000CAA4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000CAF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000CB58()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CBB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000CBD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}