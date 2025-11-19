uint64_t sub_1006A5A70()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5D7C()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    Namespace.ID.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5FC8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for LocationOfInterestType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A3BF4();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1006A211C();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA35B0, &type metadata accessor for LocationOfInterestType);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1006A6278(uint64_t *a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v24 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_1006A3F4C();
  }

  else
  {
    if (v10 > v9)
    {
      sub_1006A19B8();
      goto LABEL_17;
    }

    sub_1006A2434();
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  v12 = *v26;
  v13 = v26[1];
  String.hash(into:)();
  type metadata accessor for LocationOfInterestType();
  sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  a2 = v14 & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v25 + 72);
    do
    {
      sub_1006A9B9C(*(v11 + 48) + v17 * a2, v8);
      v18 = *v8 == v12 && v8[1] == v13;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
      {
        goto LABEL_20;
      }

      sub_1006A9C00(v8);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_17:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100235F88(v26, *(v19 + 48) + *(v25 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_20:
  sub_1006A9C00(v8);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006A650C()
{
  sub_100071768();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *(*v0 + 16);
  v9 = *(*v0 + 24);
  if (v9 > v8 && (v2 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v2)
  {
    sub_1006A428C();
  }

  else
  {
    if (v9 > v8)
    {
      sub_1001AF060(&qword_100CD12B0);
      goto LABEL_24;
    }

    sub_1006A2744();
  }

  v10 = *v0;
  Hasher.init(_seed:)();
  sub_1002BB3AC();
  Hasher._finalize()();
  sub_100071DC8();
  v5 = v12 & ~v11;
  if ((*(v10 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v13 = ~v11;
    sub_1006A9D44();
    do
    {
      v14 = 0xEA00000000007974;
      v15 = v1;
      switch(*(*(v10 + 48) + v5))
      {
        case 1:
          v15 = 0x7469706963657270;
          v14 = 0xED00006E6F697461;
          break;
        case 2:
          v15 = 0x74617265706D6574;
          v14 = 0xEB00000000657275;
          break;
        case 3:
          v15 = sub_100008C94();
          break;
        default:
          break;
      }

      v16 = v1;
      v17 = 0xEA00000000007974;
      switch(v7)
      {
        case 1:
          v16 = 0x7469706963657270;
          v17 = 0xED00006E6F697461;
          break;
        case 2:
          v16 = 0x74617265706D6574;
          v17 = 0xEB00000000657275;
          break;
        case 3:
          v17 = 0xE400000000000000;
          v16 = 1684957559;
          break;
        default:
          break;
      }

      if (v15 == v16 && v14 == v17)
      {
        goto LABEL_27;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_28;
      }

      v5 = (v5 + 1) & v13;
    }

    while (((*(v10 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

LABEL_24:
  v20 = *v3;
  *(*v3 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  *(*(v20 + 48) + v5) = v7;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    sub_100051A4C();
    return;
  }

  __break(1u);
LABEL_27:

LABEL_28:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1006A6794(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1006A456C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1006A29F4();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1006A1B60();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1006A68FC(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A47C8();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1006A2C28();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA3A00, &type metadata accessor for Location);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1006A6BAC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A4B20();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1006A2F40();
LABEL_10:
      v12 = *v3;
      result = static Hasher._hash(seed:_:)();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1006A1CB8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1006A6CB0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for DetailChartCondition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A51E4();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1006A312C();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA39E0, &type metadata accessor for DetailChartCondition);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1006A6F60(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A553C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1006A3444();
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1001AF060(&qword_100CD14C0);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1006A70A8(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1006A5788();
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001AF060(&qword_100CD14D0);
      goto LABEL_28;
    }

    sub_1006A3660();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  sub_100542CB0(a1);
  String.hash(into:)();

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x73776F626E696172;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x6E696E746867696CLL;
          v13 = 0xE900000000000067;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1818845544;
          break;
        case 3:
          v13 = 0xE500000000000000;
          v14 = 0x656B6F6D73;
          break;
        case 4:
          v13 = 0xE300000000000000;
          v14 = 6778726;
          break;
        case 5:
          v13 = 0xE400000000000000;
          v14 = 1702519144;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = 0x73776F626E696172;
      switch(a1)
      {
        case 1:
          v16 = 0x6E696E746867696CLL;
          v15 = 0xE900000000000067;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1818845544;
          break;
        case 3:
          v15 = 0xE500000000000000;
          v16 = 0x656B6F6D73;
          break;
        case 4:
          v15 = 0xE300000000000000;
          v16 = 6778726;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1702519144;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_31;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006A738C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_1006A5A70();
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001AF060(&qword_100CD14C8);
      goto LABEL_34;
    }

    sub_1006A3918();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  sub_100542D8C(a1);
  String.hash(into:)();

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x746E617361656C70;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x617361656C706E75;
          v13 = 0xEA0000000000746ELL;
          break;
        case 2:
          v13 = 0xE300000000000000;
          v14 = 7630696;
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x796C6C696863;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v15 = 1734833517;
          goto LABEL_18;
        case 5:
          v13 = 0xE300000000000000;
          v14 = 7959140;
          break;
        case 6:
          v13 = 0xE500000000000000;
          v15 = 1684957559;
LABEL_18:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v13 = 0xE400000000000000;
          v14 = 1835819363;
          break;
        default:
          break;
      }

      v16 = 0xE800000000000000;
      v17 = 0x746E617361656C70;
      switch(a1)
      {
        case 1:
          v17 = 0x617361656C706E75;
          v16 = 0xEA0000000000746ELL;
          break;
        case 2:
          v16 = 0xE300000000000000;
          v17 = 7630696;
          break;
        case 3:
          v16 = 0xE600000000000000;
          v17 = 0x796C6C696863;
          break;
        case 4:
          v16 = 0xE500000000000000;
          v18 = 1734833517;
          goto LABEL_27;
        case 5:
          v16 = 0xE300000000000000;
          v17 = 7959140;
          break;
        case 6:
          v16 = 0xE500000000000000;
          v18 = 1684957559;
LABEL_27:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v16 = 0xE400000000000000;
          v17 = 1835819363;
          break;
        default:
          break;
      }

      if (v14 == v17 && v13 == v16)
      {
        goto LABEL_37;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_38;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_37:

LABEL_38:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1006A76B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100A3BBB0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_1006A792C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A794C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A864C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A796C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A874C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A798C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A7AB4()
{
  sub_1000523EC();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A7BC4(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7BE4(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7C04(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8D4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7F8C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A8EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A7FAC()
{
  sub_1000C8A28();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A8124(char *a1, int64_t a2, char a3)
{
  result = sub_1006A9254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A8234()
{
  sub_1000526EC();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A827C(char *a1, int64_t a2, char a3)
{
  result = sub_1006A9398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A82F4(char *a1, int64_t a2, char a3)
{
  result = sub_1006A94AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A8314(char *a1, int64_t a2, char a3)
{
  result = sub_1006A95C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A8510(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A864C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAB980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1006A874C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1006A8888(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1006A899C()
{
  sub_1000210F4();
  if (v5)
  {
    sub_100014CB4();
    if (v6 != v7)
    {
      sub_100030000();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CD1500);
    v8 = sub_1006A9D78();
    sub_1000D3F3C(v8);
    v8[2] = v3;
    v8[3] = 2 * (v9 / v4);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000B0EB8();
  if (v1)
  {
    if (v8 != v0 || v11 + 40 * v3 <= v10)
    {
      sub_1006A9D24();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1006A9D24();
    memcpy(v16, v17, v18);
  }
}

void sub_1006A8A70()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CACDE8);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_1000926EC();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1006A8B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD12A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[120 * v8] <= v12)
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A8C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1006A8D4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A8EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void sub_1006A9168()
{
  sub_10000CDC8();
  if (v3)
  {
    sub_100014CB4();
    if (v4 != v5)
    {
      sub_100030000();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100088474();
  if (v4 ^ v5 | v12)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000BAF18(v6, v7, v8, v9, v10);
    v14 = swift_allocObject();
    sub_1000D3F3C(v14);
    sub_100087E14(v15);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v14 != v0 || &v0[3 * v2 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, v0 + 4, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_100021CEC();
    sub_10022C350(v17);
    sub_1000C9040();
  }
}

char *sub_1006A9254(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A9398(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1178);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A94AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC7E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A95C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1006A96B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a4;
  v4[8] = a1;
  v4[5] = type metadata accessor for LocalSearchRequestManager();
  v4[6] = &off_100C6CB98;
  v4[2] = a3;

  return _swift_task_switch(sub_1006A9748, 0, 0);
}

uint64_t sub_1006A9748()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v4[5] = v0 + 2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = sub_10022C350(&qword_100CD11B0);
  *v5 = v0;
  v5[1] = sub_1006A9864;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000012, 0x8000000100ADB320, sub_1006A9CC0, v4, v6);
}

uint64_t sub_1006A9864()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1006A9964()
{
  sub_100003B08();
  v1 = *(v0 + 56);
  sub_100006F14(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1006A99EC()
{
  result = qword_100CD1190;
  if (!qword_100CD1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1190);
  }

  return result;
}

unint64_t sub_1006A9A44()
{
  result = qword_100CD1198;
  if (!qword_100CD1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1198);
  }

  return result;
}

unint64_t sub_1006A9AA0()
{
  result = qword_100CD11A0;
  if (!qword_100CD11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD11A0);
  }

  return result;
}

unint64_t sub_1006A9AF8()
{
  result = qword_100CD11A8;
  if (!qword_100CD11A8)
  {
    sub_10022E824(&qword_100CD11B0);
    sub_10015E1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD11A8);
  }

  return result;
}

uint64_t sub_1006A9B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A9C00(uint64_t a1)
{
  v2 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006A9C5C()
{
  result = qword_100CD1428;
  if (!qword_100CD1428)
  {
    sub_10022E824(&qword_100CA2DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1428);
  }

  return result;
}

uint64_t sub_1006A9CDC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1006A9D58()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1006A9D78()
{

  return swift_allocObject();
}

uint64_t sub_1006A9D98(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2520 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2530 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2528 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2518 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2510 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1006A9F04(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_1006A9D98(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006AA588(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10031694C(v9, v90 + v71, v7);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v134 = v73;
    v93 = swift_allocObject();
    sub_1000056EC(v93);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

void sub_1006AAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BC50;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A41B80;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC20;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D907E8 = v8;
}

void sub_1006AAF88()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC50;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3AEB0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A2C3F0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BBB0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BB80;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100555FC0();
  qword_100D907F0 = v0;
}

void sub_1006AB0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 2;
  v24[1] = 4;
  v25 = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v26 = v24;
  v27 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v28 = v22;
  v29 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v30 = v19;
  v31 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v32 = v17;
  v33 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v34 = v15;
  v35 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A2C3F0;
  v36 = v13;
  v37 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v38 = v11;
  v39 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D907F8 = v8;
}

void sub_1006AB1DC()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100555FC0();
  qword_100D90800 = v0;
}

void sub_1006AB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D90808 = v8;
}

uint64_t sub_1006AB430(uint64_t a1, void (*a2)(char *))
{
  v35 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v38 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v37 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = type metadata accessor for LocationViewComponent();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v34 - v27;

  sub_1005D71C4(v29, a2);
  v34[1] = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NhpMinorAlertContent._Storage(0);
  swift_allocObject();
  sub_1002D2BB0();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

BOOL sub_1006AB7D8(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5010);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v87 - v8;
  v10 = sub_10022C350(&qword_100CA50C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v90 = &v87 - v12;
  type metadata accessor for ListLocationViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC4158);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v87 - v17;
  v19 = sub_10022C350(&qword_100CD1660);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  v23 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || (sub_1001AEF68(*(a1 + 11) | (*(a1 + 13) << 16), *(a2 + 11) | (*(a2 + 13) << 16)) & 1) == 0)
  {
    return 0;
  }

  v87 = v6;
  v88 = type metadata accessor for ListViewModel();
  v24 = v88[8];
  v25 = *(v19 + 48);
  sub_100035AD0(a1 + v24, v22, &qword_100CC4158);
  sub_100035AD0(a2 + v24, &v22[v25], &qword_100CC4158);
  sub_100003BDC(v22);
  if (v32)
  {
    sub_100003BDC(&v22[v25]);
    if (v32)
    {
      sub_1000180EC(v22, &qword_100CC4158);
      goto LABEL_21;
    }

LABEL_18:
    v33 = &qword_100CD1660;
    v34 = v22;
LABEL_19:
    sub_1000180EC(v34, v33);
    return 0;
  }

  sub_100035AD0(v22, v18, &qword_100CC4158);
  sub_100003BDC(&v22[v25]);
  if (v32)
  {
    sub_1006AC2CC(v18, type metadata accessor for ListLocationViewModel);
    goto LABEL_18;
  }

  sub_10003DF84(&v22[v25], v15, type metadata accessor for ListLocationViewModel);
  sub_1009AB434();
  v36 = v35;
  sub_1006AC2CC(v15, type metadata accessor for ListLocationViewModel);
  sub_1006AC2CC(v18, type metadata accessor for ListLocationViewModel);
  sub_1000180EC(v22, &qword_100CC4158);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v37 = v88;
  sub_1009EEBA8(*(a1 + v88[9]), *(a2 + v88[9]), v26, v27, v28, v29, v30, v31, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v39 = v37[10];
  v40 = *(a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v40 == *v42 && v41 == v42[1];
  if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000085DC();
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    v48 = *v46 == *v47 && v44 == v45;
    if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  if ((sub_100187E68((a1 + v37[16]), (a2 + v37[16])) & 1) == 0)
  {
    return 0;
  }

  sub_1002DCB04();
  if ((v49 & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_1000085DC();
  if (v52)
  {
    if (!v53)
    {
      return 0;
    }

    v56 = *v54 == *v55 && v52 == v53;
    if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v57 = v88[20];
  v58 = *(a2 + v57);
  v59 = LocationAuthorizationState.rawValue.getter(*(a1 + v57));
  v61 = v60;
  if (v59 == LocationAuthorizationState.rawValue.getter(v58) && v61 == v62)
  {
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  v65 = v88[22];
  v66 = *(v10 + 48);
  v67 = v90;
  sub_100035AD0(a1 + v65, v90, &qword_100CA5010);
  sub_100035AD0(a2 + v65, v67 + v66, &qword_100CA5010);
  if (sub_100024D10(v67, 1, v89) == 1)
  {
    if (sub_100024D10(v90 + v66, 1, v89) == 1)
    {
      sub_1000180EC(v90, &qword_100CA5010);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v68 = v90;
  sub_100035AD0(v90, v9, &qword_100CA5010);
  if (sub_100024D10(v68 + v66, 1, v89) == 1)
  {
    sub_1006AC2CC(v9, type metadata accessor for ContentStatusBanner);
LABEL_72:
    v33 = &qword_100CA50C0;
    v34 = v90;
    goto LABEL_19;
  }

  v69 = v90;
  v70 = v87;
  sub_10003DF84(v90 + v66, v87, type metadata accessor for ContentStatusBanner);
  v71 = sub_100133BA0(v9, v70);
  sub_1006AC2CC(v70, type metadata accessor for ContentStatusBanner);
  sub_1006AC2CC(v9, type metadata accessor for ContentStatusBanner);
  sub_1000180EC(v69, &qword_100CA5010);
  if (!v71)
  {
    return 0;
  }

LABEL_74:
  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  v72 = v88[24];
  v73 = (a1 + v72);
  v74 = *(a1 + v72 + 4);
  v75 = *(a1 + v72 + 5);
  v76 = *(a1 + v72 + 6);
  v77 = *(a1 + v72 + 7);
  v78 = *(a1 + v72 + 16);
  v79 = (a2 + v72);
  v32 = (v74 & 1) == 0;
  v80 = &_mh_execute_header;
  if (v32)
  {
    v81 = 0;
  }

  else
  {
    v81 = &_mh_execute_header;
  }

  v32 = (v75 & 1) == 0;
  v82 = 0x10000000000;
  if (v32)
  {
    v83 = 0;
  }

  else
  {
    v83 = 0x10000000000;
  }

  v32 = (v77 & 1) == 0;
  v84 = 0x100000000000000;
  if (v32)
  {
    v85 = 0;
  }

  else
  {
    v85 = 0x100000000000000;
  }

  v86 = *v73 | (v76 << 48) | v81;
  if ((v79[1] & 1) == 0)
  {
    v80 = 0;
  }

  if ((*(v79 + 5) & 1) == 0)
  {
    v82 = 0;
  }

  if ((*(v79 + 7) & 1) == 0)
  {
    v84 = 0;
  }

  return sub_100410884(v86 | v83 | v85, *(v73 + 8), v78, *v79 | (*(v79 + 6) << 48) | v80 | v82 | v84, *(v79 + 8), *(v79 + 2));
}

uint64_t sub_1006ABF68@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  sub_1000103C4();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = v5;
  v6 = *(v1 + 8);
  *(v4 + 48) = *v1;
  *(v4 + 56) = v6;
  sub_1000103C4();
  *(v7 + 72) = v8;
  *(v7 + 80) = 0xD000000000000018;
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v1 + 9);
  sub_1000103C4();
  v10[15] = &type metadata for Bool;
  v10[16] = 0xD00000000000001CLL;
  v10[17] = v11;
  if (*(v1 + 10))
  {
    if (*(v1 + 10) == 1)
    {
      v12 = 0xEE006465696E6544;
      v13 = 0x6E6F697461636F6CLL;
    }

    else
    {
      sub_1000103C4();
      v13 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x6E6564646968;
  }

  *(inited + 144) = v13;
  *(inited + 152) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6863726165537369;
  *(inited + 184) = 0xEB00000000676E69;
  v14 = type metadata accessor for ListViewModel();
  *(inited + 192) = *(v1 + v14[12]);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x72656767697274;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 240) = *(v1 + v14[18]);
  *(inited + 264) = &type metadata for ListSessionTrigger;
  *(inited + 272) = 0x697469736E617274;
  *(inited + 280) = 0xEF6449676E696E6FLL;
  v15 = (v1 + v14[19]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(inited + 288) = v17;
  *(inited + 296) = v18;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = v19;
  *(inited + 336) = *(v1 + v14[20]);
  *(inited + 360) = &type metadata for LocationAuthorizationState;
  *(inited + 368) = 0xD00000000000001FLL;
  *(inited + 376) = 0x8000000100ABDDA0;
  LOBYTE(v19) = *(v1 + v14[21]);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v19;

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD1668);
  a1[4] = sub_1006AC324();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006AC240()
{
  sub_1006AC388(&qword_100CD1678);

  return ShortDescribable.description.getter();
}

uint64_t sub_1006AC2CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1006AC324()
{
  result = qword_100CD1670;
  if (!qword_100CD1670)
  {
    sub_10022E824(&qword_100CD1668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1670);
  }

  return result;
}

uint64_t sub_1006AC388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ListViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006AC3CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    type metadata accessor for SavedLocation();
    return sub_1000BC9D0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1006AC48C(uint64_t a1, char *a2)
{
  v33 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_10022C350(&qword_100CADBA0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  SavedLocation.location.getter();
  v19 = type metadata accessor for Location();
  if (sub_100024D10(v9, 1, v19) == 1)
  {
    sub_1000180EC(v9, &qword_100CA65D8);
    v20 = 1;
  }

  else
  {
    Location.identifier.getter();
    (*(*(v19 - 8) + 8))(v9, v19);
    v20 = 0;
  }

  sub_10001B350(v18, v20, 1, v2);
  Location.identifier.getter();
  sub_10001B350(v16, 0, 1, v2);
  v21 = *(v4 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v6, 1, v2) != 1)
  {
    v23 = v13;
    sub_100095588();
    if (sub_100024D10(&v6[v21], 1, v2) != 1)
    {
      v24 = v32;
      v25 = &v6[v21];
      v26 = v31;
      (*(v32 + 32))(v31, v25, v2);
      sub_1000E8FAC();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v23;
      v22 = v27;
      v28 = *(v24 + 8);
      v28(v26, v2);
      sub_1000180EC(v16, &qword_100CADBA0);
      sub_1000180EC(v18, &qword_100CADBA0);
      v28(v33, v2);
      sub_1000180EC(v6, &qword_100CADBA0);
      return v22 & 1;
    }

    sub_1000180EC(v16, &qword_100CADBA0);
    sub_1000180EC(v18, &qword_100CADBA0);
    (*(v32 + 8))(v13, v2);
    goto LABEL_9;
  }

  sub_1000180EC(v16, &qword_100CADBA0);
  sub_1000180EC(v18, &qword_100CADBA0);
  if (sub_100024D10(&v6[v21], 1, v2) != 1)
  {
LABEL_9:
    sub_1000180EC(v6, &qword_100CADD58);
    v22 = 0;
    return v22 & 1;
  }

  sub_1000180EC(v6, &qword_100CADBA0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1006AC954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006AC9B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CCC9D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006ACA4C(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  v7 = 0;
  v8 = 1;
LABEL_2:

  v10 = v5 + 40 + 16 * v7;
  while (1)
  {
    if (v6 == v7)
    {

      return v8;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    ++v7;
    v11 = v10 + 16;
    v12 = *(v10 - 8);
    v14 = a1;

    v12(&v15, &v14, a2);

    v13 = v15;
    v10 = v11;
    if (v15 != 1)
    {
      if (v15)
      {
        sub_1006BA808(v8);

        a1 = v13;
        v8 = v13;
        goto LABEL_2;
      }

      sub_1006BA808(v8);

      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_1006ACB80()
{
  v0 = type metadata accessor for URL();
  sub_100007FD0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  UnfairLock.lock()();
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_1006B9E6C(v6);
  URL.path.getter();
  v9 = *(v2 + 8);
  v9(v6, v0);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v7 defaultManager];
    sub_1006B9E6C(v6);
    URL._bridgeToObjectiveC()(v13);
    v14 = sub_100008CA4();
    v9(v14, v0);
    v37 = 0;
    v15 = [v12 removeItemAtURL:v6 error:&v37];

    if (v15)
    {
      v16 = qword_100CA26E0;
      v17 = v37;
      if (v16 != -1)
      {
        sub_100019C5C();
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90B08);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Removed state file", v21, 2u);
      }
    }

    else
    {
      v22 = v37;
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v37 = v23;
      sub_10022C350(&qword_100CD8220);
      sub_10000C70C(0, &qword_100CD19E0);
      swift_dynamicCast();
      if (qword_100CA26E0 != -1)
      {
        sub_100019C5C();
      }

      v24 = type metadata accessor for Logger();
      sub_10000703C(v24, qword_100D90B08);
      v25 = v36;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136446210;
        v30 = v25;
        v31 = [v30 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_100078694(v32, v34, &v38);

        *(v28 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to delete state file with error: %{public}s", v28, 0xCu);
        sub_100006F14(v29);
      }

      else
      {
      }
    }
  }

  UnfairLock.unlock()();
}

uint64_t sub_1006ACFEC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000668DC();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + 80);

    v10 = swift_allocObject();
    v20 = v5;
    v11 = v10;
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v8;
    v18 = v11;
    aBlock[4] = sub_1006BA728;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C66610;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10006CD24(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    v17 = v4;
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
    (*(v20 + 8))(v7, v17);
  }
}

uint64_t sub_1006AD384(uint64_t a1, unint64_t a2)
{
  v3 = sub_10022C350(&qword_100CD1998);
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v6 = sub_10022C350(&qword_100CD19D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  v9 = sub_10022C350(&qword_100CD19D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-v10];
  v12 = type metadata accessor for MainStateProcessingContext();
  __chkstk_darwin(v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(result + 40);

    v17(v18);

    sub_100050E14(v14, v11);
    sub_10001B350(v11, 0, 1, v12);
    v19 = sub_1006ACA4C(a2, v11);
    sub_1000180EC(v11, &qword_100CD19D8);
    if (v19 == 1)
    {
      v21 = v16[8];
      v5[1] = v16[9];
      v5[2] = a2;
      *v5 = v21;
      sub_1006BA734(v14, v5 + *(v3 + 72));
      sub_1006BA798(v5, v8);
      sub_10001B350(v8, 0, 1, v3);
      v22 = *(*v16 + 184);
      swift_beginAccess();

      v23 = v16 + v22;
    }

    else
    {
      if (!v19)
      {
        sub_10001B350(v8, 1, 1, v3);
        v20 = *(*v16 + 184);
        swift_beginAccess();
        sub_100035B94(v8, v16 + v20, &qword_100CD19D0);
        swift_endAccess();
        sub_1006ACB80();
        sub_10004FA40(v14, type metadata accessor for MainStateProcessingContext);
      }

      v24 = v16[8];
      v5[1] = v16[9];
      v5[2] = v19;
      *v5 = v24;
      sub_1006BA734(v14, v5 + *(v3 + 72));
      sub_1006BA798(v5, v8);
      sub_10001B350(v8, 0, 1, v3);
      v25 = *(*v16 + 184);
      swift_beginAccess();

      v23 = v16 + v25;
    }

    sub_100035B94(v8, v23, &qword_100CD19D0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1006AD764@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2248 != -1)
  {
    swift_once();
  }

  v2 = SettingReader.isEnabled(_:with:)();

  *(a1 + 24) = &type metadata for AutomationInfoSetting;
  *(a1 + 32) = &off_100C6A9C0;
  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1006AD808@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for Capabilities();
  result = static Capabilities.isInternalBuild()();
  if (result)
  {
    if (qword_100CA21C8 != -1)
    {
      swift_once();
    }

    sub_10006CD24(&qword_100CD19E8, v3, type metadata accessor for MainAssembly);
    return Configurable.setting<A>(_:)();
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1006AD8FC(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD1830);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_1000403F4(a1);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD18F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = result;

  sub_1000446E4(0, sub_1006BA688, v5, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = result;

  sub_1000446E4(0, sub_1006BA68C, v6, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsOptInStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = result;

  sub_1000446E4(0, sub_1006BA690, v7, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SavedLocationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = result;

  sub_1000446E4(0, sub_1006BA694, v8, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ReverseGeocodingStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = result;

  sub_1000446E4(0, sub_1006BA698, v9, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherDataStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = result;

  sub_1000446E4(0, sub_1006BA69C, v10, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherMapOverlayDataStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = result;

  sub_1000446E4(0, sub_1006BA6A0, v11, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WidgetReloadStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = result;

  sub_1000446E4(0, sub_1006BA6A4, v12, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for LocationViewerStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = result;

  sub_1000446E4(0, sub_1006BA6A8, v13, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for OpenL2HandlerObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = result;

  sub_1000446E4(0, sub_1006BA6AC, v14, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for InteractionDonationStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = result;

  sub_1000446E4(0, sub_1006BA6B0, v15, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCC310);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_100013188(&v33, v35);
  sub_10000C70C(0, &qword_100CB4670);
  v16 = static OS_dispatch_queue.main.getter();
  sub_100035B30(v35, &v33);
  v17 = swift_allocObject();
  sub_100013188(&v33, v17 + 16);
  sub_1000446E4(v16, sub_1006BA6B4, v17, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherConditionBackgroundStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = result;
  v19 = static OS_dispatch_queue.main.getter();

  sub_1000446E4(v19, sub_1006BA6BC, v18, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for TimeStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = result;
  v21 = static OS_dispatch_queue.main.getter();

  sub_1000446E4(v21, sub_1006BA6C0, v20, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CBE1D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_100013188(&v31, &v33);
  v22 = static OS_dispatch_queue.main.getter();
  sub_100035B30(&v33, &v31);
  v23 = swift_allocObject();
  sub_100013188(&v31, v23 + 16);
  sub_1000446E4(v22, sub_1006BA6C4, v23, &v31);

  sub_100006F14(&v31);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD17F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100013188(&v29, &v31);
  v24 = static OS_dispatch_queue.main.getter();
  sub_100035B30(&v31, &v29);
  v25 = swift_allocObject();
  sub_100013188(&v29, v25 + 16);
  sub_1000446E4(v24, sub_1006BA6CC, v25, &v29);

  sub_100006F14(&v29);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v29 != 1)
  {
    goto LABEL_21;
  }

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for VisibleLocationWeatherLoadStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v26 = result;
    v27 = static OS_dispatch_queue.main.getter();

    sub_1000446E4(v27, sub_1006BA6DC, v26, &v29);

    sub_100006F14(&v29);
LABEL_21:
    sub_1000161C0(a2, a2[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v29 != 3)
    {
      if (!v29)
      {

        goto LABEL_26;
      }

      sub_1000161C0(a2, a2[3]);
      type metadata accessor for DiagnosticManager();
      result = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (result)
      {
        v28 = result;

        sub_1000446E4(0, sub_1006BA6D4, v28, &v29);

        sub_100006F14(&v29);
LABEL_26:
        sub_100006F14(&v31);
        sub_100006F14(&v33);
        return sub_100006F14(v35);
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006AE4D8(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000161C0(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1006AE570(uint64_t a1, void *a2)
{
  v3 = *sub_1000161C0(a2, a2[3]);

  return sub_100054CC8(a1, v3);
}

uint64_t sub_1006AE5E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for LoadStatisticsOnDemandStoreObserver;
    a2[4] = &off_100C52CE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AE650@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = sub_100066888;
    a2[1] = result;
    a2[2] = sub_10009E87C;
    a2[3] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AE6EC@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD17F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = sub_10006D5AC;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006AE764(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ReverseGeocodingStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result[17];
  result[17] = v4;
  result[18] = v3;
  swift_retain_n();
  sub_10002B028(v6);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsOptInStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  result[2] = v4;
  result[3] = v3;

  sub_10002B028(v7);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SavedLocationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;

  v9 = v8[2];
  v8[2] = v4;
  v8[3] = v3;
  sub_10002B028(v9);
}

uint64_t sub_1006AE8B4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10022C350(&qword_100CD17F8);
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AE944(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherDataDebounceMiddleware();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_10006A9AC(sub_10004F458, result);

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ShortcutItemMiddleware();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10006A9AC(sub_10005037C, result);

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for UnitManagerMiddleware();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10006A9AC(sub_10006DAC0, result);

  sub_1000161C0(a2, a2[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v4 != 2 && (v4 & 1) != 0)
  {
    sub_1000161C0(a2, a2[3]);
    type metadata accessor for DemoPresetMiddleware();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_10006A9AC(sub_1006BA680, result);
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AEB58(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CAF460);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1858);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v5 != 2)
  {
    sub_10022C350(&qword_100CD1800);
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    *(result + 32) = v5 & 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006AECBC()
{
  sub_10022C350(&unk_100CAF460);
  swift_allocObject();
  return sub_10002AE6C(0, 0, 0, 0);
}

uint64_t sub_1006AED30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4910);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for RemotelyConfiguredSlowLocationLoadingMonitor();
      swift_allocObject();
      result = sub_100047BE0(v8, v9, v10, v11, v6, v7);
      a2[3] = v5;
      a2[4] = &off_100C739E8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006AEE60(void *a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v80 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v11 - 8);
  v85 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v79 = v120;
  if (!v120)
  {
    __break(1u);
    goto LABEL_17;
  }

  v77 = v123;
  v78 = v6;
  v75 = v121;
  v76 = v122;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v74 = v118;
  if (!v118)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v83 = v3;
  v73 = v119;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherService();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v72 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v117)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v115)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v113)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD19B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v111)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1290);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v109[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1818);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v108[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v15 = v107;
  if (v107 == 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1810);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v106)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v104[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v15;
  v69 = v14;
  v70 = v8;
  v71 = v5;
  v86 = v2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1880);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v103)
  {
    v16 = sub_10002D7F8(v112, v113);
    v67[10] = v67;
    __chkstk_darwin(v16);
    v18 = (v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_10002D7F8(v110, v111);
    v67[9] = v67;
    __chkstk_darwin(v20);
    v22 = (v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_10002D7F8(v105, v106);
    v67[8] = v67;
    __chkstk_darwin(v24);
    v26 = (v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = sub_10002D7F8(v102, v103);
    v67[7] = v67;
    __chkstk_darwin(v28);
    v30 = (v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v18;
    v33 = *v22;
    v34 = *v26;
    v35 = *v30;
    v36 = type metadata accessor for WeatherDataPreprocessor();
    v101[4] = &off_100C6A0D0;
    v101[3] = v36;
    v101[0] = v32;
    v84 = type metadata accessor for NewsDataManager();
    v100 = &off_100C76D50;
    v99 = v84;
    v98[0] = v33;
    v37 = type metadata accessor for RemotelyConfiguredSlowLocationLoadingMonitor();
    v96 = v37;
    v97 = &off_100C739E8;
    v95[0] = v34;
    v38 = type metadata accessor for DailyForecastFilter();
    v93 = v38;
    v94 = &off_100C4AB20;
    v92[0] = v35;
    type metadata accessor for WeatherDataUpdater();
    v39 = swift_allocObject();
    v40 = sub_10002D7F8(v101, v36);
    v67[6] = v67;
    __chkstk_darwin(v40);
    v42 = (v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = sub_10002D7F8(v98, v99);
    v67[5] = v67;
    __chkstk_darwin(v44);
    v46 = (v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = sub_10002D7F8(v95, v96);
    v67[4] = v67;
    __chkstk_darwin(v48);
    v50 = (v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = sub_10002D7F8(v92, v93);
    v67[3] = v67;
    __chkstk_darwin(v52);
    v54 = (v67 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = *v42;
    v57 = *v46;
    v58 = *v50;
    v59 = *v54;
    v91[3] = v36;
    v91[4] = &off_100C6A0D0;
    v91[0] = v56;
    v90[4] = &off_100C76D50;
    v90[3] = v84;
    v90[0] = v57;
    v89[3] = v37;
    v89[4] = &off_100C739E8;
    v89[0] = v58;
    v88[3] = v38;
    v88[4] = &off_100C4AB20;
    v88[0] = v59;
    sub_10000C70C(0, &qword_100CA2E40);
    *(v39 + 448) = OS_os_log.init(subsystem:category:)();
    *(v39 + 456) = &_swiftEmptySetSingleton;
    *(v39 + 464) = &_swiftEmptyDictionarySingleton;
    static UnfairLock.Options.dataSynchronization.getter();
    type metadata accessor for UnfairLock();
    swift_allocObject();
    *(v39 + 472) = UnfairLock.init(options:)();
    v60 = sub_10000C70C(0, &qword_100CB4670);
    v67[1] = "r.StatePersistenceManager";
    v67[2] = v60;
    static DispatchQoS.userInitiated.getter();
    v87 = _swiftEmptyArrayStorage;
    v85 = sub_10006CD24(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    v81 = sub_10022C350(&qword_100CA2E58);
    v82 = sub_100006F64(&qword_100CA2E60, &qword_100CA2E58);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v84) = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
    v83 = *(v83 + 104);
    v61 = v71;
    (v83)(v71);
    *(v39 + 520) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static DispatchQoS.utility.getter();
    v87 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v83)(v61, v84, v86);
    *(v39 + 528) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static DispatchQoS.utility.getter();
    v87 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v83)(v61, v84, v86);
    *(v39 + 536) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static Settings.Daemon.enableDynamicCacheQueries.getter();
    sub_10022C350(&qword_100CC84C0);
    swift_allocObject();
    *(v39 + 544) = SettingProperty.init(_:)();
    v62 = v75;
    v63 = v76;
    *(v39 + 16) = v79;
    *(v39 + 24) = v62;
    v64 = v77;
    *(v39 + 32) = v63;
    *(v39 + 40) = v64;
    v65 = v73;
    *(v39 + 48) = v74;
    *(v39 + 56) = v65;
    v66 = v69;
    *(v39 + 64) = v72;
    *(v39 + 72) = v66;
    sub_100035B30(v116, v39 + 80);
    sub_100035B30(v114, v39 + 120);
    sub_100035B30(v91, v39 + 160);
    sub_100035B30(v90, v39 + 200);
    sub_100035B30(v109, v39 + 240);
    sub_100035B30(v108, v39 + 280);
    *(v39 + 320) = v68 & 1;
    sub_100035B30(v89, v39 + 328);
    sub_100035B30(v104, v39 + 368);
    sub_100035B30(v88, v39 + 408);
    *(v39 + 504) = &type metadata for DefaultForecastFetchingPolicy;
    *(v39 + 512) = &off_100C74A30;
    sub_100006F14(v104);
    sub_100006F14(v108);
    sub_100006F14(v109);
    sub_100006F14(v114);
    sub_100006F14(v116);
    sub_100006F14(v88);
    sub_100006F14(v89);
    sub_100006F14(v90);
    sub_100006F14(v91);
    sub_100006F14(v92);
    sub_100006F14(v95);
    sub_100006F14(v98);
    sub_100006F14(v101);
    sub_100006F14(v102);
    sub_100006F14(v105);
    sub_100006F14(v110);
    sub_100006F14(v112);
    return v39;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006AFEF4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    type metadata accessor for VisibleLocationWeatherLoadMonitor();
    v2 = swift_allocObject();
    sub_10013894C(v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState);
    *(v2 + 16) = v3;
    *(v2 + 24) = v4;
    *(v2 + 40) = v5;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006AFFE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    v6 = v14;
    v5 = v15;
    v7 = v13;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1820);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v11)
    {
      v8 = type metadata accessor for LocationFinder();
      v9 = swift_allocObject();
      v9[2] = v12;
      v9[3] = v7;
      v9[4] = v6;
      v9[5] = v5;
      result = sub_100013188(&v10, (v9 + 6));
      a2[3] = v8;
      a2[4] = &off_100C5EE88;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B0100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for CellularRadioAccessTechnologyProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    *(v5 + 24) = v7;
    *(v5 + 40) = v8;
    a2[3] = v4;
    result = sub_10006CD24(&qword_100CD19A8, 255, type metadata accessor for CellularRadioAccessTechnologyProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B01F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for LocationAccessDataProvider();
    swift_allocObject();
    result = LocationAccessDataProvider.init(locationManager:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for LocationAccessDataProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B02CC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1006B0334(void *a1)
{
  v2 = type metadata accessor for WeatherServiceCaching();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD1950);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  type metadata accessor for WeatherAQIScaleCacheManager();
  static WeatherAQIScaleCacheManager.shared.getter();
  sub_1000161C0(a1, a1[3]);
  v6 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (LOBYTE(v22[0]) == 2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22[0])
  {
    static WeatherServiceCaching.disabled.getter();
  }

  else
  {
    static WeatherServiceCaching.enabled.getter();
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1968);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v8 = v23;
  if (!v23)
  {
    goto LABEL_13;
  }

  v9 = sub_1000161C0(v22, v23);
  v21[3] = v8;
  v10 = sub_100042FB0(v21);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v11 = v20;
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1000161C0(v19, v20);
  v18[3] = v11;
  v13 = sub_100042FB0(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1970);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    type metadata accessor for WeatherService();
    swift_allocObject();
    v14 = WeatherService.init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:serviceConfigurationProvider:)();
    sub_100006F14(v19);
    sub_100006F14(v22);
    return v14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1006B06EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherService();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1818);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v6 = type metadata accessor for GeocodeWeatherService();
    swift_allocObject();
    v7 = sub_100983D4C(v5, &v12, &v10, &v8);
    a2[3] = v6;
    result = sub_10006CD24(&qword_100CD19A0, 255, type metadata accessor for GeocodeWeatherService);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

double *sub_1006B08CC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CAF460);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1858);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1860);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = qword_100CAE038;
    v6 = off_100CAE040;
    sub_10022C350(&qword_100CD1830);
    swift_allocObject();

    return sub_1000443F4(v3, v4, v7, v8, v5, v6, 1.0);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1006B0A54(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4[3])
  {
    v3 = objc_allocWithZone(type metadata accessor for DebugOfflineViewController());
    return sub_1003BA9A8(v7, v8, v9, v10, v5, v6, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B0BAC()
{
  v0 = type metadata accessor for Container.TestSuite();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Scope();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA4B60);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1838);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1840);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&unk_100CE0F40);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1848);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for MainReducer();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1850);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1858);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1860);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1868);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1870);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1878);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for LocationAuthorizationReducer();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1880);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1888);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1890);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1898);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18A0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18A8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherService();
  RegistrationContainer.register<A>(_:name:factory:)();
  v6 = enum case for Scope.containerSingleton(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Scope.containerSingleton(_:), v2);
  Definition.inScope(_:)();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_10022C350(&qword_100CD18D8);
  RegistrationContainer.register<A>(_:name:factory:)();
  v9 = enum case for Scope.singleton(_:);
  v7(v5, enum case for Scope.singleton(_:), v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WDSEndpoint();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  sub_10022C350(&qword_100CD18E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18F0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v9, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  sub_10022C350(&qword_100CD18F8);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v9, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for NotificationsStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for NotificationsOptInStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for ReverseGeocodingStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SavedLocationsStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherDataStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherMapOverlayDataStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WidgetReloadStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for LocationViewerStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for OpenL2HandlerObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for InteractionDonationStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherConditionBackgroundStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for TimeStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for VisibleLocationWeatherLoadStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  RegistrationContainer.register<A>(_:name:factory:)();
  v11 = v15;
  v10 = v16;
  v12 = v17;
  (*(v16 + 104))(v15, enum case for Container.TestSuite.performance(_:), v17);
  Definition.whenTesting(_:_:)();

  (*(v10 + 8))(v11, v12);
  type metadata accessor for WeatherDataDebounceMiddleware();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for ShortcutItemMiddleware();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for ShortcutItemUpdater();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UnitManagerMiddleware();
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1006B1E7C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  active = type metadata accessor for ActiveLocationInputFactory();
  v19 = &off_100C4F948;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1005DE3B0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E7EFC;
  *(v10 + 24) = v9;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v11 = *sub_1000161C0(v20, v21);
    active = type metadata accessor for ActiveLocationModelFactory();
    v19 = &off_100C4F938;
    v17[0] = v11;
    sub_100035B30(v17, v16);
    v12 = swift_allocObject();
    sub_100013188(v16, v12 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1005DE3B8;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000E7F08;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000E8AE8;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4B60);
    swift_allocObject();
    return sub_10009CDA0(v3, v6, v5, v4, sub_1000D5B6C, 0, sub_10009F81C, v14, sub_1000E87D0, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B2210@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MainTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_100C78C80;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B2298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v28;
  if (!v28)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1838);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = v29;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v22;
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v24;
  v18 = v25;
  v8 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v9 = sub_10002D7F8(v26, v27);
    __chkstk_darwin(v9);
    v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v20, v21);
    __chkstk_darwin(v13);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_1000836B4(v5, v19, *v11, v6, v8, v7, v18, *v15);
    sub_100006F14(v20);
    sub_100006F14(v26);
    result = type metadata accessor for MainInteractor();
    a2[3] = result;
    a2[4] = &off_100C5E2C8;
    *a2 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B25A0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v16;
  if (v16)
  {
    v5 = v18;
    v4 = v19;
    v6 = v17;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1848);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v15)
    {
      v7 = *sub_1000161C0(v14, v15);
      v13[3] = type metadata accessor for MainViewModelFactory();
      v13[4] = &off_100C64CB8;
      v13[0] = v7;
      sub_100035B30(v13, v12);
      v8 = swift_allocObject();
      sub_100013188(v12, v8 + 16);

      sub_100006F14(v13);
      sub_100006F14(v14);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1006BA678;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000A065C;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10009F868;
      *(v11 + 24) = v10;
      sub_10022C350(&unk_100CE0F40);
      swift_allocObject();
      return sub_100083948(v3, v6, v5, v4, sub_1005DCAD0, 0, sub_10009F610, 0, sub_10009F81C, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B2858(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v318)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1868);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v316)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1870);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v314)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1878);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v312)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1880);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v310)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v308)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v306)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v304)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v302)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v300)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6200);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v298)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v296)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1888);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v294)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1890);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v292)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1878);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v290)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v288)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAC9F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v286)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v284)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB19F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v282)
  {
    v3 = sub_10002D7F8(v317, v318);
    v225 = v160;
    __chkstk_darwin(v3);
    v206 = (v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))();
    v6 = sub_10002D7F8(v315, v316);
    v224 = v160;
    __chkstk_darwin(v6);
    v205 = (v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))();
    v9 = sub_10002D7F8(v313, v314);
    v223 = v160;
    __chkstk_darwin(v9);
    v204 = (v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))();
    v12 = sub_10002D7F8(v311, v312);
    v222 = v160;
    __chkstk_darwin(v12);
    v203 = (v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))();
    v15 = sub_10002D7F8(v309, v310);
    v221 = v160;
    __chkstk_darwin(v15);
    v202 = (v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))();
    v18 = sub_10002D7F8(v307, v308);
    v220 = v160;
    __chkstk_darwin(v18);
    v201 = (v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))();
    v21 = sub_10002D7F8(v305, v306);
    v219 = v160;
    __chkstk_darwin(v21);
    v200 = (v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))();
    v24 = sub_10002D7F8(v303, v304);
    v218 = v160;
    __chkstk_darwin(v24);
    v199 = (v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = sub_10002D7F8(v301, v302);
    v217 = v160;
    __chkstk_darwin(v27);
    v198 = (v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))();
    v30 = sub_10002D7F8(v299, v300);
    v216 = v160;
    __chkstk_darwin(v30);
    v197 = (v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))();
    v33 = sub_10002D7F8(v297, v298);
    v215 = v160;
    __chkstk_darwin(v33);
    v196 = (v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))();
    v36 = sub_10002D7F8(v295, v296);
    v214 = v160;
    __chkstk_darwin(v36);
    v195 = (v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))();
    v39 = sub_10002D7F8(v293, v294);
    v213 = v160;
    __chkstk_darwin(v39);
    v194 = (v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))();
    v42 = sub_10002D7F8(v291, v292);
    v212 = v160;
    __chkstk_darwin(v42);
    v193 = (v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))();
    v45 = sub_10002D7F8(v289, v290);
    v211 = v160;
    __chkstk_darwin(v45);
    v192 = (v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))();
    v48 = sub_10002D7F8(v287, v288);
    v210 = v160;
    __chkstk_darwin(v48);
    v50 = (v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = sub_10002D7F8(v285, v286);
    v209 = v160;
    __chkstk_darwin(v52);
    v54 = (v160 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = sub_10002D7F8(v283, v284);
    v208 = v160;
    __chkstk_darwin(v56);
    v58 = (v160 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = sub_10002D7F8(v281, v282);
    v207 = v160;
    __chkstk_darwin(v60);
    v62 = (v160 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    v64 = *v206;
    v65 = *v205;
    v66 = *v204;
    v67 = *v203;
    v68 = *v202;
    v69 = *v200;
    v186 = *v201;
    v187 = v69;
    v70 = *v198;
    v188 = *v199;
    v189 = v70;
    v71 = *v196;
    v190 = *v197;
    v191 = v71;
    v195 = *v195;
    v200 = *v194;
    v72 = *v192;
    v197 = *v193;
    v198 = v72;
    v73 = *v50;
    v74 = *v54;
    v75 = *v58;
    v205 = *v62;
    v76 = type metadata accessor for AutomationReducer();
    v280[4] = &off_100C65D38;
    v280[3] = v76;
    v280[0] = v64;
    v206 = type metadata accessor for AppLifecycleReducer();
    v279 = &off_100C74D80;
    v278 = v206;
    v277[0] = v65;
    v204 = type metadata accessor for AppConfigurationReducer();
    v276 = &off_100C68310;
    v275 = v204;
    v274[0] = v66;
    v203 = type metadata accessor for EnvironmentReducer();
    v273 = &off_100C6A7F8;
    v272 = v203;
    v271[0] = v67;
    v202 = type metadata accessor for LocationsReducer();
    v270 = &off_100C662B8;
    v269 = v202;
    v268[0] = v68;
    v201 = type metadata accessor for TimeReducer();
    v267 = &off_100C65550;
    v266 = v201;
    v265[0] = v186;
    v199 = type metadata accessor for ViewStateReducer();
    v264 = &off_100C5C230;
    v263 = v199;
    v262[0] = v187;
    v196 = type metadata accessor for ModalViewStateReducer();
    v261 = &off_100C75210;
    v260 = v196;
    v259[0] = v188;
    v194 = type metadata accessor for LocationViewStateReducer();
    v258 = &off_100C4A0C8;
    v257 = v194;
    v256[0] = v189;
    v192 = type metadata accessor for WeatherDataReducer();
    v255 = &off_100C751D8;
    v254 = v192;
    v253[0] = v190;
    v190 = type metadata accessor for PerformanceTestReducer();
    v252 = &off_100C69CF0;
    v251 = v190;
    v250[0] = v191;
    v188 = type metadata accessor for DebugReducer();
    v249 = &off_100C50AD8;
    v248 = v188;
    v247[0] = v195;
    v186 = type metadata accessor for NotificationsReducer();
    v246 = &off_100C513B8;
    v245 = v186;
    v244[0] = v200;
    v200 = type metadata accessor for NotificationsOptInReducer();
    v243 = &off_100C55510;
    v242 = v200;
    v241[0] = v197;
    v197 = type metadata accessor for ConditionDetailViewStateReducer();
    v240 = &off_100C77CF0;
    v239 = v197;
    v238[0] = v198;
    v195 = type metadata accessor for SunriseSunsetDetailViewStateReducer();
    v237 = &off_100C69B08;
    v236 = v195;
    v235[0] = v73;
    v193 = type metadata accessor for MoonDetailViewStateReducer();
    v234 = &off_100C696D8;
    v233 = v193;
    v232[0] = v74;
    v191 = type metadata accessor for AveragesDetailViewStateReducer();
    v231 = &off_100C709B8;
    v230 = v191;
    v229[0] = v75;
    v189 = type metadata accessor for UnitsConfigurationViewStateReducer();
    v228 = &off_100C75968;
    v227 = v189;
    v226[0] = v205;
    type metadata accessor for MainReducer();
    v77 = swift_allocObject();
    v78 = sub_10002D7F8(v280, v76);
    v205 = v160;
    v181 = v76;
    __chkstk_darwin(v78);
    v183 = (v160 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))();
    v81 = sub_10002D7F8(v277, v278);
    v198 = v160;
    __chkstk_darwin(v81);
    v180 = (v160 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))();
    v84 = sub_10002D7F8(v274, v275);
    v187 = v160;
    __chkstk_darwin(v84);
    v178 = (v160 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))();
    v87 = sub_10002D7F8(v271, v272);
    v185 = v160;
    __chkstk_darwin(v87);
    v176 = (v160 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v89 + 16))();
    v90 = sub_10002D7F8(v268, v269);
    v184 = v160;
    __chkstk_darwin(v90);
    v174 = (v160 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))();
    v93 = sub_10002D7F8(v265, v266);
    v182 = v160;
    __chkstk_darwin(v93);
    v173 = (v160 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))();
    v96 = sub_10002D7F8(v262, v263);
    v179 = v160;
    __chkstk_darwin(v96);
    v171 = (v160 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v98 + 16))();
    v99 = sub_10002D7F8(v259, v260);
    v177 = v160;
    __chkstk_darwin(v99);
    v169 = (v160 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v101 + 16))();
    v102 = sub_10002D7F8(v256, v257);
    v175 = v160;
    __chkstk_darwin(v102);
    v167 = (v160 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))();
    v105 = sub_10002D7F8(v253, v254);
    v172 = v160;
    __chkstk_darwin(v105);
    v165 = (v160 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v107 + 16))();
    v108 = sub_10002D7F8(v250, v251);
    v170 = v160;
    __chkstk_darwin(v108);
    v163 = (v160 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))();
    v111 = sub_10002D7F8(v247, v248);
    v168 = v160;
    __chkstk_darwin(v111);
    v161 = (v160 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v113 + 16))();
    v114 = sub_10002D7F8(v244, v245);
    v166 = v160;
    __chkstk_darwin(v114);
    v116 = (v160 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v117 + 16))(v116);
    v118 = sub_10002D7F8(v241, v242);
    v164 = v160;
    __chkstk_darwin(v118);
    v120 = (v160 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v121 + 16))(v120);
    v122 = sub_10002D7F8(v238, v239);
    v162 = v160;
    __chkstk_darwin(v122);
    v124 = (v160 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v125 + 16))(v124);
    v126 = sub_10002D7F8(v235, v236);
    v160[3] = v160;
    __chkstk_darwin(v126);
    v128 = (v160 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v129 + 16))(v128);
    v130 = sub_10002D7F8(v232, v233);
    v160[2] = v160;
    __chkstk_darwin(v130);
    v132 = (v160 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v133 + 16))(v132);
    v134 = sub_10002D7F8(v229, v230);
    v160[1] = v160;
    __chkstk_darwin(v134);
    v136 = (v160 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v137 + 16))(v136);
    v138 = sub_10002D7F8(v226, v227);
    v160[0] = v160;
    __chkstk_darwin(v138);
    v140 = (v160 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v141 + 16))(v140);
    v77[5] = v181;
    v77[6] = &off_100C65D38;
    v77[10] = v206;
    v77[11] = &off_100C74D80;
    v77[15] = v204;
    v77[16] = &off_100C68310;
    v77[20] = v203;
    v77[21] = &off_100C6A7F8;
    v77[25] = v202;
    v77[26] = &off_100C662B8;
    v77[35] = v201;
    v77[36] = &off_100C65550;
    v77[40] = v199;
    v77[41] = &off_100C5C230;
    v77[45] = v196;
    v77[46] = &off_100C75210;
    v77[50] = v194;
    v77[51] = &off_100C4A0C8;
    v77[55] = v192;
    v77[56] = &off_100C751D8;
    v77[30] = v190;
    v77[31] = &off_100C69CF0;
    v77[60] = v188;
    v77[61] = &off_100C50AD8;
    v77[65] = v186;
    v77[66] = &off_100C513B8;
    v142 = *v180;
    v143 = *v178;
    v144 = *v176;
    v145 = *v174;
    v146 = *v173;
    v147 = *v171;
    v148 = *v169;
    v149 = *v167;
    v150 = *v165;
    v151 = *v163;
    v152 = *v161;
    v153 = *v116;
    v154 = *v120;
    v155 = *v124;
    v156 = *v128;
    v157 = *v132;
    v158 = *v136;
    v159 = *v140;
    v77[2] = *v183;
    v77[7] = v142;
    v77[12] = v143;
    v77[17] = v144;
    v77[22] = v145;
    v77[32] = v146;
    v77[37] = v147;
    v77[42] = v148;
    v77[47] = v149;
    v77[52] = v150;
    v77[27] = v151;
    v77[57] = v152;
    v77[62] = v153;
    v77[70] = v200;
    v77[71] = &off_100C55510;
    v77[67] = v154;
    v77[75] = v197;
    v77[76] = &off_100C77CF0;
    v77[72] = v155;
    v77[80] = v195;
    v77[81] = &off_100C69B08;
    v77[77] = v156;
    v77[85] = v193;
    v77[86] = &off_100C696D8;
    v77[82] = v157;
    v77[90] = v191;
    v77[91] = &off_100C709B8;
    v77[87] = v158;
    v77[95] = v189;
    v77[96] = &off_100C75968;
    v77[92] = v159;
    sub_100006F14(v226);
    sub_100006F14(v229);
    sub_100006F14(v232);
    sub_100006F14(v235);
    sub_100006F14(v238);
    sub_100006F14(v241);
    sub_100006F14(v244);
    sub_100006F14(v247);
    sub_100006F14(v250);
    sub_100006F14(v253);
    sub_100006F14(v256);
    sub_100006F14(v259);
    sub_100006F14(v262);
    sub_100006F14(v265);
    sub_100006F14(v268);
    sub_100006F14(v271);
    sub_100006F14(v274);
    sub_100006F14(v277);
    sub_100006F14(v280);
    sub_100006F14(v281);
    sub_100006F14(v283);
    sub_100006F14(v285);
    sub_100006F14(v287);
    sub_100006F14(v289);
    sub_100006F14(v291);
    sub_100006F14(v293);
    sub_100006F14(v295);
    sub_100006F14(v297);
    sub_100006F14(v299);
    sub_100006F14(v301);
    sub_100006F14(v303);
    sub_100006F14(v305);
    sub_100006F14(v307);
    sub_100006F14(v309);
    sub_100006F14(v311);
    sub_100006F14(v313);
    sub_100006F14(v315);
    sub_100006F14(v317);
    return v77;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1006B4D9C(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for MainReducer();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;

  sub_100040028();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_100040028();
    v7 = v12;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = sub_1000518F4;
  *(v9 + 40) = v5;

  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    goto LABEL_9;
  }

  v10 = *(v7 + 16);
  if (v10 >= *(v7 + 24) >> 1)
  {
    sub_100040028();
    v7 = v13;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = sub_10005284C;
  *(v11 + 40) = 0;
  *a2 = v7;
}

uint64_t sub_1006B4F0C(void *a1)
{
  sub_10022C350(&qword_100CD1858);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    sub_100036520(sub_1006BA530, v4);

    sub_100036520(sub_1006BA538, 0);
    sub_100036520(sub_1006BA560, 0);
    sub_100036520(sub_1006BA588, 0);
    sub_100036520(sub_1006BA5B0, 0);
    sub_100036520(sub_1006BA5D8, 0);
    sub_100036520(sub_1006BA600, 0);
    sub_100036520(sub_1006BA628, 0);
    sub_100036520(sub_1006BA650, 0);
    return v2;
  }

  return result;
}

uint64_t sub_1006B50D4()
{
  sub_10022C350(&qword_100CD1858);
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100036520(sub_1006BA4B8, 0);
  sub_100036520(sub_1006BA4E0, 0);
  sub_100036520(sub_1006BA508, 0);
  return v0;
}

uint64_t sub_1006B51DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v4 = type metadata accessor for LocationAuthorizationReducer();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v30[3] = v4;
  v30[4] = &off_100C542F0;
  v30[0] = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1898);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v25)
  {
    v6 = sub_10002D7F8(v30, v4);
    __chkstk_darwin(v6);
    v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v8);
    v10 = sub_10002D7F8(v28, v29);
    __chkstk_darwin(v10);
    v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v13 + 16))(v12);
    v14 = sub_10002D7F8(v26, v27);
    __chkstk_darwin(v14);
    v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v17 + 16))(v16);
    v18 = sub_10002D7F8(v24, v25);
    __chkstk_darwin(v18);
    v20 = &v24[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v21 + 16))(v20);
    v22 = sub_10003E2EC(*v8, *v12, *v16, *v20);
    sub_100006F14(v24);
    sub_100006F14(v26);
    sub_100006F14(v28);
    sub_100006F14(v30);
    result = type metadata accessor for EnvironmentReducer();
    a2[3] = result;
    a2[4] = &off_100C6A7F8;
    *a2 = v22;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B564C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for LocationsReducer();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C662B8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B5778@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4438);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFC8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v24)
  {
    v5 = sub_10002D7F8(v29, v30);
    __chkstk_darwin(v5);
    v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v8 + 16))(v7);
    v9 = sub_10002D7F8(v27, v28);
    __chkstk_darwin(v9);
    v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v25, v26);
    __chkstk_darwin(v13);
    v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = sub_10002D7F8(v23, v24);
    __chkstk_darwin(v17);
    v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v20 + 16))(v19);
    v21 = sub_10003EF70(*v7, *v11, *v15, *v19);
    sub_100006F14(v23);
    sub_100006F14(v25);
    sub_100006F14(v27);
    sub_100006F14(v29);
    result = type metadata accessor for ViewStateReducer();
    a2[3] = result;
    a2[4] = &off_100C5C230;
    *a2 = v21;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B5BB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA6F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1978);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0348);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1438);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v24)
  {
    v5 = sub_10002D7F8(v29, v30);
    __chkstk_darwin(v5);
    v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v8 + 16))(v7);
    v9 = sub_10002D7F8(v27, v28);
    __chkstk_darwin(v9);
    v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v25, v26);
    __chkstk_darwin(v13);
    v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = sub_10002D7F8(v23, v24);
    __chkstk_darwin(v17);
    v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v20 + 16))(v19);
    v21 = sub_100034B18(*v7, *v11, *v15, *v19);
    sub_100006F14(v23);
    sub_100006F14(v25);
    sub_100006F14(v27);
    sub_100006F14(v29);
    result = type metadata accessor for ModalViewStateReducer();
    a2[3] = result;
    a2[4] = &off_100C75210;
    *a2 = v21;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B6068@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1006B60B8(void *a1)
{
  v2 = type metadata accessor for WeatherServiceCaching();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD1950);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1960);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v23;
  if (v23 >= 2)
  {
    swift_getObjectType();
    dispatch thunk of AutomationWeatherDataManagerType.setupStubData()();
    sub_100040910(v6);
  }

  type metadata accessor for WeatherAQIScaleCacheManager();
  static WeatherAQIScaleCacheManager.shared.getter();
  sub_1000161C0(a1, a1[3]);
  v7 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v23 == 2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v23)
  {
    static WeatherServiceCaching.disabled.getter();
  }

  else
  {
    static WeatherServiceCaching.enabled.getter();
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1968);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v9 = v24;
  if (!v24)
  {
    goto LABEL_15;
  }

  v10 = sub_1000161C0(&v23, v24);
  v22[3] = v9;
  v11 = sub_100042FB0(v22);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v12 = v21;
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = sub_1000161C0(v20, v21);
  v19[3] = v12;
  v14 = sub_100042FB0(v19);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1970);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v17)
  {
    type metadata accessor for WeatherService();
    swift_allocObject();
    v15 = WeatherService.init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:serviceConfigurationProvider:)();
    sub_100006F14(v20);
    sub_100006F14(&v23);
    return v15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1006B64D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v201)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9570);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v200)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9578);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v198)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9580);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v196)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v194)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9588);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v192)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9590);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v190)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9598);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v188)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v186)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v184)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE38);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v182)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v145 = v202;
  v146 = v201;
  v147 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v180)
  {
    v5 = sub_10002D7F8(v199, v200);
    v144 = v109;
    __chkstk_darwin(v5);
    v7 = (v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = sub_10002D7F8(v197, v198);
    v143 = v109;
    __chkstk_darwin(v9);
    v11 = (v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10002D7F8(v195, v196);
    v142 = v109;
    __chkstk_darwin(v13);
    v15 = (v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_10002D7F8(v193, v194);
    v141 = v109;
    __chkstk_darwin(v17);
    v133 = (v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))();
    v20 = sub_10002D7F8(v191, v192);
    v140 = v109;
    __chkstk_darwin(v20);
    v22 = (v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_10002D7F8(v189, v190);
    v139 = v109;
    __chkstk_darwin(v24);
    v132 = (v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = sub_10002D7F8(v187, v188);
    v138 = v109;
    __chkstk_darwin(v27);
    v131 = (v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))();
    v30 = sub_10002D7F8(v185, v186);
    v137 = v109;
    __chkstk_darwin(v30);
    v32 = (v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = sub_10002D7F8(v183, v184);
    v136 = v109;
    __chkstk_darwin(v34);
    v36 = (v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = sub_10002D7F8(v181, v182);
    v135 = v109;
    __chkstk_darwin(v38);
    v40 = (v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40);
    v42 = sub_10002D7F8(v179, v180);
    v134 = v109;
    __chkstk_darwin(v42);
    v44 = (v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = *v7;
    v47 = *v11;
    v48 = *v15;
    v49 = *v133;
    v50 = *v22;
    v51 = *v131;
    v126 = *v132;
    v127 = v51;
    v52 = *v32;
    v53 = *v36;
    v133 = *v40;
    v54 = *v44;
    v55 = type metadata accessor for DailyForecastComponentViewModelFactory();
    v178[4] = &off_100C54B68;
    v178[3] = v55;
    v178[0] = v46;
    v130 = type metadata accessor for FeelsLikeComponentViewModelFactory();
    v177 = &off_100C75070;
    v176 = v130;
    v175[0] = v47;
    v132 = type metadata accessor for HourlyForecastComponentViewModelFactory();
    v174 = &off_100C5BDA8;
    v173 = v132;
    v172[0] = v48;
    v131 = type metadata accessor for ListViewModelFactory();
    v171 = &off_100C5CAC0;
    v170 = v131;
    v169[0] = v49;
    v129 = type metadata accessor for PrecipitationTotalComponentViewModelFactory();
    v168 = &off_100C68500;
    v167 = v129;
    v166[0] = v50;
    v128 = type metadata accessor for UVIndexComponentViewModelFactory();
    v165 = &off_100C6CA98;
    v164 = v128;
    v163[0] = v126;
    v126 = type metadata accessor for VisibilityComponentViewModelFactory();
    v162 = &off_100C69B38;
    v161 = v126;
    v160[0] = v127;
    v125 = type metadata accessor for PressureComponentViewModelFactory();
    v158 = v125;
    v159 = &off_100C79900;
    v157[0] = v52;
    v124 = type metadata accessor for WindComponentViewModelFactory();
    v155 = v124;
    v156 = &off_100C64E68;
    v154[0] = v53;
    v123 = type metadata accessor for WeatherConditionBackgroundModelInputFactory();
    v152 = v123;
    v153 = &off_100C74B00;
    v151[0] = v133;
    v122 = type metadata accessor for LocationViewModelFactory();
    v149 = v122;
    v150 = &off_100C719A8;
    v148[0] = v54;
    v133 = type metadata accessor for WeatherDataPreprocessor();
    v56 = swift_allocObject();
    v57 = sub_10002D7F8(v178, v55);
    v127 = v109;
    v117 = v55;
    __chkstk_darwin(v57);
    v119 = (v109 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))();
    v60 = sub_10002D7F8(v175, v176);
    v121 = v109;
    __chkstk_darwin(v60);
    v116 = v109 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))();
    v63 = sub_10002D7F8(v172, v173);
    v120 = v109;
    __chkstk_darwin(v63);
    v114 = (v109 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))();
    v66 = sub_10002D7F8(v169, v170);
    v118 = v109;
    __chkstk_darwin(v66);
    v112 = (v109 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))();
    v69 = sub_10002D7F8(v166, v167);
    v115 = v109;
    __chkstk_darwin(v69);
    v110 = (v109 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))();
    v72 = sub_10002D7F8(v163, v164);
    v113 = v109;
    __chkstk_darwin(v72);
    v74 = (v109 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    v76 = sub_10002D7F8(v160, v161);
    v111 = v109;
    __chkstk_darwin(v76);
    v78 = (v109 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78);
    v80 = sub_10002D7F8(v157, v158);
    v109[2] = v109;
    __chkstk_darwin(v80);
    v82 = (v109 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))(v82);
    v84 = sub_10002D7F8(v154, v155);
    v109[1] = v109;
    __chkstk_darwin(v84);
    v86 = (v109 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v86);
    v88 = sub_10002D7F8(v151, v152);
    v109[0] = v109;
    __chkstk_darwin(v88);
    v90 = (v109 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90);
    v92 = sub_10002D7F8(v148, v149);
    __chkstk_darwin(v92);
    v94 = (v109 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94);
    v96 = v116;
    v56[7] = v117;
    v56[8] = &off_100C54B68;
    v56[12] = v130;
    v56[13] = &off_100C75070;
    v97 = *v96;
    v98 = *v114;
    v99 = *v112;
    v100 = *v110;
    v101 = *v74;
    v102 = *v78;
    v103 = *v82;
    v104 = *v86;
    v105 = *v90;
    v106 = *v94;
    v56[4] = *v119;
    v56[9] = v97;
    v56[17] = v132;
    v56[18] = &off_100C5BDA8;
    v56[14] = v98;
    v56[22] = v131;
    v56[23] = &off_100C5CAC0;
    v56[19] = v99;
    v56[27] = v129;
    v56[28] = &off_100C68500;
    v56[24] = v100;
    v56[32] = v128;
    v56[33] = &off_100C6CA98;
    v56[29] = v101;
    v56[37] = v126;
    v56[38] = &off_100C69B38;
    v56[34] = v102;
    v56[42] = v125;
    v56[43] = &off_100C79900;
    v56[39] = v103;
    v56[47] = v124;
    v56[48] = &off_100C64E68;
    v56[44] = v104;
    v56[52] = v123;
    v56[53] = &off_100C74B00;
    v56[49] = v105;
    v56[57] = v122;
    v56[58] = &off_100C719A8;
    v56[54] = v106;
    v107 = v145;
    v56[2] = v146;
    v56[3] = v107;
    sub_100006F14(v148);
    sub_100006F14(v151);
    sub_100006F14(v154);
    sub_100006F14(v157);
    sub_100006F14(v160);
    sub_100006F14(v163);
    sub_100006F14(v166);
    sub_100006F14(v169);
    sub_100006F14(v172);
    sub_100006F14(v175);
    sub_100006F14(v178);
    sub_100006F14(v179);
    sub_100006F14(v181);
    sub_100006F14(v183);
    sub_100006F14(v185);
    sub_100006F14(v187);
    sub_100006F14(v189);
    sub_100006F14(v191);
    sub_100006F14(v193);
    sub_100006F14(v195);
    sub_100006F14(v197);
    result = sub_100006F14(v199);
    v108 = v147;
    v147[3] = v133;
    v108[4] = &off_100C6A0D0;
    *v108 = v56;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1006B7AC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndpointConfiguration();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v21 = type metadata accessor for AppConfiguration();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherEnvironment.contentEnvironment.getter();
  SettingReader.read<A>(_:)();

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v26)
  {
    sub_100013188(&v25, v27);
    sub_1000161C0(v27, v27[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.endpointConfig(for:)();
    v14 = EndpointConfiguration.useDynamicPortForWeatherData.getter();
    EndpointConfiguration.weatherDataURL.getter();
    if (v14)
    {
      v15 = v20;
      v16 = v23;
      (*(v5 + 16))(v20, v9, v23);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      (*(v5 + 32))(v18 + v17, v15, v16);
      WDSEndpoint.init(url:portOverrideProvider:)();
    }

    else
    {
      WDSEndpoint.init(url:)();
      v16 = v23;
    }

    (*(v5 + 8))(v9, v16);
    (*(v10 + 8))(v12, v21);
    return sub_100006F14(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B7E24(uint64_t a1)
{
  v24 = a1;
  v25 = type metadata accessor for Logger();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB5478);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  type metadata accessor for MockServer();
  static MockServer.shared.getter();
  v14 = MockServer.listeningPort.getter();
  v16 = v15;

  if (v16)
  {
    EndpointConfiguration.weatherDataURL.getter();
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v5 + 8))(v7, v4);
    static Logger.automation.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get port from mock server", v19, 2u);
    }

    (*(v1 + 8))(v3, v25);
    sub_1000955E0(v13, v10, &qword_100CB5478);
    v20 = type metadata accessor for URLComponents();
    if (sub_100024D10(v10, 1, v20) == 1)
    {
      sub_1000180EC(v13, &qword_100CB5478);
      sub_1000180EC(v10, &qword_100CB5478);
      return 0;
    }

    else
    {
      v14 = URLComponents.port.getter();
      v22 = v21;
      sub_1000180EC(v13, &qword_100CB5478);
      (*(*(v20 - 8) + 8))(v10, v20);
      if (v22)
      {
        return 0;
      }
    }
  }

  return v14;
}

uint64_t sub_1006B819C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GeocodeService();
  swift_allocObject();
  GeocodeService.init()();
  type metadata accessor for GeocodeManager();
  swift_allocObject();
  GeocodeManager.init(service:store:)();
  OptionsProvider = type metadata accessor for WeatherServiceFetchOptionsProvider();
  swift_allocObject();
  result = WeatherServiceFetchOptionsProvider.init(geocodeManager:)();
  a1[3] = OptionsProvider;
  a1[4] = &protocol witness table for WeatherServiceFetchOptionsProvider;
  *a1 = result;
  return result;
}

uint64_t sub_1006B825C()
{
  type metadata accessor for GeocodeStore();
  swift_allocObject();
  return GeocodeStore.init()();
}

uint64_t sub_1006B8294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1958);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for WDSAuthenticatorFactory();
    swift_allocObject();
    result = WDSAuthenticatorFactory.init(clientConfigurationProvider:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B833C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for WDSEndpoint();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CD1950);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WDSEndpoint();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    sub_100013188(&v19, v21);
    sub_1000161C0(a1, a1[3]);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    result = sub_100024D10(v9, 1, v10);
    if (result != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      WDSEndpoint.url.getter();
      WDSEndpoint.portOverrideProvider.getter();
      WDSEndpoint.init(url:portOverrideProvider:)();
      sub_1000161C0(v21, v21[3]);
      dispatch thunk of WDSAuthenticatorFactoryType.makeAuthenticator(for:)();
      (*(v16 + 8))(v6, v17);
      (*(v11 + 8))(v13, v10);
      return sub_100006F14(v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B864C()
{
  sub_10022C350(&qword_100CD18F8);
  v0 = swift_allocObject();
  Logger.init(subsystem:category:)();
  return v0;
}

void *sub_1006B86C4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for NotificationsStoreObserver();
    swift_allocObject();
    return sub_1000430B4(&v9, &v7, &v5, &v3);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B883C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9788);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1938);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0360);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1940);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v3 = sub_10002D7F8(v14, v15);
    __chkstk_darwin(v3);
    v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = sub_1006BA2B4(*v5, &v12, &v10, &v8);
    sub_100006F14(v14);
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B8A4C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1930);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v3 != 2)
  {
    type metadata accessor for ReverseGeocodingStoreObserver();
    swift_allocObject();
    return sub_1000451C8(v8, v9, v10, v11, &v6, &v4, v3 & 1);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B8BF8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1928);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CBE208);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v18)
    {
      v3 = sub_10002D7F8(v19, v20);
      __chkstk_darwin(v3);
      v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = *v5;
      v8 = type metadata accessor for AppStoreReviewManager();
      v16[3] = v8;
      v16[4] = &off_100C5A380;
      v16[0] = v7;
      type metadata accessor for SavedLocationsStoreObserver();
      v9 = swift_allocObject();
      v10 = sub_10002D7F8(v16, v8);
      __chkstk_darwin(v10);
      v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v9[7] = v8;
      v9[8] = &off_100C5A380;
      v9[3] = 0;
      v9[4] = v14;
      v9[2] = 0;
      sub_100013188(&v17, (v9 + 9));
      sub_100006F14(v16);
      sub_100006F14(v19);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B8E60(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1918);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v4 = sub_10002D7F8(v11, v12);
    __chkstk_darwin(v4);
    v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = sub_10009BAB4(v3, *v6, &v9);
    sub_100006F14(v11);
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B9058(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(a2);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v11)
  {
    a4(0);
    v9 = swift_allocObject();
    a5(v10, v9 + 16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9114(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for WidgetReloadStoreObserver();
    swift_allocObject();
    return sub_100048084(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B91BC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for TipCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    type metadata accessor for LocationViewerStoreObserver();
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier;
    v5 = type metadata accessor for Location.Identifier();
    sub_10001B350(v3 + v4, 1, 1, v5);
    *(v3 + 16) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9258(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v34)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB9798);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v32)
    {
      v3 = sub_10002D7F8(v33, v34);
      v26[2] = v26;
      __chkstk_darwin(v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = sub_10002D7F8(v31, v32);
      v26[1] = v26;
      __chkstk_darwin(v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for AppContinuationBridge();
      v30[3] = v13;
      v30[4] = &off_100C50230;
      v30[0] = v11;
      v14 = type metadata accessor for LocationFinder();
      v28 = v14;
      v29 = &off_100C5EE88;
      v27[0] = v12;
      type metadata accessor for OpenL2HandlerObserver();
      v15 = swift_allocObject();
      v16 = sub_10002D7F8(v30, v13);
      __chkstk_darwin(v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = sub_10002D7F8(v27, v28);
      __chkstk_darwin(v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_100C50230;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_100C5EE88;
      v15[7] = v25;
      sub_100006F14(v27);
      sub_100006F14(v30);
      sub_100006F14(v31);
      sub_100006F14(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B9654(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC6D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v2 = sub_10002D7F8(v15, v16);
    __chkstk_darwin(v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for InteractionDonationManager();
    v14[3] = v7;
    v14[4] = &off_100C5ECE0;
    v14[0] = v6;
    type metadata accessor for InteractionDonationStoreObserver();
    v8 = swift_allocObject();
    v9 = sub_10002D7F8(v14, v7);
    __chkstk_darwin(v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_100C5ECE0;
    v8[2] = v13;
    sub_100006F14(v14);
    sub_100006F14(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B985C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v22;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v19;
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v7 = type metadata accessor for WeatherConditionBackgroundStoreObserver();
    ObjectType = swift_getObjectType();
    v9 = swift_getObjectType();
    v10 = sub_10002D7F8(v17, v18);
    __chkstk_darwin(v10);
    v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v13 + 16))(v12);
    v14 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
    v15 = sub_100048AFC(v3, v5, v12, v7, ObjectType, v14, v9, v4, &off_100C58978, v6);
    sub_100006F14(v17);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B9AAC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for TimeStoreObserver();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B9B64(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for WeatherDataDebounceMiddleware();
    swift_allocObject();
    return sub_10004C028(v2, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9C2C(void *a1, void (*a2)(void), void (*a3)(uint64_t))
{
  v5 = sub_1000161C0(a1, a1[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = sub_1000038D8();
    a3(v7);
    result = swift_allocObject();
    *(result + 16) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9CB4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for ShortcutItemUpdater();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v3;
    *(result + 40) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9D4C()
{
  type metadata accessor for UnitManagerMiddleware();

  return swift_allocObject();
}

uint64_t sub_1006B9DA4(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    return 1;
  }

  v1 = a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D061C();

    v1 = v2;
  }

  *(v1 + 24) = 2;
  return v1;
}

uint64_t sub_1006B9E0C(uint64_t a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D061C();

    a1 = v2;
  }

  *(a1 + 16) = &_swiftEmptySetSingleton;

  return a1;
}

uint64_t sub_1006B9E6C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v4 - 8);
  sub_1000281F0();
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  v8 = qword_100CE80C8;
  swift_beginAccess();
  sub_1000955E0(v1 + v8, v7, &qword_100CB3AB0);
  v9 = type metadata accessor for URL();
  if (sub_100024D10(v7, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a1, v7, v9);
  }

  sub_1000180EC(v7, &qword_100CB3AB0);
  sub_10095DB8C();
  (*(*(v9 - 8) + 16))(v2, a1, v9);
  sub_10001B350(v2, 0, 1, v9);
  swift_beginAccess();
  sub_100035B94(v2, v1 + v8, &qword_100CB3AB0);
  return swift_endAccess();
}

uint64_t sub_1006BA03C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1006BA0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  sub_100007FD0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000281F0();
  v12 = __chkstk_darwin(v11);
  v14 = v17 - v13;
  v15 = *(v9 + 16);
  v15(v17 - v13, v12);
  v17[4] = v5;
  v17[5] = v6;
  v17[6] = v7;
  swift_getKeyPath();
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  swift_getKeyPath();
  (v15)(v4, v14, v5);

  static Published.subscript.setter();
  return (*(v9 + 8))(v14, v5);
}

uint64_t sub_1006BA254(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_100047F80();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1006B9E04(*a1, a2, *a3);
  *a4 = result;
  return result;
}

void *sub_1006BA2B4(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = type metadata accessor for LocationViewDescriptor();
  v17[3] = v8;
  v17[4] = &off_100C76318;
  v17[0] = a1;
  type metadata accessor for NotificationsOptInStoreObserver();
  v9 = swift_allocObject();
  v10 = sub_10002D7F8(v17, v8);
  __chkstk_darwin(v10);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v9[7] = v8;
  v9[8] = &off_100C76318;
  v9[3] = 0;
  v9[4] = v14;
  v9[2] = 0;
  sub_10022C350(&qword_100CD1948);
  swift_allocObject();
  v9[24] = OnlyOnceDeferredPromise.init()();
  swift_allocObject();
  v9[25] = OnlyOnceDeferredPromise.init()();
  sub_100013188(a2, (v9 + 9));
  sub_100013188(a3, (v9 + 14));
  sub_100013188(a4, (v9 + 19));
  sub_100006F14(v17);
  return v9;
}

uint64_t sub_1006BA454()
{
  v1 = *(type metadata accessor for EndpointConfiguration() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006B7E24(v2);
}

uint64_t sub_1006BA4B8(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9E64(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA4E0(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9E0C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA508(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9E08(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA538(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9DA4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA560(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9DA0(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA588(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D9C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA5B0(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D98(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA5D8(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D94(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA600(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D90(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA628(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D8C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA650(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D88(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA6E8()
{

  return swift_deallocObject();
}

uint64_t sub_1006BA734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainStateProcessingContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BA798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD1998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006BA808(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1006BA820@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a1 & 0xFE) == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1 ^ 1;
  }

  if ((a1 & 0xFE) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = (a1 >> 8) & 0xFF00 | (((a1 >> 8) & 1) << 16);
  }

  v12 = sub_1003199B0(v11 | v10 & 1u);
  v31 = v13;
  v32 = v12;
  v30 = v14;
  v29 = sub_1003198A0(v11 | v10 & 1u);
  v16 = v15;
  v17 = v11 | v10 & 1;
  if (*(v6 + 16) == 1)
  {
    v18 = sub_100319B28(v17);
  }

  else
  {
    v18 = sub_100319C5C(v17);
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_100319A18(v11 | v10 & 1u);
  v24 = v23;
  v25 = *(v6 + 17);
  if (v10)
  {
    v26 = 40.0;
  }

  else
  {
    v26 = 33.0;
  }

  v27 = *(type metadata accessor for TipView(0) + 32);
  *(a6 + v27) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *(a6 + 32) = v32;
  *(a6 + 40) = v31;
  *(a6 + 48) = v30;
  *(a6 + 56) = v29;
  *(a6 + 64) = v16;
  *(a6 + 72) = v20;
  *(a6 + 80) = v21;
  *(a6 + 88) = v22;
  *(a6 + 96) = v24;
  *a6 = v25;
  *(a6 + 8) = v26;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 104) = a2;
  *(a6 + 112) = a3;
  *(a6 + 120) = a4;
  *(a6 + 128) = a5;
}

unint64_t sub_1006BA9F0()
{
  result = qword_100CD1AA8;
  if (!qword_100CD1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1AA8);
  }

  return result;
}

uint64_t sub_1006BAA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1006BAAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1006BAAFC(void *a1)
{
  v2 = sub_10022C350(&qword_100CD1AC0);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1006BAF78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

Swift::Int sub_1006BAC34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006BAC84(void *a1)
{
  v3 = sub_10022C350(&qword_100CD1AB0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1006BAF78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100006F14(a1);
  return v9;
}

uint64_t sub_1006BADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006BAA44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1006BAE04(uint64_t a1)
{
  v2 = sub_1006BAF78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006BAE40(uint64_t a1)
{
  v2 = sub_1006BAF78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006BAE7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10077ED50();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1006BAEC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006BAC84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_1006BAF30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1006BAF78()
{
  result = qword_100CD1AB8;
  if (!qword_100CD1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1AB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionsChartID.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1006BB07C()
{
  result = qword_100CD1AC8;
  if (!qword_100CD1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1AC8);
  }

  return result;
}

unint64_t sub_1006BB0D4()
{
  result = qword_100CD1AD0;
  if (!qword_100CD1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1AD0);
  }

  return result;
}

unint64_t sub_1006BB12C()
{
  result = qword_100CD1AD8;
  if (!qword_100CD1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1AD8);
  }

  return result;
}

uint64_t type metadata accessor for DetailViewVisibilityTrackerModel()
{
  result = qword_100CD1B38;
  if (!qword_100CD1B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006BB1F4()
{
  result = type metadata accessor for DetailType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DetailViewOrigin();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1006BB290(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentAction();
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C5794(a1, v4);
  LOBYTE(a1) = v4[*(sub_10022C350(&qword_100CA6680) + 48)];
  (*(v6 + 32))(v8, v4, v5);
  if ((a1 & 1) == 0)
  {
    v9 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1006BB524();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openURL:v12 options:isa completionHandler:0];
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006BB49C(uint64_t a1, uint64_t a2)
{
  if ((sub_100747474(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailViewVisibilityTrackerModel();
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return sub_1007474BC(a1 + v5, a2 + v5);
}

unint64_t sub_1006BB524()
{
  result = qword_100CA3040;
  if (!qword_100CA3040)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3040);
  }

  return result;
}

uint64_t sub_1006BB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for LocationViewModel();
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v78 - v15;
  __chkstk_darwin(v17);
  v19 = v78 - v18;
  v20 = sub_10001082C();
  sub_10015CDC4(v20, a4, v21);
  v22 = type metadata accessor for LocationDynamicContentConfiguration();
  sub_100006514();
  v86 = a2;
  sub_10015CDC4(a2, a4 + v23, v24);
  v84 = v22;
  memcpy((a4 + *(v22 + 24)), a3, 0x48uLL);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000703C(v25, qword_100D90A90);
  sub_100008CB0();
  sub_10015CDC4(a1, v19, v27);
  sub_10015CDC4(a1, v16, v22);
  v83 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v79 = v10;
    v31 = v30;
    v32 = swift_slowAlloc();
    v81 = a4;
    v78[1] = v32;
    v88 = v32;
    *v31 = 141558787;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    Location.Identifier.name.getter();
    v80 = a3;
    v34 = v33;
    sub_100147BBC(v19, type metadata accessor for LocationViewModel);
    v35 = sub_100019CF4();
    v37 = sub_100078694(v35, v34, v36);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2082;
    if (v16[*(v85 + 64)])
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    sub_100147BBC(v16, type metadata accessor for LocationViewModel);
    v39 = sub_100019CF4();
    v41 = sub_100078694(v39, v38, v40);

    *(v31 + 24) = v41;
    *(v31 + 32) = 2082;
    a3 = v80;
    v87 = *(v80 + 49);
    sub_1006BBE20();
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = sub_100078694(v42, v43, &v88);

    *(v31 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. model.shouldShowAnyMap=%{public}s, mapPresentationStyle=%{public}s", v31, 0x2Au);
    swift_arrayDestroy();
    a4 = v81;
    sub_100003884();
    v10 = v79;
    sub_100003884();
  }

  else
  {

    sub_100008CB0();
    sub_100147BBC(v16, v45);
    sub_100147BBC(v19, v29);
  }

  v46 = sub_10001082C();
  sub_10015CDC4(v46, v13, v47);
  sub_100006514();
  sub_10015CDC4(v86, v10, v48);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v51 = 141558531;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    Location.Identifier.name.getter();
    v52 = v10;
    v54 = v53;
    sub_10001CAA4();
    sub_100147BBC(v55, v56);
    v57 = sub_100019CF4();
    v59 = sub_100078694(v57, v54, v58);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2082;
    sub_1006BBDC8();
    ShortDescribable.description.getter();
    v61 = v60;
    sub_10001F558();
    sub_100147BBC(v52, v62);
    v63 = sub_100019CF4();
    v65 = sub_100078694(v63, v61, v64);

    *(v51 + 24) = v65;
    _os_log_impl(&_mh_execute_header, v49, v50, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. displayMetrics=%{public}s", v51, 0x20u);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();
  }

  else
  {

    sub_10001F558();
    sub_100147BBC(v10, v66);
    sub_10001CAA4();
    sub_100147BBC(v13, v67);
  }

  v69 = v84;
  v68 = v85;
  if (*(a1 + *(v85 + 64)) == 1)
  {
    v70 = *(a3 + 49) == 3;
    *(a4 + *(v84 + 28)) = v70;
  }

  else
  {
    v70 = 0;
    *(a4 + *(v84 + 28)) = 0;
  }

  v71 = *(a1 + *(v68 + 96));
  if (v71 == 25)
  {
    if (v70)
    {
      v72 = 256;
    }

    else
    {
      v72 = 0;
    }

    v73 = sub_100499598(v72 | *(a3 + 48), *(a1 + *(v68 + 32)));
  }

  else
  {
    v73 = sub_10030AFA4(*(a3 + 48), v70, v71);
  }

  v74 = v73;
  sub_10001F558();
  sub_100147BBC(v86, v75);
  sub_10001CAA4();
  result = sub_100147BBC(a1, v76);
  *(a4 + *(v69 + 32)) = v74;
  return result;
}

uint64_t sub_1006BBB58(uint64_t a1, uint64_t a2)
{
  if ((sub_100163AEC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocationDynamicContentConfiguration();
  if ((sub_1000BB930(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  memcpy(v10, (a1 + v4[6]), sizeof(v10));
  memcpy(__dst, (a2 + v4[6]), sizeof(__dst));
  if (!sub_1001309B8(v10, __dst) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (v8)
    {

      v9 = sub_1009E9A44(v7, v8);

      if (v9)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for LocationDynamicContentConfiguration()
{
  result = qword_100CD1BD0;
  if (!qword_100CD1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BBCC4()
{
  type metadata accessor for LocationViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics();
    if (v1 <= 0x3F)
    {
      sub_1006BBD78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1006BBD78()
{
  if (!qword_100CD1BE0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD1BE0);
    }
  }
}

unint64_t sub_1006BBDC8()
{
  result = qword_100CD1C20;
  if (!qword_100CD1C20)
  {
    type metadata accessor for DisplayMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1C20);
  }

  return result;
}

unint64_t sub_1006BBE20()
{
  result = qword_100CD1C28;
  if (!qword_100CD1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1C28);
  }

  return result;
}

uint64_t sub_1006BBE74()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  *(v3 - v2) = 0;
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v6, v5);
  sub_1000E17D8(v8);
  return sub_1000547B8(v4);
}

uint64_t sub_1006BBF4C(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v8 = type metadata accessor for ConfiguredUnit();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v18 = *(v4 + 16);
  sub_100035AD0(a1, v12, a2);
  (*(v9 + 104))(v12, *a4, v8);
  (*(v9 + 32))(v16, v12, v8);
  type metadata accessor for ConfiguredUnitsAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_10004F034(v16, v19, v18);
  sub_1000E17D8(v19);
  return sub_1000547B8(v16);
}

uint64_t sub_1006BC168()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for ConfiguredUnitsAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v6, v5);
  sub_1000E17D8(v8);
  return sub_1000547B8(v4);
}

uint64_t sub_1006BC25C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D00);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for AveragesDetailInteractor();
      v21[3] = v12;
      v21[4] = &off_100C63F48;
      v21[0] = v11;
      v13 = type metadata accessor for AveragesDetailModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C63F48;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C5BD98;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BC4D8()
{
  sub_10022C350(&qword_100CD1D68);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D70);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D78);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D80);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D88);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D90);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DA0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DA8);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DB0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DB8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DC0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DC8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DD0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DE8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DF0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DF8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9678);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E00);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E08);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E10);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D00);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1006BCB38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for AveragesDetailTracker;
      a2[4] = &off_100C636C8;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BCC30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v27;
  if (v27)
  {
    v23 = v28;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1D68);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v26)
    {
      v6 = sub_10002D7F8(v25, v26);
      v7 = __chkstk_darwin(v6);
      v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v24[3] = &type metadata for AveragesDetailTracker;
      v24[4] = &off_100C636C8;
      v11 = swift_allocObject();
      v24[0] = v11;
      v12 = v9[1];
      v11[1] = *v9;
      v11[2] = v12;
      v11[3] = v9[2];
      v13 = type metadata accessor for AveragesDetailInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v24, &type metadata for AveragesDetailTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v14[7] = &type metadata for AveragesDetailTracker;
      v14[8] = &off_100C636C8;
      v20 = swift_allocObject();
      v21 = v18[1];
      v20[1] = *v18;
      v20[2] = v21;
      v20[3] = v18[2];
      v14[2] = v5;
      v14[3] = v23;
      v14[4] = v20;
      sub_100006F14(v24);
      result = sub_100006F14(v25);
      a2[3] = v13;
      a2[4] = &off_100C63F48;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BCEF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v35)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1DA0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v33)
    {
      v5 = sub_10002D7F8(v34, v35);
      v29[2] = v29;
      v6 = __chkstk_darwin(v5);
      v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8, v6);
      v10 = sub_10002D7F8(v32, v33);
      v29[1] = v29;
      v11 = __chkstk_darwin(v10);
      v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      v31[3] = &type metadata for PrecipitationAveragesDetailInputFactory;
      v31[4] = &off_100C4F690;
      v31[0] = swift_allocObject();
      memcpy((v31[0] + 16), v8, 0x78uLL);
      v30[3] = &type metadata for TemperatureAveragesDetailInputFactory;
      v30[4] = &off_100C4DF08;
      v30[0] = swift_allocObject();
      memcpy((v30[0] + 16), v13, 0x78uLL);
      v15 = type metadata accessor for AveragesDetailInputFactory();
      v16 = swift_allocObject();
      v17 = sub_10002D7F8(v31, &type metadata for PrecipitationAveragesDetailInputFactory);
      v18 = __chkstk_darwin(v17);
      v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      v22 = sub_10002D7F8(v30, &type metadata for TemperatureAveragesDetailInputFactory);
      v23 = __chkstk_darwin(v22);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      v16[5] = &type metadata for PrecipitationAveragesDetailInputFactory;
      v16[6] = &off_100C4F690;
      v27 = swift_allocObject();
      v16[2] = v27;
      memcpy((v27 + 16), v20, 0x78uLL);
      v16[10] = &type metadata for TemperatureAveragesDetailInputFactory;
      v16[11] = &off_100C4DF08;
      v28 = swift_allocObject();
      v16[7] = v28;
      memcpy((v28 + 16), v25, 0x78uLL);
      sub_100006F14(v30);
      sub_100006F14(v31);
      sub_100006F14(v32);
      result = sub_100006F14(v34);
      a2[3] = v15;
      a2[4] = &off_100C58580;
      *a2 = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BD390@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D88);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationAveragesDetailInputFactory;
    a2[4] = &off_100C4F690;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v10, v5 + 16);
    sub_100013188(&v8, v5 + 56);
    return sub_100013188(&v6, v5 + 96);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006BD524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for TemperatureAveragesDetailInputFactory;
    a2[4] = &off_100C4DF08;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v10, v5 + 16);
    sub_100013188(&v8, v5 + 56);
    return sub_100013188(&v6, v5 + 96);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006BD6B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v35)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1DF0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v33)
    {
      v5 = sub_10002D7F8(v34, v35);
      v29[2] = v29;
      v6 = __chkstk_darwin(v5);
      v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8, v6);
      v10 = sub_10002D7F8(v32, v33);
      v29[1] = v29;
      v11 = __chkstk_darwin(v10);
      v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      v31[3] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
      v31[4] = &off_100C6AC00;
      v31[0] = swift_allocObject();
      memcpy((v31[0] + 16), v8, 0xC8uLL);
      v30[3] = &type metadata for TemperatureAveragesDetailViewModelFactory;
      v30[4] = &off_100C587E8;
      v30[0] = swift_allocObject();
      memcpy((v30[0] + 16), v13, 0xC8uLL);
      v15 = type metadata accessor for AveragesDetailViewModelFactory();
      v16 = swift_allocObject();
      v17 = sub_10002D7F8(v31, &type metadata for PrecipitationAveragesDetailViewModelFactory);
      v18 = __chkstk_darwin(v17);
      v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      v22 = sub_10002D7F8(v30, &type metadata for TemperatureAveragesDetailViewModelFactory);
      v23 = __chkstk_darwin(v22);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      v16[5] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
      v16[6] = &off_100C6AC00;
      v27 = swift_allocObject();
      v16[2] = v27;
      memcpy((v27 + 16), v20, 0xC8uLL);
      v16[10] = &type metadata for TemperatureAveragesDetailViewModelFactory;
      v16[11] = &off_100C587E8;
      v28 = swift_allocObject();
      v16[7] = v28;
      memcpy((v28 + 16), v25, 0xC8uLL);
      sub_100006F14(v30);
      sub_100006F14(v31);
      sub_100006F14(v32);
      result = sub_100006F14(v34);
      a2[3] = v15;
      a2[4] = &off_100C70328;
      *a2 = v16;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BDB54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
    a2[4] = &off_100C6AC00;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v14, v5 + 16);
    sub_100013188(&v12, v5 + 56);
    sub_100013188(&v10, v5 + 96);
    sub_100013188(&v8, v5 + 136);
    return sub_100013188(&v6, v5 + 176);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1006BDD60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UnitManager();
  result = static UnitManager.standard.getter();
  *a1 = result;
  a1[1] = &protocol witness table for UnitManager;
  return result;
}

uint64_t sub_1006BDD9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DC8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC9678);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v9)
    {
      a2[3] = &type metadata for PrecipitationAveragesHeroChartViewModelFactory;
      a2[4] = &off_100C4DD78;
      v7 = swift_allocObject();
      *a2 = v7;
      type metadata accessor for WeatherService();
      v7[9] = static WeatherService.statisticsPastDaysToFetch.getter();
      v7[2] = v5;
      v7[3] = v6;
      return sub_100013188(&v8, (v7 + 4));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006BDEDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for PrecipitationMonthlyAveragesChartViewModelFactory;
    a2[4] = &off_100C76F60;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BDFA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for TemperatureAveragesDetailViewModelFactory;
    a2[4] = &off_100C587E8;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v14, v5 + 16);
    sub_100013188(&v12, v5 + 56);
    sub_100013188(&v10, v5 + 96);
    sub_100013188(&v8, v5 + 136);
    return sub_100013188(&v6, v5 + 176);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1006BE1B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1930);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9678);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    a2[3] = &type metadata for TemperatureAveragesHeroChartViewModelFactory;
    a2[4] = &off_100C7B318;
    v6 = swift_allocObject();
    *a2 = v6;
    sub_100013188(&v9, v6 + 16);
    *(v6 + 56) = v5;
    return sub_100013188(&v7, v6 + 64);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006BE320@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for TemperatureMonthlyAveragesChartViewModelFactory;
    a2[4] = &off_100C49508;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BE3E8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for AveragesDetailInputFactory();
  v18 = &off_100C58580;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1006BE7FC;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for AveragesDetailViewModelFactory();
    v18 = &off_100C70328;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1006BE804;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10009F868;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1006BE80C;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA4D00);
    swift_allocObject();
    return sub_10024BB60(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v13, sub_1000E87D0, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006BE7A8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for AveragesDetailViewModel();

  return sub_10001B350(a2, 0, 1, v3);
}

uint64_t sub_1006BE814()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);

  return swift_deallocObject();
}

uint64_t type metadata accessor for MoonScrubberView()
{
  result = qword_100CD1E78;
  if (!qword_100CD1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BE8D4()
{
  sub_1006BE990();
  if (v0 <= 0x3F)
  {
    sub_1006BEA34();
    if (v1 <= 0x3F)
    {
      sub_1006BEA98();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MoonScrubberStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}