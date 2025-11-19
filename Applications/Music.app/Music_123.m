uint64_t sub_100CE89E8(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id JSSocialMediaItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BE120);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = objc_allocWithZone(v1);
  *&v7[OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork] = 0;
  v8 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v11[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE110);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *&v7[v9] = sub_100CE5708(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

id JSSocialMediaItem.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BE120);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork) = 0;
  v7 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v10[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE110);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *(v1 + v8) = sub_100CE5708(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_100CE8D74()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v2 = sub_10010FC20(&qword_1011BE120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id JSSocialMediaItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSocialMediaItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CE8ED8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSocialMediaItem();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100CE8F18(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D3DD60();
  v2 = Hasher._finalize()();

  return sub_100CE91E8(a1, v2);
}

unint64_t sub_100CE8F84(void *a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100CE93D8(a1, a2 & 1, v4);
}

unint64_t sub_100CE9050(uint64_t a1, char a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v6 = Hasher._finalize()();

  return sub_100CE958C(a1, a2, a3, v6);
}

unint64_t sub_100CE917C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1006BF6B4(a1, v2);
}

unint64_t sub_100CE91E8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      sub_100CEC608(*(v6 + 48) + 32 * v5, &v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = swift_unknownObjectWeakLoadStrong();
      v9 = v11;
      if (Strong)
      {
        if (!v11)
        {
          v9 = Strong;
LABEL_4:

LABEL_5:
          sub_100CEC664(&v19);
          goto LABEL_6;
        }

        sub_100009F78(0, &qword_101197A30);
        v12 = static NSObject.== infix(_:_:)();

        if ((v12 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_4;
        }

        if ((v21 != *(a1 + 16) || v22 != *(a1 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v20)
      {
        v13 = 0xD000000000000015;
      }

      else
      {
        v13 = 0x7463656C6573;
      }

      if (v20)
      {
        v14 = 0x8000000100E6CB00;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      if (*(a1 + 8))
      {
        v15 = 0xD000000000000015;
      }

      else
      {
        v15 = 0x7463656C6573;
      }

      if (*(a1 + 8))
      {
        v16 = 0x8000000100E6CB00;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == v15 && v14 == v16)
      {

        sub_100CEC664(&v19);
        return v5;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100CEC664(&v19);
      if (v17)
      {
        return v5;
      }

LABEL_6:
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100CE93D8(void *a1, char a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v19 = ~v4;
    v7 = 0x7463656C6573;
    type metadata accessor for JSObject();
    if (a2)
    {
      v7 = 0xD000000000000015;
      v8 = 0x8000000100E6CB00;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    do
    {
      v9 = *(v3 + 48) + 16 * v5;
      v10 = *(v9 + 8);
      v11 = *v9;
      v12 = a1;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        if (v10)
        {
          v14 = 0xD000000000000015;
        }

        else
        {
          v14 = 0x7463656C6573;
        }

        if (v10)
        {
          v15 = 0x8000000100E6CB00;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v14 == v7 && v15 == v8)
        {

          return v5;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return v5;
        }
      }

      else
      {
      }

      v5 = (v5 + 1) & v19;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100CE958C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100009F78(0, &qword_101197A30);
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v11 = *v8;
      v12 = v10;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
LABEL_3:

        goto LABEL_4;
      }

      if (v9)
      {
        v13 = 0x616C5065726F7473;
        v14 = 0xED00006D726F6674;
        if (v9 != 1)
        {
          v13 = 0xD000000000000010;
          v14 = 0x8000000100E6D780;
        }
      }

      else
      {
        v13 = 0xD000000000000012;
        v14 = 0x8000000100E6D750;
      }

      if (a2)
      {
        if (a2 == 1)
        {
          v15 = 0x616C5065726F7473;
        }

        else
        {
          v15 = 0xD000000000000010;
        }

        if (a2 == 1)
        {
          v16 = 0xED00006D726F6674;
        }

        else
        {
          v16 = 0x8000000100E6D780;
        }

        if (v13 != v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0x8000000100E6D750;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_22;
        }
      }

      if (v14 == v16)
      {

        goto LABEL_23;
      }

LABEL_22:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_3;
      }

LABEL_23:
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {

        return v6;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v6;
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_100CE9834(uint64_t result, uint64_t a2)
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
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100CE99F0(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    do
    {
      v12 = 16 * v6;
      v13 = v2;
      v14 = *(*(v2 + 48) + 16 * v6);
      v15 = v8;
      Hasher.init(_seed:)();
      v16 = v14;
      String.hash(into:)();
      String.hash(into:)();

      v17 = Hasher._finalize()();

      v8 = v15;
      v18 = v17 & v7;
      if (v3 >= v15)
      {
        if (v18 < v15)
        {
          v4 = v28;
          v2 = v13;
        }

        else
        {
          v4 = v28;
          v2 = v13;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v28;
        v2 = v13;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + v12);
          if (16 * v3 != v12 || v20 >= v21 + 1)
          {
            *v20 = *v21;
          }

          v22 = *(v2 + 56);
          v23 = v22 + 56 * v3;
          v24 = (v22 + 56 * v6);
          if (v3 != v6 || v23 >= v24 + 56)
          {
            v9 = *v24;
            v10 = v24[1];
            v11 = v24[2];
            *(v23 + 48) = *(v24 + 6);
            *(v23 + 16) = v10;
            *(v23 + 32) = v11;
            *v23 = v9;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }
}

unint64_t sub_100CE9C54(unint64_t result, uint64_t a2)
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
      sub_100CEC608(*(a2 + 48) + 32 * v6, v22);
      Hasher.init(_seed:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = [Strong hash];

        v12 = v11;
      }

      else
      {
        sub_100009838();
        v12 = StringProtocol.hash.getter();
      }

      Hasher._combine(_:)(v12);
      String.hash(into:)();

      v13 = Hasher._finalize()();
      result = sub_100CEC664(v22);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        result = v15 + 32 * v3;
        if (v3 < v6 || result >= v15 + 32 * v6 + 32)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v3 != v6)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + v3);
        v18 = (v16 + v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100CE9EBC(Swift::Int result, uint64_t a2)
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
      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100CEA060(int64_t a1, uint64_t a2)
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
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 16);
      Hasher.init(_seed:)();
      v12 = v10;
      v13 = v11;
      NSObject.hash(into:)();
      String.hash(into:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();

      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_100CEA2DC(unint64_t result, uint64_t a2)
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
      v15 = *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72);
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

uint64_t sub_100CEA4C8(uint64_t result, uint64_t a2)
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

void sub_100CEA678(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019C10(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100DD87D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100DD63BC(v16, a4 & 1);
    v11 = sub_100019C10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v24 = *(v22 + 32);
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
  }

  else
  {
    sub_100DD8518(v11, a2, a3, a1, v21);
  }
}

uint64_t type metadata accessor for JSSocialMediaItem()
{
  result = qword_1011BE158;
  if (!qword_1011BE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CEA840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019C10(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100DD8978();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100DD66B0(v16, a4 & 1);
    v11 = sub_100019C10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100DD8574(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100CEA988(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100CE8F18(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_100DD8CA8();
    goto LABEL_7;
  }

  sub_100DD6C94(result, a3 & 1);
  result = sub_100CE8F18(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100CEC608(a2, v18);
  return sub_100DD85BC(v10, v18, a1 & 1, v16);
}

unint64_t sub_100CEAAA0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100CEC488();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 >= v12 && (a2 & 1) == 0)
    {
      v15 = v7;
      sub_100DD8E28();
      v7 = v15;
      goto LABEL_8;
    }

    sub_100DD6FE8(v12, a2 & 1);
    v7 = sub_100CEC488();
    if ((v13 & 1) != (v16 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v17 = *v3;
  if (v13)
  {
    *(*(v17 + 56) + 8 * v7) = a1;
  }

  else
  {

    return sub_100DD8638(v7, a1, v17);
  }
}

void sub_100CEABB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019C10(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100DD8F78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100DD7278(v16, a4 & 1);
    v11 = sub_100019C10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_100DD99E8(v11, a2, a3, a1, v21);
  }
}

void sub_100CEACF8(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_100CE9050(a3, a4, a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_100DD90E8();
      v14 = v22;
      goto LABEL_8;
    }

    sub_100DD74F4(v19, a6 & 1);
    v14 = sub_100CE9050(a3, a4, a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 16 * v14;
    v29 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_100DD8674(v14, a3, a4, a5, a1, a2, v24);
    v26 = a3;

    v27 = a5;
  }
}

id sub_100CEAE74(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_100CE9050(a3, a4, a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_100DD9290();
      v14 = v22;
      goto LABEL_8;
    }

    sub_100DD787C(v19, a6 & 1);
    v14 = sub_100CE9050(a3, a4, a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 16 * v14;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_100DD8674(v14, a3, a4, a5, a1, a2, v24);
    v28 = a3;

    return a5;
  }
}

id sub_100CEB040(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100CE8F84(a2, a3 & 1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_100DD8AE8();
      v10 = v18;
      goto LABEL_8;
    }

    sub_100DD6958(v15, a4 & 1);
    v10 = sub_100CE8F84(a2, a3 & 1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 56 * v10;

    return sub_100CEC6B8(a1, v21);
  }

  else
  {
    sub_100DD86CC(v10, a2, a3 & 1, a1, v20);

    return a2;
  }
}

uint64_t sub_100CEB18C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100019C10(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100DD9458();
      goto LABEL_7;
    }

    sub_100DD7C50(v15, a4 & 1);
    v22 = sub_100019C10(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72) * v12;

    return sub_1008BDD90(a1, v20);
  }

LABEL_13:
  sub_100DD8738(v12, a2, a3, a1, v18);
}

_OWORD *sub_100CEB344(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void), void (*a7)(unint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = sub_1006BE91C(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = sub_1006BE91C(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    sub_10000959C(v27);

    return sub_100016270(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

uint64_t sub_100CEB4BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE218, &qword_1011BE110);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE110);
            v9 = sub_100D02368(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSSocialProfile();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEB64C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE180, &qword_1011BE178);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE178);
            v9 = sub_100D0241C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSSocialProfileCollectionItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEB7DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE1C0, &qword_1011BE1B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE1B8);
            v9 = sub_100D0249C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSGridItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEB96C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE1F0, &qword_1011BE1E8);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE1E8);
            v9 = sub_100D02548(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSShelfItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEBAFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE1A0, &qword_1011BE198);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE198);
            v9 = sub_100D025F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSFlowcaseItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEBC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE200, &qword_1011BE1F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE1F8);
            v9 = sub_100D026AC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSSearchLandingItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEBE1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE190, &qword_1011BE188);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE188);
            v9 = sub_100D0272C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSGridSection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEBFAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE1D0, &qword_1011BE1C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE1C8);
            v9 = sub_100D027E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSMenuSection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEC13C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE1B0, &qword_1011BE1A8);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE1A8);
            v9 = sub_100D02894(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSBrickItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEC2CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10065BD00(&qword_1011BE210, &qword_1011BE208);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011BE208);
            v9 = sub_100D02944(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for JSShelfSection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100CEC488()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100CEC45C(v0);
}

void sub_100CEC4FC()
{
  sub_100CEC5A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100CEC5A4()
{
  if (!qword_1011BE168)
  {
    sub_1001109D0(&qword_1011BE110);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BE168);
    }
  }
}

uint64_t sub_100CEC714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CEC7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_1000189C0(a3, v12);
  if (v12[3])
  {
    sub_1000189C0(v12, v10);

    if (swift_dynamicCast())
    {
      if (a1 == 0x6D69547472617473 && a2 == 0xEE00706D61747365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp;
LABEL_7:
        v7 = v3 + v6;
        *v7 = v9;
        *(v7 + 8) = 0;
        sub_10000959C(v10);
        sub_1000095E8(v12, &unk_101183F30);
      }

      if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp;
        goto LABEL_7;
      }
    }

    sub_10000959C(v10);
  }

  else
  {
  }

  return sub_1000095E8(v11, &unk_1011C0D90);
}

id sub_100CEC974(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp];
  *v5 = 0;
  v5[8] = 1;
  return JSObject.init(type:)(a1);
}

uint64_t *JSBridge.shared.unsafeMutableAddressor()
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  return &static JSBridge.shared;
}

id sub_100CECA6C()
{
  result = [objc_allocWithZone(type metadata accessor for JSBridge()) init];
  static JSBridge.shared = result;
  return result;
}

uint64_t JSBridge.wasStarted.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) != 0x8000000000000000 || (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 32)) != 0;
  }

  __break(1u);
  return result;
}

uint64_t JSBridge.isScriptDeployed.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v9 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
    result = 0;
    if (v9 >> 62)
    {
      if (v9 >> 62 != 2)
      {
        return 1;
      }

      v11 = v8[3];
      v10 = v8[4];
      v12 = *v8;
      v13 = v8[1];
      v14 = v11 | v10;
      if (v9 != 0x8000000000000000 || (v14 | v12 | v13) != 0)
      {
        v16 = v14 | v13;
        v17 = v9 == 0x8000000000000000 && v12 == 1;
        v18 = v17 && v16 == 0;
        if (!v18 && (v9 != 0x8000000000000000 || v12 != 2 || v16) && (v9 != 0x8000000000000000 || v12 != 3 || v16))
        {
          return 1;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a3;
  v21 = a2;
  v23 = a1;
  type metadata accessor for Signpost();
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20[1] = sub_100009F78(0, &qword_101182960);
  *v11 = static OS_dispatch_queue.main.getter();
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v9 + 104);
  v13(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = _dispatchPreconditionTest(_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_100CEF4C0(v7);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_100CF9158(v7, type metadata accessor for Signpost);
  v26[0] = v23;
  v26[1] = v21;
  v27 = v22 & 1;
  v28 = a4;
  v29 = v24;
  swift_unknownObjectRetain();

  *v11 = static OS_dispatch_queue.main.getter();
  v13(v11, v12, v8);
  v14 = _dispatchPreconditionTest(_:)();
  v15(v11, v8);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v15 = v25;
  if (*(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) != 1)
  {
    v17 = v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
    v18 = *(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
    *(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
    sub_100CED158(v15, v26);
    *(v15 + v16) = 0;
    if ((((*(v17 + 2) >> 62 == 0) ^ v18) & 1) == 0)
    {
      goto LABEL_8;
    }

    v14 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_7:
      [v14 postNotificationName:static JSBridge.didFailInitializationDidChange object:v15];

      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  sub_100CED158(v25, v26);
LABEL_8:

  return swift_unknownObjectRelease();
}

void sub_100CED158(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v20[-v6];
  v8 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v7, &qword_101188C20);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  sub_1000095E8(v7, &qword_101188C20);
  if (v11 == 1)
  {
    Date.init()();
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_10006B010(v5, a1 + v8, &qword_101188C20);
    swift_endAccess();
  }

  v12 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v13 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v14 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v15 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  *v12 = xmmword_100EC78D0;
  *(v12 + 16) = 0x8000000000000000;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  sub_100CF90F0(v13, v14, v15);
  sub_100CF69D8(a2);
  if ((v16 & 1) == 0)
  {
    BagProvider.shared.unsafeMutableAddressor();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *a2;
    v22 = *(a2 + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = *(a2 + 16);
    *(v18 + 24) = *a2;
    *(v18 + 40) = v19;
    *(v18 + 56) = *(a2 + 32);

    sub_1000089F8(&v21, v20, &unk_1011BE5E0);
    sub_1000089F8(&v22, v20, &qword_1011815E0);
    BagProvider.getBag(completion:)(sub_100CFA334, v18);
  }
}

uint64_t JSBridge.requestAccessToCommonSingletons(block:)(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_101182960);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF0694, v5);
}

uint64_t sub_100CED4F8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v7 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v7 >> 62 == 1 || v7 >> 62 == 2 && ((v9 = v6[3], v8 = v6[4], v10 = *v6, !(v9 | v8)) ? (v11 = v7 == 0x8000000000000000) : (v11 = 0), v11 ? (v12 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8) == 0) : (v12 = 0), v12 ? (v13 = v10 == 4) : (v13 = 0), v13))
  {
    v14 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
    v15 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
    v43[4] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
    v43[5] = v15;
    v43[6] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
    v44 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
    v16 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
    v43[0] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
    v43[1] = v16;
    v17 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
    v43[2] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
    v43[3] = v17;
    if (*&v43[0])
    {
      v45 = *&v43[0];
      v49 = *(v14 + 56);
      v50 = *(v14 + 72);
      v51 = *(v14 + 88);
      v52 = *(v14 + 104);
      v46 = *(v14 + 8);
      v47 = *(v14 + 24);
      v48 = *(v14 + 40);
      v18 = *v14;
      v19 = v14[2];
      v20 = v14[3];
      v41[1] = v14[1];
      v41[2] = v19;
      v41[0] = v18;
      v21 = v14[4];
      v22 = v14[5];
      v23 = v14[6];
      v42 = *(v14 + 14);
      v41[5] = v22;
      v41[6] = v23;
      v41[3] = v20;
      v41[4] = v21;
      sub_100CF9E64(v41, v40);
      a2(&v45);
      return sub_1000095E8(v43, &unk_1011BE618);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    swift_beginAccess();
    v27 = *(a1 + v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_100DD5F14(0, v27[2] + 1, 1, v27);
      *(a1 + v26) = v27;
    }

    v34 = v27[2];
    v35 = v27[3];
    v36 = v34 + 1;
    if (v34 >= v35 >> 1)
    {
      v37 = v27;
      v38 = v27[2];
      v39 = sub_100DD5F14((v35 > 1), v34 + 1, 1, v37);
      v34 = v38;
      v27 = v39;
    }

    v27[2] = v36;
    v31 = &v27[2 * v34];
    v32 = sub_100CFA5A4;
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    swift_beginAccess();
    v27 = *(a1 + v26);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v26) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_100DD5F14(0, v27[2] + 1, 1, v27);
      *(a1 + v26) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_100DD5F14((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v32 = sub_100CFA2D8;
  }

  v31[4] = v32;
  v31[5] = v25;
  *(a1 + v26) = v27;
  return swift_endAccess();
}

uint64_t JSBridge.requestAccessToCommonSingletons()(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_100CED820, 0, 0);
}

uint64_t sub_100CED820()
{
  v1 = v0[33];
  v2 = swift_task_alloc();
  v0[34] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_100CED918;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 17, 0, 0, 0xD000000000000021, 0x8000000100E6DE50, sub_100CF06A0, v2, &type metadata for JSBridge.Singletons);
}

uint64_t sub_100CED918()
{

  return _swift_task_switch(sub_100CEDA30, 0, 0);
}

uint64_t sub_100CEDA30()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 152);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 168);
  v4 = *(v0 + 184);
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  *(v0 + 128) = v6;
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  *(v0 + 80) = v9;
  *(v5 + 112) = v6;
  *(v5 + 80) = v8;
  *(v5 + 96) = v7;
  *(v5 + 48) = v4;
  *(v5 + 64) = v9;
  *(v5 + 16) = v2;
  *(v5 + 32) = v3;
  *v5 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100CEDA8C(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_1011BE688);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_100009F78(0, &qword_101182960);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_100CFA25C;
  v11[4] = v10;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA5AC, v11);
}

uint64_t sub_100CEDC2C(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v2;
  v3 = *(a1 + 16);
  v8 = *a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v15 = *(a1 + 112);
  v11 = v5;
  v12 = v1;
  sub_100CF9E64(a1, v7);
  sub_10010FC20(&qword_1011BE688);
  return CheckedContinuation.resume(returning:)();
}

Swift::Void __swiftcall JSBridge.retryInitialization()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v5 = static OS_dispatch_queue.main.getter();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    static os_log_type_t.default.getter();
    if (qword_1011BDB60 == -1)
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
  os_log(_:dso:log:_:_:)();
  *v5 = static OS_dispatch_queue.main.getter();
  v7(v5, v6, v2);
  v10 = _dispatchPreconditionTest(_:)();
  v9(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    v13 = v12[2];
    if (!(v13 >> 62))
    {
      v14 = v12[3];
      v15 = v12[4];
      v17 = *v12;
      v16 = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12[2] = 0x8000000000000000;
      JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(v17, v16, v13 & 1, v14, v15);
      swift_unknownObjectRelease();
    }

    return;
  }

  v19 = *v12;
  v18 = v12[1];
  v20 = v12[3];
  v21 = v12[2];
  v22 = v12[4];
  *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  v23 = v21 >> 62;
  if (!(v21 >> 62))
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0x8000000000000000;
    v12[3] = 0;
    v12[4] = 0;
    JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(v19, v18, v21 & 1, v20, v22);
    swift_unknownObjectRelease();
  }

  *(v1 + v11) = 0;
  if ((v23 == 0) == (v12[2] >> 62 != 0))
  {
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_11:
      [v10 postNotificationName:static JSBridge.didFailInitializationDidChange object:v1];

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }
}

uint64_t JSBridge.initializationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  return sub_1000089F8(v1 + v3, a1, &qword_101188C20);
}

uint64_t JSBridge.initializationDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  sub_10006B010(a1, v1 + v3, &qword_101188C20);
  return swift_endAccess();
}

NSString sub_100CEE14C()
{
  result = String._bridgeToObjectiveC()();
  static JSBridge.didFailInitializationDidChange = result;
  return result;
}

uint64_t *JSBridge.didFailInitializationDidChange.unsafeMutableAddressor()
{
  if (qword_1011BDB10 != -1)
  {
    swift_once();
  }

  return &static JSBridge.didFailInitializationDidChange;
}

NSString sub_100CEE1F8()
{
  result = String._bridgeToObjectiveC()();
  static JSBridge.bridgeInitializationDidSucceed = result;
  return result;
}

uint64_t *JSBridge.bridgeInitializationDidSucceed.unsafeMutableAddressor()
{
  if (qword_1011BDB18 != -1)
  {
    swift_once();
  }

  return &static JSBridge.bridgeInitializationDidSucceed;
}

uint64_t sub_100CEE2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_100CEE35C(a2, a1);

  v13 = sub_100DD3F80(a2);
  v15 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v14 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = v14;
  v18 = 1;

  sub_100CEFFBC(v17, a7);
  return sub_100CF9F94(v17);
}

char *sub_100CEE35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a2 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = a2 + 32;
      v8 = (a1 + 32);
      v9 = _swiftEmptyArrayStorage;
      while (1)
      {
        *&v21[0] = v6;
        sub_10000DD18(v7 + 32 * v6, v21 + 8);
        v23 = v21[0];
        v24 = v21[1];
        v25 = v22;
        if (!v22)
        {
          break;
        }

        ++v6;
        v17 = *&v21[0];
        sub_100016270((&v23 + 8), v21);
        v10 = v3;
        v11 = v8;
        while (v10)
        {
          v12 = *v11++;
          --v10;
          if (v12 == v17)
          {
            v20 = &type metadata for Any + 8;
            v19[0] = swift_allocObject();
            sub_10000DD18(v21, v19[0] + 16);
            goto LABEL_10;
          }
        }

        v20 = &type metadata for Any + 8;
        v19[0] = swift_allocObject();
        sub_10000DD18(v21, v19[0] + 16);
        v13 = JSSerialize(_:)(v19);
        sub_10000959C(v19);
        v20 = sub_100009F78(0, &qword_101197A30);
        v19[0] = v13;
LABEL_10:
        sub_10000DD18(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100498DB0(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_100498DB0((v14 > 1), v15 + 1, 1, v9);
        }

        sub_10000959C(v21);
        *(v9 + 2) = v15 + 1;
        sub_100016270(v18, &v9[32 * v15 + 32]);
        sub_10000959C(v19);
        if (v6 == v5)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
LABEL_20:
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    return v9;
  }

  else
  {

    return sub_100DD3E28(a2);
  }
}

uint64_t sub_100CEE5D0(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  v11 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
  v13 = *(a2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v25 = v12;
  v26 = v11;
  v14 = *(*v13 + 128);
  swift_bridgeObjectRetain_n();

  v15 = a1;
  v14(a1, &v25);

  if (a5)
  {
    v16 = 1;
    v17 = a3;
    v18 = a4;
  }

  else
  {
    v19 = _s11MusicJSCore27JSNativelyInstantiatedClassO10fromObjectACSgAA8JSObjectC_tcfC_0(v15);
    if (v19 == 44)
    {
    }

    v17 = JSNativelyInstantiatedClass.rawValue.getter(v19);
    v18 = v21;
    v16 = 0;
  }

  sub_100CFA3E4(a3, a4, a5);
  sub_100CFA434(v17, v18, a5, v16);
  v22 = sub_100DD3E28(a6);
  v25 = v17;
  v26 = v18;
  v27 = a5;
  v28 = v16;
  v29 = v22;
  v30 = v12;
  v31 = v11;
  v32 = 0;
  sub_100CEFFBC(&v25, a7 & 1);
  sub_100CFA48C(v17, v18, a5, v16);
  return sub_100CF9F94(&v25);
}

uint64_t sub_100CEE760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v8 = a2;
  v9 = a3;
  v6 = *(*v5 + 128);

  v6(0, &v8);

  v8 = a2;
  v9 = a3;
  v10 = 2;

  sub_100CEFFBC(&v8, 0);
  return sub_100CF9F94(&v8);
}

uint64_t sub_100CEE820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9[0] = a1;
  v6 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v7 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v9[1] = a2;
  v9[2] = v6;
  v9[3] = v7;
  v10 = 3;

  sub_100CEFFBC(v9, a5);
  return sub_100CF9F94(v9);
}

uint64_t sub_100CEE8A0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
  v11 = *(a2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v15 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  v10 = v15;
  v16 = v9;
  v12 = *(*v11 + 128);
  swift_bridgeObjectRetain_n();

  v13 = a1;
  v12(a1, &v15);

  v15 = a3;
  v16 = a4;
  v17 = v10;
  v18 = v9;
  v19 = 4;

  sub_100CEFFBC(&v15, a5);
  return sub_100CF9F94(&v15);
}

uint64_t sub_100CEE99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_100DD3E28(a3);
  v10 = *(a4 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v9 = *(a4 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = 5;

  sub_100CEFFBC(v12, 0);
  return sub_100CF9F94(v12);
}

uint64_t sub_100CEEA38(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v25 = 0u;
  v26 = 0u;
  if (a1)
  {
    sub_1000089F8(a2, &v18, &unk_101183F30);
    if (v19)
    {
      sub_100016270(&v18, &v20);
      v13 = JSSerialize(_:)(&v20);
      v14 = sub_100009F78(0, &qword_101197A30);
      sub_10000959C(&v20);
      sub_1000095E8(&v25, &unk_101183F30);
      *&v25 = v13;
      *(&v26 + 1) = v14;
    }

    else
    {
      sub_1000095E8(&v18, &unk_101183F30);
    }
  }

  else
  {
    sub_1000095E8(&v25, &unk_101183F30);
    sub_1000089F8(a2, &v25, &unk_101183F30);
  }

  *&v20 = a3;
  *(&v20 + 1) = a4;
  sub_1000089F8(&v25, v21, &unk_101183F30);
  v21[32] = a1 & 1;
  v15 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v16 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v22 = v15;
  v23 = v16;
  v24 = 6;

  sub_100CEFFBC(&v20, a7 & 1);
  sub_100CF9F94(&v20);
  return sub_1000095E8(&v25, &unk_101183F30);
}

uint64_t sub_100CEEC00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100009F78(0, &qword_101182960);
  *v5 = static OS_dispatch_queue.main.getter();
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  *v5 = static OS_dispatch_queue.main.getter();
  v8(v5, v7, v2);
  v6 = _dispatchPreconditionTest(_:)();
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v12 = v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v13 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v14 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v15 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  v16 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24);
  v17 = *v16;
  v18 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 32);
  v19 = v15 >> 62;
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) != 1)
  {
    if (!v19 || v19 == 2 && ((v23 = v17 | v14, v15 == 0x8000000000000000) && !(v23 | v13 | v18) || (v24 = v23 | v18, v15 == 0x8000000000000000) && v13 == 1 && !v24 || v15 == 0x8000000000000000 && v13 == 2 && !v24 || v15 == 0x8000000000000000 && v13 == 3 && !v24))
    {
      result = 0;
      *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 0;
      return result;
    }

    type metadata accessor for JSBridge.SuspensionContext();
    v26 = swift_allocObject();
    v26[2] = _swiftEmptyArrayStorage;
    v26[3] = _swiftEmptyArrayStorage;
    v26[4] = v13;
    v26[5] = v14;
    v26[6] = v15;
    v26[7] = v17;
    v26[8] = v18;
    *v12 = v26;
    *(v12 + 8) = xmmword_100F11480;
    *v16 = 0;
    v16[1] = 0;
    *(v1 + v11) = 0;
    if (v19)
    {
      return 1;
    }

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_35:
      [v6 postNotificationName:static JSBridge.didFailInitializationDidChange object:v1];

      return 1;
    }

LABEL_39:
    swift_once();
    goto LABEL_35;
  }

  if (!v19)
  {
    return 0;
  }

  if (v19 == 2)
  {
    v20 = v17 | v14;
    if (v15 == 0x8000000000000000 && !(v20 | v13 | v18))
    {
      return 0;
    }

    v21 = v20 | v18;
    if (v15 == 0x8000000000000000 && v13 == 1 && !v21)
    {
      return 0;
    }

    if (v15 == 0x8000000000000000 && v13 == 2 && !v21 || v15 == 0x8000000000000000 && v13 == 3 && !v21)
    {
      return 0;
    }
  }

  type metadata accessor for JSBridge.SuspensionContext();
  v25 = swift_allocObject();
  v25[2] = _swiftEmptyArrayStorage;
  v25[3] = _swiftEmptyArrayStorage;
  v25[4] = v13;
  v25[5] = v14;
  v25[6] = v15;
  v25[7] = v17;
  v25[8] = v18;
  *v12 = v25;
  *(v12 + 8) = xmmword_100F11480;
  result = 1;
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_100CEEFBC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v25 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v25 >> 62 == 1)
  {
    v3 = *v1;
    v4 = v1[1];
    swift_beginAccess();
    v5 = v3[3];
    swift_beginAccess();
    v6 = v3[2];

    v24 = v4;
    sub_100CFA07C(v3, v4, v25);
    sub_100CE86E4(v6);
    v7 = v5;
    v9 = v3[4];
    v8 = v3[5];
    v11 = v3[6];
    v10 = v3[7];
    v12 = v3[8];
    if (v11 >> 62 == 1)
    {
      if (*(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) == 1)
      {
        swift_beginAccess();
        sub_100CFA07C(v9, v8, v11);

        sub_100CE86E4(v7);
        swift_endAccess();
        sub_100CF90F0(v9, v8, v11);
        v13 = v3;
        v14 = v24;
        v15 = v25;
      }

      else
      {
        swift_beginAccess();
        sub_100CFA07C(v9, v8, v11);

        sub_100CE86E4(v7);
        swift_endAccess();
        sub_100CF90F0(v3, v24, v25);
        v13 = v9;
        v14 = v8;
        v15 = v11;
      }

      sub_100CF90F0(v13, v14, v15);
      v18 = *v1;
      v19 = v1[1];
      v20 = v1[2];
      *v1 = v9;
      v1[1] = v8;
      v1[2] = v11;
      v1[3] = v10;
      v1[4] = v12;
    }

    else
    {
      v16 = v3[8];
      swift_beginAccess();
      sub_100CFA07C(v9, v8, v11);
      sub_100CE86E4(v7);
      swift_endAccess();
      v17 = *v1;
      v22 = v1[2];
      v23 = v1[1];
      *v1 = v9;
      v1[1] = v8;
      v1[2] = v11;
      v1[3] = v10;
      v1[4] = v16;
      sub_100CFA07C(v9, v8, v11);
      sub_100CF90F0(v17, v23, v22);
      sub_100CF3D2C();
      sub_100CF90F0(v9, v8, v11);
      v18 = v3;
      v19 = v24;
      v20 = v25;
    }

    return sub_100CF90F0(v18, v19, v20);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t JSBridge.environmentMonitorDidChangeNetworkReachability(_:)()
{
  sub_100009F78(0, &qword_101182960);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF85A8, v1);
}

void sub_100CEF380()
{
  static os_log_type_t.default.getter();
  if (qword_1011BDB60 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  JSBridge.retryInitialization()();
}

uint64_t sub_100CEF4C0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011BE5D0);
  __chkstk_darwin();
  v4 = &v15[-v3];
  sub_10010FC20(&qword_1011A3FD0);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC11MusicJSCore8JSBridge____lazy_storage___bootSignpost;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A3FD0);
  v10 = type metadata accessor for Signpost();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100CF9220(v8, a1, type metadata accessor for Signpost);
  }

  sub_1000095E8(v8, &qword_1011A3FD0);
  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = *OS_os_log.musicSignposts.unsafeMutableAddressor();
  Signpost.init(name:id:log:)("Boot JSBridge", 13, 2, v4, v13, a1);
  sub_100CF91B8(a1, v6, type metadata accessor for Signpost);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A3FD0);
  return swift_endAccess();
}

void *sub_100CEF778(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10066CA24(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000DD18(v4, v8);
      sub_100CEF86C(v9, v8);
      sub_10000959C(v8);
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10066CA24((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_100016270(v9, &v2[4 * v6 + 4]);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100CEF86C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  sub_10000DD18(a1, &v69);
  v6 = sub_10010FC20(&unk_1011BE640);
  if (swift_dynamicCast())
  {
    v7 = sub_100CEF778(v64);

    a2[3] = v6;
    *a2 = v7;
    return result;
  }

  sub_10000DD18(v4, &v69);
  sub_10010FC20(&qword_101197BD0);
  if (swift_dynamicCast())
  {
    if (*(v64 + 16))
    {
      v9 = sub_100019C10(0xD000000000000016, 0x8000000100E6E500);
      if (v10)
      {
        sub_10000DD18(*(v64 + 56) + 32 * v9, &v69);
        if (swift_dynamicCast())
        {
          v11 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
          v69 = v64;
          v12 = *(*v11 + 120);

          v13 = v12(&v69);

          if (v13)
          {
            v14 = *(v64 + 16);

            if (v14 != 1)
            {
              goto LABEL_52;
            }

            result = type metadata accessor for JSObject();
            a2[3] = result;
            *a2 = v13;
            return result;
          }
        }
      }
    }
  }

  sub_10000DD18(v4, &v69);
  v15 = sub_10010FC20(&unk_1011BE660);
  if (!swift_dynamicCast())
  {
    return sub_10000DD18(v4, a2);
  }

  v54 = v15;
  v55 = a2;
  v16 = sub_100060CB0(_swiftEmptyArrayStorage);
  v17 = 0;
  v4 = v64 + 64;
  v56 = v64;
  v18 = 1 << *(v64 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v64 + 64);
  a2 = ((v18 + 63) >> 6);
  while (v20)
  {
    v13 = v17;
LABEL_25:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v24 | (v13 << 6);
    sub_1000160F8(*(v56 + 48) + 40 * v25, v62);
    sub_10000DD18(*(v56 + 56) + 32 * v25, v61);
    v64 = v62[0];
    v65 = v62[1];
    *&v66 = v63;
    sub_100016270(v61, (&v66 + 8));
    v23 = v13;
LABEL_26:
    v71[0] = v66;
    v71[1] = v67;
    v72 = v68;
    v69 = v64;
    v70 = v65;
    if (!*(&v65 + 1))
    {

      v55[3] = v54;
      *v55 = v16;
      return result;
    }

    v57 = v23;
    v64 = v69;
    v65 = v70;
    *&v66 = *&v71[0];
    sub_100016270((v71 + 8), v61);
    sub_100CEF86C(v60, v61);
    v59 = &type metadata for AnyHashable;
    *&v58 = swift_allocObject();
    sub_1000160F8(&v64, v58 + 16);
    sub_100CEF86C(v62, &v58);
    sub_10000959C(&v58);
    sub_100009F78(0, &qword_101197A30);
    if (swift_dynamicCast())
    {
      v26 = v3;
      v27 = v58;
      sub_100CFA10C();
      v28 = v27;
      AnyHashable.init<A>(_:)();
      sub_10000DD18(v60, &v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_1000160B4(v62);
      v32 = v16[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v35 = v30;
      if (v16[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1006C8CD0();
        }
      }

      else
      {
        sub_1006C199C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_1000160B4(v62);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_58;
        }

        v31 = v36;
      }

      if (v35)
      {
        v47 = (v16[7] + 32 * v31);
        sub_10000959C(v47);
        sub_100016270(&v58, v47);

        sub_10001621C(v62);
        sub_10000959C(v60);
        sub_10000959C(v61);
        sub_10001621C(&v64);
      }

      else
      {
        v16[(v31 >> 6) + 8] |= 1 << v31;
        sub_1000160F8(v62, v16[6] + 40 * v31);
        sub_100016270(&v58, (v16[7] + 32 * v31));

        sub_10001621C(v62);
        sub_10000959C(v60);
        sub_10000959C(v61);
        sub_10001621C(&v64);
        v51 = v16[2];
        v43 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v43)
        {
          goto LABEL_56;
        }

        v16[2] = v52;
      }

      v17 = v57;
      v3 = v26;
    }

    else
    {
      sub_1000160F8(&v64, v62);
      sub_10000DD18(v60, &v58);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = sub_1000160B4(v62);
      v41 = v16[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_55;
      }

      v45 = v40;
      if (v16[3] >= v44)
      {
        if (v38)
        {
          goto LABEL_41;
        }

        v53 = v39;
        sub_1006C8CD0();
        v39 = v53;
        if (v45)
        {
          goto LABEL_15;
        }

LABEL_42:
        v16[(v39 >> 6) + 8] |= 1 << v39;
        v48 = v39;
        sub_1000160F8(v62, v16[6] + 40 * v39);
        sub_100016270(&v58, (v16[7] + 32 * v48));
        sub_10001621C(v62);
        sub_10000959C(v60);
        sub_10000959C(v61);
        sub_10001621C(&v64);
        v49 = v16[2];
        v43 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v43)
        {
          goto LABEL_57;
        }

        v16[2] = v50;
        v17 = v57;
      }

      else
      {
        sub_1006C199C(v44, v38);
        v39 = sub_1000160B4(v62);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_58;
        }

LABEL_41:
        if ((v45 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_15:
        v21 = (v16[7] + 32 * v39);
        sub_10000959C(v21);
        sub_100016270(&v58, v21);
        sub_10001621C(v62);
        sub_10000959C(v60);
        sub_10000959C(v61);
        sub_10001621C(&v64);
        v17 = v57;
      }
    }
  }

  if (a2 <= v17 + 1)
  {
    v22 = (v17 + 1);
  }

  else
  {
    v22 = a2;
  }

  v23 = v22 - 1;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      v20 = 0;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      goto LABEL_26;
    }

    v20 = *(v4 + 8 * v13);
    ++v17;
    if (v20)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_52:

  return sub_10000DD18(v4, a2);
}

void sub_100CEFFBC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2)
  {
    sub_100CF9F5C(a1, &v56);
    v6 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup;
    swift_beginAccess();
    v10 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v6) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_100DD5F28((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 16) = v13 + 1;
      v14 = (v10 + 80 * v13);
      v14[2] = v56;
      v15 = v57;
      v16 = v58;
      v17 = v59[0];
      *(v14 + 89) = *(v59 + 9);
      v14[4] = v16;
      v14[5] = v17;
      v14[3] = v15;
      *(v3 + v6) = v10;
      swift_endAccess();
      return;
    }

LABEL_26:
    v10 = sub_100DD5F28(0, *(v10 + 16) + 1, 1, v10);
    *(v3 + v6) = v10;
    goto LABEL_4;
  }

  v18 = (v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v19 = *(v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v19 >> 62 == 1)
  {
    v21 = *v18;
    v20 = v18[1];
    if (*(v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) == 1)
    {
      sub_100CF9F5C(a1, &v56);
      swift_beginAccess();
      v22 = *(v21 + 24);

      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 24) = v22;
      if ((v23 & 1) == 0)
      {
        v22 = sub_100DD5F28(0, *(v22 + 2) + 1, 1, v22);
        *(v21 + 24) = v22;
      }

      v24 = *(v22 + 2);
      v25 = *(v22 + 3);
      v26 = v24 + 1;
      if (v24 >= v25 >> 1)
      {
        v49 = v22;
        v50 = *(v22 + 2);
        v51 = sub_100DD5F28((v25 > 1), v24 + 1, 1, v49);
        v24 = v50;
        v22 = v51;
      }

      *(v22 + 2) = v26;
      v27 = &v22[80 * v24];
      *(v27 + 2) = v56;
      v28 = v57;
      v29 = v58;
      v30 = v59[0];
      *(v27 + 89) = *(v59 + 9);
      *(v27 + 4) = v29;
      *(v27 + 5) = v30;
      *(v27 + 3) = v28;
      *(v21 + 24) = v22;
    }

    else
    {
      sub_100CF9F5C(a1, &v56);
      swift_beginAccess();
      v40 = *(v21 + 16);

      v41 = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 16) = v40;
      if ((v41 & 1) == 0)
      {
        v40 = sub_100DD5F28(0, *(v40 + 2) + 1, 1, v40);
        *(v21 + 16) = v40;
      }

      v42 = *(v40 + 2);
      v43 = *(v40 + 3);
      v44 = v42 + 1;
      if (v42 >= v43 >> 1)
      {
        v52 = v40;
        v53 = *(v40 + 2);
        v54 = sub_100DD5F28((v43 > 1), v42 + 1, 1, v52);
        v42 = v53;
        v40 = v54;
      }

      *(v40 + 2) = v44;
      v45 = &v40[80 * v42];
      *(v45 + 2) = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59[0];
      *(v45 + 89) = *(v59 + 9);
      *(v45 + 4) = v47;
      *(v45 + 5) = v48;
      *(v45 + 3) = v46;
      *(v21 + 16) = v40;
    }

    swift_endAccess();
    sub_100CF90F0(v21, v20, v19);
  }

  else
  {
    sub_100CF9F5C(a1, &v56);
    v31 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
    swift_beginAccess();
    v32 = *(v3 + v31);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v31) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_100DD5F28(0, *(v32 + 2) + 1, 1, v32);
      *(v3 + v31) = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_100DD5F28((v34 > 1), v35 + 1, 1, v32);
    }

    *(v32 + 2) = v35 + 1;
    v36 = &v32[80 * v35];
    *(v36 + 2) = v56;
    v37 = v57;
    v38 = v58;
    v39 = v59[0];
    *(v36 + 89) = *(v59 + 9);
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *(v3 + v31) = v32;
    swift_endAccess();
    sub_100CF3D2C();
  }
}

void sub_100CF047C(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    a1(v9);
    return;
  }

  v11 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v12 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  a1(v9);
  *(v2 + v10) = 0;
  if (((v12 ^ (*(v11 + 16) >> 62 != 0)) & 1) == 0)
  {
    v8 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_6:
      [v8 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }
}

void sub_100CF06C0(void (*a1)(uint64_t))
{
  v16 = a1;
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100009F78(0, &qword_101182960);
  *v6 = static OS_dispatch_queue.main.getter();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *v6 = static OS_dispatch_queue.main.getter();
  v9(v6, v8, v3);
  v7 = _dispatchPreconditionTest(_:)();
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    v16(v2);
    return;
  }

  v13 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v14 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  v16(v2);
  *(v2 + v12) = 0;
  if (v14 == (*(v13 + 16) >> 62 != 0))
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_7:
      [v7 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }
}

uint64_t sub_100CF0934(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v3 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v2 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8];
  v4 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  v5 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24];
  if (v4 >> 62 == 1)
  {
    sub_100CFA07C(*&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state], v2, v4);
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[6];

    while (1)
    {
      sub_100CFA07C(v6, v7, v8);

      if (v8 >> 62 != 1)
      {
        break;
      }

      v3 = v6;

      v6 = *(v6 + 32);
      v7 = v3[5];
      v8 = v3[6];
    }

    sub_100CF90F0(v6, v7, v8);
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[6];
    *(v3 + 2) = xmmword_100EE94F0;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = 0x8000000000000000;
    sub_100CF90F0(v9, v10, v11);
  }

  else if (v4 >> 62 == 2 && v3 == 5 && v2 == 0 && v4 == 0x8000000000000000 && *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24] == 0)
  {
    *v1 = xmmword_100F11490;
    *(v1 + 2) = 0x8000000000000000;
    *v5 = 0;
    *(v5 + 1) = 0;
    v17 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
    swift_beginAccess();
    v19 = *&a1[v17];
    *&a1[v17] = _swiftEmptyArrayStorage;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    v21 = a1;
    JSThread.enqueueBlock(_:)(sub_100CFA0DC, v20);
  }

  else
  {
    _StringGuts.grow(_:)(90);
    v22._object = 0x8000000100E6E640;
    v22._countAndFlagsBits = 0xD000000000000057;
    String.append(_:)(v22);
    _print_unlocked<A, B>(_:_:)();
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100CF0BDC(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment];
  if (v13)
  {
    v21 = result;

    sub_100CF190C(a2, v13);
    v15 = v14;
    sub_100009F78(0, &qword_101182960);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    aBlock[4] = sub_100CFA0E4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010FD2D8;
    v18 = _Block_copy(aBlock);
    v19 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100CF9DAC(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_10002489C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v21);
  }

  return result;
}

void sub_100CF0ED8(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100009F78(0, &qword_101182960);
  *v6 = static OS_dispatch_queue.main.getter();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *v6 = static OS_dispatch_queue.main.getter();
  v9(v6, v8, v3);
  v7 = _dispatchPreconditionTest(_:)();
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    sub_100CF1144(v16, v2);
    return;
  }

  v13 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v14 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  sub_100CF1144(v16, v2);
  *(v2 + v12) = 0;
  if (v14 == (*(v13 + 16) >> 62 != 0))
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB10 == -1)
    {
LABEL_7:
      [v7 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }
}

uint64_t sub_100CF1144(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v84 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v56 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects;
    v55 = a1 + 32;
    v5 = &unk_101183F30;
    v54 = *(a1 + 16);
    while (1)
    {
      sub_100CF9FC4(v55 + 80 * v4, &v70);
      if (!v73[24])
      {
        v17 = *(&v70 + 1);
        v18 = v71;
        v19 = JSScriptingInstantiatedClass.constructScriptingDrivenInstance(_:)(*(&v70 + 1), v71, v70);
        v20 = *(a2 + v56);
        *&v62 = v17;
        *(&v62 + 1) = v18;
        v21 = *(*v20 + 128);

        v22 = v19;
        v21(v19, &v62);

        v23 = v22;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_5;
      }

      v6 = v5;
      if (v73[24] == 1)
      {
        break;
      }

      v24 = v70;
      v25 = v73[0];
      v77 = v71;
      v78 = v72;
      v26 = *(a2 + v56);
      v60[0] = *&v73[8];
      v27 = *(*v26 + 120);

      v28 = v27(v60);

      if (v28)
      {
        *&v60[0] = v28;
        type metadata accessor for JSObject();
        sub_10010FC20(&qword_1011BE658);
        if (swift_dynamicCast())
        {
          v3 = v54;
          if (*(&v61[1] + 1))
          {
            sub_100059A8C(v61, &v62);
            memset(v61, 0, 32);
            if (v25)
            {
              sub_1000089F8(&v77, &v58, v5);
              if (*(&v59 + 1))
              {
                sub_100016270(&v58, v60);
                sub_100CEF86C(v60, &v58);
                sub_10000959C(v60);
                sub_1000095E8(v61, v5);
                v61[0] = v58;
                v61[1] = v59;
              }

              else
              {
                sub_1000095E8(&v58, v5);
              }
            }

            else
            {
              sub_1000095E8(v61, v5);
              sub_1000089F8(&v77, v61, v5);
            }

            v31 = *(&v63 + 1);
            v32 = v64;
            sub_10000954C(&v62, *(&v63 + 1));
            (*(v32 + 16))(v24, *(&v24 + 1), v61, v31, v32);

            sub_1000095E8(v61, v5);
            sub_1000095E8(&v77, v5);
            sub_10000959C(&v62);
            goto LABEL_5;
          }
        }

        else
        {
          memset(v61, 0, 40);
          v3 = v54;
        }

        sub_1000095E8(&v77, v5);
      }

      else
      {
        sub_1000095E8(&v77, v5);

        memset(v61, 0, 40);
        v3 = v54;
      }

      sub_1000095E8(v61, &qword_1011BE650);
LABEL_5:
      if (++v4 == v3)
      {

        v2 = a2;
        goto LABEL_39;
      }
    }

    v7 = *(&v70 + 1);
    v53 = v70;
    v8 = v71;
    v9 = *(a2 + v56);
    v62 = __PAIR128__(v72, *(&v71 + 1));
    v10 = *(*v9 + 120);

    v11 = v10(&v62);

    if (v11)
    {
      *&v62 = v11;
      type metadata accessor for JSObject();
      sub_10010FC20(&qword_1011BE658);
      if (swift_dynamicCast())
      {
        if (*(&v61[1] + 1))
        {
          sub_100059A8C(v61, &v62);
          v12 = *(v8 + 16);
          if (v12)
          {
            *&v60[0] = _swiftEmptyArrayStorage;
            sub_10066CA24(0, v12, 0);
            v13 = *&v60[0];
            v14 = v8 + 32;
            do
            {
              sub_10000DD18(v14, &v77);
              sub_100CEF86C(&v77, v61);
              sub_10000959C(&v77);
              *&v60[0] = v13;
              v16 = v13[2];
              v15 = v13[3];
              if (v16 >= v15 >> 1)
              {
                sub_10066CA24((v15 > 1), v16 + 1, 1);
                v13 = *&v60[0];
              }

              v13[2] = v16 + 1;
              sub_100016270(v61, &v13[4 * v16 + 4]);
              v14 += 32;
              --v12;
            }

            while (v12);

            v3 = v54;
          }

          else
          {

            v13 = _swiftEmptyArrayStorage;
          }

          v29 = *(&v63 + 1);
          v30 = v64;
          sub_10000954C(&v62, *(&v63 + 1));
          (*(v30 + 8))(v53, v7, v13, v29, v30);

          sub_10000959C(&v62);
          goto LABEL_30;
        }
      }

      else
      {
        memset(v61, 0, 40);
      }
    }

    else
    {

      memset(v61, 0, 40);
    }

    sub_1000095E8(v61, &qword_1011BE650);
LABEL_30:
    v5 = v6;
    goto LABEL_5;
  }

LABEL_39:
  v33 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v34 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v35 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v36 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  *v33 = xmmword_100EE94F0;
  *(v33 + 16) = 0x8000000000000000;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  v37 = sub_100CF90F0(v34, v35, v36);
  v38 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
  *&v73[16] = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
  v74 = v38;
  v75 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
  v76 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
  v39 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
  v70 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
  v71 = v39;
  v40 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
  v72 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
  *v73 = v40;
  v41 = v70;
  v42 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
  v43 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
  v82 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
  v83 = v42;
  v44 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
  v45 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
  v77 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
  v78 = v45;
  v46 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
  v80 = v44;
  v81 = v43;
  v79 = v46;
  if (v70)
  {
    v47 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    v37 = swift_beginAccess();
    v48 = *(v2 + v47);
    v49 = *(v48 + 16);
    if (v49)
    {
      *(v2 + v47) = _swiftEmptyArrayStorage;
      v66 = *&v73[16];
      v67 = v74;
      v68 = v75;
      v69 = v76;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      v65 = *v73;
      sub_100CF9E64(&v62, v61);
      v50 = v48 + 40;
      do
      {
        v51 = *(v50 - 8);
        *(&v61[3] + 8) = v80;
        *(&v61[4] + 8) = v81;
        *(&v61[5] + 8) = v82;
        *(&v61[6] + 8) = v83;
        *(v61 + 8) = v77;
        *(&v61[1] + 8) = v78;
        *&v61[0] = v41;
        *(&v61[2] + 8) = v79;

        v51(v61);

        v50 += 16;
        --v49;
      }

      while (v49);
      sub_1000095E8(&v70, &unk_1011BE618);
    }
  }

  return sub_100CF3D2C(v37);
}

void sub_100CF190C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s11MusicJSCore8JSThreadC13assertRunning2onyAC_tFZ_0();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 evaluateScript:v8];

    if (v9)
    {
      sub_10066C960(0, v6, 0);
      v10 = _swiftEmptyArrayStorage;
      v11 = a1 + 32;
      do
      {
        sub_100CF9F5C(v11, v37);
        v12 = sub_100CF1CEC(v3);
        sub_100CF9F94(v37);
        *&v32 = v10;
        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          sub_10066C960((v13 > 1), v14 + 1, 1);
          v10 = v32;
        }

        v10[2] = v14 + 1;
        v10[v14 + 4] = v12;
        v11 += 80;
        --v6;
      }

      while (v6);
      v15 = objc_autoreleasePoolPush();
      v16 = String._bridgeToObjectiveC()();
      sub_10010FC20(&qword_101181530);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100EBC6B0;
      *(v17 + 56) = sub_10010FC20(&qword_1011BE628);
      *(v17 + 32) = v10;

      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = [v9 invokeMethod:v16 withArguments:isa];

      if (v19)
      {

        v20 = [v19 toArray];

        if (v20)
        {
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = *(v21 + 16);
          if (v22)
          {
            v23 = _swiftEmptyArrayStorage;
            v24 = v21 + 32;
            do
            {
              sub_10000DD18(v24, v36);
              v25 = objc_autoreleasePoolPush();
              sub_10000DD18(v36, v37);
              sub_100CF36D8(v37, &v32);
              if (v35[24] == 255)
              {
                sub_1000095E8(&v32, &unk_1011BE630);
              }

              else
              {
                v37[2] = v34;
                v38[0] = *v35;
                *(v38 + 9) = *&v35[9];
                v37[0] = v32;
                v37[1] = v33;
                sub_100CF9FC4(v37, &v32);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v23 = sub_100DD5F44(0, *(v23 + 2) + 1, 1, v23);
                }

                v27 = *(v23 + 2);
                v26 = *(v23 + 3);
                if (v27 >= v26 >> 1)
                {
                  v23 = sub_100DD5F44((v26 > 1), v27 + 1, 1, v23);
                }

                sub_100CF9FFC(v37);
                *(v23 + 2) = v27 + 1;
                v28 = &v23[80 * v27];
                v30 = v34;
                v29 = *v35;
                v31 = v33;
                *(v28 + 89) = *&v35[9];
                *(v28 + 4) = v30;
                *(v28 + 5) = v29;
                *(v28 + 3) = v31;
                *(v28 + 2) = v32;
              }

              objc_autoreleasePoolPop(v25);
              sub_10000959C(v36);
              v24 += 32;
              --v22;
            }

            while (v22);
          }

          else
          {
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_100CF1CEC(uint64_t a1)
{
  sub_100CF9F5C(v1, &v238);
  v3 = v238;
  if (v245 <= 2u)
  {
    if (v245)
    {
      if (v245 == 1)
      {
        v9 = v239;
        v10 = v240;
        v12 = *(&v241 + 1);
        v11 = v241;
        sub_10010FC20(&unk_1011972C0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100EC6C60;
        *(v13 + 32) = 1701869940;
        *(v13 + 40) = 0xE400000000000000;
        *(v13 + 48) = 0xD000000000000012;
        *(v13 + 56) = 0x8000000100E6E5B0;
        *(v13 + 72) = &type metadata for String;
        strcpy((v13 + 80), "callbackName");
        *(v13 + 93) = 0;
        *(v13 + 94) = -5120;
        *(v13 + 96) = v3;
        *(v13 + 104) = v9;
        *(v13 + 120) = &type metadata for String;
        *(v13 + 128) = 0x746E656D75677261;
        *(v13 + 136) = 0xE900000000000073;
        v14 = sub_10010FC20(&unk_1011BE640);
        *(v13 + 144) = v10;
        *(v13 + 168) = v14;
        *(v13 + 176) = 0xD000000000000029;
        *(v13 + 184) = 0x8000000100E6E5D0;
        *(v13 + 192) = *(&v10 + 1);
        *(v13 + 216) = v14;
        *(v13 + 224) = 0xD000000000000016;
        *(v13 + 264) = &type metadata for String;
        *(v13 + 232) = 0x8000000100E6E500;
        *(v13 + 240) = v11;
        *(v13 + 248) = v12;
        v15 = sub_10010BC60(v13);
      }

      else
      {
        v37 = v239;
        sub_10010FC20(&unk_1011972C0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_100EBDC20;
        *(v38 + 32) = 1701869940;
        *(v38 + 40) = 0xE400000000000000;
        *(v38 + 48) = 0x7463757274736564;
        *(v38 + 56) = 0xEB000000006E6F69;
        *(v38 + 72) = &type metadata for String;
        *(v38 + 80) = 0xD000000000000016;
        *(v38 + 120) = &type metadata for String;
        *(v38 + 88) = 0x8000000100E6E500;
        *(v38 + 96) = v3;
        *(v38 + 104) = v37;
        v15 = sub_10010BC60(v38);
      }

      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
      goto LABEL_19;
    }

    v22 = v238;
    v23 = v239;
    v129 = v240;
    v128 = BYTE8(v240);
    v24 = *(&v241 + 1);
    v25 = v241;
    v26 = v242;
    sub_10010FC20(&unk_1011972C0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100EBE260;
    *(v27 + 32) = 1701869940;
    *(v27 + 40) = 0xE400000000000000;
    strcpy((v27 + 48), "construction");
    *(v27 + 61) = 0;
    *(v27 + 62) = -5120;
    *(v27 + 72) = &type metadata for String;
    *(v27 + 80) = 0x746E656D75677261;
    *(v27 + 88) = 0xE900000000000073;
    v28 = sub_10010FC20(&unk_1011BE640);
    *(v27 + 96) = v25;
    *(v27 + 120) = v28;
    *(v27 + 128) = 0xD000000000000016;
    *(v27 + 168) = &type metadata for String;
    *(v27 + 136) = 0x8000000100E6E500;
    *(v27 + 144) = v24;
    *(v27 + 152) = v26;
    v15 = sub_10010BC60(v27);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v128)
    {
      if (v22 < 0)
      {
        v51 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v29 = v23;
        v52 = v22;
      }

      else
      {
        v29 = v23;
        v30 = v22;
        switch(v22)
        {
          case 1:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v92 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v92;
            v93 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v93;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v94 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v94;
            v95 = *(&v230 + 1);
            v57 = v231;
            v193 = *(v83 + 88);
            v200 = *(v83 + 104);
            v166 = *(v83 + 56);
            v180 = *(v83 + 72);
            v138 = *(v83 + 24);
            v152 = *(v83 + 40);
            if (v230)
            {
              *v228 = v230;
              *&v228[16] = v231;
              *&v229[32] = *(v83 + 56);
              *&v229[48] = *(v83 + 72);
              *&v229[64] = *(v83 + 88);
              *&v229[80] = *(v83 + 104);
              goto LABEL_50;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v30, v29, v129, 1);
            *&v229[32] = v166;
            *&v229[48] = v180;
            *&v229[64] = v193;
            *&v229[80] = v200;
            v126 = v152;
            *v229 = v138;
            *v228 = 0;
            *&v228[8] = v95;
            *&v228[16] = v57;
            goto LABEL_73;
          case 2:
            v76 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v77 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v78 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v77;
            v79 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v80 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v80;
            v81 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v81;
            v207 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v177 = v79;
            v191 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v149 = v78;
            v163 = v234;
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v57 = *(&v80 + 1);
            v199 = *(v76 + 112);
            v135 = v232;
            if (v230)
            {
              *&v228[8] = *(v76 + 8);
              *v228 = v230;
              *v229 = *(&v231 + 1);
              v82 = *(v76 + 80);
              *&v229[40] = *(v76 + 64);
              *&v229[56] = v82;
              *&v229[72] = *(v76 + 96);
              *&v229[88] = *(v76 + 112);
              v66 = *(v76 + 48);
              *&v229[8] = *(v76 + 32);
              goto LABEL_36;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *&v228[8] = v207;
            *v228 = 0;
            *v229 = v57;
            *&v229[40] = v163;
            *&v229[56] = v177;
            *&v229[72] = v191;
            *&v229[88] = v199;
            *&v229[8] = v135;
            *&v229[24] = v149;
            goto LABEL_80;
          case 3:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v84 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v84;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v85 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v85;
            v86 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v86;
            v216 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v208 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v232;
            v178 = *(v83 + 88);
            v192 = *(v83 + 104);
            v136 = *(v83 + 40);
            v150 = *(v83 + 56);
            v164 = *(v83 + 72);
            if (v230)
            {
              *&v228[8] = *(v83 + 8);
              v87 = *(v83 + 24);
              *v228 = v230;
              *v229 = v87;
              *&v229[8] = v232;
              *&v229[32] = *(v83 + 56);
              *&v229[48] = *(v83 + 72);
              *&v229[64] = *(v83 + 88);
              *&v229[80] = *(v83 + 104);
              goto LABEL_51;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *&v228[8] = v208;
            v126 = v136;
            *&v229[32] = v150;
            *&v229[48] = v164;
            *&v229[64] = v178;
            *&v229[80] = v192;
            *v228 = 0;
            *v229 = v216;
            *&v229[8] = v57;
            goto LABEL_73;
          case 4:
            v59 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v60 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v61 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v61;
            v62 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v63 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v63;
            v64 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v64;
            v205 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v214 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v160 = v62;
            v174 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v57 = *(&v232 + 1);
            v188 = *(v59 + 112);
            v132 = v60;
            v146 = v234;
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              *&v228[8] = v205;
              *v229 = v214;
              *v228 = 0;
              *&v229[16] = v57;
              *&v229[56] = v160;
              *&v229[72] = v174;
              *&v229[88] = v188;
              *&v229[24] = v132;
              *&v229[40] = v146;
              goto LABEL_80;
            }

            *&v228[8] = *(v59 + 8);
            *v229 = *(v59 + 24);
            *v228 = v230;
            *&v229[16] = *(&v232 + 1);
            v65 = *(v59 + 96);
            *&v229[56] = *(v59 + 80);
            *&v229[72] = v65;
            *&v229[88] = *(v59 + 112);
            v66 = *(v59 + 48);
            *&v229[40] = *(v59 + 64);
LABEL_36:
            *&v229[24] = v66;
            goto LABEL_60;
          case 5:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v96 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v96;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v97 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v97;
            v98 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v98;
            v223 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v210 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v218 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = v98;
            v167 = *(v53 + 88);
            v181 = *(v53 + 104);
            v139 = *(v53 + 56);
            v153 = *(v53 + 72);
            if (v230)
            {
              *&v228[8] = *(v53 + 8);
              *v229 = *(v53 + 24);
              v99 = *(v53 + 40);
              *v228 = v230;
              *&v229[16] = v99;
              *&v229[24] = v233;
              *&v229[32] = *(v53 + 56);
              goto LABEL_45;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *&v228[8] = v210;
            *v229 = v218;
            *&v229[32] = v139;
            *&v229[48] = v153;
            *&v229[64] = v167;
            *v228 = 0;
            *&v229[16] = v223;
            *&v229[24] = v57;
            *&v229[80] = v181;
            goto LABEL_80;
          case 6:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v106 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v107 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v107;
            v108 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v109 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v109;
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v106;
            v219 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v224 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v211 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = *(&v106 + 1);
            v183 = *(v105 + 112);
            v155 = v108;
            v169 = *(v105 + 96);
            v141 = v234;
            if (v230)
            {
              *&v228[8] = *(v105 + 8);
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *v228 = v230;
              *&v229[32] = *(&v233 + 1);
              v110 = *(v105 + 80);
              *&v229[40] = *(v105 + 64);
              *&v229[56] = v110;
              goto LABEL_56;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *&v228[8] = v211;
            *v229 = v219;
            *&v229[16] = v224;
            *v228 = 0;
            *&v229[32] = v57;
            *&v229[40] = v141;
            *&v229[56] = v155;
            *&v229[72] = v169;
            v127 = v183;
            goto LABEL_79;
          case 7:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v88 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v88;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v89 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v89;
            v90 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v90;
            v179 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v151 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v165 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v137 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v234;
            v217 = *(v53 + 88);
            v222 = *(v53 + 104);
            v209 = *(v53 + 72);
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              *&v228[8] = v137;
              *v229 = v151;
              *&v229[16] = v165;
              *&v229[48] = v209;
              *v228 = 0;
              *&v229[32] = v179;
              *&v229[40] = v57;
              *&v229[64] = v217;
              *&v229[80] = v222;
              goto LABEL_80;
            }

            *&v228[8] = *(v53 + 8);
            *v229 = *(v53 + 24);
            *&v229[16] = *(v53 + 40);
            v91 = *(v53 + 56);
            *v228 = v230;
            *&v229[32] = v91;
            *&v229[40] = v234;
LABEL_45:
            *&v229[48] = *(v53 + 72);
            goto LABEL_46;
          case 8:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v116 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v116;
            v117 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v118 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v118;
            v119 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v119;
            v171 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v185 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v143 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v157 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = *(&v234 + 1);
            v225 = *(v105 + 112);
            v213 = v117;
            v221 = *(v105 + 96);
            if (v230)
            {
              *&v228[8] = *(v105 + 8);
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *&v229[32] = *(v105 + 56);
              *v228 = v230;
              *&v229[48] = *(&v234 + 1);
              v120 = *(v105 + 96);
              *&v229[56] = *(v105 + 80);
              *&v229[72] = v120;
              goto LABEL_59;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *&v228[8] = v143;
            *v229 = v157;
            *&v229[16] = v171;
            *&v229[32] = v185;
            *v228 = 0;
            *&v229[48] = v57;
            *&v229[56] = v213;
            *&v229[72] = v221;
            v127 = v225;
            goto LABEL_79;
          case 9:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v72 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v72;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v73 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v73;
            v74 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v74;
            v190 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v162 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v176 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v134 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v148 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = v72;
            v206 = *(v53 + 88);
            v215 = *(v53 + 104);
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              *v229 = v148;
              *&v229[16] = v162;
              *&v229[32] = v176;
              *&v228[8] = v134;
              *&v229[64] = v206;
              *v228 = 0;
              *&v229[48] = v190;
              *&v229[56] = v57;
              *&v229[80] = v215;
              goto LABEL_80;
            }

            *v229 = *(v53 + 24);
            *&v229[16] = *(v53 + 40);
            *&v229[32] = *(v53 + 56);
            v75 = *(v53 + 72);
            *v228 = v230;
            *&v229[48] = v75;
            *&v229[56] = v72;
            *&v228[8] = *(v53 + 8);
LABEL_46:
            *&v229[64] = *(v53 + 88);
            goto LABEL_47;
          case 10:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v111 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v112 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v111;
            v113 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v114 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v236 = v112;
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v230 = v113;
            v231 = v114;
            v115 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v115;
            v184 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v195 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v156 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v170 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v142 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = *(&v235 + 1);
            v220 = *(v105 + 112);
            v212 = *(v105 + 96);
            if (v113)
            {
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *&v229[32] = *(v105 + 56);
              *&v229[48] = *(v105 + 72);
              *&v228[8] = *(v105 + 8);
              *v228 = v113;
              *&v229[64] = *(&v235 + 1);
LABEL_56:
              *&v229[72] = *(v105 + 96);
LABEL_59:
              *&v229[88] = *(v105 + 112);
              goto LABEL_60;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v22, v29, v129, 1);
            *v229 = v156;
            *&v229[16] = v170;
            *&v229[32] = v184;
            *&v229[48] = v195;
            *&v228[8] = v142;
            *v228 = 0;
            *&v229[64] = v57;
            *&v229[72] = v212;
            v127 = v220;
LABEL_79:
            *&v229[88] = v127;
            goto LABEL_80;
          case 11:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v54 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v54;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v55 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v55;
            v56 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v56;
            v197 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v173 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v187 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v145 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v159 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v131 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v236;
            v204 = *(v53 + 104);
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              *&v229[16] = v159;
              *&v229[32] = v173;
              *&v229[48] = v187;
              *&v228[8] = v131;
              *v228 = 0;
              *&v229[64] = v197;
              *&v229[72] = v57;
              *v229 = v145;
              *&v229[80] = v204;
              goto LABEL_80;
            }

            *&v229[16] = *(v53 + 40);
            *&v229[32] = *(v53 + 56);
            *&v229[48] = *(v53 + 72);
            v58 = *(v53 + 88);
            *v228 = v230;
            *&v229[64] = v58;
            *&v229[72] = v236;
            *&v228[8] = *(v53 + 8);
            *v229 = *(v53 + 24);
LABEL_47:
            *&v229[80] = *(v53 + 104);
            goto LABEL_60;
          case 12:
            v67 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v68 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v68;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v69 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v69;
            v70 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v70;
            v189 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v198 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v161 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v175 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v133 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v147 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = *(&v236 + 1);
            v71 = v237;
            if (v230)
            {
              *&v229[16] = *(v67 + 40);
              *&v229[32] = *(v67 + 56);
              *&v229[48] = *(v67 + 72);
              *&v229[64] = *(v67 + 88);
              *&v228[8] = *(v67 + 8);
              *v229 = *(v67 + 24);
              *v228 = v230;
              *&v229[80] = *(&v236 + 1);
              *&v229[88] = v237;
              goto LABEL_60;
            }

            sub_1000089F8(&v230, v228, &unk_1011BE618);
            sub_100CFA02C(v30, v29, v129, 1);
            *&v229[16] = v161;
            *&v229[32] = v175;
            *&v229[48] = v189;
            *&v229[64] = v198;
            *&v228[8] = v133;
            *v229 = v147;
            *v228 = 0;
            *&v229[80] = v57;
            *&v229[88] = v71;
            goto LABEL_80;
          case 13:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v100 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v100;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v101 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v102 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v102;
            v103 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v103;
            v203 = v101;
            v194 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v201 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v140 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v154 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v168 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v182 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v57 = v237;
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              *&v229[32] = v182;
              *&v229[48] = v194;
              *&v229[64] = v201;
              *&v228[8] = v140;
              *v229 = v154;
              *v228 = 0;
              *&v229[80] = v203;
              *&v229[88] = v57;
              *&v229[16] = v168;
              goto LABEL_80;
            }

            *&v229[32] = *(v83 + 56);
            *&v229[48] = *(v83 + 72);
            *&v229[64] = *(v83 + 88);
            v104 = *(v83 + 104);
            *v228 = v230;
            *&v229[80] = v104;
            *&v229[88] = v237;
            *&v228[8] = *(v83 + 8);
LABEL_50:
            *v229 = *(v83 + 24);
LABEL_51:
            *&v229[16] = *(v83 + 40);
LABEL_60:
            sub_1000089F8(&v230, &v226, &unk_1011BE618);
            v36 = v57;
            goto LABEL_61;
          default:
            v31 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v32 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v32;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v33 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v33;
            v34 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v34;
            v35 = v230;
            v196 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v202 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
            v130 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v144 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v172 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v186 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v158 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            if (!v230)
            {
              sub_1000089F8(&v230, v228, &unk_1011BE618);
              sub_100CFA02C(v22, v29, v129, 1);
              v126 = v158;
              *&v229[32] = v172;
              *&v229[48] = v186;
              *&v229[64] = v196;
              *&v229[80] = v202;
              *&v228[8] = v130;
              *v229 = v144;
              *v228 = 0;
LABEL_73:
              *&v229[16] = v126;
LABEL_80:
              sub_1000095E8(v228, &unk_1011BE618);
              return v15;
            }

            *v228 = v230;
            *&v229[32] = *(v31 + 56);
            *&v229[48] = *(v31 + 72);
            *&v229[64] = *(v31 + 88);
            *&v229[80] = *(v31 + 104);
            *&v228[8] = *(v31 + 8);
            *v229 = *(v31 + 24);
            *&v229[16] = *(v31 + 40);
            sub_1000089F8(&v230, &v226, &unk_1011BE618);
            v36 = v35;
LABEL_61:
            v51 = v36;
            sub_1000095E8(v228, &unk_1011BE618);
            v52 = v30;
            break;
        }
      }

      v121 = swift_allocObject();
      *(v121 + 32) = 0xD000000000000016;
      *(v121 + 16) = xmmword_100EBDC20;
      *(v121 + 40) = 0x8000000100E6E500;
      v122 = *&v51[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
      *(v121 + 48) = *&v51[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *(v121 + 56) = v122;
      *(v121 + 72) = &type metadata for String;
      strcpy((v121 + 80), "propertyName");
      *(v121 + 120) = &type metadata for String;
      *(v121 + 93) = 0;
      *(v121 + 94) = -5120;
      *(v121 + 96) = v29;
      *(v121 + 104) = v129;
      v123 = v51;

      v124 = sub_10010BC60(v121);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(&v231 + 1) = sub_10010FC20(&qword_101197BD0);
      *&v230 = v124;
      sub_100016270(&v230, v228);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v15;
      sub_1006C5E68(v228, 0xD000000000000014, 0x8000000100E6E600, isUniquelyReferenced_nonNull_native);

      v47 = v52;
      v48 = v29;
      v49 = v129;
      v50 = 1;
    }

    else
    {
      *(&v231 + 1) = &type metadata for String;
      *&v230 = v22;
      *(&v230 + 1) = v23;
      sub_100016270(&v230, v228);

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v15;
      sub_1006C5E68(v228, 0x63757274736E6F63, 0xEF656D614E726F74, v46);
      v47 = v22;
      v48 = v23;
      v49 = v129;
      v50 = 0;
    }

    sub_100CFA02C(v47, v48, v49, v50);
    return v226;
  }

  else
  {
    if (v245 <= 4u)
    {
      v4 = v239;
      v5 = v240;
      if (v245 == 3)
      {
        sub_10010FC20(&unk_1011972C0);
        v6 = swift_allocObject();
        *(v6 + 32) = 1701869940;
        *(v6 + 16) = xmmword_100EBE260;
        v7 = "globalScopeAssignment";
        v8 = 0xD000000000000015;
      }

      else
      {
        sub_10010FC20(&unk_1011972C0);
        v6 = swift_allocObject();
        *(v6 + 32) = 1701869940;
        *(v6 + 16) = xmmword_100EBE260;
        v7 = "independentlyInstantiatedObjectReconciliation";
        v8 = 0xD00000000000002DLL;
      }

      *(v6 + 40) = 0xE400000000000000;
      *(v6 + 48) = v8;
      *(v6 + 56) = (v7 - 32) | 0x8000000000000000;
      *(v6 + 72) = &type metadata for String;
      *(v6 + 80) = 0x614E6C61626F6C67;
      *(v6 + 88) = 0xEA0000000000656DLL;
      *(v6 + 96) = v3;
      *(v6 + 104) = v4;
      *(v6 + 120) = &type metadata for String;
      *(v6 + 128) = 0xD000000000000016;
      *(v6 + 168) = &type metadata for String;
      *(v6 + 136) = 0x8000000100E6E500;
      *(v6 + 144) = v5;
      v15 = sub_10010BC60(v6);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
      goto LABEL_19;
    }

    if (v245 == 5)
    {
      v16 = v239;
      v17 = *(&v240 + 1);
      v19 = v240;
      v18 = v241;
      sub_10010FC20(&unk_1011972C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100EBEF50;
      *(v20 + 32) = 1701869940;
      *(v20 + 40) = 0xE400000000000000;
      *(v20 + 48) = 0xD000000000000010;
      *(v20 + 56) = 0x8000000100E6E520;
      *(v20 + 72) = &type metadata for String;
      *(v20 + 80) = 0x614E646F6874656DLL;
      *(v20 + 88) = 0xEA0000000000656DLL;
      *(v20 + 96) = v3;
      *(v20 + 104) = v16;
      *(v20 + 120) = &type metadata for String;
      *(v20 + 128) = 0x746E656D75677261;
      *(v20 + 136) = 0xE900000000000073;
      v21 = sub_10010FC20(&unk_1011BE640);
      *(v20 + 144) = v19;
      *(v20 + 168) = v21;
      *(v20 + 176) = 0xD000000000000016;
      *(v20 + 216) = &type metadata for String;
      *(v20 + 184) = 0x8000000100E6E500;
      *(v20 + 192) = v17;
      *(v20 + 200) = v18;
      v15 = sub_10010BC60(v20);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
LABEL_19:
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v15;
    }

    v40 = v239;
    v41 = v242;
    v42 = v243;
    v43 = v244;
    v230 = v240;
    v231 = v241;
    sub_10010FC20(&unk_1011972C0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100EBEF50;
    *(v44 + 32) = 1701869940;
    *(v44 + 40) = 0xE400000000000000;
    strcpy((v44 + 48), "propertyUpdate");
    *(v44 + 63) = -18;
    *(v44 + 72) = &type metadata for String;
    strcpy((v44 + 80), "propertyName");
    *(v44 + 93) = 0;
    *(v44 + 94) = -5120;
    *(v44 + 96) = v3;
    *(v44 + 104) = v40;
    *(v44 + 120) = &type metadata for String;
    *(v44 + 128) = 0xD000000000000016;
    *(v44 + 136) = 0x8000000100E6E500;
    *(v44 + 144) = v42;
    *(v44 + 152) = v43;
    *(v44 + 168) = &type metadata for String;
    *(v44 + 176) = 0xD000000000000019;
    *(v44 + 184) = 0x8000000100E6E540;
    *(v44 + 216) = &type metadata for Bool;
    *(v44 + 192) = v41;
    v15 = sub_10010BC60(v44);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000089F8(&v230, &v226, &unk_101183F30);
    if (v227)
    {
      sub_100016270(&v226, v228);
      sub_10000DD18(v228, &v226);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_1006C5E68(&v226, 0x65756C6176, 0xE500000000000000, v45);
      sub_10000959C(v228);
      sub_1000095E8(&v230, &unk_101183F30);
    }

    else
    {
      sub_1000095E8(&v230, &unk_101183F30);
      sub_1000095E8(&v226, &unk_101183F30);
    }
  }

  return v15;
}

uint64_t sub_100CF36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000DD18(a1, v34);
  sub_10010FC20(&qword_101197BD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!*(v33 + 16) || (v4 = sub_100019C10(1701869940, 0xE400000000000000), (v5 & 1) == 0))
  {
LABEL_47:

LABEL_48:
    result = sub_10000959C(a1);
    goto LABEL_49;
  }

  sub_10000DD18(*(v33 + 56) + 32 * v4, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!*(v33 + 16) || (v6 = sub_100019C10(0xD000000000000016, 0x8000000100E6E500), (v7 & 1) == 0))
  {
LABEL_21:

    goto LABEL_47;
  }

  sub_10000DD18(*(v33 + 56) + 32 * v6, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v33 != __PAIR128__(0xEC0000006E6F6974, 0x63757274736E6F63) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (__PAIR128__(0x8000000100E6E520, 0xD000000000000010) == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (!*(v33 + 16))
      {
        goto LABEL_21;
      }

      v21 = sub_100019C10(0x614E646F6874656DLL, 0xEA0000000000656DLL);
      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_10000DD18(*(v33 + 56) + 32 * v21, v34);
      if (swift_dynamicCast())
      {
        if (!*(v33 + 16) || (v23 = sub_100019C10(0x746E656D75677261, 0xE900000000000073), (v24 & 1) == 0))
        {

          goto LABEL_47;
        }

        sub_10000DD18(*(v33 + 56) + 32 * v23, v34);
        sub_10000959C(a1);

        sub_10010FC20(&unk_1011BE640);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_23;
        }

        v18 = &v37;
        v35 = v33;
        *&v36 = v33;
        v17 = &v36 + 8;
        v16 = 1;
LABEL_18:
        *v17 = v33;
        *v18 = *(&v33 + 1);
        v38[24] = v16;
        v19 = *v38;
        *(a2 + 32) = v37;
        *(a2 + 48) = v19;
        *(a2 + 57) = *&v38[9];
        v20 = v36;
        *a2 = v35;
        *(a2 + 16) = v20;
        return result;
      }
    }

    else
    {
      if (v33 == __PAIR128__(0xEE00657461647055, 0x79747265706F7270))
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (!*(v33 + 16))
      {
        goto LABEL_21;
      }

      v26 = sub_100019C10(0x79747265706F7270, 0xEC000000656D614ELL);
      if ((v27 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_10000DD18(*(v33 + 56) + 32 * v26, v34);
      if (swift_dynamicCast())
      {
        if (*(v33 + 16) && (v28 = sub_100019C10(0xD000000000000019, 0x8000000100E6E540), (v29 & 1) != 0) && (sub_10000DD18(*(v33 + 56) + 32 * v28, v34), swift_dynamicCast()))
        {
          v30 = v33;
        }

        else
        {
          v30 = 1;
        }

        v18 = &v38[16];
        v35 = v33;
        if (*(v33 + 16) && (v31 = sub_100019C10(0x65756C6176, 0xE500000000000000), (v32 & 1) != 0))
        {
          sub_10000DD18(*(v33 + 56) + 32 * v31, &v36);
          sub_10000959C(a1);
        }

        else
        {

          result = sub_10000959C(a1);
          v36 = 0u;
          v37 = 0u;
        }

        v17 = &v38[8];
        v38[0] = v30;
        v16 = 2;
        goto LABEL_18;
      }
    }

LABEL_22:
    sub_10000959C(a1);
LABEL_23:

    goto LABEL_20;
  }

  if (!*(v33 + 16))
  {
    goto LABEL_21;
  }

  v8 = sub_100019C10(0x6569487373616C63, 0xEE00796863726172);
  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10000DD18(*(v33 + 56) + 32 * v8, v34);

  sub_10010FC20(&qword_101183BC8);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v33 + 40;
    v12 = -*(v33 + 16);
    v13 = -1;
    while (v12 + v13 != -1)
    {
      if (++v13 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = v11 + 16;

      result = _s11MusicJSCore28JSScriptingInstantiatedClassO8rawValueACSgSS_tcfC_0();
      v11 = v14;
      if (result != 128)
      {
        v15 = result;
        sub_10000959C(a1);

        v16 = 0;
        LOBYTE(v35) = v15;
        v17 = &v35 + 8;
        v18 = &v36;
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

LABEL_19:
  sub_10000959C(a1);
LABEL_20:

LABEL_49:
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = -1;
  return result;
}

void sub_100CF3D44(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v2 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  if (v2 < 0)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
    v5 = *(v1 + 3) | *(v1 + 4);
    if (v2 != 0x8000000000000000 || (v5 | *v1 | v4) != 0)
    {
      v7 = v5 | v4;
      v8 = v2 == 0x8000000000000000 && v3 == 1;
      if (!v8 || v7 != 0)
      {
        v10 = v2 == 0x8000000000000000 && v3 == 2;
        if ((!v10 || v7 != 0) && (v2 != 0x8000000000000000 || v3 != 3 || v7 != 0) && v2 == 0x8000000000000000 && v3 == 4 && v7 == 0)
        {
          v17 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
          swift_beginAccess();
          if (*(*&a1[v17] + 16))
          {
            *v1 = xmmword_100EE9500;
            *(v1 + 3) = 0;
            *(v1 + 4) = 0;
            *(v1 + 2) = 0x8000000000000000;
            v19 = [objc_opt_self() sharedApplication];
            v20 = swift_allocObject();
            *(v20 + 16) = a1;
            aBlock[4] = sub_100CF9F38;
            aBlock[5] = v20;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002BC98;
            aBlock[3] = &unk_1010FD260;
            v21 = _Block_copy(aBlock);
            v22 = a1;

            [v19 _performBlockAfterCATransactionCommits:v21];
            _Block_release(v21);
          }
        }
      }
    }
  }
}

uint64_t sub_100CF3F04(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(__int128 *), void (*a7)(__int128 *))
{
  v125 = a6;
  v110 = a3;
  v111 = a1;
  v112 = a2;
  sub_10010FC20(&unk_1011BE5D0);
  __chkstk_darwin();
  v11 = &v99 - v10;
  v113 = *(type metadata accessor for Signpost() - 8);
  __chkstk_darwin();
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v99 - v14;
  v114 = v15;
  __chkstk_darwin();
  v126 = &v99 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_100009F78(0, &qword_101182960);
  *v20 = static OS_dispatch_queue.main.getter();
  v21 = *(v18 + 104);
  v117 = enum case for DispatchPredicate.onQueue(_:);
  v118 = v18 + 104;
  v116 = v21;
  v21(v20);
  v22 = _dispatchPreconditionTest(_:)();
  v23 = *(v18 + 8);
  v120 = v18 + 8;
  v121 = v17;
  v115 = v23;
  v23(v20, v17);
  if (v22)
  {
    v124 = a7;
    v24 = type metadata accessor for OSSignpostID();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    if (qword_1011BDB60 == -1)
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
  v123 = v13;
  v25 = static OS_os_log.jsBridge;
  Signpost.init(name:id:log:)("JSBridge intialize singletons", 29, 2, v11, v25, v126);
  Signpost.begin(dso:)(&_mh_execute_header);
  v26 = *(a5 + 32) != 2;
  objc_allocWithZone(type metadata accessor for JSApplication(0));

  v110 = JSApplication.init(isDeployedScript:selectedTabIdentifier:)(v26, v110, a4);
  v27 = objc_allocWithZone(type metadata accessor for JSBackgroundFetchManager());
  v139[0] = _swiftEmptyArrayStorage;
  v139[1] = 1;
  memset(&v139[2], 0, 24);
  v140 = 0;
  v28 = JSObject.init(type:)(v139);
  v29 = qword_1011BDB08;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = static JSBridge.shared;
  v32 = swift_allocObject();
  *(v32 + 16) = 0xD000000000000016;
  *(v32 + 24) = 0x8000000100E6E450;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  *(v32 + 48) = 1;
  v33 = v30;
  v34 = v31;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E08, v32);
  v109 = v33;

  v35 = objc_allocWithZone(type metadata accessor for JSCapabilitiesController());
  v108 = JSCapabilitiesController.init()();
  v36 = objc_allocWithZone(type metadata accessor for JSDevice());
  v37 = swift_unknownObjectRetain();
  v111 = JSDevice.init(rootElementSizing:)(v37, v112);
  if (qword_1011BDB40 != -1)
  {
    swift_once();
  }

  v112 = v20;
  v38 = static JSMetricsController.shared;
  v39 = objc_allocWithZone(type metadata accessor for JSNetwork());
  v107 = v38;
  v106 = JSNetwork.init()();
  v40 = objc_allocWithZone(type metadata accessor for JSStore());
  v105 = JSStore.init()();
  if (qword_1011BDC68 != -1)
  {
    swift_once();
  }

  v41 = static JSSubscriptionPurchaseCoordinator.shared;
  v42 = objc_allocWithZone(type metadata accessor for JSSubscriptionStatusCoordinator());
  v104 = v41;
  v103 = JSSubscriptionStatusCoordinator.init()();
  v43 = objc_allocWithZone(type metadata accessor for JSPersistence());
  v102 = JSPersistence.init()();
  v44 = objc_allocWithZone(type metadata accessor for JSPlayActivityController());
  v101 = sub_100D81ED4();
  v45 = objc_allocWithZone(type metadata accessor for JSSocialActivityController());
  v46 = JSObject.init(type:)(v139);
  v47 = swift_allocObject();
  *(v47 + 16) = 0xD000000000000018;
  *(v47 + 24) = 0x8000000100E6E470;
  *(v47 + 32) = v46;
  *(v47 + 40) = v34;
  *(v47 + 48) = 1;
  v48 = v46;
  v49 = v34;
  v50 = v48;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA590, v47);

  v51 = objc_allocWithZone(type metadata accessor for JSPushNotificationObserver());
  v100 = sub_100D3E400();
  v52 = objc_allocWithZone(type metadata accessor for JSRestrictions());
  v53 = JSRestrictions.init()();
  v54 = objc_allocWithZone(type metadata accessor for JSStoreFlowPresentationCoordinator());
  v55 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
  *&v54[v55] = sub_100CE5708(_swiftEmptyArrayStorage);
  v56 = JSObject.init(type:)(v139);
  v57 = swift_allocObject();
  *(v57 + 16) = 0xD000000000000020;
  *(v57 + 24) = 0x8000000100E6E490;
  *(v57 + 32) = v56;
  *(v57 + 40) = v49;
  *(v57 + 48) = 1;
  v58 = v56;
  v59 = v49;
  v60 = v58;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA590, v57);

  *&v141 = v110;
  *(&v141 + 1) = v109;
  *&v142 = v108;
  *(&v142 + 1) = v111;
  *&v143 = v107;
  *(&v143 + 1) = v106;
  *&v144 = v105;
  *(&v144 + 1) = v104;
  *&v145 = v103;
  *(&v145 + 1) = v102;
  *&v146 = v101;
  *(&v146 + 1) = v50;
  *&v147 = v100;
  *(&v147 + 1) = v53;
  v148 = v60;
  v138 = v60;
  v135 = v145;
  v136 = v146;
  v137 = v147;
  v133 = v143;
  v134 = v144;
  v131 = v141;
  v132 = v142;
  type metadata accessor for JSBridge.SingletonsInitializationContext();
  swift_allocObject();
  sub_100CF9E64(&v141, v129);
  v61 = sub_100CF9468(&v131);
  sub_1001FAA60(&v141);
  v62 = v119;
  sub_100CF91B8(v126, v119, type metadata accessor for Signpost);
  v63 = v123;
  sub_100CF91B8(v62, v123, type metadata accessor for Signpost);
  v64 = (*(v113 + 80) + 144) & ~*(v113 + 80);
  v65 = (v114 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v136;
  *(v66 + 88) = v135;
  *(v66 + 104) = v67;
  *(v66 + 120) = v137;
  v68 = v132;
  *(v66 + 24) = v131;
  *(v66 + 40) = v68;
  v69 = v134;
  *(v66 + 56) = v133;
  v70 = v122;
  *(v66 + 16) = v122;
  *(v66 + 136) = v138;
  *(v66 + 72) = v69;
  sub_100CF9220(v62, v66 + v64, type metadata accessor for Signpost);
  v71 = (v66 + v65);
  v72 = v124;
  *v71 = v125;
  v71[1] = v72;
  v119 = v61;
  v73 = *(v61 + 136);
  sub_100CF9E64(&v141, v129);
  v74 = v70;

  sub_100CF9E64(&v141, v129);
  v75 = v74;

  v76 = static OS_dispatch_queue.main.getter();
  v77 = v112;
  *v112 = v76;
  v78 = v121;
  v116(v77, v117, v121);
  LOBYTE(v74) = _dispatchPreconditionTest(_:)();
  v115(v77, v78);
  if ((v74 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v73 + 16) == 1)
  {
    v79 = &v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
    v80 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32];
    v81 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48];
    v82 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16];
    v129[0] = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
    v129[2] = v80;
    v129[3] = v81;
    v129[1] = v82;
    v84 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80];
    v83 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96];
    v85 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64];
    v130 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112];
    v129[5] = v84;
    v129[6] = v83;
    v129[4] = v85;
    v86 = v141;
    v87 = v142;
    v88 = v144;
    *(v79 + 2) = v143;
    *(v79 + 3) = v88;
    *v79 = v86;
    *(v79 + 1) = v87;
    v89 = v145;
    v90 = v146;
    v91 = v147;
    *(v79 + 14) = v148;
    *(v79 + 5) = v90;
    *(v79 + 6) = v91;
    *(v79 + 4) = v89;
    sub_100CF9E64(&v141, &v128);
    sub_1000095E8(v129, &unk_1011BE618);
    if (qword_1011BDB80 == -1)
    {
LABEL_12:
      Signpost.end(dso:)(&_mh_execute_header);
      v125(&v131);

      goto LABEL_18;
    }

LABEL_22:
    swift_once();
    goto LABEL_12;
  }

  v92 = swift_allocObject();
  *(v92 + 16) = sub_100CF9E9C;
  *(v92 + 24) = v66;
  swift_beginAccess();
  v93 = *(v73 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v73 + 24) = v93;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = sub_10006429C(0, v93[2] + 1, 1, v93);
    *(v73 + 24) = v93;
  }

  v96 = v93[2];
  v95 = v93[3];
  if (v96 >= v95 >> 1)
  {
    v93 = sub_10006429C((v95 > 1), v96 + 1, 1, v93);
  }

  v93[2] = v96 + 1;
  v97 = &v93[2 * v96];
  v97[4] = sub_100029B6C;
  v97[5] = v92;
  *(v73 + 24) = v93;
  swift_endAccess();

  v63 = v123;
LABEL_18:
  sub_1001FAA60(&v141);
  sub_100CF9158(v63, type metadata accessor for Signpost);

  sub_1001FAA60(&v141);
  sub_100CF9158(v126, type metadata accessor for Signpost);
}

uint64_t sub_100CF4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
  v7 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
  v8 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
  v17[5] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
  v17[6] = v8;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
  v17[0] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
  v10 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
  v11 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
  v17[1] = v9;
  v17[2] = v10;
  v18 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
  v17[3] = v11;
  v17[4] = v7;
  *(v6 + 112) = *(a2 + 112);
  v12 = *(a2 + 96);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = v12;
  v13 = *(a2 + 64);
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = v13;
  v14 = *(a2 + 32);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = v14;
  *v6 = *a2;
  sub_100CF9E64(a2, v16);
  sub_1000095E8(v17, &unk_1011BE618);
  if (qword_1011BDB80 != -1)
  {
    swift_once();
  }

  Signpost.end(dso:)(&_mh_execute_header);
  return a4(a2);
}

uint64_t sub_100CF4B8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  type metadata accessor for JSEnvironment();
  swift_allocObject();
  v8 = JSEnvironment.init()();
  v9 = v8[2];
  v10 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread);
  type metadata accessor for ApplicationScriptProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment) = v8;
  v12 = v9;

  *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_provider) = v11;

  if (*(a2 + 32) == 1)
  {
    sub_100CF9414();
    v13 = swift_allocError();
    *v14 = 5;
    a3(v13, 1);
  }

  else
  {
    sub_100D7FB90(*(a2 + 16), *(a2 + 24));
    sub_100D78278(a2, a3, a4);
  }
}

uint64_t sub_100CF4D2C(char *a1, uint64_t a2, __int128 *a3)
{
  v47 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  __chkstk_darwin();
  v48 = v6;
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v42 - v7;
  sub_10010FC20(&unk_1011BE5D0);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v45 = *(type metadata accessor for Signpost() - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin();
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v42 - v11;
  v50 = a1;
  v13 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v14 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v15 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8];
  v16 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  *v13 = xmmword_100EE94C0;
  *(v13 + 2) = 0x8000000000000000;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  sub_100CF90F0(v14, v15, v16);
  static os_log_type_t.default.getter();
  if (qword_1011BDB60 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.jsBridge;
  sub_10010FC20(&qword_101186688);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  type metadata accessor for URL();
  sub_100CF9DAC(&qword_1011A4850, &type metadata accessor for URL);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10001CDD0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  v22 = type metadata accessor for OSSignpostID();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  Signpost.init(name:id:log:)("Fetch and compile appscript", 27, 2, v9, v17, v12);
  Signpost.begin(dso:)(&_mh_execute_header);
  v44 = type metadata accessor for Signpost;
  v23 = v46;
  sub_100CF91B8(v12, v46, type metadata accessor for Signpost);
  v24 = *a3;
  v53 = *(a3 + 24);
  v54 = v24;
  sub_100CF91B8(a2, v51, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v25 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v47[80];
  v47 = v12;
  v43 = a2;
  v45 = v27 | 7;
  v28 = v48;
  v29 = swift_allocObject();
  v30 = v50;
  *(v29 + 16) = v50;
  v31 = v23;
  v32 = v44;
  sub_100CF9220(v31, v29 + v25, v44);
  v33 = v29 + v26;
  v34 = a3[1];
  *v33 = *a3;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a3 + 4);
  sub_100CF9220(v51, v29 + ((v27 + v26 + 40) & ~v27), type metadata accessor for ApplicationScriptProvider.Descriptor);
  v35 = v49;
  sub_100CF91B8(v43, v49, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v36 = (v27 + 24) & ~v27;
  v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  sub_100CF9220(v35, v38 + v36, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v39 = (v38 + v37);
  *v39 = sub_100CF9288;
  v39[1] = v29;
  v40 = v30;
  sub_1000089F8(&v54, v52, &unk_1011BE5E0);
  sub_1000089F8(&v53, v52, &qword_1011815E0);

  JSThread.enqueueBlock(_:)(sub_100CF9380, v38);

  return sub_100CF9158(v47, v32);
}

uint64_t sub_100CF52AC(void *a1, int a2, void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v26 = a6;
  v27 = a1;
  v24 = a3;
  v28 = a2;
  v9 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for Signpost() - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100009F78(0, &qword_101182960);
  sub_100CF91B8(a4, v13, type metadata accessor for Signpost);
  v14 = *a5;
  v31 = *(a5 + 24);
  v32 = v14;
  sub_100CF91B8(v26, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApplicationScriptProvider.Descriptor);
  v15 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v9 + 80) + v16 + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = v27;
  *(v18 + 24) = v27;
  LOBYTE(v12) = v28 & 1;
  *(v18 + 32) = v28 & 1;
  sub_100CF9220(v13, v18 + v15, type metadata accessor for Signpost);
  v20 = v18 + v16;
  v21 = a5[1];
  *v20 = *a5;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a5 + 4);
  sub_100CF9220(v25, v18 + v17, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v22 = v24;
  sub_100CF9B4C(v19, v12);
  sub_1000089F8(&v32, v30, &unk_1011BE5E0);
  sub_1000089F8(&v31, v30, &qword_1011815E0);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9A40, v18);
}

void sub_100CF5560(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v37 = a5[1];
  v38 = v10;
  v11 = *(a5 + 16);
  v12 = (a5 + 3);
  v36 = a5[3];
  v13 = a5[4];
  v34 = a6;
  v35 = v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1011BDB60 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_101186688);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBC6B0;
    *&v41 = a1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10001CDD0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = *a5;
    v40 = *v12;
    v41 = v22;
    v23 = (a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v24 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v25 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
    v26 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
    v27 = v37;
    *v23 = v38;
    v23[1] = v27;
    v23[2] = v11 & 1;
    v28 = v35;
    v23[3] = v36;
    v23[4] = v28;
    sub_1000089F8(&v41, v39, &unk_1011BE5E0);
    sub_1000089F8(&v40, v39, &qword_1011815E0);
    sub_100CF90F0(v24, v25, v26);
    v29 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges;
    if ((*(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges) & 1) == 0)
    {
      v32 = [objc_opt_self() sharedMonitor];
      [v32 registerObserver:a3];

      *(a3 + v29) = 1;
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges))
    {
      *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges) = 0;
      v30 = [objc_opt_self() sharedMonitor];
      [v30 unregisterObserver:a3];
    }

    Signpost.end(dso:)(&_mh_execute_header);
    sub_100009F78(0, &qword_101182960);
    *v17 = static OS_dispatch_queue.main.getter();
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v31 = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v17, v14);
    if (v31)
    {
      __chkstk_darwin();
      *(&v33 - 4) = a3;
      *(&v33 - 3) = a5;
      *(&v33 - 2) = v34;
      *(&v33 - 1) = a1;
      sub_100CF047C(sub_100CF9B6C);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100CF5998(void *a1, uint64_t a2, _OWORD *a3)
{
  v53 = a1;
  v4 = type metadata accessor for Logger();
  v52 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v47 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v17 = Strong;
  v50 = a3;
  if (qword_1011BDB20 != -1)
  {
    swift_once();
  }

  v18 = [v53 urlForBagKey:qword_1011BE260];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v12 + 56))(v8, v20, 1, v11);
  sub_100027998(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1000095E8(v10, &qword_101183A20);
LABEL_9:
    if (qword_1011BDB60 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.jsBridge;
    Logger.init(_:)();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v56 = v26;
      *v25 = 136315138;
      if (qword_1011BDB20 != -1)
      {
        swift_once();
      }

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = sub_1000105AC(v27, v28, &v56);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "invalid bag with no value for: %s", v25, 0xCu);
      sub_10000959C(v26);

      return (*(v52 + 8))(v6, v24);
    }

    else
    {

      return (*(v52 + 8))(v6, v4);
    }
  }

  v49 = *(v12 + 32);
  v49(v15, v10, v11);
  v31 = sub_100CF5F84();
  v33 = 5;
  if ((v32 & 1) == 0)
  {
    v33 = v31;
  }

  v48 = v33;
  v52 = sub_100009F78(0, &qword_101182960);
  v34 = *(v12 + 16);
  v47 = v17;
  v35 = v51;
  v34(v51, v15, v11);
  v53 = v15;
  v36 = v50;
  v37 = *v50;
  v55 = *(v50 + 24);
  v56 = v37;
  v38 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v49((v41 + v38), v35, v11);
  v43 = v47;
  v42 = v48;
  *(v41 + v39) = v47;
  *(v41 + v40) = v42;
  v44 = v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v45 = v36[1];
  *v44 = *v36;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(v36 + 4);
  v46 = v43;
  sub_1000089F8(&v56, v54, &unk_1011BE5E0);
  sub_1000089F8(&v55, v54, &qword_1011815E0);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA340, v41);

  return (*(v12 + 8))(v53, v11);
}

uint64_t sub_100CF5F84()
{
  if (qword_1011BDB28 != -1)
  {
    swift_once();
  }

  ICURLBag.subscript.getter(qword_1011BE268, &v33);
  if (!v34)
  {
    goto LABEL_27;
  }

  sub_1000089F8(&v33, v32, &unk_101183F30);
  if (swift_dynamicCast())
  {
    v0 = v30;
    sub_10000959C(v32);
LABEL_74:
    sub_1000095E8(&v33, &unk_101183F30);
    return v0;
  }

  if (!swift_dynamicCast())
  {
    sub_10000959C(v32);
LABEL_27:
    v0 = 0;
    goto LABEL_74;
  }

  result = v31;
  v2 = HIBYTE(v31) & 0xF;
  v3 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v4 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v0 = 0;
LABEL_73:
    sub_10000959C(v32);
    goto LABEL_74;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v0 = sub_1002D0E10(v30, v31, 10);
    v26 = v27;
LABEL_71:

    if (v26)
    {
      v0 = 0;
    }

    goto LABEL_73;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v5 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
      result = v31;
    }

    v6 = *v5;
    if (v6 == 43)
    {
      if (v3 >= 1)
      {
        v14 = v3 - 1;
        if (v3 != 1)
        {
          v0 = 0;
          if (v5)
          {
            v15 = v5 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_69;
              }

              v17 = 10 * v0;
              if ((v0 * 10) >> 64 != (10 * v0) >> 63)
              {
                goto LABEL_69;
              }

              v0 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_69;
              }

              ++v15;
              if (!--v14)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_69;
      }

      goto LABEL_80;
    }

    if (v6 != 45)
    {
      if (v3)
      {
        v0 = 0;
        if (v5)
        {
          while (1)
          {
            v21 = *v5 - 48;
            if (v21 > 9)
            {
              goto LABEL_69;
            }

            v22 = 10 * v0;
            if ((v0 * 10) >> 64 != (10 * v0) >> 63)
            {
              goto LABEL_69;
            }

            v0 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_69;
            }

            ++v5;
            if (!--v3)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_69:
      v0 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_70;
    }

    if (v3 >= 1)
    {
      v7 = v3 - 1;
      if (v3 != 1)
      {
        v0 = 0;
        if (v5)
        {
          v8 = v5 + 1;
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_69;
            }

            v10 = 10 * v0;
            if ((v0 * 10) >> 64 != (10 * v0) >> 63)
            {
              goto LABEL_69;
            }

            v0 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_69;
            }

            ++v8;
            if (!--v7)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_70:
        v29 = v5;
        v26 = v5;
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v28[0] = v30;
  v28[1] = v31 & 0xFFFFFFFFFFFFFFLL;
  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v2)
      {
        v0 = 0;
        v23 = v28;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v0;
          if ((v0 * 10) >> 64 != (10 * v0) >> 63)
          {
            break;
          }

          v0 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v2)
          {
LABEL_68:
            LOBYTE(v5) = 0;
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v2)
    {
      v5 = (v2 - 1);
      if (v2 != 1)
      {
        v0 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v0;
          if ((v0 * 10) >> 64 != (10 * v0) >> 63)
          {
            break;
          }

          v0 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v5)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v5 = (v2 - 1);
    if (v2 != 1)
    {
      v0 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v0;
        if ((v0 * 10) >> 64 != (10 * v0) >> 63)
        {
          break;
        }

        v0 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_81:
  __break(1u);
  return result;
}

void sub_100CF6388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v22 - v9;
  v22 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v11 = __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 16);
  v14(v10, a1, v5, v11);
  (v14)(v8, v10, v5);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 buildVersion];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v13[32] = 0;
    (v14)(&v13[*(v22 + 32)], v8, v5);
    *(v13 + 2) = v17;
    *(v13 + 3) = v19;
    *(v13 + 1) = v23;

    v20 = sub_100D7F708(v17, v19, 0);
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v10, v5);
    *v13 = v20;
    sub_100CF65F4(v24, v13);
    sub_100CF9158(v13, type metadata accessor for ApplicationScriptProvider.Descriptor);
  }

  else
  {
    __break(1u);
  }
}

void sub_100CF65F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    static os_log_type_t.default.getter();
    if (qword_1011BDB60 == -1)
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
  os_log(_:dso:log:_:_:)();
  __chkstk_darwin();
  *(&v12 - 4) = v3;
  *(&v12 - 3) = a1;
  *(&v12 - 2) = a2;
  sub_100CF047C(sub_100CF9DFC);
  v11 = [objc_opt_self() defaultCenter];
  if (qword_1011BDB18 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:static JSBridge.bridgeInitializationDidSucceed object:v3];
}

void sub_100CF6858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    __chkstk_darwin();
    *(&v11 - 4) = a1;
    *(&v11 - 3) = a3;
    *(&v11 - 2) = a2;
    sub_100CF047C(sub_100CFA5A8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100CF69D8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v38 = *(v2 - 8);
  __chkstk_darwin();
  v37 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  __chkstk_darwin();
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v7 = v31 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v31 - v12;
  __chkstk_darwin();
  v15 = v31 - v14;
  v16 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v7);

  v17 = (*(v9 + 48))(v7, 1, v8);
  if (v17 == 1)
  {
    sub_1000095E8(v7, &qword_101183A20);
  }

  else
  {
    v31[1] = v17;
    v33 = a1;
    v34 = v2;
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(v9 + 16);
    v32 = v15;
    v18(v13, v15, v8);
    v18(v11, v13, v8);
    v19 = [objc_opt_self() currentDevice];
    v20 = [v19 buildVersion];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v5[32] = 2;
      v18(&v5[*(v36 + 32)], v11, v8);
      *(v5 + 2) = v21;
      *(v5 + 3) = v23;
      *(v5 + 1) = 5;

      v24 = sub_100D7F708(v21, v23, 0);
      v25 = *(v9 + 8);
      v25(v11, v8);
      v25(v13, v8);
      *v5 = v24;
      sub_100009F78(0, &qword_101182960);
      v26 = static OS_dispatch_queue.main.getter();
      v28 = v37;
      v27 = v38;
      *v37 = v26;
      v29 = v34;
      (*(v27 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v34);
      v30 = _dispatchPreconditionTest(_:)();
      (*(v27 + 8))(v28, v29);
      if (v30)
      {
        __chkstk_darwin();
        *&v31[-8] = v35;
        *&v31[-6] = v5;
        *&v31[-4] = v33;
        sub_100CF047C(sub_100CF914C);
        v25(v32, v8);
        sub_100CF9158(v5, type metadata accessor for ApplicationScriptProvider.Descriptor);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100CF6EB4(char *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v12 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  if (v12 < 0)
  {
    v13 = *v11;
    v14 = *(v11 + 1);
    v15 = *(v11 + 3) | *(v11 + 4);
    if (v12 != 0x8000000000000000 || (v15 | *v11 | v14) != 0)
    {
      v17 = v15 | v14;
      v18 = v12 == 0x8000000000000000 && v13 == 1;
      if ((!v18 || v17 != 0) && v12 == 0x8000000000000000 && v13 == 2 && v17 == 0)
      {
        *v11 = xmmword_100EE94D0;
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 2) = 0x8000000000000000;
        v22 = *a2;
        v34 = a2[1];
        v23 = a2[3];
        v24 = a2[4];
        v32[1] = v22;
        v33 = v23;
        sub_100CF91B8(a3, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApplicationScriptProvider.Descriptor);
        v25 = (*(v8 + 80) + 64) & ~*(v8 + 80);
        v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = swift_allocObject();
        *(v27 + 16) = a1;
        v28 = *(a2 + 1);
        *(v27 + 24) = *a2;
        *(v27 + 40) = v28;
        *(v27 + 56) = a2[4];
        sub_100CF9220(v10, v27 + v25, type metadata accessor for ApplicationScriptProvider.Descriptor);
        *(v27 + v26) = a4;

        v29 = a4;
        v30 = a1;
        v31 = swift_unknownObjectRetain();
        sub_100CF3F04(v31, v34, v33, v24, a3, sub_100CF9B78, v27);
      }
    }
  }
}

uint64_t sub_100CF70DC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v32 = a4;
  v30 = a3;
  sub_10010FC20(&unk_1011BE5D0);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v33 = *(type metadata accessor for Signpost() - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  if (qword_1011BDB60 != -1)
  {
    swift_once();
  }

  Signpost.init(name:id:log:)("Prepare pending records", 23, 2, v7, static OS_os_log.jsBridge, v11);
  Signpost.begin(dso:)(&_mh_execute_header);
  v13 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup;
  swift_beginAccess();
  v31 = *&a2[v13];
  *&a2[v13] = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  v29 = v11;
  v15 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
  swift_beginAccess();
  *(v14 + 16) = *&a2[v15];
  *&a2[v15] = _swiftEmptyArrayStorage;
  v16 = *(v30 + 16);
  type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  JSApplication.didFinishLaunching(with:applicationScriptURL:)(v16);
  v35 = *&a2[v15];

  sub_100CE86E4(v17);
  *(v14 + 16) = v35;
  v18 = v14;

  *&a2[v15] = _swiftEmptyArrayStorage;

  v32 = *&a2[OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread];
  sub_100CF91B8(v11, v9, type metadata accessor for Signpost);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_100CF9220(v9, v23 + v19, type metadata accessor for Signpost);
  *(v23 + v20) = a2;
  *(v23 + v21) = v31;
  v24 = v34;
  *(v23 + v22) = v34;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v25 = a2;
  v26 = v24;

  JSThread.enqueueBlock(_:)(sub_100CF9C1C, v23);

  sub_100CF9158(v29, type metadata accessor for Signpost);
}

uint64_t sub_100CF7494(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin();
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011BE5D0);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v44 = *(type metadata accessor for Signpost() - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v37 - v15;
  result = Signpost.end(dso:)(&_mh_execute_header);
  v18 = *&a2[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment];
  if (v18)
  {
    v38 = v16;
    v40 = v8;
    v41 = v7;
    v19 = a5 + 16;
    v39 = swift_allocObject();
    v20 = v39 + 16;
    v21 = qword_1011BDB60;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.jsBridge;
    __chkstk_darwin();
    v23 = v42;
    *(&v37 - 4) = a2;
    *(&v37 - 3) = v23;
    *(&v37 - 2) = v18;
    sub_10010FC20(&qword_1011BE600);
    static Signpost.interval<A>(name:log:_:)("Pushing Native Records", 22, 2, v22, sub_100CF9CCC, (&v37 - 6), v20);
    sub_100D76218(0);
    sub_100D76218(1);
    __chkstk_darwin();
    v24 = v43;
    *(&v37 - 2) = v18;
    *(&v37 - 1) = v24;
    sub_10010FC20(&unk_1011BE608);
    static Signpost.interval<A>(name:log:_:)("JSEnvironment app script", 24, 2, v22, sub_100CF9D00, (&v37 - 4), aBlock);

    __chkstk_darwin();
    *(&v37 - 4) = v20;
    *(&v37 - 3) = a2;
    *(&v37 - 2) = v19;
    *(&v37 - 1) = v18;
    static Signpost.interval<A>(name:log:_:)("Pushing Remaining Records", 25, 2, v22, sub_100CF9D08, (&v37 - 6), &type metadata for ());
    v25 = type metadata accessor for OSSignpostID();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v26 = v22;
    v27 = v38;
    Signpost.init(name:id:log:)("Main Async", 10, 2, v12, v26, v38);
    Signpost.begin(dso:)(&_mh_execute_header);
    sub_100009F78(0, &qword_101182960);
    v43 = static OS_dispatch_queue.main.getter();
    sub_100CF91B8(v27, v14, type metadata accessor for Signpost);
    v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_100CF9220(v14, &v30[v28], type metadata accessor for Signpost);
    *&v30[v29] = a2;
    *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;
    aBlock[4] = sub_100CF9D14;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010FD0D0;
    v31 = _Block_copy(aBlock);
    v32 = a2;

    v33 = v45;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100CF9DAC(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_10002489C();
    v34 = v47;
    v35 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v43;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v40 + 8))(v34, v35);
    (*(v46 + 8))(v33, v48);
    sub_100CF9158(v27, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_100CF7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_100CF190C(v5, a4);
  v7 = v6;

  return sub_100CE89C8(v7);
}

uint64_t sub_100CF7BF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Signpost();
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Signpost.end(dso:)(&_mh_execute_header);
  if (qword_1011BDB60 != -1)
  {
    swift_once();
  }

  __chkstk_darwin();
  *(&v8 - 2) = a2;
  *(&v8 - 1) = v5;
  static Signpost.interval<A>(name:log:_:)("Process Scripting Records", 25, 2, v6, sub_100CF9DF4, (&v8 - 4), &type metadata for ());
  sub_100CEF4C0(v4);
  Signpost.end(dso:)(&_mh_execute_header);
  return sub_100CF9158(v4, type metadata accessor for Signpost);
}

uint64_t sub_100CF7D4C()
{
  swift_beginAccess();

  sub_100CF0ED8(v0);
}

uint64_t sub_100CF7DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100CF8CEC(v5, v7) & 1;
}

uint64_t sub_100CF7DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100CF8E0C(v5, v7) & 1;
}

uint64_t sub_100CF7E3C()
{

  sub_100CF90F0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

id JSBridge.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC11MusicJSCore8JSBridge____lazy_storage___bootSignpost;
  v5 = type metadata accessor for Signpost();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread;
  type metadata accessor for JSThread();
  swift_allocObject();
  *&v1[v6] = JSThread.init(name:)(0xD000000000000018, 0x8000000100E6DAA0);
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_provider] = 0;
  v7 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 14) = 0;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment] = 0;
  v8 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  *v8 = 0u;
  *(v8 + 2) = 0x8000000000000000;
  *(v8 + 24) = 0u;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint] = 0;
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState] = 0;
  v9 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects;
  sub_10010FC20(&qword_1011BDD00);
  swift_allocObject();
  *&v1[v9] = WeakValuesDictionary.init()();
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for JSBridge();
  return objc_msgSendSuper2(&v11, "init");
}

id JSBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CF8218()
{
  v1 = v0;
  v2 = v0[17];
  if (*(*(v1[10] + OBJC_IVAR____TtC11MusicJSCore31JSSubscriptionStatusCoordinator_asyncInitializer) + 16) == 1 && *(*(v1[8] + OBJC_IVAR____TtC11MusicJSCore7JSStore_asyncInitializer) + 16) == 1)
  {
    v3 = *(*(v1[2] + OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer) + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  return sub_100CF8380(v4);
}

uint64_t sub_100CF829C()
{
  v14 = *(v0 + 24);
  v15 = *(v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 32);
  v1 = *(v0 + 56);
  v11 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_100CF8380(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (*(v2 + 16) == 1 && (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    v10 = *(v2 + 24);
    *(v2 + 24) = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 40;
      while (v12 < *(v10 + 16))
      {
        ++v12;
        v14 = *(v13 - 8);

        v14(v15);

        v13 += 16;
        if (v11 == v12)
        {
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

NSString sub_100CF8534()
{
  result = String._bridgeToObjectiveC()();
  qword_1011BE260 = result;
  return result;
}

NSString sub_100CF8570()
{
  result = String._bridgeToObjectiveC()();
  qword_1011BE268 = result;
  return result;
}

uint64_t type metadata accessor for JSBridge()
{
  result = qword_1011BE320;
  if (!qword_1011BE320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100CF8600()
{
  result = qword_1011BE2F0;
  if (!qword_1011BE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE2F0);
  }

  return result;
}

void sub_100CF865C()
{
  sub_100CF87AC(319, &qword_101184A60, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100CF87AC(319, &qword_1011A3F08, type metadata accessor for Signpost);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100CF87AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 sub_100CF8810(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100CF883C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CF8884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100CF88FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100CF8950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100CF89C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100CF8A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 sub_100CF8AEC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100CF8B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 73))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100CF8B4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_100CF8B9C(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_100CF8BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100CF8BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100CF8C44(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

uint64_t sub_100CF8CA8(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_100ECF4B0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_100CF8CEC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (*a1 != v4)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 0x4C52556E65706FLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*(a2 + 16))
  {
    v6 = 0x4C52556E65706FLL;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v5 != v6)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
LABEL_14:
  v8 = *(a1 + 32);
  v9 = a2[4];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (*(a1 + 24) == a2[3] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100CF8E0C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  if (!(v4 >> 62))
  {
    v23[0] = *a1;
    v23[1] = v3;
    v23[2] = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v23[3] = v5;
    v23[4] = v6;
    v8 = *(a2 + 2);
    if (!(v8 >> 62))
    {
      v20 = *a2;
      v21 = v8;
      v22 = *(a2 + 24);
      v7 = sub_100CF8CEC(v23, &v20);
      return v7 & 1;
    }

    goto LABEL_66;
  }

  if (v4 >> 62 != 1)
  {
    v9 = v5 | v3;
    if (v4 == 0x8000000000000000 && (v9 | v2 | v6) == 0)
    {
      v13 = *(a2 + 2);
      if (v13 >> 62 != 2 || v13 != 0x8000000000000000 || *(a2 + 3) | *(a2 + 4) | *(a2 + 1) | *a2)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v11 = v9 | v6;
      if (v4 == 0x8000000000000000 && v2 == 1 && !v11)
      {
        v12 = *(a2 + 2);
        if (v12 >> 62 != 2 || *(a2 + 24) != 0 || v12 != 0x8000000000000000 || *(a2 + 1) || *a2 != 1)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 2 && !v11)
      {
        v14 = *(a2 + 2);
        if (v14 >> 62 != 2 || *(a2 + 24) != 0 || v14 != 0x8000000000000000 || *(a2 + 1) || *a2 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 3 && !v11)
      {
        v15 = *(a2 + 2);
        if (v15 >> 62 != 2 || *(a2 + 24) != 0 || v15 != 0x8000000000000000 || *(a2 + 1) || *a2 != 3)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 4 && !v11)
      {
        v16 = *(a2 + 2);
        if (v16 >> 62 != 2 || *(a2 + 24) != 0 || v16 != 0x8000000000000000 || *(a2 + 1) || *a2 != 4)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 5 && !v11)
      {
        v17 = *(a2 + 2);
        if (v17 >> 62 != 2 || *(a2 + 24) != 0 || v17 != 0x8000000000000000 || *(a2 + 1) || *a2 != 5)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v18 = *(a2 + 2);
        if (v18 >> 62 != 2 || *(a2 + 24) != 0 || v18 != 0x8000000000000000 || *(a2 + 1) || *a2 != 6)
        {
          goto LABEL_66;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

  if (*(a2 + 2) >> 62 != 1)
  {
LABEL_66:
    v7 = 0;
    return v7 & 1;
  }

  v7 = v2 == *a2;
  return v7 & 1;
}

uint64_t sub_100CF90F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100CF9158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100CF91B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CF9220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CF9288(void *a1, char a2)
{
  v5 = *(type metadata accessor for Signpost() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_100CF52AC(a1, a2 & 1, v9, v2 + v6, (v2 + v7), v10);
}

uint64_t sub_100CF9380()
{
  v1 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100CF4B8C(v3, v0 + v2, v5, v6);
}

unint64_t sub_100CF9414()
{
  result = qword_1011BE5F0;
  if (!qword_1011BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE5F0);
  }

  return result;
}

uint64_t sub_100CF9468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSBridge.AsynchronousInitializer();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v9 = *(a1 + 64);
  *(v2 + 128) = *(a1 + 112);
  *(v2 + 136) = v8;
  v10 = *(a1 + 96);
  *(v2 + 96) = *(a1 + 80);
  *(v2 + 112) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v12;
  v13 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v13;
  *(v2 + 80) = v11;
  v14 = *&v9[OBJC_IVAR____TtC11MusicJSCore31JSSubscriptionStatusCoordinator_asyncInitializer];
  v15 = sub_100009F78(0, &qword_101182960);
  swift_retain_n();
  sub_100CF9E64(a1, v47);
  v16 = v9;
  *v7 = static OS_dispatch_queue.main.getter();
  v17 = enum case for DispatchPredicate.onQueue(_:);
  v46 = *(v5 + 104);
  v46(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v18 = _dispatchPreconditionTest(_:)();
  v45 = *(v5 + 8);
  v45(v7, v4);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = v14[16];
  v44 = v15;
  v43 = v17;
  if (v19 != 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100CFA594;
    *(v18 + 24) = v2;
    swift_beginAccess();
    v17 = *(v14 + 3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 3) = v17;
    v42 = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  sub_100CF8218();
  while (1)
  {

    v24 = *(v2 + 64);
    v25 = *&v24[OBJC_IVAR____TtC11MusicJSCore7JSStore_asyncInitializer];
    swift_retain_n();
    v14 = v24;
    *v7 = static OS_dispatch_queue.main.getter();
    v46(v7, v17, v4);
    v18 = _dispatchPreconditionTest(_:)();
    v45(v7, v4);
    if (v18)
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v17 = sub_10006429C(0, *(v17 + 16) + 1, 1, v17);
    *(v14 + 3) = v17;
LABEL_5:
    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v22 >= v21 >> 1)
    {
      v17 = sub_10006429C((v21 > 1), v22 + 1, 1, v17);
    }

    *(v17 + 16) = v22 + 1;
    v23 = (v17 + 16 * v22);
    v23[4] = sub_1001D3174;
    v23[5] = v18;
    *(v14 + 3) = v17;
    swift_endAccess();
    v17 = v43;
    v16 = v42;
  }

  if (*(v25 + 16))
  {
    sub_100CF8218();
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_100CF9F34;
    *(v26 + 24) = v2;
    swift_beginAccess();
    v27 = *(v25 + 24);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 24) = v27;
    v42 = v14;
    if ((v28 & 1) == 0)
    {
      v27 = sub_10006429C(0, v27[2] + 1, 1, v27);
      *(v25 + 24) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_10006429C((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v31[4] = sub_1001D3174;
    v31[5] = v26;
    *(v25 + 24) = v27;
    swift_endAccess();
    v17 = v43;
    v14 = v42;
  }

  v32 = *(v2 + 16);
  v33 = *&v32[OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer];
  swift_retain_n();
  v14 = v32;
  *v7 = static OS_dispatch_queue.main.getter();
  v46(v7, v17, v4);
  v18 = _dispatchPreconditionTest(_:)();
  v45(v7, v4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (*(v33 + 16))
  {
    sub_100CF8218();
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100CFA594;
    *(v34 + 24) = v2;
    swift_beginAccess();
    v35 = *(v33 + 24);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_10006429C(0, v35[2] + 1, 1, v35);
      *(v33 + 24) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_10006429C((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[2 * v38];
    v39[4] = sub_1001D3174;
    v39[5] = v34;
    *(v33 + 24) = v35;
    swift_endAccess();
  }

  return v2;
}

void sub_100CF9A40()
{
  type metadata accessor for Signpost();
  type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  sub_100CF047C(sub_100CF9B58);
}

id sub_100CF9B4C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100CF9B78(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_100CF70DC(a1, v6, v1 + 24, v1 + v4, v5);
}

uint64_t sub_100CF9C1C()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100CF7494(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_100CF9D14()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100CF7BF0(v0 + v2, v3);
}

uint64_t sub_100CF9DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100CF9E0C()
{

  return swift_deallocObject();
}

uint64_t sub_100CF9E9C()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 144) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100CF4A78(v3, v0 + 24, v0 + v2, v4);
}

uint64_t sub_100CFA02C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_100CFA06C(a1);
    v4 = vars8;
  }
}

void sub_100CFA06C(uint64_t a1)
{
  if (a1 < 0)
  {
  }
}

uint64_t sub_100CFA07C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_100CFA10C()
{
  result = qword_1011BE670;
  if (!qword_1011BE670)
  {
    sub_100009F78(255, &qword_101197A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE670);
  }

  return result;
}

void sub_100CFA174(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  if (a1)
  {
  }
}

uint64_t sub_100CFA25C(uint64_t a1)
{
  sub_10010FC20(&qword_1011BE688);

  return sub_100CEDC2C(a1);
}

uint64_t sub_100CFA2D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v7[6] = *(a1 + 96);
  v8 = *(a1 + 112);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  return v2(v7);
}

void sub_100CFA340()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);

  sub_100CF6388(v0 + v2, v5, v6, v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_100CFA3E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100CFA424(result);
  }

  return result;
}

unint64_t sub_100CFA424(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_100CFA434(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_100CFA44C(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100CFA44C(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_100CFA424(a1);
    v4 = vars8;
  }
}

uint64_t sub_100CFA48C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_100CFA02C(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100CFA4C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100CFA51C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t JSShareRequestCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_100CE5F24(_swiftEmptyArrayStorage);
  *(v0 + 24) = sub_100CE6070(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t JSShareRequestCoordinator.init()()
{
  *(v0 + 16) = sub_100CE5F24(_swiftEmptyArrayStorage);
  *(v0 + 24) = sub_100CE6070(_swiftEmptyArrayStorage);
  return v0;
}

Swift::Int sub_100CFA644()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CFA750()
{
  NSObject.hash(into:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100CFA840()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void JSShareRequestCoordinator.perform(shareRequest:responseHandler:)(_BYTE *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *&a1[OBJC_IVAR____TtC11MusicJSCore14JSShareRequest_activityType];
  v9 = a1[OBJC_IVAR____TtC11MusicJSCore14JSShareRequest_requestContent + 8];
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v11 = *(v3 + 24);
  v12 = *(v11 + 16);
  v13 = v8;
  if (v12)
  {

    v14 = sub_100CE9050(v10.super.isa, v9, v13);
    if (v15)
    {
      v16 = *(v11 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *v16;
      swift_errorRetain();

      a2(v17, v18);

      return;
    }
  }

  swift_beginAccess();
  v20 = *(v4 + 16);
  if (!*(v20 + 16))
  {
    goto LABEL_13;
  }

  v21 = sub_100CE9050(v10.super.isa, v9, v13);
  if ((v22 & 1) == 0)
  {

LABEL_13:
    sub_10010FC20(&qword_1011BE690);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100EBC6B0;
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    *(v34 + 32) = sub_100CFB284;
    *(v34 + 40) = v35;
    swift_beginAccess();
    v36 = v13;

    v37 = a1;
    v38 = v10.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_100CEACF8(v37, v34, v38, v9, v36, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v47;
    swift_endAccess();
    v40 = swift_allocObject();
    *(v40 + 16) = v4;
    *(v40 + 24) = v38;
    *(v40 + 32) = v9;
    *(v40 + 40) = v36;
    v41 = v36;
    v42 = v38;

    JSShareRequest.perform(responseHandler:)(sub_100CFB2B4, v40);

    return;
  }

  v23 = *(v20 + 56) + 16 * v21;
  v24 = *(v23 + 8);
  v25 = *v23;

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v27 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_100DD627C(0, v24[2] + 1, 1, v24);
  }

  v28 = v27[2];
  v29 = v27[3];
  v30 = v28 + 1;
  if (v28 >= v29 >> 1)
  {
    v43 = v27;
    v44 = v27[2];
    v45 = sub_100DD627C((v29 > 1), v28 + 1, 1, v43);
    v28 = v44;
    v27 = v45;
  }

  v27[2] = v30;
  v31 = &v27[2 * v28];
  v31[4] = sub_100CFB384;
  v31[5] = v26;
  swift_beginAccess();
  v32 = v25;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_100CEACF8(v32, v27, v10.super.isa, v9, v13, v33);

  *(v4 + 16) = v46;
  swift_endAccess();
}

uint64_t sub_100CFAD8C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  sub_100009F78(0, &qword_101182960);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v13 = a1;
  swift_errorRetain();

  v14 = a4;
  v15 = a6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFB370, v12);
}

uint64_t sub_100CFAE6C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  swift_beginAccess();
  v12 = a1;
  swift_errorRetain();
  v13 = v12;
  swift_errorRetain();
  v14 = a4;
  v15 = a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_100CEAE74(a1, a2, v14, a5, v15, isUniquelyReferenced_nonNull_native);

  *(a3 + 24) = v29;
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = *(v17 + 16);

  if (v18 && (v19 = sub_100CE9050(v14, a5, v15), (v20 & 1) != 0))
  {
    v21 = *(v17 + 56) + 16 * v19;
    v22 = *(v21 + 8);
    v23 = *v21;

    swift_beginAccess();
    sub_100CE7C80(0, 0, v14, a5, v15);
    swift_endAccess();
    v24 = *(v22 + 16);
    if (v24)
    {

      v25 = v22 + 40;
      do
      {
        v26 = *(v25 - 8);
        v28 = a2;
        v29 = a1;

        v26(&v29, &v28);

        v25 += 16;
        --v24;
      }

      while (v24);

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t JSShareRequestCoordinator.deinit()
{

  return v0;
}

uint64_t sub_100CFB0B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_100009F78(0, &qword_101197A30);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0x616C5065726F7473;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v8 = 0xED00006D726F6674;
    }

    else
    {
      v8 = 0x8000000100E6D780;
    }

    v9 = a5;
    if (a5)
    {
LABEL_10:
      if (v9 == 1)
      {
        v10 = 0x616C5065726F7473;
      }

      else
      {
        v10 = 0xD000000000000010;
      }

      if (v9 == 1)
      {
        v11 = 0xED00006D726F6674;
      }

      else
      {
        v11 = 0x8000000100E6D780;
      }

      if (v7 != v10)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0x8000000100E6D750;
    v7 = 0xD000000000000012;
    v9 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  v11 = 0x8000000100E6D750;
  if (v7 != 0xD000000000000012)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v8 == v11)
  {

    goto LABEL_23;
  }

LABEL_22:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_26:
    v17 = 0;
    return v17 & 1;
  }

LABEL_23:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

unint64_t sub_100CFB31C()
{
  result = qword_1011BE778;
  if (!qword_1011BE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE778);
  }

  return result;
}

uint64_t sub_100CFB388()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url, &qword_101183A20);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate, &qword_101188C20);
}

id JSStoreHTTPRequest.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest];
  if (v3)
  {
    sub_100009F78(0, &qword_10118EAF8);
    v4 = v3;
    v5 = static ICURLSessionManager.musicSession.getter();
    [v5 cancelRequest:v4];
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100CFB66C()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest];
  if (v1)
  {
    v2 = v0;
    sub_100009F78(0, &qword_10118EAF8);
    v3 = v1;
    v4 = static ICURLSessionManager.musicSession.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = v2;
    ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v3, sub_100CFE81C, v5);
  }
}

void sub_100CFB740()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v0 + v1) = 0;
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  if (v2)
  {
    sub_100009F78(0, &qword_10118EAF8);
    v3 = v2;
    v4 = static ICURLSessionManager.musicSession.getter();
    [v4 cancelRequest:v3];
  }
}

void JSStoreHTTPRequest.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  if ((*(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) & 1) == 0)
  {
    v36[0] = a1;
    v36[1] = a2;
    sub_1000089F8(a3, v37, &unk_101183F30);
    if (v38)
    {
      sub_1000089F8(v37, &v34, &unk_101183F30);

      if (swift_dynamicCast())
      {
        v12 = v31[0];
        v11 = v31[1];
        if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          URL.init(string:)();
          v13 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
          swift_beginAccess();
          sub_10006B010(v10, v3 + v13, &qword_101183A20);
          swift_endAccess();
          sub_1000089F8(v3 + v13, v8, &qword_101183A20);
          v14 = type metadata accessor for URL();
          if ((*(*(v14 - 8) + 48))(v8, 1, v14) != 1)
          {

            sub_1000095E8(v8, &qword_101183A20);
            goto LABEL_37;
          }

          sub_1000095E8(v8, &qword_101183A20);
          v15 = static os_log_type_t.error.getter();
          if (qword_1011BDB58 != -1)
          {
            swift_once();
          }

          v16 = static OS_os_log.scripting;
          if (os_log_type_enabled(static OS_os_log.scripting, v15))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v32[0] = v18;
            *v17 = 136446210;
            v19 = sub_1000105AC(v12, v11, v32);

            *(v17 + 4) = v19;
            _os_log_impl(&_mh_execute_header, v16, v15, "Failed to make an URL with string %{public}s. Did you forget to escape the URL string?", v17, 0xCu);
            sub_10000959C(v18);

LABEL_37:
            sub_10000959C(&v34);
LABEL_38:
            sub_1000095E8(v37, &unk_101183F30);

            return;
          }

LABEL_36:

          goto LABEL_37;
        }

        if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v39._countAndFlagsBits = v12;
          v39._object = v11;
          v20 = sub_100D218F4(v39);
          if (v20 != 6)
          {
            *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method) = v20;
          }

          goto LABEL_37;
        }
      }

      sub_10000959C(&v34);
    }

    else
    {
    }

    if (a1 == 2036625250 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v32, &unk_101183F30);
      if (v33)
      {
        sub_100016270(v32, &v34);
        sub_10000954C(&v34, v35);
        v21 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000959C(&v34);
        *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = v21;
      }

      else
      {
        sub_1000095E8(v32, &unk_101183F30);
        *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = 0;
      }

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    if (v38)
    {
      sub_1000089F8(v37, &v34, &unk_101183F30);
      sub_10010FC20(&unk_1011BE790);
      if (swift_dynamicCast())
      {
        v22 = v32[0];
        if (a1 == 0x6574497972657571 && a2 == 0xEA0000000000736DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v23 = Dictionary.filterIncludingPairsWithStringValues()(v22, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

          v24 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_queryItems;
LABEL_35:
          *(v3 + v24) = v23;
          goto LABEL_36;
        }

        if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v25 = Dictionary.filterIncludingPairsWithStringValues()(v22, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

          v23 = Dictionary.filteredDictionary(_:)(sub_100D214E8, 0, v25, &type metadata for String, &type metadata for String, &protocol witness table for String);

          v24 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers;
          goto LABEL_35;
        }
      }

      sub_100009F78(0, &qword_101189A20);
      if (swift_dynamicCast())
      {
        v26 = v32[0];
        if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          [v26 doubleValue];
          v28 = v27;

          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_timeout) = v28 / 1000.0;
          goto LABEL_37;
        }

        if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v29 = [v26 integerValue];

          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount) = v29;
          goto LABEL_37;
        }
      }

      if (swift_dynamicCast())
      {
        v30 = v32[0];
        if (a1 == 0xD00000000000001DLL && 0x8000000100E6E8B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs) = v30;
          goto LABEL_37;
        }

        if (a1 == 0xD000000000000017 && 0x8000000100E6E8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest) = v30;
          goto LABEL_37;
        }
      }

      sub_10000959C(&v34);
    }

    sub_1000095E8(v36, &unk_1011C0D90);
  }
}

uint64_t static JSStoreHTTPRequest.isAuthenticating.setter(char a1)
{
  result = swift_beginAccess();
  static JSStoreHTTPRequest.isAuthenticating = a1;
  return result;
}

Swift::Void __swiftcall JSStoreHTTPRequest.scheduleResponseCallback()()
{
  v1 = v0;
  sub_10010FC20(&qword_101188C20);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response];
  if (v5)
  {
    if ([v5 parsedBody])
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
      v6 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode];
      if (v6 == 200)
      {
        sub_1000089F8(&v21, &v19, &unk_101183F30);
        if (*(&v20 + 1))
        {
          sub_10010FC20(&unk_1011BE790);
          if (swift_dynamicCast())
          {
            sub_100CFC508(v18[1]);
          }
        }

        else
        {
          sub_1000095E8(&v19, &unk_101183F30);
        }

        v6 = 200;
      }
    }

    else
    {
      v6 = 901;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v6 = 901;
  }

  sub_1000089F8(&v21, &v19, &unk_101183F30);
  v7 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics];
  v8 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  swift_beginAccess();
  sub_1000089F8(&v1[v8], v4, &qword_101188C20);
  v9 = type metadata accessor for JSStoreHTTPResponse();
  objc_allocWithZone(v9);
  v10 = v7;
  v11 = JSStoreHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(v6, &v19, v7, v4);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 56) = v9;
  *(v13 + 32) = v11;
  sub_100009F78(0, &qword_101182960);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0x6E6F707365526E6FLL;
  *(v14 + 40) = 0xEA00000000006573;
  *(v14 + 48) = v1;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  v15 = v11;
  v16 = v1;
  v17 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v14);

  sub_1000095E8(&v21, &unk_101183F30);
}