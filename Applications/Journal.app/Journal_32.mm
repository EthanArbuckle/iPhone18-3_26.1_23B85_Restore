uint64_t sub_10036250C(void (*a1)(_BYTE *, double, double), uint64_t (*a2)(Swift::Int, __n128, __n128), double a3, double a4)
{
  Hasher.init(_seed:)();
  a1(v12, a3, a4);
  v7 = Hasher._finalize()();
  v8.n128_f64[0] = a3;
  v9.n128_f64[0] = a4;

  return a2(v7, v8, v9);
}

unint64_t sub_10036259C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100362DD0(a1 & 1, v2);
}

unint64_t sub_100362608(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100362B34(a1, v4, &qword_100ADFEC8);
}

unint64_t sub_100362658(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001EA278();
  v2 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  Hasher._combine(_:)(*(a1 + *(v2 + 20)));
  v3 = Hasher._finalize()();

  return sub_100362E40(a1, v3);
}

unint64_t sub_1003626DC(uint64_t a1)
{
  type metadata accessor for Session.Kind();
  sub_10006F5AC(&qword_100ADFFA8, &type metadata accessor for Session.Kind);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003628C8(a1, v2, &type metadata accessor for Session.Kind, &qword_100ADFFB0, &type metadata accessor for Session.Kind, &protocol conformance descriptor for Session.Kind);
}

unint64_t sub_1003627B0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100362B34(a1, v4, &qword_100ADFF70);
}

unint64_t sub_100362800(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001F45C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100177B94(v8);
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

unint64_t sub_1003628C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_10006F5AC(v23, v24);
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

unint64_t sub_100362A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100362B34(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1000065A8(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100362C00(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100362C78(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          if (a1 == 2)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 3)
        {
          if (a1 == 3)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (!v7)
        {
          if (!a1)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v7 == 1)
        {
          if (a1 == 1)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      if (a1 >= 4)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
        if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
        {

          return v4;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100362DD0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100362E40(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100206C60(*(v2 + 48) + v12 * v10, v8);
      if (sub_1001ED0B4(v8, a1))
      {
        v13 = v8[*(v5 + 20)];
        sub_100364684(v8);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_100364684(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100362FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100AE0008);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100094E98(v5, v6);
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

unint64_t sub_1003630D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100AD8788);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, v13, &unk_100AD5810);
      result = sub_100361EDC(v13);
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
      result = sub_10002432C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10036320C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFF90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_10009D0BC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_1003632F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&unk_100ADFF60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_100361F20(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_10036340C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFFB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000517E0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100363528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFEA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &qword_100ADFEB0);
      v5 = v13;
      v6 = v14;
      result = sub_100094E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002432C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100363658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F24EC(&qword_100AF41A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = sub_1000B8DAC(v4);
  v6 = v16;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v6;
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v17 = *v8;
    v13 = v6;
    result = sub_1000B8DAC(v4);
    v8 = v12;
    v6 = v17;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100363770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&unk_100ADFF30);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100094E98(v5, v6);
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

unint64_t sub_1003638A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&unk_100ADFFD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &qword_100AD9358);
      v5 = v13;
      v6 = v14;
      result = sub_100094E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018480(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1003639DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&unk_100ADFFC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &qword_100AD9390);
      v5 = v13;
      v6 = v14;
      result = sub_100094E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018480(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_100363B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F24EC(&qword_100ADFFE0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10036259C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10036259C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100363C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFED0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100094E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100363D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFFE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &unk_100ADFFF0);
      v5 = v13;
      result = sub_1000517E0(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100363E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFE98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100094E98(v5, v6);
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

unint64_t sub_100363F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1000517E0(v6);
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

unint64_t sub_100364044(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADFF98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F24EC(&qword_100ADFFA0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000082B4(v9, v5, &qword_100ADFF98);
      result = sub_1003626DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Session.Kind();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for UserIDConfiguration();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
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

unint64_t sub_100364278(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000F24EC(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v14 = *i;

      result = sub_100094E98(v6, v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      *(v4[7] + 16 * result) = v14;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
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

unint64_t sub_100364380(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADFEB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000F24EC(&qword_100ADFEC0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000082B4(v9, v5, &qword_100ADFEB8);
      v11 = *v5;
      result = sub_100362608(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
      result = (*(*(Changes - 8) + 32))(v15 + *(*(Changes - 8) + 72) * v14, v5 + v8, Changes);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_100364568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFF78);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = sub_1003627B0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_100364684(uint64_t a1)
{
  v2 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003646E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100364728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_100364820(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicView;
  type metadata accessor for MediaAssetGridView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = type metadata accessor for FullScreenMusicCollectionViewCell();
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static UIView.Invalidating.subscript.setter();
  v12 = OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicView;
  v13 = *&v11[OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicView];
  v14 = v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v13[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v16 = v13;
LABEL_8:
    sub_1003B0D74();
    v13[v15] = 1;

    goto LABEL_9;
  }

  if (v14 > 3 && v14 > 6)
  {

    goto LABEL_9;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v18 = v13;

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v19 = *&v11[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v19 addSubview:{*&v11[v12], 0x3FF0000000000000, 0x3FF3333333333333}];
  v20 = *&v11[v12];
  sub_100013178(0.0);

  return v11;
}

void sub_100364B18()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicView);
}

id sub_100364B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMusicCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenMusicCollectionViewCell()
{
  result = qword_100AE0068;
  if (!qword_100AE0068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100364C80()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicView);
  v2 = v1;
  return v1;
}

void *sub_100364CB4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal33FullScreenMusicCollectionViewCell_musicAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100364CE8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v2);
  v4 = &v33 - v3;
  v5 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata;
  if (!*(a1 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
  {
    return 0;
  }

  sub_10025C98C(v10);

  v12 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v10, 1, v12))
  {
    sub_100004F84(v10, &qword_100AD50C0);
    return 0;
  }

  ThirdPartyMediaAssetMetadata.appBackgroundColor.getter();
  sub_100004F84(v10, &qword_100AD50C0);
  if (v38)
  {
    return 0;
  }

  v33 = v36;
  v15 = v37;
  v16 = objc_allocWithZone(UIColor);
  v17 = [v16 initWithRed:v33 green:v15 blue:1.0 alpha:?];
  if (!*(a1 + v11))
  {
    goto LABEL_9;
  }

  sub_10025C98C(v7);

  if (v13(v7, 1, v12))
  {
    sub_100004F84(v7, &qword_100AD50C0);
LABEL_9:
    v18 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = &selRef_systemWhiteColor;
    v20 = 0.13;
LABEL_10:
    v21 = [objc_opt_self() *v19];
    v22 = [v21 colorWithAlphaComponent:v20];

    v23 = sub_100417670(v22);
    v34 = 0;
    v35 = 0xE000000000000000;
    v24 = v23;
    _StringGuts.grow(_:)(20);

    v34 = 0xD000000000000011;
    v35 = 0x80000001008EAD00;
    v25 = sub_100417480();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 59;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);

    return v34;
  }

  ThirdPartyMediaAssetMetadata.colorVariant.getter();
  sub_100004F84(v7, &qword_100AD50C0);
  v30 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v31 = *(v30 - 8);
  v20 = 0.13;
  if ((*(v31 + 48))(v4, 1, v30) == 1)
  {
    goto LABEL_12;
  }

  v32 = (*(v31 + 88))(v4, v30);
  if (v32 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:))
  {
    v19 = &selRef_systemWhiteColor;
    v20 = 0.78;
    goto LABEL_10;
  }

  if (v32 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:))
  {
    v19 = &selRef_systemBlackColor;
    v20 = 0.6;
    goto LABEL_10;
  }

  if (v32 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:))
  {
LABEL_12:
    v19 = &selRef_systemWhiteColor;
    goto LABEL_10;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100365198(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  sub_1000082B4(a1, &v14 - v4, &qword_100AD6030);
  v6 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_9:
    v9 = 2;
    goto LABEL_10;
  }

  v8 = (*(v7 + 88))(v5, v6);
  if (v8 != enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:))
  {
    if (v8 != enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:) && v8 != enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:
  v11 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v9];
  v12 = [v1 resolvedColorWithTraitCollection:v11];

  return v12;
}

uint64_t sub_100365354(uint64_t a1, SEL *a2)
{
  v4 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v20[0] = 0x3A726F6C6F63;
  v20[1] = 0xE600000000000000;
  v10 = [objc_opt_self() *a2];
  if (*(a1 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
  {

    sub_10025C98C(v6);

    v11 = type metadata accessor for ThirdPartyMediaAssetMetadata();
    if (!(*(*(v11 - 8) + 48))(v6, 1, v11))
    {
      ThirdPartyMediaAssetMetadata.colorVariant.getter();
      sub_100004F84(v6, &qword_100AD50C0);
      goto LABEL_6;
    }

    sub_100004F84(v6, &qword_100AD50C0);
  }

  v12 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
LABEL_6:
  v13 = sub_100365198(v9);

  sub_100004F84(v9, &qword_100AD6030);
  v14 = sub_100417480();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v20[0];
}

uint64_t sub_1003655A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a4;
  v71 = a5;
  v68 = a2;
  v69 = a3;
  v6 = type metadata accessor for MediaViewType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v12 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  __chkstk_darwin(v24);
  v26 = &v63 - v25;
  v27 = *(a1 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata);
  v66 = v7;
  v67 = v6;
  v65 = v11;
  if (v27)
  {

    sub_10025C98C(v26);
  }

  else
  {
    v28 = type metadata accessor for ThirdPartyMediaAssetMetadata();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  }

  v72 = v26;
  sub_1000082B4(v26, v23, &qword_100AD50C0);
  v29 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v23, 1, v29) == 1)
  {
    sub_100004F84(v23, &qword_100AD50C0);
  }

  else
  {
    v32 = ThirdPartyMediaAssetMetadata.song.getter();
    v34 = v33;
    (*(v30 + 8))(v23, v29);
    if (v34)
    {
      goto LABEL_11;
    }
  }

  sub_1000082B4(v72, v20, &qword_100AD50C0);
  if (v31(v20, 1, v29) == 1)
  {
    sub_100004F84(v20, &qword_100AD50C0);
    v32 = 0;
    v34 = 0;
  }

  else
  {
    v32 = ThirdPartyMediaAssetMetadata.albumName.getter();
    v34 = v35;
    (*(v30 + 8))(v20, v29);
  }

LABEL_11:
  sub_1000082B4(v72, v17, &qword_100AD50C0);
  v36 = v32;
  if (v31(v17, 1, v29) == 1)
  {
    sub_100004F84(v17, &qword_100AD50C0);
    v64 = 0;
    v37 = 0;
  }

  else
  {
    v64 = ThirdPartyMediaAssetMetadata.artistName.getter();
    v37 = v38;
    (*(v30 + 8))(v17, v29);
  }

  sub_1000082B4(v72, v14, &qword_100AD50C0);
  if (v31(v14, 1, v29) == 1)
  {
    sub_100004F84(v14, &qword_100AD50C0);
    v39 = v65;
    v40 = v66;
    v41 = v67;
    (*(v66 + 104))(v65, enum case for MediaViewType.thirdPartyMedia(_:), v67);
  }

  else
  {
    v42 = v63;
    ThirdPartyMediaAssetMetadata.mediaType.getter();
    (*(v30 + 8))(v14, v29);
    v39 = v65;
    v40 = v66;
    v41 = v67;
    (*(v66 + 32))(v65, v42, v67);
  }

  v43 = sub_10054D5EC();
  v45 = v44;
  (*(v40 + 8))(v39, v41);
  v47 = v68;
  v46 = v69;
  v48 = sub_10031BCE4(v36, v34, 0x746954616964656DLL, 0xEA0000000000656CLL, v68, v69);
  v50 = v49;

  v51 = sub_10031BCE4(v64, v37, 0x747241616964656DLL, 0xEB00000000747369, v47, v46);
  v53 = v52;

  v73 = v48;
  v74 = v50;

  v54._countAndFlagsBits = v51;
  v54._object = v53;
  String.append(_:)(v54);

  v55 = v73;
  v56 = v74;
  v57 = sub_10031BCE4(v43, v45, 0x746143616964656DLL, 0xED000079726F6765, v70, v71);
  v59 = v58;

  v73 = v55;
  v74 = v56;

  v60._countAndFlagsBits = v57;
  v60._object = v59;
  String.append(_:)(v60);

  v61 = sub_10031BCE4(v73, v74, 0xD000000000000016, 0x80000001008ECFE0, 0, 0);

  sub_100004F84(v72, &qword_100AD50C0);
  return v61;
}

uint64_t sub_100365C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_100365CCC, v5, v7);
}

uint64_t sub_100365CCC()
{
  v1 = v0[5];
  v2 = sub_100364CE8(v1);
  v4 = v3;
  v0[8] = v3;
  v5 = sub_100365354(v1, &selRef_secondaryLabelColor);
  v7 = v6;
  v8 = sub_100365354(v1, &selRef_tertiaryLabelColor);
  v10 = sub_1003655A4(v1, v5, v7, v8, v9);
  v0[9] = v11;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100365E14;
  v13 = v0[4];
  v15 = v0[2];
  v14 = v0[3];

  return sub_100847498(v15, v14, v13, v2, v4, 0, 0, v10);
}

uint64_t sub_100365E14(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100365F68;
  }

  else
  {

    v6[12] = a2;
    v6[13] = a1;

    v7 = v6[6];
    v8 = v6[7];
    v9 = sub_100365F4C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100365F68()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100365FD4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
  {

    sub_10025C98C(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = ThirdPartyMediaAssetMetadata.song.getter();
      v25 = v12;
      v26 = v11;
      v13 = ThirdPartyMediaAssetMetadata.albumName.getter();
      v15 = v14;
      v16 = ThirdPartyMediaAssetMetadata.artistName.getter();
      v18 = v17;
      v19 = ThirdPartyMediaAssetMetadata.appName.getter();
      v21 = v20;
      *(a1 + 24) = &_s6ResultVN_0;
      *(a1 + 32) = sub_100366618();
      *(a1 + 40) = sub_10036666C();
      v22 = swift_allocObject();
      *a1 = v22;
      v23 = v25;
      v22[2] = v26;
      v22[3] = v23;
      v22[4] = v13;
      v22[5] = v15;
      v22[6] = v16;
      v22[7] = v18;
      v22[8] = v19;
      v22[9] = v21;
      (*(v7 + 8))(v10, v6);
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD50C0);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10036622C(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE00A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100366BF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1003663F0(uint64_t a1)
{
  result = sub_100366418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100366418()
{
  result = qword_100AE0078;
  if (!qword_100AE0078)
  {
    type metadata accessor for ThirdPartyMediaAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0078);
  }

  return result;
}

uint64_t sub_100366470()
{
  v1 = 1735290739;
  v2 = 0x614E747369747261;
  if (*v0 != 2)
  {
    v2 = 0x656D614E707061;
  }

  if (*v0)
  {
    v1 = 0x6D614E6D75626C61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003664EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100366790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100366520(uint64_t a1)
{
  v2 = sub_100366BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036655C(uint64_t a1)
{
  v2 = sub_100366BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100366598@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100366904(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_100366618()
{
  result = qword_100AE0080;
  if (!qword_100AE0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0080);
  }

  return result;
}

unint64_t sub_10036666C()
{
  result = qword_100AE0088;
  if (!qword_100AE0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0088);
  }

  return result;
}

uint64_t sub_1003666C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10036671C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100366790(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100366904@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE0090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_100366BF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v13;
  v33 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_100366C4C(&v28, v32);
  sub_10000BA7C(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_100366C84(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_100366BF8()
{
  result = qword_100AE0098;
  if (!qword_100AE0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0098);
  }

  return result;
}

unint64_t sub_100366CC8()
{
  result = qword_100AE00A8;
  if (!qword_100AE00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE00A8);
  }

  return result;
}

unint64_t sub_100366D20()
{
  result = qword_100AE00B0;
  if (!qword_100AE00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE00B0);
  }

  return result;
}

unint64_t sub_100366D78()
{
  result = qword_100AE00B8;
  if (!qword_100AE00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE00B8);
  }

  return result;
}

void sub_100366E14()
{
  sub_10000EEB8(319, &qword_100ADE4E0, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100366F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1000082B4(v2 + *(a1 + 28), &v12 - v6, &qword_100AD1420);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  (*(v9 + 16))(a2, v2 + *(a1 + 44), v8);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_100004F84(v7, &qword_100AD1420);
  }

  return result;
}

uint64_t sub_100367090@<X0>(uint64_t a1@<X0>, double **a2@<X8>)
{
  v4 = type metadata accessor for JournalingSuggestion.SuggestionType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v71 - v8;
  __chkstk_darwin(v9);
  v76 = v71 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v98 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for JournalingSuggestion.ItemContent();
  v14 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = v71 - v17;
  v18 = type metadata accessor for Suggestion.ItemContent(0);
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v92 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v102 = v71 - v21;
  v22 = sub_1000F24EC(&qword_100AE0158);
  __chkstk_darwin(v22 - 8);
  v83 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v84 = v71 - v25;
  v26 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v26 - 8);
  v82 = v71 - v27;
  v28 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v28 - 8);
  v81 = v71 - v29;
  v30 = type metadata accessor for Suggestion(0);
  v31 = v30[6];
  v32 = type metadata accessor for DateInterval();
  v33 = *(*(v32 - 8) + 56);
  v80 = v31;
  v33(a2 + v31, 1, 1, v32);
  v34 = v12;
  v35 = *(v12 + 56);
  v78 = v30[7];
  v35(a2 + v78, 1, 1, v11);
  v79 = v30[8];
  v99 = v11;
  v35(a2 + v79, 1, 1, v11);
  v86 = v30;
  UUID.init()();
  v36 = JournalingSuggestion.items.getter();
  v37 = *(v36 + 16);
  if (v37)
  {
    v72 = v5;
    v73 = v4;
    v74 = a1;
    v75 = a2;
    v103 = _swiftEmptyArrayStorage;
    sub_10019A01C(0, v37, 0);
    v38 = v103;
    v40 = *(v14 + 16);
    v39 = v14 + 16;
    v90 = v40;
    v41 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v71[1] = v36;
    v42 = v36 + v41;
    v43 = *(v39 + 56);
    v88 = (v34 + 40);
    v89 = v43;
    v91 = v39;
    v87 = (v39 - 8);
    v44 = v102;
    do
    {
      v101 = v38;
      v102 = v37;
      v45 = v95;
      v46 = v97;
      v47 = v90;
      v90(v95, v42, v97);
      v48 = v96;
      v47(v96, v45, v46);
      v49 = v92;
      UUID.init()();
      v100 = *(v94 + 20);
      v50 = v98;
      JournalingSuggestion.ItemContent.id.getter();
      (*v88)(v49, v50, v99);
      v51 = JournalingSuggestion.ItemContent.representations.getter();
      __chkstk_darwin(v51);
      v71[-2] = v48;
      v52 = sub_10060462C(sub_100371C34, &v71[-4], v51);

      v53 = *v87;
      (*v87)(v45, v46);
      *(v49 + v100) = v52;
      sub_100372F38(v49, v44, type metadata accessor for Suggestion.ItemContent);
      v53(v48, v46);
      v38 = v101;
      sub_100372FA0(v49, type metadata accessor for Suggestion.ItemContent);
      v103 = v38;
      v55 = *(v38 + 2);
      v54 = *(v38 + 3);
      if (v55 >= v54 >> 1)
      {
        sub_10019A01C(v54 > 1, v55 + 1, 1);
        v38 = v103;
      }

      *(v38 + 2) = v55 + 1;
      sub_100373000(v44, v38 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v55, type metadata accessor for Suggestion.ItemContent);
      v42 += v89;
      v37 = (v102 - 1);
    }

    while (v102 != 1);

    a2 = v75;
    a1 = v74;
    v4 = v73;
    v5 = v72;
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
  }

  v56 = v85;
  v57 = v86[9];
  *a2 = v38;
  a2[1] = JournalingSuggestion.title.getter();
  a2[2] = v58;
  v59 = v81;
  JournalingSuggestion.date.getter();
  sub_100014318(v59, a2 + v80, &qword_100AD3750);
  v60 = v82;
  JournalingSuggestion.bundleIdentifier.getter();
  sub_100014318(v60, a2 + v78, &qword_100AD1420);
  JournalingSuggestion.transferID.getter();
  sub_100014318(v60, a2 + v79, &qword_100AD1420);
  *(a2 + v57) = JournalingSuggestion.promptLanguages.getter();
  v61 = v84;
  JournalingSuggestion.suggestionType.getter();
  v62 = v83;
  sub_1000082B4(v61, v83, &qword_100AE0158);
  if ((*(v5 + 48))(v62, 1, v4) == 1)
  {
    v63 = type metadata accessor for JournalingSuggestion();
    (*(*(v63 - 8) + 8))(a1, v63);
    result = sub_100004F84(v61, &qword_100AE0158);
    v65 = 1;
  }

  else
  {
    v66 = v76;
    (*(v5 + 32))(v76, v62, v4);
    v67 = v77;
    (*(v5 + 16))(v77, v66, v4);
    static JournalingSuggestion.SuggestionType.photoMemory.getter();
    sub_100034208(&qword_100AE0160, &type metadata accessor for JournalingSuggestion.SuggestionType);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = type metadata accessor for JournalingSuggestion();
    (*(*(v69 - 8) + 8))(a1, v69);
    v70 = *(v5 + 8);
    v70(v56, v4);
    v70(v67, v4);
    v70(v66, v4);
    result = sub_100004F84(v61, &qword_100AE0158);
    v65 = v68 ^ 1;
  }

  *(a2 + v86[10]) = v65 & 1;
  return result;
}

double sub_100367AFC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JournalingSuggestion.ItemContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalingSuggestion.Contact();
  if (swift_dynamicCastMetatype())
  {
    v8 = type metadata accessor for Suggestion.Contact(0);
    (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v7, v4);
    *a2 = v8;
    *(a2 + 8) = &off_100A69CC8;
    v12 = &unk_100951C00;
  }

  else
  {
    type metadata accessor for JournalingSuggestion.EventPoster();
    if (swift_dynamicCastMetatype())
    {
      v13 = type metadata accessor for Suggestion.EventPoster(0);
      (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v10 = swift_allocObject();
      (*(v5 + 32))(v10 + v14, v7, v4);
      *a2 = v13;
      *(a2 + 8) = &off_100A69D00;
      v12 = &unk_100951BF0;
    }

    else
    {
      type metadata accessor for JournalingSuggestion.GenericMedia();
      if (swift_dynamicCastMetatype())
      {
        v15 = type metadata accessor for Suggestion.GenericMedia(0);
        (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
        v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v10 = swift_allocObject();
        (*(v5 + 32))(v10 + v16, v7, v4);
        *a2 = v15;
        *(a2 + 8) = &off_100A69CC0;
        v12 = &unk_100951BE0;
      }

      else
      {
        type metadata accessor for JournalingSuggestion.LivePhoto();
        if (swift_dynamicCastMetatype())
        {
          v17 = type metadata accessor for Suggestion.LivePhoto(0);
          (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
          v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
          v10 = swift_allocObject();
          (*(v5 + 32))(v10 + v18, v7, v4);
          *a2 = v17;
          *(a2 + 8) = &off_100A69CA8;
          v12 = &unk_100951BD0;
        }

        else
        {
          type metadata accessor for JournalingSuggestion.Location();
          if (swift_dynamicCastMetatype())
          {
            v19 = type metadata accessor for Suggestion.Location(0);
            (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
            v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
            v10 = swift_allocObject();
            (*(v5 + 32))(v10 + v20, v7, v4);
            *a2 = v19;
            *(a2 + 8) = &off_100A69CD0;
            v12 = &unk_100951BC0;
          }

          else
          {
            type metadata accessor for JournalingSuggestion.LocationGroup();
            if (swift_dynamicCastMetatype())
            {
              (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
              v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
              v10 = swift_allocObject();
              (*(v5 + 32))(v10 + v21, v7, v4);
              *a2 = &type metadata for Suggestion.LocationGroup;
              *(a2 + 8) = &off_100A69CD8;
              v12 = &unk_100951BB0;
            }

            else
            {
              type metadata accessor for JournalingSuggestion.MotionActivity();
              if (swift_dynamicCastMetatype())
              {
                v22 = type metadata accessor for Suggestion.MotionActivity(0);
                (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                v10 = swift_allocObject();
                (*(v5 + 32))(v10 + v23, v7, v4);
                *a2 = v22;
                *(a2 + 8) = &off_100A69CE8;
                v12 = &unk_100951BA0;
              }

              else
              {
                type metadata accessor for JournalingSuggestion.Photo();
                if (swift_dynamicCastMetatype())
                {
                  v24 = type metadata accessor for Suggestion.Photo(0);
                  (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                  v10 = swift_allocObject();
                  (*(v5 + 32))(v10 + v25, v7, v4);
                  *a2 = v24;
                  *(a2 + 8) = &off_100A69C98;
                  v12 = &unk_100951B90;
                }

                else
                {
                  type metadata accessor for JournalingSuggestion.Podcast();
                  if (swift_dynamicCastMetatype())
                  {
                    v26 = type metadata accessor for Suggestion.Podcast(0);
                    (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                    v10 = swift_allocObject();
                    (*(v5 + 32))(v10 + v27, v7, v4);
                    *a2 = v26;
                    *(a2 + 8) = &off_100A69CB8;
                    v12 = &unk_100951B80;
                  }

                  else
                  {
                    type metadata accessor for JournalingSuggestion.Reflection();
                    if (swift_dynamicCastMetatype())
                    {
                      (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                      v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                      v10 = swift_allocObject();
                      (*(v5 + 32))(v10 + v28, v7, v4);
                      *a2 = &type metadata for Suggestion.Reflection;
                      *(a2 + 8) = &off_100A69C90;
                      v12 = &unk_100951B70;
                    }

                    else
                    {
                      type metadata accessor for JournalingSuggestion.Song();
                      if (swift_dynamicCastMetatype())
                      {
                        v29 = type metadata accessor for Suggestion.Song(0);
                        (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                        v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                        v10 = swift_allocObject();
                        (*(v5 + 32))(v10 + v30, v7, v4);
                        *a2 = v29;
                        *(a2 + 8) = &off_100A69CB0;
                        v12 = &unk_100951B60;
                      }

                      else
                      {
                        type metadata accessor for JournalingSuggestion.StateOfMind();
                        if (swift_dynamicCastMetatype())
                        {
                          v31 = type metadata accessor for Suggestion.StateOfMind(0);
                          (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                          v32 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                          v10 = swift_allocObject();
                          (*(v5 + 32))(v10 + v32, v7, v4);
                          *a2 = v31;
                          *(a2 + 8) = &off_100A69CF8;
                          v12 = &unk_100951B50;
                        }

                        else
                        {
                          type metadata accessor for JournalingSuggestion.Video();
                          if (swift_dynamicCastMetatype())
                          {
                            v33 = type metadata accessor for Suggestion.Video(0);
                            (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                            v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                            v10 = swift_allocObject();
                            (*(v5 + 32))(v10 + v34, v7, v4);
                            *a2 = v33;
                            *(a2 + 8) = &off_100A69CA0;
                            v12 = &unk_100951B40;
                          }

                          else
                          {
                            type metadata accessor for JournalingSuggestion.Workout();
                            if (swift_dynamicCastMetatype())
                            {
                              v35 = type metadata accessor for Suggestion.Workout(0);
                              (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                              v36 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                              v10 = swift_allocObject();
                              (*(v5 + 32))(v10 + v36, v7, v4);
                              *a2 = v35;
                              *(a2 + 8) = &off_100A69CE0;
                              v12 = &unk_100951B30;
                            }

                            else
                            {
                              type metadata accessor for JournalingSuggestion.Workout.Details();
                              if (swift_dynamicCastMetatype())
                              {
                                v37 = type metadata accessor for Suggestion.Workout.Details(0);
                                (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                                v38 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                                v10 = swift_allocObject();
                                (*(v5 + 32))(v10 + v38, v7, v4);
                                *a2 = v37;
                                *(a2 + 8) = &off_100A69C88;
                                v12 = &unk_100951B20;
                              }

                              else
                              {
                                type metadata accessor for JournalingSuggestion.WorkoutGroup();
                                if (swift_dynamicCastMetatype())
                                {
                                  v39 = type metadata accessor for Suggestion.WorkoutGroup(0);
                                  (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                                  v40 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                                  v10 = swift_allocObject();
                                  (*(v5 + 32))(v10 + v40, v7, v4);
                                  *a2 = v39;
                                  *(a2 + 8) = &off_100A69CF0;
                                  v12 = &unk_100951B10;
                                }

                                else if (swift_dynamicCastMetatype())
                                {
                                  (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                                  v41 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                                  v10 = swift_allocObject();
                                  (*(v5 + 32))(v10 + v41, v7, v4);
                                  *a2 = &type metadata for Image;
                                  *(a2 + 8) = &off_100A696C0;
                                  v12 = &unk_100951B00;
                                }

                                else
                                {
                                  v42 = sub_1000065A8(0, &qword_100AE9450);
                                  if (!swift_dynamicCastMetatype())
                                  {
                                    result = 0.0;
                                    *a2 = 0u;
                                    *(a2 + 16) = 0u;
                                    return result;
                                  }

                                  (*(v5 + 16))(v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
                                  v43 = (*(v5 + 80) + 16) & ~*(v5 + 80);
                                  v10 = swift_allocObject();
                                  (*(v5 + 32))(v10 + v43, v7, v4);
                                  *a2 = v42;
                                  *(a2 + 8) = &off_100A696C8;
                                  v12 = &unk_100951AF0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_100368714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for Suggestion.Contact(0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0168);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.Contact();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0170);
  v3[24] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[25] = v6;
  v7 = swift_task_alloc();
  v3[26] = v7;
  *v7 = v3;
  v7[1] = sub_100368954;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v6, v5, v5, &protocol witness table for JournalingSuggestion.Contact);
}

uint64_t sub_100368954()
{
  v2 = *(*v1 + 104);
  *(*v1 + 216) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756EC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_100368AE4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100368AE4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1000082B4(*(v0 + 200), v1, &qword_100AE0170);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 200), &qword_100AE0170);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 192), v9);
    (*(v7 + 16))(v6, v5, v9);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v10 + v14, 1, 1, v15);
    *v10 = JournalingSuggestion.Contact.name.getter();
    v10[1] = v16;
    JournalingSuggestion.Contact.photo.getter();
    v17 = v9;
    v18 = *(v7 + 8);
    v18(v6, v17);
    sub_100014318(v13, v10 + v14, &unk_100AD6DD0);
    sub_100372F38(v10, v8, type metadata accessor for Suggestion.Contact);
    (*(v11 + 56))(v8, 0, 1, v12);
    sub_100372FA0(v10, type metadata accessor for Suggestion.Contact);
    if ((*(v11 + 48))(v8, 1, v12) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v19 = *(v0 + 152);
      *(v0 + 80) = *(v0 + 128);
      *(v0 + 88) = &off_100A69CC8;
      v20 = sub_10001A770((v0 + 56));
      sub_100373000(v19, v20, type metadata accessor for Suggestion.Contact);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v24 = *(v0 + 96);
    v25 = *(v0 + 16);
    v26 = *(v0 + 32);
    *(v24 + 32) = *(v0 + 48);
    *v24 = v25;
    *(v24 + 16) = v26;
    v18(v22, v23);
    sub_100004F84(v21, &qword_100AE0170);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100368E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0178);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.EventPoster();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0180);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_100368FBC;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.EventPoster);
}

uint64_t sub_100368FBC()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036938C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036914C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036914C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0180);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0180);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_100369420(v6, v9);
    v10 = type metadata accessor for Suggestion.EventPoster(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69D00;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.EventPoster);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0180);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036938C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Suggestion.EventPoster(0);
  v29 = *(v9 - 1);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 20);
  v28 = v13;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  v15 = v9[6];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(&v11[v15], 1, 1, v16);
  v18 = v9[7];
  v17(&v11[v18], 1, 1, v16);
  v19 = v9[8];
  v20 = &v11[v9[9]];
  JournalingSuggestion.EventPoster.title.getter();
  JournalingSuggestion.EventPoster.image.getter();
  sub_100014318(v8, &v11[v28], &unk_100AD6DD0);
  JournalingSuggestion.EventPoster.eventStart.getter();
  sub_100014318(v5, &v11[v15], &unk_100AD4790);
  JournalingSuggestion.EventPoster.eventEnd.getter();
  sub_100014318(v5, &v11[v18], &unk_100AD4790);
  v11[v19] = JournalingSuggestion.EventPoster.isHost.getter();
  v21 = JournalingSuggestion.EventPoster.placeName.getter();
  v23 = v22;
  v24 = type metadata accessor for JournalingSuggestion.EventPoster();
  (*(*(v24 - 8) + 8))(a1, v24);
  *v20 = v21;
  v20[1] = v23;
  v25 = v30;
  sub_100372F38(v11, v30, type metadata accessor for Suggestion.EventPoster);
  (*(v29 + 56))(v25, 0, 1, v9);
  return sub_100372FA0(v11, type metadata accessor for Suggestion.EventPoster);
}

uint64_t sub_100369760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0188);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.GenericMedia();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0190);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036990C;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.GenericMedia);
}

uint64_t sub_10036990C()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_100369A9C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100369A9C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0190);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0190);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_100369CDC(v6, v9);
    v10 = type metadata accessor for Suggestion.GenericMedia(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CC0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.GenericMedia);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0190);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100369CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for JournalingSuggestion.GenericMedia.ColorVariant();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v44 - v7;
  v8 = sub_1000F24EC(&qword_100AE0198);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v44 - v12;
  v13 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = type metadata accessor for Suggestion.GenericMedia(0);
  v50 = *(v19 - 1);
  __chkstk_darwin(v19);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v22 + 28);
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v21 + v23, 1, 1, v24);
  v25 = v19[8];
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
  v27 = v19[10];
  v28 = (v21 + v19[9]);
  *v21 = JournalingSuggestion.GenericMedia.title.getter();
  v21[1] = v29;
  v21[2] = JournalingSuggestion.GenericMedia.artist.getter();
  v21[3] = v30;
  v21[4] = JournalingSuggestion.GenericMedia.album.getter();
  v21[5] = v31;
  JournalingSuggestion.GenericMedia.date.getter();
  v32 = v21 + v23;
  v33 = v48;
  sub_100014318(v18, v32, &unk_100AD4790);
  JournalingSuggestion.GenericMedia.appIcon.getter();
  sub_100014318(v15, v21 + v25, &unk_100AD6DD0);
  *v28 = JournalingSuggestion.GenericMedia.appIconAccessibilityString.getter();
  v28[1] = v34;
  v35 = v49;
  *(v21 + v27) = JournalingSuggestion.GenericMedia.color.getter();
  v36 = v47;
  JournalingSuggestion.GenericMedia.colorVariant.getter();
  sub_1000082B4(v36, v10, &qword_100AE0198);
  if ((*(v35 + 48))(v10, 1, v33) == 1)
  {
    v37 = type metadata accessor for JournalingSuggestion.GenericMedia();
    (*(*(v37 - 8) + 8))(a1, v37);
    v38 = 4;
  }

  else
  {
    v39 = v46;
    (*(v35 + 32))(v46, v10, v33);
    v40 = v45;
    (*(v35 + 16))(v45, v39, v33);
    v38 = sub_100373068(v40);
    v41 = type metadata accessor for JournalingSuggestion.GenericMedia();
    (*(*(v41 - 8) + 8))(a1, v41);
    (*(v35 + 8))(v39, v33);
  }

  sub_100004F84(v36, &qword_100AE0198);
  *(v21 + v19[11]) = v38;
  v42 = v51;
  sub_100372F38(v21, v51, type metadata accessor for Suggestion.GenericMedia);
  (*(v50 + 56))(v42, 0, 1, v19);
  return sub_100372FA0(v21, type metadata accessor for Suggestion.GenericMedia);
}

uint64_t sub_10036A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE01A8);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.LivePhoto();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01B0);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036A3B4;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.LivePhoto);
}

uint64_t sub_10036A3B4()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036A544;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036A544()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE01B0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE01B0);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036A784(v6, v9);
    v10 = type metadata accessor for Suggestion.LivePhoto(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CA8;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.LivePhoto);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE01B0);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036A784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Suggestion.LivePhoto(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  v13 = &v9[v6[7]];
  v14 = &v9[v6[8]];
  v15 = &v9[v6[9]];
  v16 = &v9[v6[10]];
  JournalingSuggestion.LivePhoto.image.getter();
  JournalingSuggestion.LivePhoto.video.getter();
  JournalingSuggestion.LivePhoto.date.getter();
  sub_100014318(v5, &v9[v11], &unk_100AD4790);
  JournalingSuggestion.LivePhoto.landscapeCropRect.getter();
  v17 = v28;
  *v13 = v27;
  *(v13 + 1) = v17;
  v13[32] = v29;
  JournalingSuggestion.LivePhoto.squareCropRect.getter();
  v18 = v31;
  *v14 = v30;
  *(v14 + 1) = v18;
  v14[32] = v32;
  JournalingSuggestion.LivePhoto.portraitCropRect.getter();
  v19 = v34;
  *v15 = v33;
  *(v15 + 1) = v19;
  v15[32] = v35;
  v20 = JournalingSuggestion.LivePhoto.photoCloudIdentifier.getter();
  v22 = v21;
  v23 = type metadata accessor for JournalingSuggestion.LivePhoto();
  (*(*(v23 - 8) + 8))(a1, v23);
  *v16 = v20;
  v16[1] = v22;
  v24 = v26;
  sub_100372F38(v9, v26, type metadata accessor for Suggestion.LivePhoto);
  (*(v7 + 56))(v24, 0, 1, v6);
  return sub_100372FA0(v9, type metadata accessor for Suggestion.LivePhoto);
}

uint64_t sub_10036AA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE01B8);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Location();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01C0);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036ABCC;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Location);
}

uint64_t sub_10036ABCC()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036AD5C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036AD5C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE01C0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE01C0);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036AF9C(v6, v9);
    v10 = type metadata accessor for Suggestion.Location(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CD0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Location);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE01C0);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Suggestion.Location(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 28);
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v10 + v12, 1, 1, v13);
  v14 = v7[9];
  v15 = (v10 + v7[8]);
  v16 = v7[10];
  *v10 = JournalingSuggestion.Location.place.getter();
  v10[1] = v17;
  v10[2] = JournalingSuggestion.Location.city.getter();
  v10[3] = v18;
  v10[4] = JournalingSuggestion.Location.location.getter();
  JournalingSuggestion.Location.date.getter();
  sub_100014318(v6, v10 + v12, &unk_100AD4790);
  *v15 = JournalingSuggestion.Location.mapItemIdentifier.getter();
  v15[1] = v19;
  *(v10 + v14) = JournalingSuggestion.Location.mapKitItemIdentifier.getter();
  LOBYTE(v14) = JournalingSuggestion.Location.isWorkLocation.getter();
  v20 = type metadata accessor for JournalingSuggestion.Location();
  (*(*(v20 - 8) + 8))(a1, v20);
  *(v10 + v16) = v14;
  sub_100372F38(v10, a2, type metadata accessor for Suggestion.Location);
  (*(v8 + 56))(a2, 0, 1, v7);
  return sub_100372FA0(v10, type metadata accessor for Suggestion.Location);
}

uint64_t sub_10036B1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for JournalingSuggestion.LocationGroup();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01C8);
  v3[19] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[20] = v5;
  v6 = swift_task_alloc();
  v3[21] = v6;
  *v6 = v3;
  v6[1] = sub_10036B358;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.LocationGroup);
}

uint64_t sub_10036B358()
{
  v2 = *(*v1 + 104);
  *(*v1 + 176) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036B6AC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036B4E8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036B4E8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_1000082B4(*(v0 + 160), v1, &qword_100AE01C8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 160), &qword_100AE01C8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 144);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    (*(v7 + 32))(v5, *(v0 + 152), v8);
    (*(v7 + 16))(v6, v5, v8);
    v9 = sub_100373338(v6);
    if (v9)
    {
      *(v0 + 80) = &type metadata for Suggestion.LocationGroup;
      *(v0 + 88) = &off_100A69CD8;
      *(v0 + 56) = v9;
      sub_100018480((v0 + 56), v0 + 16);
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 96);
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    *(v14 + 32) = *(v0 + 48);
    *v14 = v15;
    *(v14 + 16) = v16;
    (*(v13 + 8))(v11, v12);
    sub_100004F84(v10, &qword_100AE01C8);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10036B6AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036B734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE01D0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.MotionActivity();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01D8);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036B8E0;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.MotionActivity);
}

uint64_t sub_10036B8E0()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036BA70;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036BA70()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE01D8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE01D8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036BCB0(v6, v9);
    v10 = type metadata accessor for Suggestion.MotionActivity(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CE8;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.MotionActivity);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE01D8);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036BCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for JournalingSuggestion.MotionActivity.MovementType();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v6;
  v7 = sub_1000F24EC(&qword_100AE01E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - v17;
  v19 = type metadata accessor for Suggestion.MotionActivity(0);
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = v19[6];
  v25 = type metadata accessor for DateInterval();
  (*(*(v25 - 8) + 56))(&v22[v24], 1, 1, v25);
  JournalingSuggestion.MotionActivity.icon.getter();
  sub_100014318(v18, v22, &unk_100AD6DD0);
  *&v22[v19[5]] = JournalingSuggestion.MotionActivity.steps.getter();
  JournalingSuggestion.MotionActivity.date.getter();
  v26 = &v22[v24];
  v27 = v37;
  sub_100014318(v15, v26, &qword_100AD3750);
  JournalingSuggestion.MotionActivity.movementType.getter();
  sub_1000082B4(v12, v9, &qword_100AE01E0);
  if ((*(v3 + 48))(v9, 1, v27) == 1)
  {
    v28 = type metadata accessor for JournalingSuggestion.MotionActivity();
    (*(*(v28 - 8) + 8))(a1, v28);
    v29 = 3;
  }

  else
  {
    v30 = v36;
    (*(v3 + 32))(v36, v9, v27);
    v31 = v35;
    (*(v3 + 16))(v35, v30, v27);
    v29 = sub_1003738B8(v31);
    v32 = type metadata accessor for JournalingSuggestion.MotionActivity();
    (*(*(v32 - 8) + 8))(a1, v32);
    (*(v3 + 8))(v30, v27);
  }

  sub_100004F84(v12, &qword_100AE01E0);
  v22[v19[7]] = v29;
  v33 = v38;
  sub_100372F38(v22, v38, type metadata accessor for Suggestion.MotionActivity);
  (*(v20 + 56))(v33, 0, 1, v19);
  return sub_100372FA0(v22, type metadata accessor for Suggestion.MotionActivity);
}

uint64_t sub_10036C1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE01F0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Photo();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01F8);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036C354;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Photo);
}

uint64_t sub_10036C354()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036C4E4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036C4E4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE01F8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE01F8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036C724(v6, v9);
    v10 = type metadata accessor for Suggestion.Photo(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69C98;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Photo);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE01F8);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036C724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Suggestion.Photo(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  v13 = &v9[v6[6]];
  v14 = &v9[v6[7]];
  v15 = &v9[v6[8]];
  v16 = &v9[v6[9]];
  JournalingSuggestion.Photo.photo.getter();
  JournalingSuggestion.Photo.date.getter();
  sub_100014318(v5, &v9[v11], &unk_100AD4790);
  JournalingSuggestion.Photo.landscapeCropRect.getter();
  v17 = v28;
  *v13 = v27;
  *(v13 + 1) = v17;
  v13[32] = v29;
  JournalingSuggestion.Photo.squareCropRect.getter();
  v18 = v31;
  *v14 = v30;
  *(v14 + 1) = v18;
  v14[32] = v32;
  JournalingSuggestion.Photo.portraitCropRect.getter();
  v19 = v34;
  *v15 = v33;
  *(v15 + 1) = v19;
  v15[32] = v35;
  v20 = JournalingSuggestion.Photo.photoCloudIdentifier.getter();
  v22 = v21;
  v23 = type metadata accessor for JournalingSuggestion.Photo();
  (*(*(v23 - 8) + 8))(a1, v23);
  *v16 = v20;
  v16[1] = v22;
  v24 = v26;
  sub_100372F38(v9, v26, type metadata accessor for Suggestion.Photo);
  (*(v7 + 56))(v24, 0, 1, v6);
  return sub_100372FA0(v9, type metadata accessor for Suggestion.Photo);
}

uint64_t sub_10036C9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0200);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Podcast();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0208);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036CB60;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Podcast);
}

uint64_t sub_10036CB60()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036CCF0;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036CCF0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0208);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036CF30(v6, v9);
    v10 = type metadata accessor for Suggestion.Podcast(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CB8;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Podcast);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0208);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036CF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Suggestion.Podcast(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 24);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
  v17 = *(v10 + 28);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  *v13 = JournalingSuggestion.Podcast.episode.getter();
  v13[1] = v19;
  v13[2] = JournalingSuggestion.Podcast.show.getter();
  v13[3] = v20;
  JournalingSuggestion.Podcast.artwork.getter();
  sub_100014318(v9, v13 + v15, &unk_100AD6DD0);
  JournalingSuggestion.Podcast.date.getter();
  v21 = type metadata accessor for JournalingSuggestion.Podcast();
  (*(*(v21 - 8) + 8))(a1, v21);
  sub_100014318(v6, v13 + v17, &unk_100AD4790);
  sub_100372F38(v13, a2, type metadata accessor for Suggestion.Podcast);
  (*(v11 + 56))(a2, 0, 1, v10);
  return sub_100372FA0(v13, type metadata accessor for Suggestion.Podcast);
}

uint64_t sub_10036D1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for JournalingSuggestion.Reflection();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0210);
  v3[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[15] = v5;
  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v3;
  v6[1] = sub_10036D370;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Reflection);
}

uint64_t sub_10036D370()
{
  v2 = *(*v1 + 64);
  *(*v1 + 136) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036D6E0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036D500;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036D500()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1000082B4(*(v0 + 120), v1, &qword_100AE0210);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 56);
    sub_100004F84(*(v0 + 120), &qword_100AE0210);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v17 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 56);
    (*(v8 + 32))(v6, *(v0 + 112), v7);
    (*(v8 + 16))(v5, v6, v7);
    v10 = JournalingSuggestion.Reflection.prompt.getter();
    v12 = v11;
    v13 = JournalingSuggestion.Reflection.color.getter();
    v14 = *(v8 + 8);
    v14(v5, v7);
    *(v0 + 16) = v10;
    *(v0 + 40) = &type metadata for Suggestion.Reflection;
    *(v0 + 48) = &off_100A69C90;
    *(v0 + 24) = v12;
    *(v0 + 32) = v13;
    sub_100018480((v0 + 16), v9);
    v14(v6, v7);
    sub_100004F84(v17, &qword_100AE0210);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10036D6E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036D768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0218);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Song();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0220);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036D914;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Song);
}

uint64_t sub_10036D914()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036DAA4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036DAA4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0220);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0220);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036DCE4(v6, v9);
    v10 = type metadata accessor for Suggestion.Song(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CB0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Song);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0220);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Suggestion.Song(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 28);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
  v17 = *(v10 + 32);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  v19 = (v13 + *(v10 + 36));
  *v13 = JournalingSuggestion.Song.song.getter();
  v13[1] = v20;
  v13[2] = JournalingSuggestion.Song.artist.getter();
  v13[3] = v21;
  v13[4] = JournalingSuggestion.Song.album.getter();
  v13[5] = v22;
  JournalingSuggestion.Song.artwork.getter();
  sub_100014318(v9, v13 + v15, &unk_100AD6DD0);
  JournalingSuggestion.Song.date.getter();
  sub_100014318(v6, v13 + v17, &unk_100AD4790);
  v23 = JournalingSuggestion.Song.trackIdentifier.getter();
  v25 = v24;
  v26 = type metadata accessor for JournalingSuggestion.Song();
  (*(*(v26 - 8) + 8))(a1, v26);
  *v19 = v23;
  v19[1] = v25;
  sub_100372F38(v13, a2, type metadata accessor for Suggestion.Song);
  (*(v11 + 56))(a2, 0, 1, v10);
  return sub_100372FA0(v13, type metadata accessor for Suggestion.Song);
}

uint64_t sub_10036DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for Suggestion.StateOfMind(0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0228);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.StateOfMind();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0230);
  v3[24] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[25] = v6;
  v7 = swift_task_alloc();
  v3[26] = v7;
  *v7 = v3;
  v7[1] = sub_10036E210;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v6, v5, v5, &protocol witness table for JournalingSuggestion.StateOfMind);
}

uint64_t sub_10036E210()
{
  v2 = *(*v1 + 104);
  *(*v1 + 216) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036E6EC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036E3A0;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036E3A0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1000082B4(*(v0 + 200), v1, &qword_100AE0230);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 200), &qword_100AE0230);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v29 = *(v0 + 152);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 192), v8);
    (*(v7 + 16))(v6, v5, v8);
    v13 = v11[5];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
    v15 = v11[6];
    v28 = v11[7];
    *v9 = JournalingSuggestion.StateOfMind.state.getter();
    JournalingSuggestion.StateOfMind.icon.getter();
    sub_100014318(v12, v9 + v13, &unk_100AD6DD0);
    *(v9 + v15) = JournalingSuggestion.StateOfMind.lightBackground.getter();
    v16 = JournalingSuggestion.StateOfMind.darkBackground.getter();
    v17 = *(v7 + 8);
    v17(v6, v8);
    *(v9 + v28) = v16;
    sub_100372F38(v9, v29, type metadata accessor for Suggestion.StateOfMind);
    (*(v10 + 56))(v29, 0, 1, v11);
    sub_100372FA0(v9, type metadata accessor for Suggestion.StateOfMind);
    if ((*(v10 + 48))(v29, 1, v11) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v18 = *(v0 + 152);
      *(v0 + 80) = *(v0 + 128);
      *(v0 + 88) = &off_100A69CF8;
      v19 = sub_10001A770((v0 + 56));
      sub_100373000(v18, v19, type metadata accessor for Suggestion.StateOfMind);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v20 = *(v0 + 200);
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v23 = *(v0 + 96);
    v24 = *(v0 + 16);
    v25 = *(v0 + 32);
    *(v23 + 32) = *(v0 + 48);
    *v23 = v24;
    *(v23 + 16) = v25;
    v17(v21, v22);
    sub_100004F84(v20, &qword_100AE0230);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10036E6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036E79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0238);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Video();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0240);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036E948;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Video);
}

uint64_t sub_10036E948()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036EAD8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036EAD8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0240);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036ED18(v6, v9);
    v10 = type metadata accessor for Suggestion.Video(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CA0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Video);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0240);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Suggestion.Video(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  v13 = &v9[v6[6]];
  v14 = &v9[v6[7]];
  v15 = &v9[v6[8]];
  v16 = &v9[v6[9]];
  JournalingSuggestion.Video.url.getter();
  JournalingSuggestion.Video.date.getter();
  sub_100014318(v5, &v9[v11], &unk_100AD4790);
  JournalingSuggestion.Video.landscapeCropRect.getter();
  v17 = v28;
  *v13 = v27;
  *(v13 + 1) = v17;
  v13[32] = v29;
  JournalingSuggestion.Video.squareCropRect.getter();
  v18 = v31;
  *v14 = v30;
  *(v14 + 1) = v18;
  v14[32] = v32;
  JournalingSuggestion.Video.portraitCropRect.getter();
  v19 = v34;
  *v15 = v33;
  *(v15 + 1) = v19;
  v15[32] = v35;
  v20 = JournalingSuggestion.Video.photoCloudIdentifier.getter();
  v22 = v21;
  v23 = type metadata accessor for JournalingSuggestion.Video();
  (*(*(v23 - 8) + 8))(a1, v23);
  *v16 = v20;
  v16[1] = v22;
  v24 = v26;
  sub_100372F38(v9, v26, type metadata accessor for Suggestion.Video);
  (*(v7 + 56))(v24, 0, 1, v6);
  return sub_100372FA0(v9, type metadata accessor for Suggestion.Video);
}

uint64_t sub_10036EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0248);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Workout();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0250);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036F154;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Workout);
}

uint64_t sub_10036F154()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036F2E4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036F2E4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0250);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0250);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036F524(v6, v9);
    v10 = type metadata accessor for Suggestion.Workout(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CE0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Workout);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0250);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036F524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v3 - 8);
  v45 = &v39 - v4;
  v5 = type metadata accessor for JournalingSuggestion.Workout.Details();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v39 - v9;
  v10 = sub_1000F24EC(&qword_100AE0258);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = sub_1000F24EC(&qword_100AE0260);
  __chkstk_darwin(v16 - 8);
  v42 = &v39 - v17;
  v18 = type metadata accessor for Suggestion.Workout(0);
  v44 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Suggestion.Workout.Details(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v43 = v18;
  v23 = *(v18 + 20);
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v41 = v23;
  v25(&v20[v23], 1, 1, v24);
  JournalingSuggestion.Workout.details.getter();
  sub_1000082B4(v15, v12, &qword_100AE0258);
  v26 = v5;
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_100004F84(v15, &qword_100AE0258);
    v27 = v42;
    v22(v42, 1, 1, v21);
  }

  else
  {
    v28 = v39;
    v29 = v12;
    v30 = v5;
    (*(v6 + 32))(v39, v29, v5);
    v31 = v40;
    (*(v6 + 16))(v40, v28, v26);
    v27 = v42;
    sub_10036FFB4(v31, v42);
    (*(v6 + 8))(v28, v30);
    sub_100004F84(v15, &qword_100AE0258);
  }

  v32 = v43;
  v33 = *(v43 + 24);
  sub_100014318(v27, v20, &qword_100AE0260);
  v34 = v45;
  JournalingSuggestion.Workout.icon.getter();
  sub_100014318(v34, &v20[v41], &unk_100AD6DD0);
  v35 = JournalingSuggestion.Workout.route.getter();
  v36 = type metadata accessor for JournalingSuggestion.Workout();
  (*(*(v36 - 8) + 8))(a1, v36);
  *&v20[v33] = v35;
  v37 = v46;
  sub_100372F38(v20, v46, type metadata accessor for Suggestion.Workout);
  (*(v44 + 56))(v37, 0, 1, v32);
  return sub_100372FA0(v20, type metadata accessor for Suggestion.Workout);
}

uint64_t sub_10036FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0260);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.Workout.Details();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0258);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10036FBE4;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.Workout.Details);
}

uint64_t sub_10036FBE4()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10036FD74;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10036FD74()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0258);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0258);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10036FFB4(v6, v9);
    v10 = type metadata accessor for Suggestion.Workout.Details(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69C88;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.Workout.Details);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0258);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Suggestion.Workout.Details(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v10 + 32);
  v12 = type metadata accessor for DateInterval();
  (*(*(v12 - 8) + 56))(v9 + v11, 1, 1, v12);
  v13 = (v9 + v6[9]);
  v14 = (v9 + v6[10]);
  v15 = v6[11];
  v16 = (v9 + v6[12]);
  *v9 = JournalingSuggestion.Workout.Details.activityType.getter();
  v9[1] = JournalingSuggestion.Workout.Details.activeEnergyBurned.getter();
  v9[2] = JournalingSuggestion.Workout.Details.distance.getter();
  v9[3] = JournalingSuggestion.Workout.Details.averageHeartRate.getter();
  JournalingSuggestion.Workout.Details.date.getter();
  sub_100014318(v5, v9 + v11, &qword_100AD3750);
  *v13 = JournalingSuggestion.Workout.Details.distanceLocalizedString.getter();
  v13[1] = v17;
  *v14 = JournalingSuggestion.Workout.Details.workoutLocalizedName.getter();
  v14[1] = v18;
  *(v9 + v15) = JournalingSuggestion.Workout.Details.workoutIsIndoors.getter();
  v19 = JournalingSuggestion.Workout.Details.localizedName.getter();
  v21 = v20;
  v22 = type metadata accessor for JournalingSuggestion.Workout.Details();
  (*(*(v22 - 8) + 8))(a1, v22);
  *v16 = v19;
  v16[1] = v21;
  v23 = v26;
  sub_100372F38(v9, v26, type metadata accessor for Suggestion.Workout.Details);
  (*(v7 + 56))(v23, 0, 1, v6);
  return sub_100372FA0(v9, type metadata accessor for Suggestion.Workout.Details);
}

uint64_t sub_100370220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1000F24EC(&qword_100AE0268);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for JournalingSuggestion.WorkoutGroup();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0270);
  v3[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[21] = v5;
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_1003703CC;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v5, v4, v4, &protocol witness table for JournalingSuggestion.WorkoutGroup);
}

uint64_t sub_1003703CC()
{
  v2 = *(*v1 + 104);
  *(*v1 + 184) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003756E4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_10037055C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10037055C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000082B4(*(v0 + 168), v1, &qword_100AE0270);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    sub_100004F84(*(v0 + 168), &qword_100AE0270);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    (*(v7 + 32))(v5, *(v0 + 160), v8);
    (*(v7 + 16))(v6, v5, v8);
    sub_10037079C(v6, v9);
    v10 = type metadata accessor for Suggestion.WorkoutGroup(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    else
    {
      v11 = *(v0 + 120);
      *(v0 + 80) = v10;
      *(v0 + 88) = &off_100A69CF0;
      v12 = sub_10001A770((v0 + 56));
      sub_100373000(v11, v12, type metadata accessor for Suggestion.WorkoutGroup);
      sub_100018480((v0 + 56), v0 + 16);
    }

    v13 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    *(v17 + 32) = *(v0 + 48);
    *v17 = v18;
    *(v17 + 16) = v19;
    (*(v16 + 8))(v14, v15);
    sub_100004F84(v13, &qword_100AE0270);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10037079C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v3 - 8);
  v114 = v100 - v4;
  v137 = type metadata accessor for Suggestion.Workout.Details(0);
  v5 = *(v137 - 8);
  __chkstk_darwin(v137);
  v113 = (v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = type metadata accessor for JournalingSuggestion.Workout.Details();
  v7 = *(v143 - 8);
  __chkstk_darwin(v143);
  v112 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v129 = v100 - v10;
  v11 = sub_1000F24EC(&qword_100AE0258);
  __chkstk_darwin(v11 - 8);
  v132 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v142 = v100 - v14;
  v15 = sub_1000F24EC(&qword_100AE0260);
  __chkstk_darwin(v15 - 8);
  v141 = v100 - v16;
  v17 = sub_1000F24EC(&qword_100AE0248);
  __chkstk_darwin(v17 - 8);
  v19 = v100 - v18;
  v140 = type metadata accessor for Suggestion.Workout(0);
  v20 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v128 = v100 - v23;
  v24 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v24 - 8);
  v130 = v100 - v25;
  v138 = type metadata accessor for JournalingSuggestion.Workout();
  v26 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v135 = v100 - v29;
  v30 = type metadata accessor for Suggestion.WorkoutGroup(0);
  v103 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = (v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = v33;
  v34 = v33[5];
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v102 = v32;
  v101 = v34;
  v126 = v37;
  v127 = v35;
  v125 = v36 + 56;
  (v37)(v32 + v34, 1, 1);
  v105 = a1;
  v38 = JournalingSuggestion.WorkoutGroup.workouts.getter();
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v26 + 16);
    v40 = v26 + 16;
    v123 = v41;
    v42 = (*(v40 + 64) + 32) & ~*(v40 + 64);
    v100[1] = v38;
    v43 = v38 + v42;
    v44 = (v5 + 56);
    v122 = (v7 + 48);
    v121 = *(v40 + 56);
    v109 = (v7 + 32);
    v108 = (v7 + 16);
    v107 = (v7 + 8);
    v120 = (v40 - 8);
    v119 = (v20 + 56);
    v111 = v20;
    v118 = (v20 + 48);
    v45 = _swiftEmptyArrayStorage;
    v124 = v40;
    v131 = (v5 + 56);
    v110 = v19;
    do
    {
      v133 = v45;
      v134 = v39;
      v46 = v135;
      v47 = v138;
      v48 = v123;
      v123(v135, v43, v138);
      v48(v136, v46, v47);
      v49 = *v44;
      v50 = v139;
      (*v44)(v139, 1, 1, v137);
      v51 = *(v140 + 20);
      v126(v50 + v51, 1, 1, v127);
      v52 = v142;
      JournalingSuggestion.Workout.details.getter();
      v53 = v132;
      sub_1000082B4(v52, v132, &qword_100AE0258);
      if ((*v122)(v53, 1, v143) == 1)
      {
        sub_100004F84(v142, &qword_100AE0258);
        v49(v141, 1, 1, v137);
      }

      else
      {
        v54 = *v109;
        v55 = v129;
        v116 = v49;
        v56 = v143;
        v54(v129, v132, v143);
        v57 = v112;
        (*v108)(v112, v55, v56);
        v58 = v137;
        v117 = v51;
        v59 = *(v137 + 32);
        v60 = type metadata accessor for DateInterval();
        v61 = v113;
        (*(*(v60 - 8) + 56))(v113 + v59, 1, 1, v60);
        v62 = (v61 + v58[9]);
        v63 = (v61 + v58[10]);
        v64 = v58[12];
        v115 = v58[11];
        v65 = (v61 + v64);
        *v61 = JournalingSuggestion.Workout.Details.activityType.getter();
        v61[1] = JournalingSuggestion.Workout.Details.activeEnergyBurned.getter();
        v61[2] = JournalingSuggestion.Workout.Details.distance.getter();
        v61[3] = JournalingSuggestion.Workout.Details.averageHeartRate.getter();
        v66 = v114;
        JournalingSuggestion.Workout.Details.date.getter();
        sub_100014318(v66, v61 + v59, &qword_100AD3750);
        *v62 = JournalingSuggestion.Workout.Details.distanceLocalizedString.getter();
        v62[1] = v67;
        v68 = v143;
        *v63 = JournalingSuggestion.Workout.Details.workoutLocalizedName.getter();
        v63[1] = v69;
        *(v61 + v115) = JournalingSuggestion.Workout.Details.workoutIsIndoors.getter();
        v70 = JournalingSuggestion.Workout.Details.localizedName.getter();
        v72 = v71;
        v73 = *v107;
        (*v107)(v57, v68);
        *v65 = v70;
        v65[1] = v72;
        v74 = v141;
        sub_100372F38(v61, v141, type metadata accessor for Suggestion.Workout.Details);
        v116(v74, 0, 1, v58);
        v75 = v61;
        v19 = v110;
        sub_100372FA0(v75, type metadata accessor for Suggestion.Workout.Details);
        v73(v129, v68);
        v51 = v117;
        sub_100004F84(v142, &qword_100AE0258);
      }

      v76 = v140;
      v77 = *(v140 + 24);
      v78 = v139;
      sub_100014318(v141, v139, &qword_100AE0260);
      v79 = v130;
      v80 = v136;
      JournalingSuggestion.Workout.icon.getter();
      sub_100014318(v79, v78 + v51, &unk_100AD6DD0);
      v81 = JournalingSuggestion.Workout.route.getter();
      v82 = *v120;
      v83 = v138;
      (*v120)(v80, v138);
      v82(v135, v83);
      *(v78 + v77) = v81;
      sub_100372F38(v78, v19, type metadata accessor for Suggestion.Workout);
      (*v119)(v19, 0, 1, v76);
      sub_100372FA0(v78, type metadata accessor for Suggestion.Workout);
      if ((*v118)(v19, 1, v76) == 1)
      {
        sub_100004F84(v19, &qword_100AE0248);
        v44 = v131;
        v45 = v133;
      }

      else
      {
        sub_100373000(v19, v128, type metadata accessor for Suggestion.Workout);
        v45 = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1003E5D48(0, *(v45 + 2) + 1, 1, v45);
        }

        v44 = v131;
        v85 = *(v45 + 2);
        v84 = *(v45 + 3);
        v86 = v111;
        if (v85 >= v84 >> 1)
        {
          v87 = sub_1003E5D48(v84 > 1, v85 + 1, 1, v45);
          v86 = v111;
          v45 = v87;
        }

        *(v45 + 2) = v85 + 1;
        sub_100373000(v128, v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v85, type metadata accessor for Suggestion.Workout);
      }

      v43 += v121;
      v39 = v134 - 1;
    }

    while (v134 != 1);
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
  }

  v88 = v104;
  v89 = v104[6];
  v90 = v104[7];
  v91 = v102;
  v92 = v102 + v104[8];
  *v102 = v45;
  v93 = v130;
  v94 = v105;
  JournalingSuggestion.WorkoutGroup.icon.getter();
  sub_100014318(v93, v91 + v101, &unk_100AD6DD0);
  *(v91 + v89) = JournalingSuggestion.WorkoutGroup.activeEnergyBurned.getter();
  *(v91 + v90) = JournalingSuggestion.WorkoutGroup.averageHeartRate.getter();
  v95 = JournalingSuggestion.WorkoutGroup.duration.getter();
  LOBYTE(v90) = v96;
  v97 = type metadata accessor for JournalingSuggestion.WorkoutGroup();
  (*(*(v97 - 8) + 8))(v94, v97);
  *v92 = v95;
  v92[8] = v90 & 1;
  v98 = v106;
  sub_100372F38(v91, v106, type metadata accessor for Suggestion.WorkoutGroup);
  (*(v103 + 56))(v98, 0, 1, v88);
  return sub_100372FA0(v91, type metadata accessor for Suggestion.WorkoutGroup);
}

uint64_t sub_100371460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_100371518;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v3 + 2, &type metadata for Image, &type metadata for Image, &protocol witness table for Image);
}

uint64_t sub_100371518()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003716FC;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003716A8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1003716A8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = &off_100A696C0;
    v3 = &type metadata for Image;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = *(v0 + 24);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = *(v0 + 24);
  *v5 = v1;
  v5[3] = v3;
  v5[4] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100371714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000065A8(0, &qword_100AE9450);
  v3[6] = v4;
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_1003717E8;

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v3 + 2, v4, v4, &protocol witness table for UIImage);
}

uint64_t sub_1003717E8()
{
  v2 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1003719C8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_100371978;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100371978()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = &off_100A696C8;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(v0 + 24);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = *(v0 + 24);
  *v5 = v1;
  v5[3] = v2;
  v5[4] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1003719E0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1000F24EC(&qword_100AE13F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SuggestionsPickerConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  JournalConfiguration.init()();
  sub_1000082B4(a1, v7, &qword_100AE13F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100004F84(a1, &qword_100AE13F0);
    return sub_100004F84(v7, &qword_100AE13F0);
  }

  else
  {
    sub_100373000(v7, v11, type metadata accessor for SuggestionsPickerConfiguration);
    JournalConfiguration.fractionalPresentation.setter();
    JournalConfiguration.presentFullScreen.setter();
    sub_1000082B4(&v11[*(v8 + 24)], v4, &qword_100AD1420);
    JournalConfiguration.selectedSuggestionID.setter();
    sub_100004F84(a1, &qword_100AE13F0);
    return sub_100372FA0(v11, type metadata accessor for SuggestionsPickerConfiguration);
  }
}

uint64_t sub_100371C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100371714(a1, a2, a3);
}

uint64_t sub_100371D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100371460(a1, a2, a3);
}

uint64_t sub_100371E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100370220(a1, a2, a3);
}

uint64_t sub_100371F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036FA38(a1, a2, a3);
}

uint64_t sub_100372080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036EFA8(a1, a2, a3);
}

uint64_t sub_100372194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036E79C(a1, a2, a3);
}

uint64_t sub_1003722A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036DFD0(a1, a2, a3);
}

uint64_t sub_1003723BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036D768(a1, a2, a3);
}

uint64_t sub_1003724B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036D1FC(a1, a2, a3);
}

uint64_t sub_1003725C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036C9B4(a1, a2, a3);
}

uint64_t sub_1003726D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036C1A8(a1, a2, a3);
}

uint64_t sub_1003727EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036B734(a1, a2, a3);
}

uint64_t sub_1003728E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036B1E4(a1, a2, a3);
}

uint64_t sub_1003729F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036AA20(a1, a2, a3);
}

uint64_t sub_100372B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10036A208(a1, a2, a3);
}

uint64_t sub_100372C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100369760(a1, a2, a3);
}

uint64_t sub_100372D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_100368E10(a1, a2, a3);
}

uint64_t sub_100372E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JournalingSuggestion.ItemContent();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100368714(a1, a2, a3);
}

uint64_t sub_100372F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100372FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100373000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100373068(char *a1)
{
  v2 = type metadata accessor for JournalingSuggestion.GenericMedia.ColorVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  (*(v3 + 16))(&v16 - v8, a1, v2, v7);
  static JournalingSuggestion.GenericMedia.ColorVariant.unknown.getter();
  sub_100034208(&qword_100AE01A0, &type metadata accessor for JournalingSuggestion.GenericMedia.ColorVariant);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(a1, v2);
    v11(v9, v2);
    return 0;
  }

  else
  {
    static JournalingSuggestion.GenericMedia.ColorVariant.light.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
    if (v13)
    {
      v11(a1, v2);
      v11(v9, v2);
      return 1;
    }

    else
    {
      static JournalingSuggestion.GenericMedia.ColorVariant.dark.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v5, v2);
      if (v14)
      {
        v11(a1, v2);
        v11(v9, v2);
        return 2;
      }

      else
      {
        static JournalingSuggestion.GenericMedia.ColorVariant.veryDark.getter();
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        v11(a1, v2);
        v11(v5, v2);
        v11(v9, v2);
        if (v15)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

double *sub_100373338(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v55 = &v41 - v3;
  v4 = sub_1000F24EC(&qword_100AE01B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v54 = type metadata accessor for Suggestion.Location(0);
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v52 = type metadata accessor for JournalingSuggestion.Location();
  v12 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v41 - v16;
  v17 = JournalingSuggestion.LocationGroup.locations.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v50 = v6;
    v41 = v17;
    v42 = a1;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v47 = (v19 - 8);
    v48 = v20;
    v43 = v7;
    v45 = (v7 + 48);
    v46 = (v7 + 56);
    v22 = _swiftEmptyArrayStorage;
    v44 = *(v19 + 56);
    v49 = v19;
    v23 = v51;
    do
    {
      v58 = v22;
      v59 = v18;
      v57 = v21;
      v24 = v52;
      v25 = v48;
      (v48)(v23);
      v25(v14, v23, v24);
      v26 = v54;
      v27 = *(v54 + 28);
      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 56))(v9 + v27, 1, 1, v28);
      v29 = v26[9];
      v30 = (v9 + v26[8]);
      v56 = v26[10];
      *v9 = JournalingSuggestion.Location.place.getter();
      v9[1] = v31;
      v9[2] = JournalingSuggestion.Location.city.getter();
      v9[3] = v32;
      v9[4] = JournalingSuggestion.Location.location.getter();
      v33 = v55;
      JournalingSuggestion.Location.date.getter();
      sub_100014318(v33, v9 + v27, &unk_100AD4790);
      *v30 = JournalingSuggestion.Location.mapItemIdentifier.getter();
      v30[1] = v34;
      *(v9 + v29) = JournalingSuggestion.Location.mapKitItemIdentifier.getter();
      LOBYTE(v25) = JournalingSuggestion.Location.isWorkLocation.getter();
      v35 = *v47;
      (*v47)(v14, v24);
      v35(v23, v24);
      *(v9 + v56) = v25;
      v36 = v50;
      sub_100372F38(v9, v50, type metadata accessor for Suggestion.Location);
      (*v46)(v36, 0, 1, v26);
      sub_100372FA0(v9, type metadata accessor for Suggestion.Location);
      if ((*v45)(v36, 1, v26) == 1)
      {
        sub_100004F84(v36, &qword_100AE01B8);
        v22 = v58;
      }

      else
      {
        sub_100373000(v36, v53, type metadata accessor for Suggestion.Location);
        v22 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1003E5D20(0, *(v22 + 2) + 1, 1, v22);
        }

        v38 = *(v22 + 2);
        v37 = *(v22 + 3);
        if (v38 >= v37 >> 1)
        {
          v22 = sub_1003E5D20(v37 > 1, v38 + 1, 1, v22);
        }

        *(v22 + 2) = v38 + 1;
        sub_100373000(v53, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, type metadata accessor for Suggestion.Location);
      }

      v21 = v57 + v44;
      v18 = v59 - 1;
    }

    while (v59 != 1);

    a1 = v42;
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v39 = type metadata accessor for JournalingSuggestion.LocationGroup();
  (*(*(v39 - 8) + 8))(a1, v39);
  return v22;
}

uint64_t sub_1003738B8(char *a1)
{
  v2 = type metadata accessor for JournalingSuggestion.MotionActivity.MovementType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, a1, v2, v7);
  static JournalingSuggestion.MotionActivity.MovementType.running.getter();
  sub_100034208(&qword_100AE01E8, &type metadata accessor for JournalingSuggestion.MotionActivity.MovementType);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(a1, v2);
    v11(v9, v2);
    return 0;
  }

  else
  {
    static JournalingSuggestion.MotionActivity.MovementType.walking.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
    if (v13)
    {
      v11(a1, v2);
      v11(v9, v2);
      return 1;
    }

    else
    {
      static JournalingSuggestion.MotionActivity.MovementType.runningWalking.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(a1, v2);
      v11(v5, v2);
      v11(v9, v2);
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_100373B48()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    sub_1001808D4(319, &qword_100AE02E0, &qword_100AE02E8);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD3560, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &qword_100AD5A70);
        if (v3 <= 0x3F)
        {
          sub_10000A394(319, &unk_100AE02F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100373CC0()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &unk_100AE02F0);
        if (v3 <= 0x3F)
        {
          sub_10000A394(319, &qword_100AD5A70);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100373E34()
{
  sub_1000065A8(319, &qword_100AE0448);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000A394(319, &unk_100AE0450);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100373F34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F24EC(&unk_100AD6DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100374004(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD6DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003740B4()
{
  sub_10000EEB8(319, &qword_100AE04F0, type metadata accessor for Suggestion.Workout, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001808D4(319, &qword_100AE02E0, &qword_100AE02E8);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &qword_100AE04F8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100374218()
{
  sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD3560, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000A394(319, &unk_100AE05A0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100374364()
{
  sub_10000EEB8(319, &qword_100AE0640, type metadata accessor for Suggestion.Workout.Details, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100375578(319, &qword_100AE0648, &unk_100AE0650, &unk_100951D78, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003744C4()
{
  sub_10000A394(319, &qword_100AD5A70);
  if (v0 <= 0x3F)
  {
    sub_1001808D4(319, &unk_100AEE010, &unk_100AD2BF0);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001808D4(319, &qword_100AE06F0, &unk_100AE06F8);
        if (v3 <= 0x3F)
        {
          sub_10000A394(319, &unk_100AE02F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10037463C()
{
  sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100374710()
{
  sub_10000A394(319, &qword_100AD5A70);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &qword_100AE0838);
        if (v3 <= 0x3F)
        {
          sub_10000A394(319, &unk_100AE0840);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003748B0()
{
  sub_10000A394(319, &qword_100AD5A70);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1003749D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (a2 == 2147483646)
  {
    v7 = *(a1 + 8);
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    v8 = v7 - 1;
    if (v8 < 0)
    {
      v8 = -1;
    }

    return (v8 + 1);
  }

  else
  {
    v13 = sub_1000F24EC(a4);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v15 = v13;
      v16 = *(v14 + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }

    else
    {
      v18 = sub_1000F24EC(a6);
      v19 = *(*(v18 - 8) + 48);
      v20 = a1 + *(a3 + 32);

      return v19(v20, a2, v18);
    }
  }
}

uint64_t sub_100374B34(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v8 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v12 = sub_1000F24EC(a5);
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v8 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = sub_1000F24EC(a7);
      v18 = *(*(v17 - 8) + 56);
      v19 = v8 + *(a4 + 32);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_100374C78()
{
  sub_10000A394(319, &qword_100AD5A70);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100374DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&unk_100AD4790);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100374F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&unk_100AD4790);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100375030()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &unk_100AE0A28, type metadata accessor for CGRect, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &qword_100AD5A70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100375184()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &unk_100AE0A28, type metadata accessor for CGRect, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &qword_100AD5A70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003752E8()
{
  sub_10000EEB8(319, &qword_100AE0C18, type metadata accessor for Suggestion.ItemContent, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10000EEB8(319, &qword_100AD3560, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000EEB8(319, &qword_100ADE4E0, &type metadata accessor for UUID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100375578(319, &qword_100AE0C20, &qword_100AD60A0, &unk_100943DB0, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10000A394(319, &unk_100AE0C28);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UUID();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003754C8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100375578(319, &qword_100AE0CD8, &unk_100AE0CE0, &unk_100951E60, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100375578(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000F2A18(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1003755E0()
{
  result = qword_100AE0D10;
  if (!qword_100AE0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0D10);
  }

  return result;
}

unint64_t sub_100375638()
{
  result = qword_100AE0D18;
  if (!qword_100AE0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0D18);
  }

  return result;
}

unint64_t sub_100375690()
{
  result = qword_100AE0D20;
  if (!qword_100AE0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0D20);
  }

  return result;
}

uint64_t sub_1003756F8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_10037578C, v4, v6);
}

uint64_t sub_10037578C()
{
  v1 = v0[12];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    v3 += 4;
    if (v6 == &type metadata for Suggestion.Reflection)
    {
      v7 = *(v5 - 2);
      v0[15] = *(v5 - 1);

      v14 = (v7 + *v7);
      v8 = swift_task_alloc();
      v0[16] = v8;
      *v8 = v0;
      v8[1] = sub_100375944;
      v9 = v0[10];
      v10 = v0[11];

      return (v14)(v0 + 2, v9, v10);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v12 = &type metadata for Suggestion.Reflection;
  v12[1] = &off_100A69C90;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_100375944()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100375BC8;
  }

  else
  {
    v5 = sub_100375A80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100375A80()
{

  if (!v0[5])
  {
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    v3 = 0;
    v2 = 0;
    v1 = 0;
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
    v2 = v0[8];
    v3 = v0[9];
LABEL_5:
    v4 = v0[1];

    return v4(v1, v2, v3);
  }

  sub_1003A952C();
  swift_allocError();
  *v6 = &type metadata for Suggestion.Reflection;
  v6[1] = &off_100A69C90;
  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_100375BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100375C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE01F0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0EB0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Photo(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100375D7C, v7, v9);
}

uint64_t sub_100375D7C()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100375F40;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69C98;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100375F40()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_10037607C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037607C()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Photo);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE01F0);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE01F0);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0EB0);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69C98;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100376320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0238);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0EA8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Video(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100376470, v7, v9);
}

uint64_t sub_100376470()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100376634;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CA0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100376634()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100376770;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100376770()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Video);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0238);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0238);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0EA8);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CA0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100376A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE01A8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0EA0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.LivePhoto(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100376B64, v7, v9);
}

uint64_t sub_100376B64()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100376D28;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CA8;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100376D28()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100376E64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100376E64()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.LivePhoto);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE01A8);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE01A8);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0EA0);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CA8;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100377108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0218);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E98);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Song(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100377258, v7, v9);
}

uint64_t sub_100377258()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_10037741C;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CB0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10037741C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100377558;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100377558()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Song);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0218);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0218);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E98);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CB0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1003777FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0200);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E88);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Podcast(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_10037794C, v7, v9);
}

uint64_t sub_10037794C()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100377B10;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CB8;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100377B10()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100377C4C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100377C4C()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Podcast);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0200);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0200);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E88);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CB8;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100377EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0188);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E78);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.GenericMedia(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100378040, v7, v9);
}

uint64_t sub_100378040()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100378204;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CC0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100378204()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100378340;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100378340()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.GenericMedia);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0188);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0188);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E78);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CC0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1003785E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0168);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E68);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Contact(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100378734, v7, v9);
}

uint64_t sub_100378734()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_1003788F8;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CC8;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003788F8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100378A34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100378A34()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Contact);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0168);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0168);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E68);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CC8;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100378CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE01B8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E58);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Location(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100378E28, v7, v9);
}

uint64_t sub_100378E28()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100378FEC;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CD0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100378FEC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100379128;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100379128()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Location);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE01B8);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE01B8);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E58);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CD0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1003793CC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[11] = v4;
  v3[12] = v6;

  return _swift_task_switch(sub_100379460, v4, v6);
}

uint64_t sub_100379460()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    v3 += 4;
    if (v6 == &type metadata for Suggestion.LocationGroup)
    {
      v7 = *(v5 - 2);
      v0[13] = *(v5 - 1);

      v14 = (v7 + *v7);
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_100379618;
      v9 = v0[8];
      v10 = v0[9];

      return (v14)(v0 + 2, v9, v10);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v12 = &type metadata for Suggestion.LocationGroup;
  v12[1] = &off_100A69CD8;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_100379618()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100379890;
  }

  else
  {
    v5 = sub_100379754;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100379754()
{

  if (!v0[5])
  {
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    v1 = 0;
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
LABEL_5:
    v2 = v0[1];

    return v2(v1);
  }

  sub_1003A952C();
  swift_allocError();
  *v4 = &type metadata for Suggestion.LocationGroup;
  v4[1] = &off_100A69CD8;
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100379890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003798F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0248);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E28);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.Workout(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_100379A44, v7, v9);
}

uint64_t sub_100379A44()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100379C08;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CE0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100379C08()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_100379D44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100379D44()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.Workout);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0248);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0248);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0E28);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CE0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100379FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE01D0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DE8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.MotionActivity(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_10037A138, v7, v9);
}

uint64_t sub_10037A138()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_10037A2FC;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CE8;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10037A2FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_10037A438;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037A438()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.MotionActivity);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE01D0);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE01D0);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0DE8);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CE8;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10037A6DC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = sub_1000065A8(0, &qword_100AE9450);
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[12] = v5;
  v3[13] = v7;

  return _swift_task_switch(sub_10037A79C, v5, v7);
}

uint64_t sub_10037A79C()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[11];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[14] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_10037A950;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A696C8;
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_10037A950()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10037ABC4;
  }

  else
  {
    v5 = sub_10037AA8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037AA8C()
{

  if (!v0[5])
  {
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    v1 = 0;
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
LABEL_5:
    v2 = v0[1];

    return v2(v1);
  }

  v4 = v0[11];
  sub_1003A952C();
  swift_allocError();
  *v5 = v4;
  v5[1] = &off_100A696C8;
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_10037ABC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037AC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0268);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DE0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.WorkoutGroup(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_10037AD78, v7, v9);
}

uint64_t sub_10037AD78()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_10037AF3C;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CF0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10037AF3C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_10037B078;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037B078()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.WorkoutGroup);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0268);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0268);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0DE0);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CF0;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10037B31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0228);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DC8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.StateOfMind(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_10037B46C, v7, v9);
}

uint64_t sub_10037B46C()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_10037B630;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69CF8;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10037B630()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1003A9FA4;
  }

  else
  {
    v5 = sub_10037B76C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037B76C()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.StateOfMind);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0228);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0228);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0DC8);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69CF8;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10037BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = sub_1000F24EC(&qword_100AE0178);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DB0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for Suggestion.EventPoster(0);
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[16] = v7;
  v4[17] = v9;

  return _swift_task_switch(sub_10037BB60, v7, v9);
}

uint64_t sub_10037BB60()
{
  v1 = v0[10];
  v2 = *(v1 + *(type metadata accessor for Suggestion.ItemContent(0) + 20));
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = v0[15];
  v6 = v3 + 1;
  while (--v6)
  {
    v7 = v4 + 4;
    v8 = *v4;
    v4 += 4;
    if (v8 == v5)
    {
      v9 = *(v7 - 2);
      v0[18] = *(v7 - 1);

      v16 = (v9 + *v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_10037BD24;
      v11 = v0[8];
      v12 = v0[9];

      return (v16)(v0 + 2, v11, v12);
    }
  }

  sub_1003A952C();
  swift_allocError();
  *v14 = v5;
  v14[1] = &off_100A69D00;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_10037BD24()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10037C104;
  }

  else
  {
    v5 = sub_10037BE60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037BE60()
{
  v1 = v0[15];

  v2 = v1 - 8;
  v3 = v0[15];
  if (!v0[5])
  {
    v9 = v0[14];
    sub_100004F84((v0 + 2), &qword_100AE0DB8);
    (*(*v2 + 56))(v9, 1, 1, v3);
    goto LABEL_5;
  }

  sub_1000F24EC(&qword_100AE0D88);
  v4 = swift_dynamicCast();
  v5 = *(*v2 + 56);
  v6 = v0[14];
  v7 = v0[13];
  if (v4)
  {
    v8 = v0[15];
    (v5)(v0[13], 0, 1);
    sub_1003A6F60(v7, v6, type metadata accessor for Suggestion.EventPoster);
    v5(v6, 0, 1, v8);
LABEL_5:
    v10 = v0[14];
    v11 = v0[7];
    (*(v0[12] + 56))(v10, 0, 1, v0[11]);
    sub_100021CEC(v10, v11, &qword_100AE0178);

    v12 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[11];
  v14 = v0[12];
  v5(v0[13], 1, 1, v0[15]);
  sub_100004F84(v7, &qword_100AE0178);
  (*(v14 + 56))(v6, 1, 1, v13);
  sub_100004F84(v6, &qword_100AE0DB0);
  v15 = v0[15];
  sub_1003A952C();
  swift_allocError();
  *v16 = v15;
  v16[1] = &off_100A69D00;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10037C104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037C17C()
{
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A6EF8(v3, v2, type metadata accessor for SuggestionImportSession.MergeConflict);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x7373417972746E65;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    return 0xD000000000000017;
  }

  else
  {
    sub_1003A3E80(v2, type metadata accessor for SuggestionImportSession.MergeConflict);
    return 0xD000000000000018;
  }
}

uint64_t sub_10037C2B8(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v36 = sub_1000F24EC(&qword_100AD2680);
  __chkstk_darwin(v36);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v34 = sub_1000F24EC(&qword_100AE0D70);
  __chkstk_darwin(v34);
  v35 = &v30 - v8;
  v9 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SuggestionImportSession.VisitDuration(0);
  v17 = v2;
  sub_1000082B4(v2 + *(v16 + 24), v11, &unk_100AD4790);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AD4790);
    v18 = static Date.== infix(_:_:)();
    return v18 & 1;
  }

  v32 = v4;
  v19 = v7;
  v20 = *(v13 + 32);
  v20(v15, v11, v12);
  v21 = *(v16 + 20);
  v33 = sub_10008D160(&qword_100AD2698, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v23 = *(v13 + 16);
    v23(v19, v17 + v21, v12);
    v24 = v36;
    v25 = v19 + *(v36 + 48);
    v31 = v15;
    v23(v25, v15, v12);
    v26 = v32;
    sub_1000082B4(v19, v32, &qword_100AD2680);
    v27 = *(v24 + 48);
    v28 = v35;
    v20(v35, v26, v12);
    v29 = *(v13 + 8);
    v29(v26 + v27, v12);
    sub_100021CEC(v19, v26, &qword_100AD2680);
    v20((v28 + *(v34 + 36)), (v26 + *(v24 + 48)), v12);
    v29(v26, v12);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v18 = dispatch thunk of static Comparable.< infix(_:_:)();
    }

    else
    {
      v18 = 0;
    }

    sub_100004F84(v28, &qword_100AE0D70);
    v29(v31, v12);
    return v18 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10037C700()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Date();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v16 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SuggestionImportSession.VisitDuration(0);
  static FormatStyle<>.iso8601.getter();
  sub_10008D160(&qword_100ADA640, &type metadata accessor for Date.ISO8601FormatStyle);
  Date.formatted<A>(_:)();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v12 = *(v10 + 24);
  v13 = v17;
  sub_1000082B4(v0 + v12, v3, &unk_100AD4790);
  if ((*(v13 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F84(v3, &unk_100AD4790);
  }

  else
  {
    v14 = v16;
    (*(v13 + 32))(v16, v3, v4);
    v19._countAndFlagsBits = 2108704;
    v19._object = 0xE300000000000000;
    static FormatStyle<>.iso8601.getter();
    Date.formatted<A>(_:)();
    v11(v9, v6);
    String.append(_:)(v18);

    String.append(_:)(v19);

    (*(v13 + 8))(v14, v4);
  }

  return v20;
}

double *sub_10037CA28(uint64_t a1)
{
  v127 = type metadata accessor for SuggestionImportSession.VisitDuration(0);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v126 = &v123 - v4;
  v5 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v5 - 8);
  v150 = &v123 - v6;
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v133 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v159 = &v123 - v10;
  v151 = sub_1000F24EC(&qword_100AD64E8);
  v143 = *(v151 - 8);
  __chkstk_darwin(v151);
  v130 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v123 - v13;
  v160 = type metadata accessor for VisitAssetMetadata();
  v14 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v154 = &v123 - v21;
  __chkstk_darwin(v22);
  v24 = &v123 - v23;
  __chkstk_darwin(v25);
  v27 = &v123 - v26;
  v28 = sub_1000F24EC(&qword_100AE0EB8);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v131 = (&v123 - v30);
  v31 = sub_1000F24EC(&qword_100AE0EC0);
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  if (a1 && *(a1 + 16))
  {
    v158 = v24;
    v140 = &v123 - v34;
    v141 = v35;
    __chkstk_darwin(v33);
    *(&v123 - 2) = v153;
    v162 = sub_10060476C(sub_1003A9904, (&v123 - 4), a1);

    sub_1003A3AA8(&v162);

    v139 = (v29 + 56);
    v138 = (v29 + 48);
    v156 = *(v162 + 2);
    v137 = (v17 + 32);
    v136 = (v14 + 32);
    v152 = (v17 + 56);
    v147 = (v14 + 8);
    v135 = (v17 + 16);
    v134 = (v17 + 8);
    v123 = (v14 + 16);
    v149 = v162;

    v36 = 0;
    v128 = _swiftEmptyArrayStorage;
    *&v37 = 136315394;
    v129 = v37;
    v161 = v16;
    v145 = v27;
    v146 = v19;
    v148 = v28;
    v144 = (v17 + 48);
    while (1)
    {
      v39 = v141;
      v40 = v140;
      if (v36 == v156)
      {
        v41 = 1;
        v42 = v156;
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v36 >= *(v149 + 2))
        {
          goto LABEL_64;
        }

        v42 = v36 + 1;
        v43 = v149 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v36;
        v44 = *(v28 + 48);
        v45 = v131;
        *v131 = v36;
        sub_1000082B4(v43, v45 + v44, &qword_100AD64E8);
        sub_100021CEC(v45, v39, &qword_100AE0EB8);
        v41 = 0;
      }

      (*v139)(v39, v41, 1, v28);
      sub_100021CEC(v39, v40, &qword_100AE0EC0);
      if ((*v138)(v40, 1, v28) == 1)
      {

        type metadata accessor for SuggestionImportSession(0);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v162 = v117;
          *v116 = 136315138;
          v118 = v128;

          v119 = Array.description.getter();
          v121 = v120;

          v122 = sub_100008458(v119, v121, &v162);

          *(v116 + 4) = v122;
          _os_log_impl(&_mh_execute_header, v114, v115, "Visit durations = [\n%s)\n]", v116, 0xCu);
          sub_10000BA7C(v117);

          return v118;
        }

        else
        {

          return v128;
        }
      }

      v155 = v42;
      v46 = *v40;
      v47 = v40 + *(v28 + 48);
      v48 = *(v151 + 48);
      v49 = *v137;
      v50 = v16;
      v51 = v142;
      (*v137)(v142, v47, v50);
      v52 = *v136;
      v53 = &v47[v48];
      v54 = v160;
      (*v136)(&v51[v48], v53, v160);
      v49(v27, v51, v50);
      v52(v157, &v51[v48], v54);
      v55 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);

        __break(1u);
        return result;
      }

      v56 = v144;
      if (v55 < 0)
      {
        goto LABEL_61;
      }

      if (v156 >= v55)
      {
        v57 = v46 + 1;
      }

      else
      {
        v57 = v156;
      }

      if (v46 == -1)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      v59 = *(v149 + 2);
      if (v59 < v58 || v59 < v156)
      {
        goto LABEL_62;
      }

      if (v58 == v156)
      {
        break;
      }

      v16 = v161;
      v62 = v146;
      if (v58 >= v156)
      {
        goto LABEL_65;
      }

      v63 = v130;
      sub_1000082B4(v149 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v58, v130, &qword_100AD64E8);
      v64 = *(v151 + 48);
      v65 = v159;
      v49(v159, v63, v16);
      v61 = *v152;
      (*v152)(v65, 0, 1, v16);
      (*v147)(v63 + v64, v160);
      if ((*v56)(v65, 1, v16) == 1)
      {
        goto LABEL_28;
      }

      v77 = v158;
      v49(v158, v159, v16);
      v27 = v145;
      v28 = v148;
LABEL_36:
      if (static Date.< infix(_:_:)())
      {
        v93 = v126;
        (*v123)(v126, v157, v160);
        v94 = v127;
        v95 = *v135;
        (*v135)(&v93[*(v127 + 20)], v27, v16);
        v96 = *(v94 + 24);
        v95(&v93[v96], v77, v16);
        v61(&v93[v96], 0, 1, v16);
        v97 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1003E5D70(0, *(v97 + 2) + 1, 1, v97);
        }

        v36 = v155;
        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        v100 = v99 + 1;
        if (v99 >= v98 >> 1)
        {
          v128 = sub_1003E5D70(v98 > 1, v99 + 1, 1, v97);
        }

        else
        {
          v128 = v97;
        }

        v101 = &v156;
LABEL_51:
        v107 = *(v101 - 32);
        v108 = *v134;
        (*v134)(v158, v16);
        (*v147)(v157, v160);
        v108(v27, v16);
        v109 = v128;
        *(v128 + 2) = v100;
        sub_1003A6F60(v107, v109 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v99, type metadata accessor for SuggestionImportSession.VisitDuration);
        v28 = v148;
      }

      else
      {
        if (static Date.== infix(_:_:)())
        {
          v102 = v124;
          (*v123)(v124, v157, v160);
          v103 = v127;
          (*v135)(&v102[*(v127 + 20)], v27, v16);
          v61(&v102[*(v103 + 24)], 1, 1, v16);
          v104 = v128;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v155;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v104 = sub_1003E5D70(0, *(v104 + 2) + 1, 1, v104);
          }

          v99 = *(v104 + 2);
          v106 = *(v104 + 3);
          v100 = v99 + 1;
          if (v99 >= v106 >> 1)
          {
            v128 = sub_1003E5D70(v106 > 1, v99 + 1, 1, v104);
          }

          else
          {
            v128 = v104;
          }

          v101 = &v154;
          goto LABEL_51;
        }

        type metadata accessor for SuggestionImportSession(0);
        v78 = *v135;
        (*v135)(v154, v27, v16);
        v78(v62, v77, v16);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v162 = v132;
          *v81 = v129;
          sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date);
          v82 = v154;
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v84;
          v86 = *v134;
          (*v134)(v82, v161);
          v87 = sub_100008458(v83, v85, &v162);
          v88 = v146;
          v16 = v161;

          *(v81 + 4) = v87;
          *(v81 + 12) = 2080;
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          v86(v88, v16);
          v92 = sub_100008458(v89, v91, &v162);
          v27 = v145;

          *(v81 + 14) = v92;
          _os_log_impl(&_mh_execute_header, v79, v80, "Rejected duration for visit, start date (%s) > end date (%s).", v81, 0x16u);
          swift_arrayDestroy();

          v86(v158, v16);
          (*v147)(v157, v160);
          v86(v27, v16);
          v28 = v148;
        }

        else
        {

          v38 = *v134;
          (*v134)(v62, v16);
          v38(v154, v16);
          v38(v77, v16);
          (*v147)(v157, v160);
          v38(v27, v16);
        }

        v36 = v155;
      }
    }

    v61 = *v152;
    (*v152)(v159, 1, 1, v161);
    v62 = v146;
LABEL_28:
    v66 = v153 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v67 = &v66[*(type metadata accessor for Suggestion(0) + 24)];
    v68 = v150;
    sub_1000082B4(v67, v150, &qword_100AD3750);
    v69 = type metadata accessor for DateInterval();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v68, 1, v69) == 1)
    {
      sub_100004F84(v150, &qword_100AD3750);
      v71 = v133;
      v16 = v161;
      v61(v133, 1, 1, v161);
      static Date.distantFuture.getter();
      v72 = *v56;
      if ((*v56)(v71, 1, v16) != 1)
      {
        sub_100004F84(v133, &unk_100AD4790);
      }
    }

    else
    {
      v73 = v62;
      v74 = v133;
      v75 = v150;
      DateInterval.end.getter();
      (*(v70 + 8))(v75, v69);
      v16 = v161;
      v61(v74, 0, 1, v161);
      v76 = v74;
      v62 = v73;
      v49(v158, v76, v16);
      v72 = *v144;
    }

    v27 = v145;
    v28 = v148;
    if (v72(v159, 1, v16) != 1)
    {
      sub_100004F84(v159, &unk_100AD4790);
    }

    v77 = v158;
    goto LABEL_36;
  }

  type metadata accessor for SuggestionImportSession(0);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v110, v111, "Visit durations = []", v112, 2u);
  }

  return _swiftEmptyArrayStorage;
}