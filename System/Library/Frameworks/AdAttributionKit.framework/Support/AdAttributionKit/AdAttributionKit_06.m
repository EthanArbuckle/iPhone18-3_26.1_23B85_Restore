char *sub_100087A38(unint64_t a1)
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

  v13 = _swiftEmptyArrayStorage;
  result = sub_100147160(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10001523C(0, &qword_10023BC18, &off_1002114A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100147160((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100025CA4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10001523C(0, &qword_10023BC18, &off_1002114A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100147160((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100025CA4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100087C34(unint64_t a1)
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

  v17 = _swiftEmptyArrayStorage;
  result = sub_1001471C4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001471C4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
        v16 = &off_10021E280;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000DA64(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1001471C4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
        v16 = &off_10021E280;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000DA64(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100087E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_100147244(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = sub_1000898EC();
    do
    {
      memcpy(v24, v4, sizeof(v24));
      v22 = &type metadata for SnoutEventPayload;
      v23 = v5;
      v21[0] = swift_allocObject();
      memcpy((v21[0] + 16), v4, 0x1D8uLL);
      sub_100089A30(v24, &v18);
      v25 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_100147244((v6 > 1), v7 + 1, 1);
        v2 = v25;
      }

      v16 = v7 + 1;
      v8 = v22;
      v9 = sub_100054C30(v21, v22);
      v17 = &v15;
      v10 = *(v8[-1].Description + 8);
      __chkstk_darwin(v9);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      v19 = &type metadata for SnoutEventPayload;
      v20 = v5;
      *&v18 = swift_allocObject();
      memcpy((v18 + 16), v12, 0x1D8uLL);
      v2[2] = v16;
      sub_10000DA64(&v18, &v2[5 * v7 + 4]);
      sub_10000DB58(v21);
      v4 += 472;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100088030()
{
  v1 = [v0 connection];
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = sub_100084E74(v1, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v5 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000881A4()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:3];
  swift_unknownObjectRelease();

  v7 = sub_100084E74(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_100088414(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10008848C(a1, a2, v6);
}

unint64_t sub_10008848C(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *sub_100088544(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC88, &qword_1001BA580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088650(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&unk_10023BC90, &unk_1001BA588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088798(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC58, &qword_1001BA550);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000888A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCA0, &qword_1001BA598);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_100088998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCA8, &unk_1001BA5A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&unk_10023BC30, &unk_1001BA530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088BDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC10, &qword_1001BA520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCC0, &qword_1001BA5B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC20, &qword_1001BA528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100088F84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCB8, &qword_1001BA5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000890D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CDE0(a5, a6);
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

void *sub_1000892D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000CDE0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CDE0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100089418(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC60, &qword_1001BA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100089540(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BC50, &qword_1001C1850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100089644(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10008976C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023BC00, &qword_1001BA510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10008987C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100088414(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10008987C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023BC08, &qword_1001BA518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000898EC()
{
  result = qword_10023BC28;
  if (!qword_10023BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BC28);
  }

  return result;
}

uint64_t sub_100089940()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 248);

  v15 = *(v0 + 264);

  v16 = *(v0 + 296);

  v17 = *(v0 + 344);

  v18 = *(v0 + 360);

  v19 = *(v0 + 392);

  v20 = *(v0 + 424);

  v21 = *(v0 + 448);

  v22 = *(v0 + 464);

  v23 = *(v0 + 480);

  return _swift_deallocObject(v0, 488, 7);
}

uint64_t sub_100089A8C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[12];

  v4 = v0[14];

  v5 = v0[17];

  v6 = v0[21];

  v7 = v0[25];

  return _swift_deallocObject(v0, 233, 7);
}

BOOL sub_100089AF4(void *a1)
{
  v1 = a1;
  v2 = sub_100099828(v1);

  return v2;
}

uint64_t sub_100089B28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_100089B80()
{
  v1[2] = v0;
  v2 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for ReengagementConversionTask.Operation(0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100089C6C, 0, 0);
}

uint64_t sub_100089C6C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for ReengagementConversionTask(0) + 64);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running reengagement conversion task", v5, 2u);
  }

  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  sub_100098D08(v9, v6, type metadata accessor for ReengagementConversionTask.Operation);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_10008A090;
    v11 = v0[2];

    return sub_10008C77C();
  }

  else
  {
    v13 = v0[5];
    v14 = v0[3];
    sub_100099038(v0[6], v13, type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
    v28 = v14[5];
    v29 = *v13;
    v15 = (v13 + v14[6]);
    v16 = v15[1];
    v27 = *v15;
    v17 = v14[8];
    v18 = v13 + v14[7];
    v19 = *v18;
    v20 = v18[8];
    v21 = *(v13 + v17);
    v22 = *(v13 + v17 + 8);
    v23 = *(v13 + v17 + 16);
    LOWORD(v14) = *(v13 + v17 + 24);
    v24 = *(v13 + v17 + 25);
    v25 = swift_task_alloc();
    v0[7] = v25;
    *v25 = v0;
    v25[1] = sub_100089EF4;
    v26 = v0[2];

    return sub_10008A31C(v29, v13 + v28, v27, v16, v19, v20, v21, v22);
  }
}

uint64_t sub_100089EF4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10008A1F8;
  }

  else
  {
    v3 = sub_10008A008;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008A008()
{
  sub_1000988DC(v0[5], type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008A090()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_10008A18C, 0, 0);
}

uint64_t sub_10008A18C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008A1F8()
{
  v1 = v0[6];
  sub_1000988DC(v0[5], type metadata accessor for ReengagementConversionTask.RegisterConversionParcel);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_10008A2E4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 496) = v16;
  *(v9 + 504) = v8;
  *(v9 + 680) = v17;
  *(v9 + 480) = a7;
  *(v9 + 488) = a8;
  *(v9 + 339) = a6;
  *(v9 + 464) = a4;
  *(v9 + 472) = a5;
  *(v9 + 448) = a2;
  *(v9 + 456) = a3;
  *(v9 + 440) = a1;
  v10 = type metadata accessor for RegisterConversionTask();
  *(v9 + 512) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v12 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  *(v9 + 528) = v12;
  v13 = *(v12 - 8);
  *(v9 + 536) = v13;
  *(v9 + 544) = *(v13 + 64);
  *(v9 + 552) = swift_task_alloc();

  return _swift_task_switch(sub_10008A444, 0, 0);
}

uint64_t sub_10008A444()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[63];
  v5 = v0[56];
  v6 = v5 + *(v0[66] + 68);
  v0[70] = *(v6 + *(type metadata accessor for AppImpressionPayload() + 20));
  v7 = type metadata accessor for ReengagementConversionTask(0);
  v0[71] = v7;
  v8 = (v4 + *(v7 + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  sub_100014B50(v5, v1, &qword_10023A7D0, &unk_1001B5840);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v0[72] = v13;
  sub_100097684(v1, v13 + v12);
  v14 = swift_task_alloc();
  v0[73] = v14;
  *v14 = v0;
  v14[1] = sub_10008A5C0;

  return sub_10011034C(sub_1000976F4, v13, v10, v9, v11);
}

uint64_t sub_10008A5C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  *(v4 + 592) = v1;

  v7 = *(v4 + 576);

  if (v1)
  {
    v8 = sub_10008BE48;
  }

  else
  {
    *(v4 + 411) = a1 & 1;
    v8 = sub_10008A708;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008A708()
{
  if (*(v0 + 411) == 1)
  {
    v1 = *(v0 + 680);
    if ((v1 & 0x100) != 0)
    {
      v25 = *(v0 + 504);
      v26 = *(*(v0 + 568) + 40);
      *(v0 + 340) = v26;
      sub_10000DA7C((v25 + v26), *(v25 + v26 + 24));
      v27 = swift_task_alloc();
      *(v0 + 616) = v27;
      *v27 = v0;
      v27[1] = sub_10008B018;
      v28 = *(v0 + 440);

      return sub_100106118(v28);
    }

    else
    {
      v2 = *(v0 + 488);
      v3 = swift_task_alloc();
      *(v0 + 600) = v3;
      v4 = v1 & 1;
      *v3 = v0;
      v3[1] = sub_10008AB0C;
      v5 = *(v0 + 496);
      v6 = *(v0 + 504);
      v7 = *(v0 + 480);
      v8 = *(v0 + 440);

      return sub_100090078(v8, v7, v2 & 1, v5, v4);
    }
  }

  else
  {
    sub_10005C97C();
    v10 = swift_allocError();
    *v11 = xmmword_1001BA5D0;
    *(v11 + 16) = 2;
    swift_willThrow();
    *(v0 + 664) = v10;
    v12 = *(v0 + 504);
    v13 = *(*(v0 + 568) + 64);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 440);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 134218242;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Register reengagement failed for app %llu with error: %@", v17, 0x16u);
      sub_10000DAF8(v18, &qword_100239F10, &qword_1001B4FD0);
    }

    v20 = *(v0 + 568);
    v21 = *(v0 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v10, (v0 + 16));

    sub_10000DA7C((v21 + *(v20 + 68)), *(v21 + *(v20 + 68) + 24));
    v22 = type metadata accessor for SnoutManager();
    v23 = swift_task_alloc();
    *(v0 + 672) = v23;
    *v23 = v0;
    v23[1] = sub_10008BCB8;
    v24 = *(v0 + 440);

    return (sub_10016E27C)(v0 + 16, v24, 0, 0, v22, &off_100223858);
  }
}

uint64_t sub_10008AB0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 600);
  v6 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v7 = sub_10008C0CC;
  }

  else
  {
    *(v4 + 682) = a1 & 1;
    v7 = sub_10008AC38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008AC38()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 504);
  if (*(v0 + 682))
  {
    v3 = *(v1 + 40);
    *(v0 + 340) = v3;
    sub_10000DA7C((v2 + v3), *(v2 + v3 + 24));
    v4 = swift_task_alloc();
    *(v0 + 616) = v4;
    *v4 = v0;
    v4[1] = sub_10008B018;
    v5 = *(v0 + 440);

    return sub_100106118(v5);
  }

  else
  {
    v7 = v2 + *(v1 + 64);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 440);
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "Re-engagement within cooldown for app %llu", v11, 0xCu);
    }

    sub_10005C97C();
    v12 = swift_allocError();
    *v13 = xmmword_1001BA5E0;
    *(v13 + 16) = 2;
    swift_willThrow();
    *(v0 + 664) = v12;
    v14 = *(v0 + 504);
    v15 = *(*(v0 + 568) + 64);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 440);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 134218242;
      *(v19 + 4) = v18;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Register reengagement failed for app %llu with error: %@", v19, 0x16u);
      sub_10000DAF8(v20, &qword_100239F10, &qword_1001B4FD0);
    }

    v22 = *(v0 + 568);
    v23 = *(v0 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v12, (v0 + 16));

    sub_10000DA7C((v23 + *(v22 + 68)), *(v23 + *(v22 + 68) + 24));
    v24 = type metadata accessor for SnoutManager();
    v25 = swift_task_alloc();
    *(v0 + 672) = v25;
    *v25 = v0;
    v25[1] = sub_10008BCB8;
    v26 = *(v0 + 440);

    return (sub_10016E27C)(v0 + 16, v26, 0, 0, v24, &off_100223858);
  }
}

uint64_t sub_10008B018()
{
  v2 = *(*v1 + 616);
  v3 = *v1;
  v3[78] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008B2C0, 0, 0);
  }

  else
  {
    v4 = v3[70] != 0;
    v5 = swift_task_alloc();
    v3[79] = v5;
    *v5 = v3;
    v5[1] = sub_10008B1AC;
    v6 = v3[63];
    v7 = v3[55];

    return sub_100090A78((v3 + 30), v7, v4);
  }
}

uint64_t sub_10008B1AC()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_10008C350;
  }

  else
  {
    v3 = sub_10008B544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008B2C0()
{
  v1 = *(v0 + 624);
  *(v0 + 664) = v1;
  v2 = *(v0 + 504);
  v3 = *(*(v0 + 568) + 64);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Register reengagement failed for app %llu with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 568);
  v11 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v11 + *(v10 + 68)), *(v11 + *(v10 + 68) + 24));
  v12 = type metadata accessor for SnoutManager();
  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_10008BCB8;
  v14 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_10008B544()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 340);
    v3 = *(v0 + 568);
    v4 = *(v0 + 520);
    v5 = *(v0 + 504);
    v6 = *(v0 + 512);
    v65 = *(v0 + 339);
    v64 = *(v0 + 472);
    v63 = *(v0 + 464);
    v62 = *(v0 + 456);
    v61 = *(v0 + 560) != 0;
    *(v0 + 416) = *(v0 + 240);
    *(v0 + 432) = *(v0 + 256);
    v7 = *(v0 + 272);
    v8 = *(v0 + 288);
    v9 = *(v0 + 304);
    v10 = *(v0 + 320);
    *(v0 + 407) = *(v0 + 335);
    *(v0 + 376) = v9;
    *(v0 + 392) = v10;
    *(v0 + 344) = v7;
    *(v0 + 360) = v8;
    v11 = v3[7];
    v12 = (v5 + v3[6]);
    v13 = v12[1];
    v59 = v12[2];
    v60 = *v12;
    v56 = *(v5 + v11 + 8);
    v57 = *(v5 + v11 + 16);
    v58 = *(v5 + v11);
    v14 = (v5 + v3[8]);
    v55 = *v14;
    v53 = v14[1];
    v54 = v14[2];
    v15 = (v5 + v3[9]);
    v50 = v15[1];
    v51 = v15[2];
    v52 = *v15;
    sub_10000CE28(v5 + v2, v4 + 256);
    sub_10000CE28(v5 + v3[13], v4 + 296);
    v16 = v3[16];
    *(v0 + 412) = v16;
    v17 = *(v6 + 64);
    v18 = type metadata accessor for Logger();
    (*(*(v18 - 8) + 16))(v4 + v17, v5 + v16, v18);
    sub_10000CE28(v5 + v3[17], v4 + *(v6 + 68));
    v19 = *(v0 + 432);
    *v4 = *(v0 + 416);
    *(v4 + 16) = v19;
    *(v4 + 24) = v1;
    *(v4 + 32) = *(v0 + 344);
    v20 = *(v0 + 360);
    v21 = *(v0 + 376);
    v22 = *(v0 + 392);
    *(v4 + 95) = *(v0 + 407);
    *(v4 + 64) = v21;
    *(v4 + 80) = v22;
    *(v4 + 48) = v20;
    *(v4 + 99) = 2;
    *(v4 + 104) = v62;
    *(v4 + 112) = v63;
    *(v4 + 120) = v61;
    *(v4 + 128) = v64;
    *(v4 + 136) = v65 & 1;
    *(v4 + 144) = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = v60;
    *(v4 + 168) = v13;
    *(v4 + 176) = v59;
    *(v4 + 184) = v58;
    *(v4 + 192) = v56;
    *(v4 + 200) = v57;
    *(v4 + 208) = v55;
    *(v4 + 216) = v53;
    *(v4 + 224) = v54;
    *(v4 + 232) = v52;
    *(v4 + 240) = v50;
    *(v4 + 248) = v51;

    v23 = v59;

    v24 = v57;

    v25 = v54;

    v26 = v51;
    v27 = swift_task_alloc();
    *(v0 + 648) = v27;
    *v27 = v0;
    v27[1] = sub_10008BB14;
    v28 = *(v0 + 520);

    return sub_100072714();
  }

  else
  {
    v30 = *(v0 + 504) + *(*(v0 + 568) + 64);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 440);
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v31, v32, "No non-allocated token found for app %llu", v34, 0xCu);
    }

    sub_10005C97C();
    v35 = swift_allocError();
    *v36 = xmmword_1001BA5F0;
    *(v36 + 16) = 2;
    swift_willThrow();
    *(v0 + 664) = v35;
    v37 = *(v0 + 504);
    v38 = *(*(v0 + 568) + 64);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 440);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 134218242;
      *(v42 + 4) = v41;
      *(v42 + 12) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "Register reengagement failed for app %llu with error: %@", v42, 0x16u);
      sub_10000DAF8(v43, &qword_100239F10, &qword_1001B4FD0);
    }

    v45 = *(v0 + 568);
    v46 = *(v0 + 504);

    swift_errorRetain();
    sub_1000C7DDC(2u, v35, (v0 + 16));

    sub_10000DA7C((v46 + *(v45 + 68)), *(v46 + *(v45 + 68) + 24));
    v47 = type metadata accessor for SnoutManager();
    v48 = swift_task_alloc();
    *(v0 + 672) = v48;
    *v48 = v0;
    v48[1] = sub_10008BCB8;
    v49 = *(v0 + 440);

    return (sub_10016E27C)(v0 + 16, v49, 0, 0, v47, &off_100223858);
  }
}

uint64_t sub_10008BB14()
{
  v2 = *(*v1 + 648);
  v5 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_10008C5D4;
  }

  else
  {
    v3 = sub_10008BC28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008BC28()
{
  v1 = v0[69];
  sub_1000988DC(v0[65], type metadata accessor for RegisterConversionTask);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10008BCB8()
{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10008BDBC, 0, 0);
}

uint64_t sub_10008BDBC()
{
  v1 = v0[83];
  v2 = v0[69];
  v3 = v0[65];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008BE48()
{
  v1 = *(v0 + 592);
  *(v0 + 664) = v1;
  v2 = *(v0 + 504);
  v3 = *(*(v0 + 568) + 64);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Register reengagement failed for app %llu with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 568);
  v11 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v11 + *(v10 + 68)), *(v11 + *(v10 + 68) + 24));
  v12 = type metadata accessor for SnoutManager();
  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_10008BCB8;
  v14 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_10008C0CC()
{
  v1 = *(v0 + 608);
  *(v0 + 664) = v1;
  v2 = *(v0 + 504);
  v3 = *(*(v0 + 568) + 64);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Register reengagement failed for app %llu with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 568);
  v11 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v11 + *(v10 + 68)), *(v11 + *(v10 + 68) + 24));
  v12 = type metadata accessor for SnoutManager();
  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_10008BCB8;
  v14 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_10008C350()
{
  v1 = *(v0 + 640);
  *(v0 + 664) = v1;
  v2 = *(v0 + 504);
  v3 = *(*(v0 + 568) + 64);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Register reengagement failed for app %llu with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 568);
  v11 = *(v0 + 504);

  swift_errorRetain();
  sub_1000C7DDC(2u, v1, (v0 + 16));

  sub_10000DA7C((v11 + *(v10 + 68)), *(v11 + *(v10 + 68) + 24));
  v12 = type metadata accessor for SnoutManager();
  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_10008BCB8;
  v14 = *(v0 + 440);

  return (sub_10016E27C)(v0 + 16, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_10008C5D4()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 412);
  v3 = *(v0 + 504);
  sub_1000988DC(*(v0 + 520), type metadata accessor for RegisterConversionTask);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v7 = *(v0 + 440);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register re-engagement for app %llu with error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 656);
  v12 = *(v0 + 552);
  v13 = *(v0 + 520);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10008C77C()
{
  v1[152] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[153] = v2;
  v3 = *(v2 - 8);
  v1[154] = v3;
  v4 = *(v3 + 64) + 15;
  v1[155] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[156] = v5;
  v6 = *(v5 - 8);
  v1[157] = v6;
  v1[158] = *(v6 + 64);
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();

  return _swift_task_switch(sub_10008C8AC, 0, 0);
}

uint64_t sub_10008C8AC()
{
  v1 = *(v0 + 1216);
  v2 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 1288) = v2;
  *(v0 + 1420) = *(v2 + 64);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing scheduled token fetch for re-engagement", v5, 2u);
  }

  v6 = swift_task_alloc();
  *(v0 + 1296) = v6;
  *v6 = v0;
  v6[1] = sub_10008C9E0;

  return sub_100158594(12);
}

uint64_t sub_10008C9E0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1200) = a2;
  *(v4 + 1192) = a1;
  *(v4 + 1184) = v2;
  v5 = *(v3 + 1296);
  v7 = *v2;
  *(v4 + 1436) = a2;

  return _swift_task_switch(sub_10008CAEC, 0, 0);
}

uint64_t sub_10008CAEC()
{
  v101 = v0;
  if (*(v0 + 1436))
  {
    v1 = 0.0004;
  }

  else
  {
    v2 = *(v0 + 1192);
    v1 = 0.0004;
    if (v2 >= 0.0004)
    {
      v1 = fmin(v2, 0.2);
    }
  }

  v3 = sub_1000124D8(0x20000000000001uLL);
  if (v3 == 0x20000000000000)
  {
    if (v1 <= 1.0)
    {
LABEL_7:
      v4 = *(v0 + 1216) + *(v0 + 1420);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Skipping scheduled re-engagement token fetch", v7, 2u);
      }

      v8 = *(v0 + 1280);
      v9 = *(v0 + 1272);
      v10 = *(v0 + 1240);

      v11 = *(v0 + 8);

      return v11();
    }
  }

  else if (vcvtd_n_f64_u64(v3, 0x35uLL) >= v1)
  {
    goto LABEL_7;
  }

  v13 = [objc_opt_self() enumeratorWithOptions:128];
  *(v0 + 848) = &type metadata for LaunchServicesRecordEnumerator;
  *(v0 + 856) = &off_100219F58;
  *(v0 + 824) = v13;
  v14 = *sub_10000DA7C((v0 + 824), &type metadata for LaunchServicesRecordEnumerator);
  *(v0 + 720) = sub_100089AF4;
  *(v0 + 728) = 0;
  *(v0 + 688) = _NSConcreteStackBlock;
  *(v0 + 696) = 1107296256;
  *(v0 + 704) = sub_100089B28;
  *(v0 + 712) = &unk_10021B2C0;
  v15 = _Block_copy((v0 + 688));
  v16 = *(v0 + 728);

  [v14 setFilter:v15];
  _Block_release(v15);
  *(v0 + 752) = 0u;
  *(v0 + 768) = 0u;
  *(v0 + 736) = 0u;
  v17 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
  if (v17)
  {
    v18 = v17;
    v19 = *(v0 + 1420);
    v20 = *(v0 + 1216);
    *(v0 + 928) = sub_10006DF54();
    *(v0 + 936) = &off_10021F840;
    *(v0 + 904) = v18;
    sub_10000DA64((v0 + 904), v0 + 864);
    sub_10000CE28(v0 + 864, v0 + 1144);
    sub_10000CE28(v0 + 864, v0 + 1104);
    sub_10000CE28(v0 + 864, v0 + 1064);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v23 = 136315650;
      sub_10000DA7C((v0 + 1144), *(v0 + 1168));
      v24 = sub_1000FF2FC();
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 1701736302;
      }

      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1144));
      v28 = sub_10017AD04(v26, v27, v100);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2048;
      sub_10000DA7C((v0 + 1104), *(v0 + 1128));
      v29 = sub_1000FF2AC();
      sub_10000DB58((v0 + 1104));
      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      sub_10000DA7C((v0 + 1064), *(v0 + 1088));
      v30 = sub_1000FF364();
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = 1701736302;
      }

      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1064));
      v34 = sub_10017AD04(v32, v33, v100);

      *(v23 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10000DB58((v0 + 1104));

      sub_10000DB58((v0 + 1144));
      sub_10000DB58((v0 + 1064));
    }

    v40 = *(v0 + 888);
    v41 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v40);
    v42 = (*(v41 + 16))(v40, v41);
    v43 = swift_task_alloc();
    *(v0 + 1304) = v43;
    *v43 = v0;
    v43[1] = sub_10008D74C;
    v44 = *(v0 + 1216);

    return sub_100091A48(v42, 1);
  }

  else if (*(v0 + 760))
  {
    sub_10000CE28(v0 + 736, v0 + 984);
    sub_10000DA64((v0 + 984), v0 + 944);
    sub_10000DA64((v0 + 944), v0 + 784);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    v35 = *(v0 + 808);
    v36 = *(v0 + 816);
    sub_10000DA7C((v0 + 784), v35);
    v37 = (*(v36 + 16))(v35, v36);
    v38 = swift_task_alloc();
    *(v0 + 1360) = v38;
    *v38 = v0;
    v38[1] = sub_10008F718;
    v39 = *(v0 + 1216);

    return sub_100092994(v37, 1, 1);
  }

  else
  {
    sub_10005C97C();
    v45 = swift_allocError();
    *v46 = xmmword_1001BA600;
    *(v46 + 16) = 2;
    swift_willThrow();
    *(v0 + 1368) = v45;
    v47 = *(v0 + 1420);
    v48 = *(v0 + 1216);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Scheduled re-engagement token fetch has failed with error: %@", v51, 0xCu);
      sub_10000DAF8(v52, &qword_100239F10, &qword_1001B4FD0);
    }

    v96 = (v0 + 1409);
    v97 = (v0 + 1425);
    v54 = *(v0 + 1272);
    v91 = (v0 + 1430);
    v92 = (v0 + 1401);
    v93 = (v0 + 1414);
    v94 = (v0 + 1393);
    v55 = *(v0 + 1256);
    v95 = (v0 + 1385);
    v56 = *(v0 + 1248);
    v57 = *(v0 + 1240);
    v58 = *(v0 + 1232);
    v59 = *(v0 + 1224);
    v98 = *(v0 + 1216);
    v99 = *(v0 + 1288);

    swift_errorRetain();
    v60 = sub_1000C7C10(v45);
    v89 = v61;
    v90 = v60;
    v87 = v63;
    v88 = v62;
    static Date.now.getter();
    (*(v58 + 104))(v57, enum case for Calendar.Component.hour(_:), v59);
    v64 = sub_100025808(v54, v57);
    v66 = v65;
    (*(v58 + 8))(v57, v59);
    (*(v55 + 8))(v54, v56);
    if (v66)
    {
      v67 = 0;
    }

    else
    {
      v67 = v64;
    }

    v68 = [objc_opt_self() buildVersion];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    *(v0 + 1408) = 1;
    *(v0 + 1400) = 1;
    *(v0 + 1424) = 1;
    *(v0 + 1384) = 1;
    *(v0 + 1392) = 1;
    *(v0 + 464) = 1287;
    *(v0 + 466) = *v91;
    *(v0 + 470) = *(v0 + 1434);
    *(v0 + 472) = v90;
    *(v0 + 480) = v89;
    *(v0 + 488) = v88;
    *(v0 + 496) = v87;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v67;
    *(v0 + 528) = v69;
    *(v0 + 536) = v71;
    *(v0 + 544) = 0;
    *(v0 + 549) = 2;
    *(v0 + 545) = 33686018;
    *(v0 + 552) = 0;
    v72 = *(v0 + 1408);
    *(v0 + 560) = v72;
    *(v0 + 561) = *v92;
    *(v0 + 564) = *(v0 + 1404);
    *(v0 + 568) = 0;
    v73 = *(v0 + 1400);
    *(v0 + 576) = v73;
    *(v0 + 577) = 1;
    *(v0 + 578) = *v93;
    *(v0 + 582) = *(v0 + 1418);
    *(v0 + 584) = 0;
    v74 = *(v0 + 1424);
    *(v0 + 592) = v74;
    *(v0 + 596) = *(v0 + 1396);
    *(v0 + 593) = *v94;
    *(v0 + 600) = 0;
    v75 = *(v0 + 1384);
    *(v0 + 608) = v75;
    *(v0 + 609) = 769;
    *(v0 + 615) = *(v0 + 1413);
    *(v0 + 611) = *v96;
    *(v0 + 616) = 0;
    v76 = *(v0 + 1392);
    *(v0 + 624) = v76;
    LODWORD(v68) = *v95;
    *(v0 + 628) = *(v0 + 1388);
    *(v0 + 625) = v68;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    v77 = *v97;
    *(v0 + 655) = *(v0 + 1429);
    *(v0 + 651) = v77;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 16) = 1287;
    v78 = *v91;
    *(v0 + 22) = *(v0 + 1434);
    *(v0 + 18) = v78;
    *(v0 + 24) = v90;
    *(v0 + 32) = v89;
    *(v0 + 40) = v88;
    *(v0 + 48) = v87;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v67;
    *(v0 + 80) = v69;
    *(v0 + 88) = v71;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v72;
    v79 = *v92;
    *(v0 + 116) = *(v0 + 1404);
    *(v0 + 113) = v79;
    *(v0 + 120) = 0;
    *(v0 + 128) = v73;
    *(v0 + 129) = 1;
    v80 = *v93;
    *(v0 + 134) = *(v0 + 1418);
    *(v0 + 130) = v80;
    *(v0 + 136) = 0;
    *(v0 + 144) = v74;
    v81 = *v94;
    *(v0 + 148) = *(v0 + 1396);
    *(v0 + 145) = v81;
    *(v0 + 152) = 0;
    *(v0 + 160) = v75;
    *(v0 + 161) = 769;
    v82 = *v96;
    *(v0 + 167) = *(v0 + 1413);
    *(v0 + 163) = v82;
    *(v0 + 168) = 0;
    *(v0 + 176) = v76;
    v83 = *v95;
    *(v0 + 180) = *(v0 + 1388);
    *(v0 + 177) = v83;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v84 = *v97;
    *(v0 + 207) = *(v0 + 1429);
    *(v0 + 203) = v84;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 464, v0 + 240);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v98 + *(v99 + 68)), *(v98 + *(v99 + 68) + 24));
    v85 = type metadata accessor for SnoutManager();
    v86 = swift_task_alloc();
    *(v0 + 1376) = v86;
    *v86 = v0;
    v86[1] = sub_10008F894;

    return (sub_10016E27C)(v0 + 464, 0, 0, 2, v85, &off_100223858);
  }
}

uint64_t sub_10008D74C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1304);
  v6 = *v2;
  *(*v2 + 1312) = v1;

  if (v1)
  {
    v7 = sub_10008FA18;
  }

  else
  {
    *(v4 + 1437) = a1 & 1;
    v7 = sub_10008D878;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008D878()
{
  v106 = v0;
  if (*(v0 + 1437))
  {
    v1 = *(v0 + 1288);
    v2 = *(v0 + 1280);
    v3 = *(v0 + 1272);
    v100 = *(v0 + 1264);
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1248);
    v6 = *(v0 + 1216);
    v7 = *(v0 + 888);
    v8 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v7);
    v102 = (*(v8 + 16))(v7, v8);
    Date.init(timeIntervalSinceNow:)();
    v9 = (v6 + *(v1 + 24));
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    (*(v4 + 16))(v3, v2, v5);
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v0 + 1320) = v14;
    (*(v4 + 32))(v14 + v13, v3, v5);
    *(v14 + ((v100 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v102;
    *(v0 + 1048) = &type metadata for TokenDatabaseStore;
    *(v0 + 1056) = sub_1000997C8();
    *(v0 + 1024) = v11;
    *(v0 + 1032) = v10;
    *(v0 + 1040) = v12;

    v15 = v12;
    v16 = swift_task_alloc();
    *(v0 + 1328) = v16;
    v16[2] = v15;
    v16[3] = v0 + 1024;
    v16[4] = sub_10009A294;
    v16[5] = v14;
    v17 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v18 = swift_task_alloc();
    *(v0 + 1336) = v18;
    *v18 = v0;
    v18[1] = sub_10008E4D0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1208, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10009981C, v16, &type metadata for Int);
  }

  else
  {
    sub_10000DB58((v0 + 864));
    v19 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
    if (v19)
    {
      v20 = v19;
      v21 = *(v0 + 1420);
      v22 = *(v0 + 1216);
      *(v0 + 928) = sub_10006DF54();
      *(v0 + 936) = &off_10021F840;
      *(v0 + 904) = v20;
      sub_10000DA64((v0 + 904), v0 + 864);
      sub_10000CE28(v0 + 864, v0 + 1144);
      sub_10000CE28(v0 + 864, v0 + 1104);
      sub_10000CE28(v0 + 864, v0 + 1064);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v105[0] = swift_slowAlloc();
        *v25 = 136315650;
        sub_10000DA7C((v0 + 1144), *(v0 + 1168));
        v26 = sub_1000FF2FC();
        if (v27)
        {
          v28 = v26;
        }

        else
        {
          v28 = 1701736302;
        }

        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        sub_10000DB58((v0 + 1144));
        v30 = sub_10017AD04(v28, v29, v105);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2048;
        sub_10000DA7C((v0 + 1104), *(v0 + 1128));
        v31 = sub_1000FF2AC();
        sub_10000DB58((v0 + 1104));
        *(v25 + 14) = v31;
        *(v25 + 22) = 2080;
        sub_10000DA7C((v0 + 1064), *(v0 + 1088));
        v32 = sub_1000FF364();
        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = 1701736302;
        }

        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = 0xE400000000000000;
        }

        sub_10000DB58((v0 + 1064));
        v36 = sub_10017AD04(v34, v35, v105);

        *(v25 + 24) = v36;
        _os_log_impl(&_mh_execute_header, v23, v24, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v25, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10000DB58((v0 + 1104));

        sub_10000DB58((v0 + 1144));
        sub_10000DB58((v0 + 1064));
      }

      v42 = *(v0 + 888);
      v43 = *(v0 + 896);
      sub_10000DA7C((v0 + 864), v42);
      v44 = (*(v43 + 16))(v42, v43);
      v45 = swift_task_alloc();
      *(v0 + 1304) = v45;
      *v45 = v0;
      v45[1] = sub_10008D74C;
      v46 = *(v0 + 1216);

      return sub_100091A48(v44, 1);
    }

    else if (*(v0 + 760))
    {
      sub_10000CE28(v0 + 736, v0 + 984);
      sub_10000DA64((v0 + 984), v0 + 944);
      sub_10000DA64((v0 + 944), v0 + 784);
      sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
      sub_10000DB58((v0 + 824));
      v37 = *(v0 + 808);
      v38 = *(v0 + 816);
      sub_10000DA7C((v0 + 784), v37);
      v39 = (*(v38 + 16))(v37, v38);
      v40 = swift_task_alloc();
      *(v0 + 1360) = v40;
      *v40 = v0;
      v40[1] = sub_10008F718;
      v41 = *(v0 + 1216);

      return sub_100092994(v39, 1, 1);
    }

    else
    {
      sub_10005C97C();
      v47 = swift_allocError();
      *v48 = xmmword_1001BA600;
      *(v48 + 16) = 2;
      swift_willThrow();
      *(v0 + 1368) = v47;
      v49 = *(v0 + 1420);
      v50 = *(v0 + 1216);
      sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
      sub_10000DB58((v0 + 824));
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        swift_errorRetain();
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&_mh_execute_header, v51, v52, "Scheduled re-engagement token fetch has failed with error: %@", v53, 0xCu);
        sub_10000DAF8(v54, &qword_100239F10, &qword_1001B4FD0);
      }

      v99 = (v0 + 1409);
      v101 = (v0 + 1425);
      v56 = *(v0 + 1272);
      v94 = (v0 + 1430);
      v95 = (v0 + 1401);
      v96 = (v0 + 1414);
      v97 = (v0 + 1393);
      v57 = *(v0 + 1256);
      v98 = (v0 + 1385);
      v58 = *(v0 + 1248);
      v59 = *(v0 + 1240);
      v60 = *(v0 + 1232);
      v61 = *(v0 + 1224);
      v103 = *(v0 + 1216);
      v104 = *(v0 + 1288);

      swift_errorRetain();
      v62 = sub_1000C7C10(v47);
      v92 = v63;
      v93 = v62;
      v90 = v65;
      v91 = v64;
      static Date.now.getter();
      (*(v60 + 104))(v59, enum case for Calendar.Component.hour(_:), v61);
      v66 = sub_100025808(v56, v59);
      v68 = v67;
      (*(v60 + 8))(v59, v61);
      (*(v57 + 8))(v56, v58);
      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v69 = v66;
      }

      v70 = [objc_opt_self() buildVersion];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      *(v0 + 1408) = 1;
      *(v0 + 1400) = 1;
      *(v0 + 1424) = 1;
      *(v0 + 1384) = 1;
      *(v0 + 1392) = 1;
      *(v0 + 464) = 1287;
      *(v0 + 466) = *v94;
      *(v0 + 470) = *(v0 + 1434);
      *(v0 + 472) = v93;
      *(v0 + 480) = v92;
      *(v0 + 488) = v91;
      *(v0 + 496) = v90;
      *(v0 + 504) = 0u;
      *(v0 + 520) = v69;
      *(v0 + 528) = v71;
      *(v0 + 536) = v73;
      *(v0 + 544) = 0;
      *(v0 + 549) = 2;
      *(v0 + 545) = 33686018;
      *(v0 + 552) = 0;
      v74 = *(v0 + 1408);
      *(v0 + 560) = v74;
      *(v0 + 561) = *v95;
      *(v0 + 564) = *(v0 + 1404);
      *(v0 + 568) = 0;
      v75 = *(v0 + 1400);
      *(v0 + 576) = v75;
      *(v0 + 577) = 1;
      *(v0 + 578) = *v96;
      *(v0 + 582) = *(v0 + 1418);
      *(v0 + 584) = 0;
      v76 = *(v0 + 1424);
      *(v0 + 592) = v76;
      *(v0 + 596) = *(v0 + 1396);
      *(v0 + 593) = *v97;
      *(v0 + 600) = 0;
      v77 = *(v0 + 1384);
      *(v0 + 608) = v77;
      *(v0 + 609) = 769;
      *(v0 + 615) = *(v0 + 1413);
      *(v0 + 611) = *v99;
      *(v0 + 616) = 0;
      v78 = *(v0 + 1392);
      *(v0 + 624) = v78;
      LODWORD(v70) = *v98;
      *(v0 + 628) = *(v0 + 1388);
      *(v0 + 625) = v70;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 514;
      *(v0 + 650) = 2;
      v79 = *v101;
      *(v0 + 655) = *(v0 + 1429);
      *(v0 + 651) = v79;
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      *(v0 + 16) = 1287;
      v80 = *v94;
      *(v0 + 22) = *(v0 + 1434);
      *(v0 + 18) = v80;
      *(v0 + 24) = v93;
      *(v0 + 32) = v92;
      *(v0 + 40) = v91;
      *(v0 + 48) = v90;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v69;
      *(v0 + 80) = v71;
      *(v0 + 88) = v73;
      *(v0 + 96) = 0;
      *(v0 + 101) = 2;
      *(v0 + 97) = 33686018;
      *(v0 + 104) = 0;
      *(v0 + 112) = v74;
      v81 = *v95;
      *(v0 + 116) = *(v0 + 1404);
      *(v0 + 113) = v81;
      *(v0 + 120) = 0;
      *(v0 + 128) = v75;
      *(v0 + 129) = 1;
      v82 = *v96;
      *(v0 + 134) = *(v0 + 1418);
      *(v0 + 130) = v82;
      *(v0 + 136) = 0;
      *(v0 + 144) = v76;
      v83 = *v97;
      *(v0 + 148) = *(v0 + 1396);
      *(v0 + 145) = v83;
      *(v0 + 152) = 0;
      *(v0 + 160) = v77;
      *(v0 + 161) = 769;
      v84 = *v99;
      *(v0 + 167) = *(v0 + 1413);
      *(v0 + 163) = v84;
      *(v0 + 168) = 0;
      *(v0 + 176) = v78;
      v85 = *v98;
      *(v0 + 180) = *(v0 + 1388);
      *(v0 + 177) = v85;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 514;
      *(v0 + 202) = 2;
      v86 = *v101;
      *(v0 + 207) = *(v0 + 1429);
      *(v0 + 203) = v86;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      sub_100010568(v0 + 464, v0 + 240);
      sub_10003AE8C(v0 + 16);
      sub_10000DA7C((v103 + *(v104 + 68)), *(v103 + *(v104 + 68) + 24));
      v87 = type metadata accessor for SnoutManager();
      v88 = swift_task_alloc();
      *(v0 + 1376) = v88;
      *v88 = v0;
      v88[1] = sub_10008F894;

      return (sub_10016E27C)(v0 + 464, 0, 0, 2, v87, &off_100223858);
    }
  }
}

uint64_t sub_10008E4D0()
{
  v2 = *v1;
  v3 = (*v1)[167];
  v8 = *v1;
  (*v1)[168] = v0;

  if (v0)
  {
    v4 = sub_10008F0E0;
  }

  else
  {
    v5 = v2[166];
    v6 = v2[165];

    v2[169] = v2[151];
    sub_10000DB58(v2 + 128);
    v4 = sub_10008E608;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10008E608()
{
  v88 = v0;
  v1 = *(v0 + 1352);
  (*(*(v0 + 1256) + 8))(*(v0 + 1280), *(v0 + 1248));
  if (!v1)
  {
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000CE28(v0 + 864, v0 + 736);
    *(v0 + 776) = 0;
    sub_10000DB58((v0 + 864));
    goto LABEL_21;
  }

  v2 = *(v0 + 1352);
  if (*(v0 + 760))
  {
    if (v2 >= *(v0 + 776))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000CE28(v0 + 864, v0 + 736);
    *(v0 + 776) = v2;
  }

LABEL_5:
  sub_10000DB58((v0 + 864));
  v3 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 1420);
    v6 = *(v0 + 1216);
    *(v0 + 928) = sub_10006DF54();
    *(v0 + 936) = &off_10021F840;
    *(v0 + 904) = v4;
    sub_10000DA64((v0 + 904), v0 + 864);
    sub_10000CE28(v0 + 864, v0 + 1144);
    sub_10000CE28(v0 + 864, v0 + 1104);
    sub_10000CE28(v0 + 864, v0 + 1064);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v9 = 136315650;
      sub_10000DA7C((v0 + 1144), *(v0 + 1168));
      v10 = sub_1000FF2FC();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 1701736302;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1144));
      v14 = sub_10017AD04(v12, v13, v87);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2048;
      sub_10000DA7C((v0 + 1104), *(v0 + 1128));
      v15 = sub_1000FF2AC();
      sub_10000DB58((v0 + 1104));
      *(v9 + 14) = v15;
      *(v9 + 22) = 2080;
      sub_10000DA7C((v0 + 1064), *(v0 + 1088));
      v16 = sub_1000FF364();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 1701736302;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1064));
      v20 = sub_10017AD04(v18, v19, v87);

      *(v9 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10000DB58((v0 + 1104));

      sub_10000DB58((v0 + 1144));
      sub_10000DB58((v0 + 1064));
    }

    v69 = *(v0 + 888);
    v70 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v69);
    v71 = (*(v70 + 16))(v69, v70);
    v72 = swift_task_alloc();
    *(v0 + 1304) = v72;
    *v72 = v0;
    v72[1] = sub_10008D74C;
    v73 = *(v0 + 1216);

    return sub_100091A48(v71, 1);
  }

LABEL_21:
  if (*(v0 + 760))
  {
    sub_10000CE28(v0 + 736, v0 + 984);
    sub_10000DA64((v0 + 984), v0 + 944);
    sub_10000DA64((v0 + 944), v0 + 784);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    v21 = *(v0 + 808);
    v22 = *(v0 + 816);
    sub_10000DA7C((v0 + 784), v21);
    v23 = (*(v22 + 16))(v21, v22);
    v24 = swift_task_alloc();
    *(v0 + 1360) = v24;
    *v24 = v0;
    v24[1] = sub_10008F718;
    v25 = *(v0 + 1216);

    return sub_100092994(v23, 1, 1);
  }

  else
  {
    sub_10005C97C();
    v27 = swift_allocError();
    *v28 = xmmword_1001BA600;
    *(v28 + 16) = 2;
    swift_willThrow();
    *(v0 + 1368) = v27;
    v29 = *(v0 + 1420);
    v30 = *(v0 + 1216);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Scheduled re-engagement token fetch has failed with error: %@", v33, 0xCu);
      sub_10000DAF8(v34, &qword_100239F10, &qword_1001B4FD0);
    }

    v83 = (v0 + 1409);
    v84 = (v0 + 1425);
    v36 = *(v0 + 1272);
    v78 = (v0 + 1430);
    v79 = (v0 + 1401);
    v80 = (v0 + 1414);
    v81 = (v0 + 1393);
    v37 = *(v0 + 1256);
    v82 = (v0 + 1385);
    v38 = *(v0 + 1248);
    v39 = *(v0 + 1240);
    v40 = *(v0 + 1232);
    v41 = *(v0 + 1224);
    v85 = *(v0 + 1216);
    v86 = *(v0 + 1288);

    swift_errorRetain();
    v42 = sub_1000C7C10(v27);
    v76 = v43;
    v77 = v42;
    v74 = v45;
    v75 = v44;
    static Date.now.getter();
    (*(v40 + 104))(v39, enum case for Calendar.Component.hour(_:), v41);
    v46 = sub_100025808(v36, v39);
    v48 = v47;
    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = v46;
    }

    v50 = [objc_opt_self() buildVersion];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *(v0 + 1408) = 1;
    *(v0 + 1400) = 1;
    *(v0 + 1424) = 1;
    *(v0 + 1384) = 1;
    *(v0 + 1392) = 1;
    *(v0 + 464) = 1287;
    *(v0 + 466) = *v78;
    *(v0 + 470) = *(v0 + 1434);
    *(v0 + 472) = v77;
    *(v0 + 480) = v76;
    *(v0 + 488) = v75;
    *(v0 + 496) = v74;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v49;
    *(v0 + 528) = v51;
    *(v0 + 536) = v53;
    *(v0 + 544) = 0;
    *(v0 + 549) = 2;
    *(v0 + 545) = 33686018;
    *(v0 + 552) = 0;
    v54 = *(v0 + 1408);
    *(v0 + 560) = v54;
    *(v0 + 561) = *v79;
    *(v0 + 564) = *(v0 + 1404);
    *(v0 + 568) = 0;
    v55 = *(v0 + 1400);
    *(v0 + 576) = v55;
    *(v0 + 577) = 1;
    *(v0 + 578) = *v80;
    *(v0 + 582) = *(v0 + 1418);
    *(v0 + 584) = 0;
    v56 = *(v0 + 1424);
    *(v0 + 592) = v56;
    *(v0 + 596) = *(v0 + 1396);
    *(v0 + 593) = *v81;
    *(v0 + 600) = 0;
    v57 = *(v0 + 1384);
    *(v0 + 608) = v57;
    *(v0 + 609) = 769;
    *(v0 + 615) = *(v0 + 1413);
    *(v0 + 611) = *v83;
    *(v0 + 616) = 0;
    v58 = *(v0 + 1392);
    *(v0 + 624) = v58;
    LODWORD(v50) = *v82;
    *(v0 + 628) = *(v0 + 1388);
    *(v0 + 625) = v50;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    v59 = *v84;
    *(v0 + 655) = *(v0 + 1429);
    *(v0 + 651) = v59;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 16) = 1287;
    v60 = *v78;
    *(v0 + 22) = *(v0 + 1434);
    *(v0 + 18) = v60;
    *(v0 + 24) = v77;
    *(v0 + 32) = v76;
    *(v0 + 40) = v75;
    *(v0 + 48) = v74;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v49;
    *(v0 + 80) = v51;
    *(v0 + 88) = v53;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v54;
    v61 = *v79;
    *(v0 + 116) = *(v0 + 1404);
    *(v0 + 113) = v61;
    *(v0 + 120) = 0;
    *(v0 + 128) = v55;
    *(v0 + 129) = 1;
    v62 = *v80;
    *(v0 + 134) = *(v0 + 1418);
    *(v0 + 130) = v62;
    *(v0 + 136) = 0;
    *(v0 + 144) = v56;
    v63 = *v81;
    *(v0 + 148) = *(v0 + 1396);
    *(v0 + 145) = v63;
    *(v0 + 152) = 0;
    *(v0 + 160) = v57;
    *(v0 + 161) = 769;
    v64 = *v83;
    *(v0 + 167) = *(v0 + 1413);
    *(v0 + 163) = v64;
    *(v0 + 168) = 0;
    *(v0 + 176) = v58;
    v65 = *v82;
    *(v0 + 180) = *(v0 + 1388);
    *(v0 + 177) = v65;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v66 = *v84;
    *(v0 + 207) = *(v0 + 1429);
    *(v0 + 203) = v66;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 464, v0 + 240);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v85 + *(v86 + 68)), *(v85 + *(v86 + 68) + 24));
    v67 = type metadata accessor for SnoutManager();
    v68 = swift_task_alloc();
    *(v0 + 1376) = v68;
    *v68 = v0;
    v68[1] = sub_10008F894;

    return (sub_10016E27C)(v0 + 464, 0, 0, 2, v67, &off_100223858);
  }
}

uint64_t sub_10008F0E0()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1256);
  v5 = *(v0 + 1248);

  sub_10000DB58((v0 + 1024));
  (*(v4 + 8))(v3, v5);
  sub_10000DB58((v0 + 864));
  v6 = *(v0 + 1344);
  *(v0 + 1368) = v6;
  v7 = *(v0 + 1420);
  v8 = *(v0 + 1216);
  sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
  sub_10000DB58((v0 + 824));
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Scheduled re-engagement token fetch has failed with error: %@", v11, 0xCu);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);
  }

  v57 = (v0 + 1409);
  v58 = (v0 + 1425);
  v52 = (v0 + 1430);
  v54 = (v0 + 1414);
  v60 = *(v0 + 1288);
  v14 = *(v0 + 1272);
  v53 = (v0 + 1401);
  v15 = *(v0 + 1256);
  v55 = (v0 + 1393);
  v56 = (v0 + 1385);
  v16 = *(v0 + 1248);
  v17 = *(v0 + 1240);
  v18 = *(v0 + 1232);
  v19 = *(v0 + 1224);
  v59 = *(v0 + 1216);

  swift_errorRetain();
  v20 = sub_1000C7C10(v6);
  v50 = v21;
  v51 = v20;
  v48 = v23;
  v49 = v22;
  static Date.now.getter();
  (*(v18 + 104))(v17, enum case for Calendar.Component.hour(_:), v19);
  v24 = sub_100025808(v14, v17);
  v26 = v25;
  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = [objc_opt_self() buildVersion];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v0 + 1408) = 1;
  *(v0 + 1400) = 1;
  *(v0 + 1424) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 1392) = 1;
  *(v0 + 464) = 1287;
  *(v0 + 466) = *v52;
  *(v0 + 470) = *(v0 + 1434);
  *(v0 + 472) = v51;
  *(v0 + 480) = v50;
  *(v0 + 488) = v49;
  *(v0 + 496) = v48;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v27;
  *(v0 + 528) = v29;
  *(v0 + 536) = v31;
  *(v0 + 544) = 0;
  *(v0 + 549) = 2;
  *(v0 + 545) = 33686018;
  *(v0 + 552) = 0;
  v32 = *(v0 + 1408);
  *(v0 + 560) = v32;
  *(v0 + 561) = *v53;
  *(v0 + 564) = *(v0 + 1404);
  *(v0 + 568) = 0;
  v33 = *(v0 + 1400);
  *(v0 + 576) = v33;
  *(v0 + 577) = 1;
  *(v0 + 578) = *v54;
  *(v0 + 582) = *(v0 + 1418);
  *(v0 + 584) = 0;
  v34 = *(v0 + 1424);
  *(v0 + 592) = v34;
  *(v0 + 596) = *(v0 + 1396);
  *(v0 + 593) = *v55;
  *(v0 + 600) = 0;
  v35 = *(v0 + 1384);
  *(v0 + 608) = v35;
  *(v0 + 609) = 769;
  *(v0 + 615) = *(v0 + 1413);
  *(v0 + 611) = *v57;
  *(v0 + 616) = 0;
  v36 = *(v0 + 1392);
  *(v0 + 624) = v36;
  LODWORD(v28) = *v56;
  *(v0 + 628) = *(v0 + 1388);
  *(v0 + 625) = v28;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v37 = *v58;
  *(v0 + 655) = *(v0 + 1429);
  *(v0 + 651) = v37;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 16) = 1287;
  v38 = *v52;
  *(v0 + 22) = *(v0 + 1434);
  *(v0 + 18) = v38;
  *(v0 + 24) = v51;
  *(v0 + 32) = v50;
  *(v0 + 40) = v49;
  *(v0 + 48) = v48;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v27;
  *(v0 + 80) = v29;
  *(v0 + 88) = v31;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v32;
  v39 = *v53;
  *(v0 + 116) = *(v0 + 1404);
  *(v0 + 113) = v39;
  *(v0 + 120) = 0;
  *(v0 + 128) = v33;
  *(v0 + 129) = 1;
  v40 = *v54;
  *(v0 + 134) = *(v0 + 1418);
  *(v0 + 130) = v40;
  *(v0 + 136) = 0;
  *(v0 + 144) = v34;
  v41 = *v55;
  *(v0 + 148) = *(v0 + 1396);
  *(v0 + 145) = v41;
  *(v0 + 152) = 0;
  *(v0 + 160) = v35;
  *(v0 + 161) = 769;
  v42 = *v57;
  *(v0 + 167) = *(v0 + 1413);
  *(v0 + 163) = v42;
  *(v0 + 168) = 0;
  *(v0 + 176) = v36;
  v43 = *v56;
  *(v0 + 180) = *(v0 + 1388);
  *(v0 + 177) = v43;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v44 = *v58;
  *(v0 + 207) = *(v0 + 1429);
  *(v0 + 203) = v44;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 464, v0 + 240);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v59 + *(v60 + 68)), *(v59 + *(v60 + 68) + 24));
  v45 = type metadata accessor for SnoutManager();
  v46 = swift_task_alloc();
  *(v0 + 1376) = v46;
  *v46 = v0;
  v46[1] = sub_10008F894;

  return (sub_10016E27C)(v0 + 464, 0, 0, 2, v45, &off_100223858);
}

uint64_t sub_10008F718()
{
  v1 = *(*v0 + 1360);
  v3 = *v0;

  return _swift_task_switch(sub_10008F814, 0, 0);
}

uint64_t sub_10008F814()
{
  sub_10000DB58(v0 + 98);
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[155];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008F894()
{
  v1 = *v0;
  v2 = *(*v0 + 1376);
  v4 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_10008F998, 0, 0);
}

uint64_t sub_10008F998()
{
  v1 = v0[171];

  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[155];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10008FA18()
{
  sub_10000DB58((v0 + 864));
  v1 = *(v0 + 1312);
  *(v0 + 1368) = v1;
  v2 = *(v0 + 1420);
  v3 = *(v0 + 1216);
  sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
  sub_10000DB58((v0 + 824));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Scheduled re-engagement token fetch has failed with error: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v52 = (v0 + 1409);
  v53 = (v0 + 1425);
  v47 = (v0 + 1430);
  v49 = (v0 + 1414);
  v55 = *(v0 + 1288);
  v9 = *(v0 + 1272);
  v48 = (v0 + 1401);
  v10 = *(v0 + 1256);
  v50 = (v0 + 1393);
  v51 = (v0 + 1385);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  v54 = *(v0 + 1216);

  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v45 = v16;
  v46 = v15;
  v43 = v18;
  v44 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v9, v12);
  v21 = v20;
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v0 + 1408) = 1;
  *(v0 + 1400) = 1;
  *(v0 + 1424) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 1392) = 1;
  *(v0 + 464) = 1287;
  *(v0 + 466) = *v47;
  *(v0 + 470) = *(v0 + 1434);
  *(v0 + 472) = v46;
  *(v0 + 480) = v45;
  *(v0 + 488) = v44;
  *(v0 + 496) = v43;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v22;
  *(v0 + 528) = v24;
  *(v0 + 536) = v26;
  *(v0 + 544) = 0;
  *(v0 + 549) = 2;
  *(v0 + 545) = 33686018;
  *(v0 + 552) = 0;
  v27 = *(v0 + 1408);
  *(v0 + 560) = v27;
  *(v0 + 561) = *v48;
  *(v0 + 564) = *(v0 + 1404);
  *(v0 + 568) = 0;
  v28 = *(v0 + 1400);
  *(v0 + 576) = v28;
  *(v0 + 577) = 1;
  *(v0 + 578) = *v49;
  *(v0 + 582) = *(v0 + 1418);
  *(v0 + 584) = 0;
  v29 = *(v0 + 1424);
  *(v0 + 592) = v29;
  *(v0 + 596) = *(v0 + 1396);
  *(v0 + 593) = *v50;
  *(v0 + 600) = 0;
  v30 = *(v0 + 1384);
  *(v0 + 608) = v30;
  *(v0 + 609) = 769;
  *(v0 + 615) = *(v0 + 1413);
  *(v0 + 611) = *v52;
  *(v0 + 616) = 0;
  v31 = *(v0 + 1392);
  *(v0 + 624) = v31;
  LODWORD(v23) = *v51;
  *(v0 + 628) = *(v0 + 1388);
  *(v0 + 625) = v23;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v32 = *v53;
  *(v0 + 655) = *(v0 + 1429);
  *(v0 + 651) = v32;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 16) = 1287;
  v33 = *v47;
  *(v0 + 22) = *(v0 + 1434);
  *(v0 + 18) = v33;
  *(v0 + 24) = v46;
  *(v0 + 32) = v45;
  *(v0 + 40) = v44;
  *(v0 + 48) = v43;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v22;
  *(v0 + 80) = v24;
  *(v0 + 88) = v26;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v27;
  v34 = *v48;
  *(v0 + 116) = *(v0 + 1404);
  *(v0 + 113) = v34;
  *(v0 + 120) = 0;
  *(v0 + 128) = v28;
  *(v0 + 129) = 1;
  v35 = *v49;
  *(v0 + 134) = *(v0 + 1418);
  *(v0 + 130) = v35;
  *(v0 + 136) = 0;
  *(v0 + 144) = v29;
  v36 = *v50;
  *(v0 + 148) = *(v0 + 1396);
  *(v0 + 145) = v36;
  *(v0 + 152) = 0;
  *(v0 + 160) = v30;
  *(v0 + 161) = 769;
  v37 = *v52;
  *(v0 + 167) = *(v0 + 1413);
  *(v0 + 163) = v37;
  *(v0 + 168) = 0;
  *(v0 + 176) = v31;
  v38 = *v51;
  *(v0 + 180) = *(v0 + 1388);
  *(v0 + 177) = v38;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v39 = *v53;
  *(v0 + 207) = *(v0 + 1429);
  *(v0 + 203) = v39;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 464, v0 + 240);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v54 + *(v55 + 68)), *(v54 + *(v55 + 68) + 24));
  v40 = type metadata accessor for SnoutManager();
  v41 = swift_task_alloc();
  *(v0 + 1376) = v41;
  *v41 = v0;
  v41[1] = sub_10008F894;

  return (sub_10016E27C)(v0 + 464, 0, 0, 2, v40, &off_100223858);
}

BOOL sub_100090010@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  result = sub_1000C18C4(a1 + *(v5 + 68));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100090078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 513) = a5;
  *(v6 + 384) = a4;
  *(v6 + 392) = v5;
  *(v6 + 512) = a3;
  *(v6 + 368) = a1;
  *(v6 + 376) = a2;
  v7 = type metadata accessor for Date();
  *(v6 + 400) = v7;
  v8 = *(v7 - 8);
  *(v6 + 408) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_10009015C, 0, 0);
}

uint64_t sub_10009015C()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[46];
  static Date.now.getter();
  v4 = (v2 + *(type metadata accessor for ReengagementConversionTask(0) + 32));
  v5 = *v4;
  v0[55] = *v4;
  v6 = v4[1];
  v0[56] = v6;
  v7 = v4[2];
  v0[57] = v7;
  v8 = swift_allocObject();
  v0[58] = v8;
  *(v8 + 16) = v3;
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_100090290;

  return sub_10010FF18((v0 + 2), sub_10009894C, v8, v5, v6, v7);
}

uint64_t sub_100090290()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  v4 = *(v2 + 464);

  if (v0)
  {
    v5 = sub_100090940;
  }

  else
  {
    v5 = sub_1000903B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000903B4()
{
  v1 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v1;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v2;
  if (*(v0 + 152) && (v3 = *(v0 + 136), v4 = *(v0 + 512), sub_10000DAF8(v0 + 104, &qword_10023B690, &qword_1001B9260), (v4 & 1) == 0))
  {
    v6 = *(v0 + 424);
    v7 = *(v0 + 432);
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    v10 = *(v0 + 400);
    v11 = *(v0 + 376);
    Date.init(timeIntervalSince1970:)();
    Date.addingTimeInterval(_:)();
    sub_100099DEC(&qword_10023B530, &type metadata accessor for Date);
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = *(v9 + 8);
    v13(v8, v10);
    v13(v6, v10);
    v5 = v12 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *(v0 + 514) = v5 & 1;
  v14 = *(v0 + 368);
  v15 = swift_allocObject();
  *(v0 + 488) = v15;
  *(v15 + 16) = v14;
  v16 = swift_task_alloc();
  *(v0 + 496) = v16;
  *v16 = v0;
  v16[1] = sub_1000905F0;
  v17 = *(v0 + 448);
  v18 = *(v0 + 456);
  v19 = *(v0 + 440);

  return sub_10010FF18(v0 + 192, sub_100098968, v15, v19, v17, v18);
}

uint64_t sub_1000905F0()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  v4 = *(v2 + 488);

  if (v0)
  {
    v5 = sub_1000909DC;
  }

  else
  {
    v5 = sub_100090714;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100090714()
{
  v1 = *(v0 + 240);
  *(v0 + 312) = *(v0 + 224);
  *(v0 + 328) = v1;
  *(v0 + 344) = *(v0 + 256);
  *(v0 + 360) = *(v0 + 272);
  v2 = *(v0 + 208);
  *(v0 + 280) = *(v0 + 192);
  *(v0 + 296) = v2;
  if (*(v0 + 328))
  {
    v3 = *(v0 + 432);
    if (*(v0 + 513))
    {
      (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));
      sub_10000DAF8(v0 + 280, &qword_10023B690, &qword_1001B9260);
      v4 = 1;
    }

    else
    {
      v5 = *(v0 + 312);
      v7 = *(v0 + 416);
      v6 = *(v0 + 424);
      v8 = *(v0 + 400);
      v9 = *(v0 + 408);
      v10 = *(v0 + 384);
      sub_10000DAF8(v0 + 280, &qword_10023B690, &qword_1001B9260);
      Date.init(timeIntervalSince1970:)();
      Date.addingTimeInterval(_:)();
      sub_100099DEC(&qword_10023B530, &type metadata accessor for Date);
      v11 = dispatch thunk of static Comparable.< infix(_:_:)();
      v12 = *(v9 + 8);
      v12(v7, v8);
      v12(v6, v8);
      v12(v3, v8);
      v4 = v11 ^ 1;
    }
  }

  else
  {
    (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));
    v4 = 1;
  }

  v14 = *(v0 + 424);
  v13 = *(v0 + 432);
  v15 = *(v0 + 416);
  v16 = *(v0 + 514) & v4;

  v17 = *(v0 + 8);

  return v17(v16 & 1);
}

uint64_t sub_100090940()
{
  (*(v0[51] + 8))(v0[54], v0[50]);
  v1 = v0[60];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1000909DC()
{
  (*(v0[51] + 8))(v0[54], v0[50]);
  v1 = v0[63];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_100090A78(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 424) = a2;
  *(v4 + 432) = v3;
  *(v4 + 115) = a3;
  *(v4 + 416) = a1;
  v7 = type metadata accessor for Date();
  *(v4 + 440) = v7;
  v8 = *(v7 - 8);
  *(v4 + 448) = v8;
  *(v4 + 456) = *(v8 + 64);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 480) = v9;
  *v9 = v4;
  v9[1] = sub_100090B98;

  return sub_100091A48(a2, a3 & 1);
}

uint64_t sub_100090B98(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 464);
    v7 = *(v4 + 472);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 219) = a1 & 1;

    return _swift_task_switch(sub_100090CF8, 0, 0);
  }
}

uint64_t sub_100090CF8()
{
  if (*(v0 + 219) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 488) = v1;
    *v1 = v0;
    v1[1] = sub_100090E30;

    return sub_100158594(15);
  }

  else
  {
    sub_10005C97C();
    swift_allocError();
    *v3 = xmmword_1001BA610;
    *(v3 + 16) = 2;
    swift_willThrow();
    v5 = *(v0 + 464);
    v4 = *(v0 + 472);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100090E30(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v6 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 220) = a2;

  return _swift_task_switch(sub_100090F34, 0, 0);
}

uint64_t sub_100090F34()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  v21 = *(v0 + 424);
  v20 = *(v0 + 115) & 1;
  v7 = -*(v0 + 496);
  *(v0 + 220);
  Date.init(timeIntervalSinceNow:)();
  v8 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 504) = v8;
  v9 = (v5 + *(v8 + 24));
  v10 = *v9;
  *(v0 + 512) = *v9;
  v11 = v9[1];
  *(v0 + 520) = v11;
  v12 = v9[2];
  *(v0 + 528) = v12;
  v13 = *(v3 + 16);
  *(v0 + 536) = v13;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v1, v2, v6);
  v14 = *(v3 + 80);
  *(v0 + 116) = v14;
  v15 = (v14 + 25) & ~v14;
  v16 = swift_allocObject();
  *(v0 + 552) = v16;
  *(v16 + 16) = v21;
  *(v16 + 24) = v20;
  v17 = *(v3 + 32);
  *(v0 + 560) = v17;
  *(v0 + 568) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v16 + v15, v1, v6);
  v18 = swift_task_alloc();
  *(v0 + 576) = v18;
  *v18 = v0;
  v18[1] = sub_100091130;

  return sub_10010FC40(v0 + 16, sub_10009A27C, v16, v10, v11, v12);
}

uint64_t sub_100091130()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  v4 = *(v2 + 552);

  if (v0)
  {
    v5 = sub_100091940;
  }

  else
  {
    v5 = sub_100091254;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100091254()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 432);
  *(v0 + 368) = *(v0 + 16);
  v3 = *(v0 + 40);
  *(v0 + 384) = *(v0 + 32);
  v4 = *(v0 + 96);
  *(v0 + 256) = *(v0 + 80);
  *(v0 + 272) = v4;
  *(v0 + 287) = *(v0 + 111);
  v5 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v5;
  v6 = v2 + *(v1 + 64);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v3)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Cached non-allocated token found", v10, 2u);
    }

    v11 = *(v0 + 472);
    v12 = *(v0 + 440);
    v13 = *(v0 + 448);

    (*(v13 + 8))(v11, v12);
    v14 = *(v0 + 272);
    *(v0 + 328) = *(v0 + 256);
    *(v0 + 344) = v14;
    *(v0 + 359) = *(v0 + 287);
    v15 = *(v0 + 240);
    *(v0 + 296) = *(v0 + 224);
    *(v0 + 312) = v15;
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    v18 = *(v0 + 416);
    v19 = *(v0 + 384);
    *v18 = *(v0 + 368);
    *(v18 + 16) = v19;
    *(v18 + 24) = v3;
    *(v18 + 32) = *(v0 + 296);
    v20 = *(v0 + 312);
    v21 = *(v0 + 328);
    v22 = *(v0 + 344);
    *(v18 + 95) = *(v0 + 359);
    *(v18 + 64) = v21;
    *(v18 + 80) = v22;
    *(v18 + 48) = v20;

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    if (v9)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Fetching for re-engagement tokens...", v25, 2u);
    }

    v26 = *(v0 + 115);

    v27 = swift_task_alloc();
    *(v0 + 592) = v27;
    *v27 = v0;
    v27[1] = sub_1000914C8;
    v28 = *(v0 + 424);
    v29 = *(v0 + 432);

    return sub_100092994(v28, v26 & 1, 0);
  }
}

uint64_t sub_1000914C8()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return _swift_task_switch(sub_1000915C4, 0, 0);
}

uint64_t sub_1000915C4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 464);
  v5 = *(v0 + 456);
  v6 = *(v0 + 440);
  v7 = *(v0 + 424);
  v8 = (*(v0 + 116) + 25) & ~*(v0 + 116);
  v9 = *(v0 + 115) & 1;
  (*(v0 + 536))(v4, *(v0 + 472), v6);
  v10 = swift_allocObject();
  *(v0 + 600) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v2(v10 + v8, v4, v6);
  v11 = swift_task_alloc();
  *(v0 + 608) = v11;
  *v11 = v0;
  v11[1] = sub_100091724;
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);

  return sub_10010FC40(v0 + 120, sub_100098B78, v10, v14, v13, v12);
}

uint64_t sub_100091724()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 600);

  if (v0)
  {
    v6 = sub_1000919C4;
  }

  else
  {
    v6 = sub_100091858;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100091858()
{
  (*(*(v0 + 448) + 8))(*(v0 + 472), *(v0 + 440));
  v1 = *(v0 + 120);
  *(v0 + 392) = v1;
  v2 = *(v0 + 144);
  *(v0 + 408) = *(v0 + 136);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 328) = *(v0 + 184);
  *(v0 + 344) = v4;
  *(v0 + 359) = *(v0 + 215);
  *(v0 + 296) = *(v0 + 152);
  *(v0 + 312) = v3;
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 408);
  v7 = *(v0 + 416);
  *v7 = v1;
  *(v7 + 16) = v8;
  *(v7 + 24) = v2;
  *(v7 + 32) = *(v0 + 296);
  v9 = *(v0 + 312);
  v10 = *(v0 + 328);
  v11 = *(v0 + 344);
  *(v7 + 95) = *(v0 + 359);
  *(v7 + 64) = v10;
  *(v7 + 80) = v11;
  *(v7 + 48) = v9;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100091940()
{
  (*(v0[56] + 8))(v0[59], v0[55]);
  v1 = v0[73];
  v3 = v0[58];
  v2 = v0[59];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000919C4()
{
  (*(v0[56] + 8))(v0[59], v0[55]);
  v1 = v0[77];
  v3 = v0[58];
  v2 = v0[59];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100091A48(uint64_t a1, char a2)
{
  *(v3 + 1480) = v2;
  *(v3 + 1828) = a2;
  *(v3 + 1432) = a1;
  v4 = type metadata accessor for Date();
  *(v3 + 1528) = v4;
  v5 = *(v4 - 8);
  *(v3 + 1576) = v5;
  *(v3 + 1624) = *(v5 + 64);
  *(v3 + 1672) = swift_task_alloc();
  *(v3 + 1680) = swift_task_alloc();
  v6 = type metadata accessor for ReengagementConversionTask(0);
  *(v3 + 1688) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1696) = v7;
  *(v3 + 1704) = *(v7 + 64);
  *(v3 + 1712) = swift_task_alloc();
  *(v3 + 1720) = swift_task_alloc();

  return _swift_task_switch(sub_100091B94, 0, 0);
}

uint64_t sub_100091B94()
{
  v26 = v0;
  if (*(v0 + 1828))
  {
    v1 = 0x69746375646F7270;
  }

  else
  {
    v1 = 0x6D706F6C65766564;
  }

  if (*(v0 + 1828))
  {
    v2 = 0xEA00000000006E6FLL;
  }

  else
  {
    v2 = 0xEB00000000746E65;
  }

  if (*(v0 + 1828))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = *(v0 + 1720);
      v5 = *(v0 + 1704);
      v6 = *(v0 + 1696);
      v7 = *(v0 + 1480);
      v23 = *(v0 + 1432);
      v24 = *(v0 + 1712);
      sub_100098D08(v7, v4, type metadata accessor for ReengagementConversionTask);
      v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v9 = swift_allocObject();
      *(v0 + 1728) = v9;
      sub_100099038(v4, v9 + v8, type metadata accessor for ReengagementConversionTask);
      *(v9 + ((v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
      swift_asyncLet_begin();
      sub_100098D08(v7, v24, type metadata accessor for ReengagementConversionTask);
      v10 = swift_allocObject();
      *(v0 + 1736) = v10;
      sub_100099038(v24, v10 + v8, type metadata accessor for ReengagementConversionTask);
      swift_asyncLet_begin();

      return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1336, sub_100091F10, v0 + 1296);
    }
  }

  else
  {
  }

  v11 = *(v0 + 1480) + *(*(v0 + 1688) + 64);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = sub_10017AD04(v1, v2, &v25);

    *(v14 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Skipping rate limit check for environment: %s", v14, 0xCu);
    sub_10000DB58(v15);
  }

  v17 = *(v0 + 1720);
  v18 = *(v0 + 1712);
  v19 = *(v0 + 1680);
  v20 = *(v0 + 1672);

  v21 = *(v0 + 8);

  return v21(1);
}

uint64_t sub_100091F10()
{
  v1[218] = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 82, v1 + 173, sub_100092888, v1 + 168);
  }

  v1[219] = v1[167];
  return _swift_asyncLet_get(v1 + 82, v1 + 173, sub_100091F60, v1 + 180);
}

uint64_t sub_100091F7C()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1384);
  *(v0 + 1760) = v3;
  *(v0 + 1824) = *(v1 + 64);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1752);
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current re-engagement token count: %ld, max token count: %ld", v7, 0x16u);
  }

  v8 = *(v0 + 1688);
  v9 = *(v0 + 1680);
  v10 = *(v0 + 1672);
  v11 = *(v0 + 1624);
  v12 = *(v0 + 1576);
  v13 = *(v0 + 1528);
  v14 = *(v0 + 1480);

  Date.init(timeIntervalSinceNow:)();
  v15 = (v14 + *(v8 + 24));
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  (*(v12 + 16))(v10, v9, v13);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v0 + 1768) = v20;
  (*(v12 + 32))(v20 + v19, v10, v13);
  v21 = swift_task_alloc();
  *(v0 + 1776) = v21;
  *v21 = v0;
  v21[1] = sub_1000921A8;

  return sub_1001101F0(sub_1000995CC, v20, v17, v16, v18);
}

uint64_t sub_1000921A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1776);
  v5 = *(*v2 + 1768);
  v8 = *v2;
  *(v3 + 1784) = a1;
  *(v3 + 1792) = v1;

  if (v1)
  {
    v6 = sub_1000925D0;
  }

  else
  {
    v6 = sub_1000922E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000922E0()
{
  (*(v0[197] + 8))(v0[210], v0[191]);
  v1 = swift_task_alloc();
  v0[225] = v1;
  *v1 = v0;
  v1[1] = sub_1000923A0;

  return sub_1001581F0(14);
}

uint64_t sub_1000923A0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1800);
  v6 = *v2;
  *(v3 + 1808) = a1;
  *(v3 + 1829) = a2;

  return _swift_task_switch(sub_1000924A4, 0, 0);
}

uint64_t sub_1000924A4()
{
  v1 = *(v0 + 1829);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1480);
  if (*(v0 + 1808) >= 720)
  {
    v4 = 720;
  }

  else
  {
    v4 = *(v0 + 1808);
  }

  *(v0 + 1816) = v4;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    if (v1)
    {
      v4 = 720;
    }

    v7 = *(v0 + 1784);
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Current re-engagement device token count: %ld, max token count: %ld", v8, 0x16u);
  }

  return _swift_asyncLet_finish(v0 + 656, v0 + 1384, sub_10009275C, v0 + 1584);
}

uint64_t sub_1000925D0()
{
  (*(v0[197] + 8))(v0[210], v0[191]);

  return _swift_asyncLet_finish(v0 + 82, v0 + 173, sub_100092650, v0 + 186);
}

uint64_t sub_1000926A8()
{
  v1 = v0[224];
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[210];
  v7 = v0[209];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1000927B4()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1728);

  v3 = *(v0 + 1816);
  if (*(v0 + 1829))
  {
    v3 = 720;
  }

  v5 = *(v0 + 1752) < *(v0 + 1760) && *(v0 + 1784) < v3;
  v6 = *(v0 + 1720);
  v7 = *(v0 + 1712);
  v8 = *(v0 + 1680);
  v9 = *(v0 + 1672);

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t sub_1000928E0()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[210];
  v7 = v0[209];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100092994(uint64_t a1, char a2, char a3)
{
  *(v4 + 3136) = v3;
  *(v4 + 3657) = a3;
  *(v4 + 3655) = a2;
  *(v4 + 3128) = a1;
  v5 = type metadata accessor for Calendar.Component();
  *(v4 + 3144) = v5;
  v6 = *(v5 - 8);
  *(v4 + 3152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 3160) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v4 + 3168) = v8;
  v9 = *(v8 - 8);
  *(v4 + 3176) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 3184) = swift_task_alloc();
  v11 = type metadata accessor for SKANUTClient();
  *(v4 + 3192) = v11;
  v12 = *(v11 - 8);
  *(v4 + 3200) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 3208) = swift_task_alloc();

  return _swift_task_switch(sub_100092B18, 0, 0);
}

uint64_t sub_100092B18()
{
  v1 = *(v0 + 3136);
  v2 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 3216) = v2;
  *(v0 + 3580) = *(v2 + 64);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3128);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching re-engagement tokens for app %llu", v6, 0xCu);
  }

  v7 = *(v0 + 3655);

  if (v7)
  {

    v8 = 3;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 3;
    if ((v9 & 1) == 0)
    {
      v8 = 1;
    }
  }

  v10 = 0;
  *(v0 + 3224) = v8;
  *(v0 + 3232) = kSecRandomDefault;
  v11 = _swiftEmptyArrayStorage;
  v12 = &_swiftEmptyDictionarySingleton;
  v150 = enum case for Calendar.Component.hour(_:);
  *(v0 + 3596) = enum case for Calendar.Component.hour(_:);
  while (1)
  {
    *(v0 + 3264) = v12;
    *(v0 + 3256) = v11;
    v159 = v12;
    v162 = v10;
    *(v0 + 3248) = v10;
    *(v0 + 3240) = v12;
    v13 = *(v0 + 3232);
    v14 = *(v0 + 3208);
    v15 = *(v0 + 3200);
    v16 = *(v0 + 3192);
    v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v17 + 16) = 32;
    *(v17 + 48) = 0u;
    *(v17 + 32) = 0u;
    v18 = (v17 + 32);
    SecRandomCopyBytes(v13, 0x20uLL, (v17 + 32));
    v19 = sub_100098A3C(v18, 32);
    v21 = v20;

    sub_1000438D8(v19, v21);
    v165 = v19;
    v168 = v21;
    SKANUTClient.init(privateInput:)();
    *(v0 + 3072) = v16;
    *(v0 + 3080) = &off_100217540;
    v22 = sub_10005CA24((v0 + 3048));
    (*(v15 + 16))(v22, v14, v16);
    type metadata accessor for PersistentTokenHandler();
    v23 = swift_allocObject();
    v24 = *(v0 + 3072);
    v25 = sub_100054C30(v0 + 3048, v24);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    (*(v26 + 16))(v28, v25, v24);
    *(v0 + 3112) = v16;
    *(v0 + 3120) = &off_100217540;
    v29 = sub_10005CA24((v0 + 3088));
    (*(v15 + 32))(v29, v28, v16);
    v23[7] = 0;
    sub_10000DA64((v0 + 3088), (v23 + 2));
    sub_10000DB58((v0 + 3048));

    sub_10000DA7C(v23 + 2, v23[5]);
    v30 = SKANUTClient.blindedElement()();
    v32 = v31;
    v33 = Data.base64EncodedString(options:)(0);
    sub_10001BABC(v30, v32);
    sub_10000DA7C(v23 + 2, v23[5]);
    v34 = SKANUTClient.input.getter();
    v35 = v11;
    v37 = v36;
    v38 = Data.base64EncodedString(options:)(0);
    sub_10001BABC(v34, v37);
    v39 = sub_1000EBFFC();
    if (v40)
    {
      break;
    }

    v41 = v39;
    v23[7] = v39;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_100088998(0, *(v35 + 2) + 1, 1, v35);
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    v46 = v43;
    if (v45 >= v44 >> 1)
    {
      v46 = sub_100088998((v44 > 1), v45 + 1, 1, v43);
    }

    v47 = *(v0 + 3200);
    v151 = *(v0 + 3192);
    v154 = *(v0 + 3208);
    v48 = *(v0 + 3128);
    v49 = *(v0 + 3655) & 1;
    v50 = v46;
    *(v46 + 2) = v45 + 1;
    v51 = &v46[48 * v45];
    *(v51 + 4) = v162;
    *(v51 + 40) = v33;
    *(v51 + 7) = v41;
    *(v51 + 8) = v48;
    v51[72] = v49;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v11 = v50;
    *(v0 + 2952) = v33;
    *(v0 + 2968) = v38;
    *(v0 + 2984) = v41;
    *(v0 + 2992) = v23;
    sub_1000981D0((v0 + 2952), v162, v52);
    sub_10001BABC(v165, v168);
    v12 = v159;
    (*(v47 + 8))(v154, v151);
    *(v0 + 3472) = v159;
    v10 = *(v0 + 3248) + 1;
    if (v10 == *(v0 + 3224))
    {
      v164 = (v0 + 3601);
      v167 = (v0 + 3633);
      v102 = (v0 + 3574);
      v103 = *(v0 + 3184);
      v170 = v11;
      v104 = *(v0 + 3176);
      v158 = (v0 + 3606);
      v161 = (v0 + 3537);
      v105 = *(v0 + 3168);
      v153 = (v0 + 3513);
      v156 = (v0 + 3497);
      v106 = *(v0 + 3160);
      v107 = *(v0 + 3152);
      v108 = *(v0 + 3144);
      static Date.now.getter();
      *(v0 + 3612) = v150;
      v109 = *(v107 + 104);
      *(v0 + 3280) = v109;
      *(v0 + 3288) = (v107 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v109(v106);
      v110 = sub_100025808(v103, v106);
      v112 = v111;
      v113 = *(v107 + 8);
      *(v0 + 3296) = v113;
      *(v0 + 3304) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v113(v106, v108);
      v114 = *(v104 + 8);
      *(v0 + 3312) = v114;
      *(v0 + 3320) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v114(v103, v105);
      if (v112)
      {
        v115 = 0;
      }

      else
      {
        v115 = v110;
      }

      v116 = objc_opt_self();
      *(v0 + 3328) = v116;
      v117 = [v116 buildVersion];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      *(v0 + 3632) = 1;
      *(v0 + 3600) = 1;
      *(v0 + 3584) = 1;
      *(v0 + 3568) = 1;
      *(v0 + 3552) = 1;
      *(v0 + 1584) = 1287;
      *(v0 + 1586) = *v102;
      *(v0 + 1590) = *(v0 + 3578);
      *(v0 + 1592) = 0u;
      *(v0 + 1608) = 0u;
      *(v0 + 1624) = 0u;
      *(v0 + 1640) = v115;
      *(v0 + 1648) = v118;
      *(v0 + 1656) = v120;
      *(v0 + 1664) = 0;
      *(v0 + 1665) = 33686018;
      *(v0 + 1669) = 2;
      *(v0 + 1672) = 0;
      v121 = *(v0 + 3632);
      *(v0 + 1680) = v121;
      *(v0 + 1681) = *v153;
      *(v0 + 1684) = *(v0 + 3516);
      *(v0 + 1688) = 0;
      v122 = *(v0 + 3600);
      *(v0 + 1696) = v122;
      *(v0 + 1697) = 1;
      *(v0 + 1698) = *v158;
      *(v0 + 1702) = *(v0 + 3610);
      *(v0 + 1704) = 0;
      v123 = *(v0 + 3584);
      *(v0 + 1712) = v123;
      *(v0 + 1716) = *(v0 + 3500);
      *(v0 + 1713) = *v156;
      *(v0 + 1720) = 0;
      v124 = *(v0 + 3568);
      *(v0 + 1728) = v124;
      *(v0 + 1729) = 769;
      *(v0 + 1735) = *(v0 + 3605);
      *(v0 + 1731) = *v164;
      *(v0 + 1736) = 0;
      v125 = *(v0 + 3552);
      *(v0 + 1744) = v125;
      *(v0 + 1748) = *(v0 + 3540);
      *(v0 + 1745) = *v161;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 514;
      *(v0 + 1770) = 2;
      v126 = *v167;
      *(v0 + 1775) = *(v0 + 3637);
      *(v0 + 1771) = v126;
      *(v0 + 1792) = 0u;
      *(v0 + 1776) = 0u;
      *(v0 + 1808) = 1287;
      v127 = *v102;
      *(v0 + 1814) = *(v0 + 3578);
      *(v0 + 1810) = v127;
      *(v0 + 1832) = 0u;
      *(v0 + 1848) = 0u;
      *(v0 + 1816) = 0u;
      *(v0 + 1864) = v115;
      *(v0 + 1872) = v118;
      *(v0 + 1880) = v120;
      *(v0 + 1888) = 0;
      *(v0 + 1893) = 2;
      *(v0 + 1889) = 33686018;
      *(v0 + 1896) = 0;
      *(v0 + 1904) = v121;
      v128 = *v153;
      *(v0 + 1908) = *(v0 + 3516);
      *(v0 + 1905) = v128;
      *(v0 + 1912) = 0;
      *(v0 + 1920) = v122;
      *(v0 + 1921) = 1;
      v129 = *v158;
      *(v0 + 1926) = *(v0 + 3610);
      *(v0 + 1922) = v129;
      *(v0 + 1928) = 0;
      *(v0 + 1936) = v123;
      v130 = *v156;
      *(v0 + 1940) = *(v0 + 3500);
      *(v0 + 1937) = v130;
      *(v0 + 1944) = 0;
      *(v0 + 1952) = v124;
      *(v0 + 1953) = 769;
      v131 = *v164;
      *(v0 + 1959) = *(v0 + 3605);
      *(v0 + 1955) = v131;
      *(v0 + 1960) = 0;
      *(v0 + 1968) = v125;
      v132 = *v161;
      *(v0 + 1972) = *(v0 + 3540);
      *(v0 + 1969) = v132;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 514;
      *(v0 + 1994) = 2;
      v133 = *v167;
      *(v0 + 1999) = *(v0 + 3637);
      *(v0 + 1995) = v133;
      *(v0 + 2016) = 0u;
      *(v0 + 2000) = 0u;
      sub_100010568(v0 + 1584, v0 + 1360);
      sub_10003AE8C(v0 + 1808);
      v134 = *(v0 + 1600);
      *(v0 + 3336) = *(v0 + 1584);
      *(v0 + 3352) = v134;
      v135 = *(v0 + 1768);
      *(v0 + 2608) = *(v0 + 1752);
      *(v0 + 2624) = v135;
      *(v0 + 2640) = *(v0 + 1784);
      v136 = *(v0 + 1704);
      *(v0 + 2544) = *(v0 + 1688);
      *(v0 + 2560) = v136;
      v137 = *(v0 + 1736);
      *(v0 + 2576) = *(v0 + 1720);
      *(v0 + 2592) = v137;
      v138 = *(v0 + 1640);
      *(v0 + 2480) = *(v0 + 1624);
      *(v0 + 2496) = v138;
      v139 = *(v0 + 1672);
      *(v0 + 2512) = *(v0 + 1656);
      *(v0 + 3368) = *(v0 + 1616);
      *(v0 + 2656) = *(v0 + 1800);
      *(v0 + 2528) = v139;
      *(v0 + 3032) = &type metadata for AMSDogBag;
      *(v0 + 3040) = &off_100222F48;
      *(v0 + 3000) = v170;
      v140 = swift_task_alloc();
      *(v0 + 3376) = v140;
      *v140 = v0;
      v140[1] = sub_100093B10;

      return sub_100040F24();
    }
  }

  v53 = *(v0 + 3580);
  v54 = *(v0 + 3208);
  v55 = *(v0 + 3200);
  v56 = *(v0 + 3192);
  v57 = *(v0 + 3136);

  sub_10005CA88();
  v58 = swift_allocError();
  *(v0 + 3272) = v58;
  *v59 = 1;
  swift_willThrow();

  sub_10001BABC(v165, v168);
  (*(v55 + 8))(v54, v56);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    swift_errorRetain();
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v64;
    *v63 = v64;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to create blinded data: %@", v62, 0xCu);
    sub_10000DAF8(v63, &qword_100239F10, &qword_1001B4FD0);
  }

  v65 = *(v0 + 3596);
  v155 = (v0 + 3650);
  v157 = (v0 + 3569);
  v148 = (v0 + 3622);
  v169 = *(v0 + 3216);
  v146 = (v0 + 3590);
  v147 = (v0 + 3561);
  v66 = *(v0 + 3184);
  v152 = (v0 + 3553);
  v149 = (v0 + 3521);
  v67 = *(v0 + 3176);
  v141 = *(v0 + 3168);
  v68 = *(v0 + 3160);
  v69 = *(v0 + 3152);
  v70 = *(v0 + 3144);
  v160 = *(v0 + 3136);
  v166 = *(v0 + 3657);
  v163 = *(v0 + 3128);

  swift_errorRetain();
  v71 = sub_1000C7C10(v58);
  v144 = v72;
  v145 = v71;
  v142 = v74;
  v143 = v73;
  static Date.now.getter();
  (*(v69 + 104))(v68, v65, v70);
  v75 = sub_100025808(v66, v68);
  v77 = v76;
  (*(v69 + 8))(v68, v70);
  (*(v67 + 8))(v66, v141);
  if (v77)
  {
    v78 = 0;
  }

  else
  {
    v78 = v75;
  }

  v79 = [objc_opt_self() buildVersion];
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  *(v0 + 3520) = 1;
  *(v0 + 3656) = 1;
  *(v0 + 3536) = 1;
  *(v0 + 3496) = 1;
  *(v0 + 3616) = 1;
  *(v0 + 2032) = 1287;
  *(v0 + 2034) = *v146;
  *(v0 + 2038) = *(v0 + 3594);
  *(v0 + 2040) = v145;
  *(v0 + 2048) = v144;
  *(v0 + 2056) = v143;
  *(v0 + 2064) = v142;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v78;
  *(v0 + 2096) = v80;
  *(v0 + 2104) = v82;
  *(v0 + 2112) = 0;
  *(v0 + 2117) = 2;
  *(v0 + 2113) = 33686018;
  *(v0 + 2120) = 0;
  v83 = *(v0 + 3520);
  *(v0 + 2128) = v83;
  *(v0 + 2129) = *v147;
  *(v0 + 2132) = *(v0 + 3564);
  *(v0 + 2136) = 0;
  v84 = *(v0 + 3656);
  *(v0 + 2144) = v84;
  *(v0 + 2145) = 1;
  *(v0 + 2146) = *v148;
  *(v0 + 2150) = *(v0 + 3626);
  *(v0 + 2152) = 0;
  v85 = *(v0 + 3536);
  *(v0 + 2160) = v85;
  *(v0 + 2164) = *(v0 + 3524);
  *(v0 + 2161) = *v149;
  *(v0 + 2168) = 0;
  v86 = *(v0 + 3496);
  *(v0 + 2176) = v86;
  *(v0 + 2177) = 769;
  *(v0 + 2183) = *(v0 + 3654);
  *(v0 + 2179) = *v155;
  *(v0 + 2184) = 0;
  v87 = *(v0 + 3616);
  *(v0 + 2192) = v87;
  v88 = *v152;
  *(v0 + 2196) = *(v0 + 3556);
  *(v0 + 2193) = v88;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  v89 = *v157;
  *(v0 + 2223) = *(v0 + 3573);
  *(v0 + 2219) = v89;
  *(v0 + 2240) = 0u;
  *(v0 + 2224) = 0u;
  *(v0 + 16) = 1287;
  v90 = *v146;
  *(v0 + 22) = *(v0 + 3594);
  *(v0 + 18) = v90;
  *(v0 + 24) = v145;
  *(v0 + 32) = v144;
  *(v0 + 40) = v143;
  *(v0 + 48) = v142;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v78;
  *(v0 + 80) = v80;
  *(v0 + 88) = v82;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v83;
  v91 = *v147;
  *(v0 + 116) = *(v0 + 3564);
  *(v0 + 113) = v91;
  *(v0 + 120) = 0;
  *(v0 + 128) = v84;
  *(v0 + 129) = 1;
  v92 = *v148;
  *(v0 + 134) = *(v0 + 3626);
  *(v0 + 130) = v92;
  *(v0 + 136) = 0;
  *(v0 + 144) = v85;
  v93 = *v149;
  *(v0 + 148) = *(v0 + 3524);
  *(v0 + 145) = v93;
  *(v0 + 152) = 0;
  *(v0 + 160) = v86;
  *(v0 + 161) = 769;
  v94 = *v155;
  *(v0 + 167) = *(v0 + 3654);
  *(v0 + 163) = v94;
  *(v0 + 168) = 0;
  *(v0 + 176) = v87;
  v95 = *v152;
  *(v0 + 180) = *(v0 + 3556);
  *(v0 + 177) = v95;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v96 = *v157;
  *(v0 + 207) = *(v0 + 3573);
  *(v0 + 203) = v96;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 2032, v0 + 2256);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v160 + *(v169 + 68)), *(v160 + *(v169 + 68) + 24));
  v97 = type metadata accessor for SnoutManager();
  v98 = swift_task_alloc();
  *(v0 + 3464) = v98;
  *v98 = v0;
  v98[1] = sub_10009473C;
  if (v166)
  {
    v99 = 0;
  }

  else
  {
    v99 = v163;
  }

  if (v166)
  {
    v100 = 2;
  }

  else
  {
    v100 = 0;
  }

  return (sub_10016E27C)(v0 + 2032, v99, 0, v100, v97, &off_100223858);
}

uint64_t sub_100093B10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3376);
  v8 = *v2;
  v3[423] = a1;
  v3[424] = v1;

  if (v1)
  {
    v5 = v3[434];

    v6 = sub_1000940B8;
  }

  else
  {
    v6 = sub_100093C30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100093C30()
{
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3136);
  v3 = *(v0 + 3657);
  v4 = *(v0 + 3128);
  v5 = *(*(v0 + 3216) + 68);
  *(v0 + 3628) = v5;
  v16 = *(v0 + 3352);
  v17 = *(v0 + 3336);
  sub_10000DA7C((v2 + v5), *(v2 + v5 + 24));
  *(v0 + 464) = v17;
  *(v0 + 480) = v16;
  *(v0 + 496) = v1;
  v6 = *(v0 + 2624);
  *(v0 + 632) = *(v0 + 2608);
  *(v0 + 648) = v6;
  *(v0 + 664) = *(v0 + 2640);
  *(v0 + 680) = *(v0 + 2656);
  v7 = *(v0 + 2560);
  *(v0 + 568) = *(v0 + 2544);
  *(v0 + 584) = v7;
  v8 = *(v0 + 2592);
  *(v0 + 600) = *(v0 + 2576);
  *(v0 + 616) = v8;
  v9 = *(v0 + 2496);
  *(v0 + 504) = *(v0 + 2480);
  *(v0 + 520) = v9;
  v10 = *(v0 + 2528);
  *(v0 + 536) = *(v0 + 2512);
  *(v0 + 552) = v10;
  *(v0 + 3400) = &unk_1001C3B20;
  *(v0 + 3408) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v11 = type metadata accessor for SnoutManager();
  *(v0 + 3416) = v11;
  v12 = swift_task_alloc();
  *(v0 + 3424) = v12;
  *v12 = v0;
  v12[1] = sub_100093E2C;
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = v4;
  }

  if (v3)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return (sub_10016E27C)(v0 + 464, v13, 0, v14, v11, &off_100223858);
}

uint64_t sub_100093E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 3424);
  v4 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100093F30, 0, 0);
}

uint64_t sub_100093F30()
{
  v1 = *(v0 + 3384);
  sub_100098C4C(v0 + 3000);
  v2 = *(v1 + 16);
  *(v0 + 3432) = v2;
  if (v2)
  {
    v3 = *(v0 + 3384);
    *(v0 + 3440) = 0;
    v4 = *(v0 + 3655);
    v6 = *(v3 + 64);
    v5 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v0 + 2728) = *(v3 + 96);
    *(v0 + 2696) = v6;
    *(v0 + 2712) = v5;
    *(v0 + 2680) = v7;
    *(v0 + 2664) = *(v3 + 32);
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v8 = swift_task_alloc();
    *(v0 + 3448) = v8;
    *v8 = v0;
    v8[1] = sub_1000943E4;
    v9 = *(v0 + 3472);
    v10 = *(v0 + 3136);
    v11 = *(v0 + 3128);

    return sub_100096A48(v11, v0 + 2664, v9, v4 & 1);
  }

  else
  {
    v13 = *(v0 + 3472);
    v14 = *(v0 + 3384);
    v15 = *(v0 + 3657);
    v16 = *(v0 + 3128);

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if (v15)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    sub_100098CA0(v17, 0, v18);

    v19 = *(v0 + 3208);
    v20 = *(v0 + 3184);
    v21 = *(v0 + 3160);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1000940B8()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3580);
  v3 = *(v0 + 3136);
  sub_100098C4C(v0 + 3000);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3392);
    v7 = *(v0 + 3128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetch for re-engagement tokens for app %llu failed with error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 3392);
  v35 = *(v0 + 3336);
  v12 = *(v0 + 3216);
  v13 = *(v0 + 3136);
  v34 = *(v0 + 3657);
  v33 = *(v0 + 3128);

  v14 = *(v0 + 1616);
  v15 = *(v0 + 1600);
  v16 = sub_1000C7C10(v11);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10000DA7C((v13 + *(v12 + 68)), *(v13 + *(v12 + 68) + 24));
  *(v0 + 240) = v35;
  *(v0 + 248) = v16;
  *(v0 + 256) = v18;
  *(v0 + 264) = v20;
  *(v0 + 272) = v22;
  v23 = *(v0 + 2624);
  *(v0 + 408) = *(v0 + 2608);
  *(v0 + 424) = v23;
  *(v0 + 440) = *(v0 + 2640);
  *(v0 + 456) = *(v0 + 2656);
  v24 = *(v0 + 2560);
  *(v0 + 344) = *(v0 + 2544);
  *(v0 + 360) = v24;
  v25 = *(v0 + 2592);
  *(v0 + 376) = *(v0 + 2576);
  *(v0 + 392) = v25;
  v26 = *(v0 + 2496);
  *(v0 + 280) = *(v0 + 2480);
  *(v0 + 296) = v26;
  v27 = *(v0 + 2528);
  *(v0 + 312) = *(v0 + 2512);
  *(v0 + 328) = v27;
  v28 = type metadata accessor for SnoutManager();
  v29 = swift_task_alloc();
  *(v0 + 3480) = v29;
  *v29 = v0;
  v29[1] = sub_100095720;
  if (v34)
  {
    v30 = 0;
  }

  else
  {
    v30 = v33;
  }

  if (v34)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  return (sub_10016E27C)(v0 + 240, v30, 0, v31, v28, &off_100223858);
}

uint64_t sub_1000943E4()
{
  v2 = *(*v1 + 3448);
  v5 = *v1;
  *(*v1 + 3456) = v0;

  if (v0)
  {
    v3 = sub_1000958DC;
  }

  else
  {
    v3 = sub_1000944F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000944F8()
{
  v1 = (v0 + 2664);
  v2 = *(v0 + 3580);
  v3 = *(v0 + 3136);
  sub_100044BF8(v0 + 2664, v0 + 2736);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    sub_100044C30(v0 + 2664);
    *(v6 + 4) = *v1;
    sub_100044C30(v0 + 2664);
    _os_log_impl(&_mh_execute_header, v4, v5, "Finalized reengagement token for id: %ld", v6, 0xCu);
  }

  else
  {
    sub_100044C30(v0 + 2664);
    sub_100044C30(v0 + 2664);
  }

  v7 = *(v0 + 3440) + 1;
  if (v7 == *(v0 + 3432))
  {
    v8 = *(v0 + 3472);
    v9 = *(v0 + 3384);
    v10 = *(v0 + 3657);
    v11 = *(v0 + 3128);

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    if (v10)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    sub_100098CA0(v12, 0, v13);

    v14 = *(v0 + 3208);
    v15 = *(v0 + 3184);
    v16 = *(v0 + 3160);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 3440) = v7;
    v19 = *(v0 + 3655);
    v20 = *(v0 + 3384) + 72 * v7;
    *v1 = *(v20 + 32);
    v22 = *(v20 + 64);
    v21 = *(v20 + 80);
    v23 = *(v20 + 48);
    *(v0 + 2728) = *(v20 + 96);
    *(v0 + 2696) = v22;
    *(v0 + 2712) = v21;
    *(v0 + 2680) = v23;
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v24 = swift_task_alloc();
    *(v0 + 3448) = v24;
    *v24 = v0;
    v24[1] = sub_1000943E4;
    v25 = *(v0 + 3472);
    v26 = *(v0 + 3136);
    v27 = *(v0 + 3128);

    return sub_100096A48(v27, v1, v25, v19 & 1);
  }
}

uint64_t sub_10009473C()
{
  v1 = *v0;
  v2 = *(*v0 + 3464);
  v4 = *v0;

  sub_10003AE8C(v1 + 2032);

  return _swift_task_switch(sub_100094840, 0, 0);
}

uint64_t sub_100094840()
{
  v1 = *(v0 + 3272);

  v2 = *(v0 + 3264);
  v3 = *(v0 + 3256);
  v4 = *(v0 + 3240);
  *(v0 + 3472) = v2;
  v5 = *(v0 + 3248) + 1;
  if (v5 == *(v0 + 3224))
  {
LABEL_2:
    v155 = (v0 + 3633);
    v158 = v3;
    v6 = (v0 + 3574);
    v7 = *(v0 + 3184);
    v8 = *(v0 + 3176);
    v148 = (v0 + 3537);
    v151 = (v0 + 3601);
    v143 = (v0 + 3513);
    v9 = *(v0 + 3168);
    v145 = (v0 + 3497);
    v147 = (v0 + 3606);
    v10 = *(v0 + 3160);
    v11 = *(v0 + 3152);
    v12 = *(v0 + 3144);
    static Date.now.getter();
    *(v0 + 3612) = enum case for Calendar.Component.hour(_:);
    v13 = *(v11 + 104);
    *(v0 + 3280) = v13;
    *(v0 + 3288) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v13(v10);
    v14 = sub_100025808(v7, v10);
    v16 = v15;
    v17 = *(v11 + 8);
    *(v0 + 3296) = v17;
    *(v0 + 3304) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v10, v12);
    v18 = *(v8 + 8);
    *(v0 + 3312) = v18;
    *(v0 + 3320) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v7, v9);
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    v20 = objc_opt_self();
    *(v0 + 3328) = v20;
    v21 = [v20 buildVersion];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v0 + 3632) = 1;
    *(v0 + 3600) = 1;
    *(v0 + 3584) = 1;
    *(v0 + 3568) = 1;
    *(v0 + 3552) = 1;
    *(v0 + 1584) = 1287;
    *(v0 + 1586) = *v6;
    *(v0 + 1590) = *(v0 + 3578);
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = v19;
    *(v0 + 1648) = v22;
    *(v0 + 1656) = v24;
    *(v0 + 1664) = 0;
    *(v0 + 1665) = 33686018;
    *(v0 + 1669) = 2;
    *(v0 + 1672) = 0;
    v25 = *(v0 + 3632);
    *(v0 + 1680) = v25;
    *(v0 + 1681) = *v143;
    *(v0 + 1684) = *(v0 + 3516);
    *(v0 + 1688) = 0;
    v26 = *(v0 + 3600);
    *(v0 + 1696) = v26;
    *(v0 + 1697) = 1;
    *(v0 + 1698) = *v147;
    *(v0 + 1702) = *(v0 + 3610);
    *(v0 + 1704) = 0;
    v27 = *(v0 + 3584);
    *(v0 + 1712) = v27;
    *(v0 + 1716) = *(v0 + 3500);
    *(v0 + 1713) = *v145;
    *(v0 + 1720) = 0;
    v28 = *(v0 + 3568);
    *(v0 + 1728) = v28;
    *(v0 + 1729) = 769;
    *(v0 + 1735) = *(v0 + 3605);
    *(v0 + 1731) = *v151;
    *(v0 + 1736) = 0;
    v29 = *(v0 + 3552);
    *(v0 + 1744) = v29;
    *(v0 + 1748) = *(v0 + 3540);
    *(v0 + 1745) = *v148;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 514;
    *(v0 + 1770) = 2;
    v30 = *v155;
    *(v0 + 1775) = *(v0 + 3637);
    *(v0 + 1771) = v30;
    *(v0 + 1792) = 0u;
    *(v0 + 1776) = 0u;
    *(v0 + 1808) = 1287;
    v31 = *v6;
    *(v0 + 1814) = *(v0 + 3578);
    *(v0 + 1810) = v31;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1864) = v19;
    *(v0 + 1872) = v22;
    *(v0 + 1880) = v24;
    *(v0 + 1888) = 0;
    *(v0 + 1893) = 2;
    *(v0 + 1889) = 33686018;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v25;
    v32 = *v143;
    *(v0 + 1908) = *(v0 + 3516);
    *(v0 + 1905) = v32;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v26;
    *(v0 + 1921) = 1;
    v33 = *v147;
    *(v0 + 1926) = *(v0 + 3610);
    *(v0 + 1922) = v33;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v27;
    v34 = *v145;
    *(v0 + 1940) = *(v0 + 3500);
    *(v0 + 1937) = v34;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v28;
    *(v0 + 1953) = 769;
    v35 = *v151;
    *(v0 + 1959) = *(v0 + 3605);
    *(v0 + 1955) = v35;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v29;
    v36 = *v148;
    *(v0 + 1972) = *(v0 + 3540);
    *(v0 + 1969) = v36;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v37 = *v155;
    *(v0 + 1999) = *(v0 + 3637);
    *(v0 + 1995) = v37;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 1584, v0 + 1360);
    sub_10003AE8C(v0 + 1808);
    v38 = *(v0 + 1600);
    *(v0 + 3336) = *(v0 + 1584);
    *(v0 + 3352) = v38;
    v39 = *(v0 + 1768);
    *(v0 + 2608) = *(v0 + 1752);
    *(v0 + 2624) = v39;
    *(v0 + 2640) = *(v0 + 1784);
    v40 = *(v0 + 1704);
    *(v0 + 2544) = *(v0 + 1688);
    *(v0 + 2560) = v40;
    v41 = *(v0 + 1736);
    *(v0 + 2576) = *(v0 + 1720);
    *(v0 + 2592) = v41;
    v42 = *(v0 + 1640);
    *(v0 + 2480) = *(v0 + 1624);
    *(v0 + 2496) = v42;
    v43 = *(v0 + 1672);
    *(v0 + 2512) = *(v0 + 1656);
    *(v0 + 3368) = *(v0 + 1616);
    *(v0 + 2656) = *(v0 + 1800);
    *(v0 + 2528) = v43;
    *(v0 + 3032) = &type metadata for AMSDogBag;
    *(v0 + 3040) = &off_100222F48;
    *(v0 + 3000) = v158;
    v44 = swift_task_alloc();
    *(v0 + 3376) = v44;
    *v44 = v0;
    v44[1] = sub_100093B10;

    return sub_100040F24();
  }

  else
  {
    v140 = (v0 + 3521);
    v141 = (v0 + 3553);
    v136 = (v0 + 3590);
    v137 = (v0 + 3561);
    v142 = (v0 + 3569);
    v138 = (v0 + 3622);
    v139 = (v0 + 3650);
    while (1)
    {
      *(v0 + 3264) = v2;
      *(v0 + 3256) = v3;
      v149 = v4;
      v152 = v5;
      *(v0 + 3248) = v5;
      *(v0 + 3240) = v4;
      v46 = *(v0 + 3232);
      v47 = *(v0 + 3208);
      v48 = *(v0 + 3200);
      v49 = *(v0 + 3192);
      v50 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v50 + 16) = 32;
      *(v50 + 48) = 0u;
      *(v50 + 32) = 0u;
      v51 = (v50 + 32);
      SecRandomCopyBytes(v46, 0x20uLL, (v50 + 32));
      v52 = sub_100098A3C(v51, 32);
      v54 = v53;

      sub_1000438D8(v52, v54);
      v156 = v52;
      v159 = v54;
      SKANUTClient.init(privateInput:)();
      *(v0 + 3072) = v49;
      *(v0 + 3080) = &off_100217540;
      v55 = sub_10005CA24((v0 + 3048));
      (*(v48 + 16))(v55, v47, v49);
      type metadata accessor for PersistentTokenHandler();
      v56 = swift_allocObject();
      v57 = *(v0 + 3072);
      v58 = sub_100054C30(v0 + 3048, v57);
      v59 = *(v57 - 8);
      v60 = *(v59 + 64) + 15;
      v61 = swift_task_alloc();
      (*(v59 + 16))(v61, v58, v57);
      *(v0 + 3112) = v49;
      *(v0 + 3120) = &off_100217540;
      v62 = sub_10005CA24((v0 + 3088));
      (*(v48 + 32))(v62, v61, v49);
      v56[7] = 0;
      sub_10000DA64((v0 + 3088), (v56 + 2));
      sub_10000DB58((v0 + 3048));

      sub_10000DA7C(v56 + 2, v56[5]);
      v63 = SKANUTClient.blindedElement()();
      v65 = v64;
      v66 = Data.base64EncodedString(options:)(0);
      sub_10001BABC(v63, v65);
      sub_10000DA7C(v56 + 2, v56[5]);
      v67 = SKANUTClient.input.getter();
      v69 = v68;
      v70 = Data.base64EncodedString(options:)(0);
      sub_10001BABC(v67, v69);
      v71 = sub_1000EBFFC();
      if (v72)
      {
        break;
      }

      v73 = v71;
      v56[7] = v71;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100088998(0, *(v3 + 2) + 1, 1, v3);
      }

      v74 = v3;
      v75 = *(v3 + 2);
      v76 = v74;
      v77 = *(v74 + 3);
      if (v75 >= v77 >> 1)
      {
        v76 = sub_100088998((v77 > 1), v75 + 1, 1, v76);
      }

      v78 = *(v0 + 3200);
      v144 = *(v0 + 3192);
      v146 = *(v0 + 3208);
      v79 = *(v0 + 3128);
      v80 = *(v0 + 3655) & 1;
      v81 = v76;
      *(v76 + 2) = v75 + 1;
      v82 = &v76[48 * v75];
      *(v82 + 4) = v152;
      *(v82 + 40) = v66;
      *(v82 + 7) = v73;
      *(v82 + 8) = v79;
      v82[72] = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = v81;
      *(v0 + 2952) = v66;
      *(v0 + 2968) = v70;
      *(v0 + 2984) = v73;
      *(v0 + 2992) = v56;
      sub_1000981D0((v0 + 2952), v152, isUniquelyReferenced_nonNull_native);
      sub_10001BABC(v156, v159);
      v2 = v149;
      (*(v78 + 8))(v146, v144);
      *(v0 + 3472) = v149;
      v5 = *(v0 + 3248) + 1;
      v4 = v149;
      if (v5 == *(v0 + 3224))
      {
        goto LABEL_2;
      }
    }

    v153 = *(v0 + 3580);
    v84 = *(v0 + 3208);
    v85 = *(v0 + 3200);
    v86 = *(v0 + 3192);
    v87 = *(v0 + 3136);

    sub_10005CA88();
    v88 = swift_allocError();
    *(v0 + 3272) = v88;
    *v89 = 1;
    swift_willThrow();

    sub_10001BABC(v156, v159);
    (*(v85 + 8))(v84, v86);
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to create blinded data: %@", v92, 0xCu);
      sub_10000DAF8(v93, &qword_100239F10, &qword_1001B4FD0);
    }

    v95 = *(v0 + 3596);
    v160 = *(v0 + 3216);
    v96 = *(v0 + 3184);
    v97 = *(v0 + 3176);
    v131 = *(v0 + 3168);
    v98 = *(v0 + 3160);
    v99 = *(v0 + 3152);
    v100 = *(v0 + 3144);
    v150 = *(v0 + 3136);
    v157 = *(v0 + 3657);
    v154 = *(v0 + 3128);

    swift_errorRetain();
    v101 = sub_1000C7C10(v88);
    v134 = v102;
    v135 = v101;
    v132 = v104;
    v133 = v103;
    static Date.now.getter();
    (*(v99 + 104))(v98, v95, v100);
    v105 = sub_100025808(v96, v98);
    v107 = v106;
    (*(v99 + 8))(v98, v100);
    (*(v97 + 8))(v96, v131);
    if (v107)
    {
      v108 = 0;
    }

    else
    {
      v108 = v105;
    }

    v109 = [objc_opt_self() buildVersion];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    *(v0 + 3520) = 1;
    *(v0 + 3656) = 1;
    *(v0 + 3536) = 1;
    *(v0 + 3496) = 1;
    *(v0 + 3616) = 1;
    *(v0 + 2032) = 1287;
    *(v0 + 2034) = *v136;
    *(v0 + 2038) = *(v0 + 3594);
    *(v0 + 2040) = v135;
    *(v0 + 2048) = v134;
    *(v0 + 2056) = v133;
    *(v0 + 2064) = v132;
    *(v0 + 2072) = 0u;
    *(v0 + 2088) = v108;
    *(v0 + 2096) = v110;
    *(v0 + 2104) = v112;
    *(v0 + 2112) = 0;
    *(v0 + 2117) = 2;
    *(v0 + 2113) = 33686018;
    *(v0 + 2120) = 0;
    v113 = *(v0 + 3520);
    *(v0 + 2128) = v113;
    *(v0 + 2129) = *v137;
    *(v0 + 2132) = *(v0 + 3564);
    *(v0 + 2136) = 0;
    v114 = *(v0 + 3656);
    *(v0 + 2144) = v114;
    *(v0 + 2145) = 1;
    *(v0 + 2146) = *v138;
    *(v0 + 2150) = *(v0 + 3626);
    *(v0 + 2152) = 0;
    v115 = *(v0 + 3536);
    *(v0 + 2160) = v115;
    *(v0 + 2164) = *(v0 + 3524);
    *(v0 + 2161) = *v140;
    *(v0 + 2168) = 0;
    v116 = *(v0 + 3496);
    *(v0 + 2176) = v116;
    *(v0 + 2177) = 769;
    *(v0 + 2183) = *(v0 + 3654);
    *(v0 + 2179) = *v139;
    *(v0 + 2184) = 0;
    v117 = *(v0 + 3616);
    *(v0 + 2192) = v117;
    v118 = *v141;
    *(v0 + 2196) = *(v0 + 3556);
    *(v0 + 2193) = v118;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 514;
    *(v0 + 2218) = 2;
    v119 = *v142;
    *(v0 + 2223) = *(v0 + 3573);
    *(v0 + 2219) = v119;
    *(v0 + 2240) = 0u;
    *(v0 + 2224) = 0u;
    *(v0 + 16) = 1287;
    v120 = *v136;
    *(v0 + 22) = *(v0 + 3594);
    *(v0 + 18) = v120;
    *(v0 + 24) = v135;
    *(v0 + 32) = v134;
    *(v0 + 40) = v133;
    *(v0 + 48) = v132;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v108;
    *(v0 + 80) = v110;
    *(v0 + 88) = v112;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v113;
    v121 = *v137;
    *(v0 + 116) = *(v0 + 3564);
    *(v0 + 113) = v121;
    *(v0 + 120) = 0;
    *(v0 + 128) = v114;
    *(v0 + 129) = 1;
    v122 = *v138;
    *(v0 + 134) = *(v0 + 3626);
    *(v0 + 130) = v122;
    *(v0 + 136) = 0;
    *(v0 + 144) = v115;
    v123 = *v140;
    *(v0 + 148) = *(v0 + 3524);
    *(v0 + 145) = v123;
    *(v0 + 152) = 0;
    *(v0 + 160) = v116;
    *(v0 + 161) = 769;
    v124 = *v139;
    *(v0 + 167) = *(v0 + 3654);
    *(v0 + 163) = v124;
    *(v0 + 168) = 0;
    *(v0 + 176) = v117;
    v125 = *v141;
    *(v0 + 180) = *(v0 + 3556);
    *(v0 + 177) = v125;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v126 = *v142;
    *(v0 + 207) = *(v0 + 3573);
    *(v0 + 203) = v126;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 2032, v0 + 2256);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v150 + *(v160 + 68)), *(v150 + *(v160 + 68) + 24));
    v127 = type metadata accessor for SnoutManager();
    v128 = swift_task_alloc();
    *(v0 + 3464) = v128;
    *v128 = v0;
    v128[1] = sub_10009473C;
    if (v157)
    {
      v129 = 0;
    }

    else
    {
      v129 = v154;
    }

    if (v157)
    {
      v130 = 2;
    }

    else
    {
      v130 = 0;
    }

    return (sub_10016E27C)(v0 + 2032, v129, 0, v130, v127, &off_100223858);
  }
}

uint64_t sub_100095720()
{
  v1 = *v0;
  v2 = *(*v0 + 3480);
  v3 = *(*v0 + 3657);
  v4 = *(*v0 + 3128);
  v8 = *v0;

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  sub_100098CA0(v5, 0, v6);
  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10009585C, 0, 0);
}

uint64_t sub_10009585C()
{
  v1 = v0[424];

  v2 = v0[401];
  v3 = v0[398];
  v4 = v0[395];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000958DC()
{
  v1 = *(v0 + 3456);
  v2 = *(v0 + 3580);
  v3 = *(v0 + 3136);
  sub_100044BF8(v0 + 2664, v0 + 2808);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3456);
    v7 = *(v0 + 3128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2048;
    sub_100044C30(v0 + 2664);
    *(v8 + 14) = *(v0 + 2664);
    sub_100044C30(v0 + 2664);
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create non allocated token for app %llu with id %ld, error: %@", v8, 0x20u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_100044C30(v0 + 2664);
    sub_100044C30(v0 + 2664);
  }

  v11 = v4;
  v12 = *(v0 + 3456);
  v54 = (v0 + 3617);
  v55 = (v0 + 3585);
  v51 = (v0 + 3638);
  v62 = *(v0 + 3408);
  v52 = (v0 + 3545);
  v53 = (v0 + 3529);
  v61 = *(v0 + 3400);
  v50 = (v0 + 3505);
  v13 = *(v0 + 3628);
  v49 = *(v0 + 3328);
  v47 = *(v0 + 3312);
  v48 = *(v0 + 3320);
  v45 = *(v0 + 3296);
  v46 = *(v0 + 3304);
  v14 = *(v0 + 3280);
  v15 = *(v0 + 3612);
  v16 = *(v0 + 3184);
  v43 = *(v0 + 3288);
  v44 = *(v0 + 3168);
  v17 = *(v0 + 3160);
  v18 = *(v0 + 3144);
  v19 = *(v0 + 3136);
  v64 = *(v0 + 3657);
  v63 = *(v0 + 3128);

  v20 = (v19 + v13);
  swift_errorRetain();
  v56 = sub_1000C7C10(v12);
  v57 = v21;
  v58 = v22;
  v59 = v23;
  static Date.now.getter();
  v14(v17, v15, v18);
  v24 = sub_100025808(v16, v17);
  LOBYTE(v14) = v25;
  v45(v17, v18);
  v47(v16, v44);
  if (v14)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [v49 buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v0 + 690) = *(v0 + 3644);
  *(v0 + 785) = *v50;
  *(v0 + 802) = *v51;
  *(v0 + 820) = *(v0 + 3548);
  *(v0 + 817) = *v52;
  *(v0 + 835) = *v54;
  *(v0 + 852) = *(v0 + 3532);
  *(v0 + 849) = *v53;
  *(v0 + 875) = *v55;
  *(v0 + 1138) = *(v0 + 3644);
  *(v0 + 3504) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3528) = 1;
  *(v0 + 3544) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 769) = 33686018;
  *(v0 + 1217) = 33686018;
  *(v0 + 1236) = *(v0 + 3508);
  *(v0 + 1233) = *v50;
  *(v0 + 1250) = *v51;
  *(v0 + 1268) = *(v0 + 3548);
  *(v0 + 1265) = *v52;
  *(v0 + 833) = 769;
  *(v0 + 1281) = 769;
  *(v0 + 1283) = *v54;
  *(v0 + 1300) = *(v0 + 3532);
  *(v0 + 1297) = *v53;
  *(v0 + 1323) = *v55;
  *(v0 + 694) = *(v0 + 3648);
  *(v0 + 728) = 0u;
  *(v0 + 788) = *(v0 + 3508);
  *(v0 + 806) = *(v0 + 3642);
  *(v0 + 839) = *(v0 + 3621);
  *(v0 + 856) = 0u;
  *(v0 + 879) = *(v0 + 3589);
  *(v0 + 688) = 5;
  *(v0 + 1136) = 5;
  *(v0 + 1142) = *(v0 + 3648);
  *(v0 + 696) = v56;
  *(v0 + 1144) = v56;
  *(v0 + 704) = v57;
  *(v0 + 1152) = v57;
  *(v0 + 712) = v58;
  *(v0 + 1160) = v58;
  *(v0 + 720) = v59;
  *(v0 + 1168) = v59;
  *(v0 + 1176) = 0u;
  *(v0 + 744) = v26;
  *(v0 + 1192) = v26;
  *(v0 + 752) = v28;
  *(v0 + 1200) = v28;
  *(v0 + 760) = v30;
  *(v0 + 1208) = v30;
  v31 = *(v0 + 3504);
  *(v0 + 784) = v31;
  *(v0 + 1232) = v31;
  v32 = *(v0 + 3512);
  *(v0 + 800) = v32;
  *(v0 + 1248) = v32;
  *(v0 + 801) = 3;
  *(v0 + 1249) = 3;
  *(v0 + 1254) = *(v0 + 3642);
  v33 = *(v0 + 3528);
  *(v0 + 816) = v33;
  *(v0 + 1264) = v33;
  v34 = *(v0 + 3544);
  *(v0 + 832) = v34;
  *(v0 + 1280) = v34;
  *(v0 + 1287) = *(v0 + 3621);
  v35 = *(v0 + 3560);
  *(v0 + 848) = v35;
  *(v0 + 1296) = v35;
  *(v0 + 768) = 0;
  *(v0 + 773) = 0;
  *(v0 + 776) = 0;
  *(v0 + 792) = 0;
  *(v0 + 808) = 0;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 1304) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 1320) = 514;
  *(v0 + 1327) = *(v0 + 3589);
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1216) = 0;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1240) = 0;
  *(v0 + 1256) = 0;
  *(v0 + 1272) = 0;
  *(v0 + 1288) = 0;
  *(v0 + 1322) = 2;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C(v20, v20[3]);
  v60 = (v61 + *v61);
  v36 = v61[1];
  v37 = swift_task_alloc();
  *(v0 + 3488) = v37;
  *v37 = v0;
  v37[1] = sub_100095FA8;
  if (v64)
  {
    v38 = 0;
  }

  else
  {
    v38 = v63;
  }

  v39 = *(v0 + 3416);
  v40 = *(v0 + 3408);
  if (v64)
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  return (v60)(v0 + 688, v38, 0, v41, v39, &off_100223858);
}

uint64_t sub_100095FA8()
{
  v1 = *v0;
  v2 = *(*v0 + 3488);
  v4 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_1000960AC, 0, 0);
}

uint64_t sub_1000960AC()
{
  v1 = *(v0 + 3456);

  v2 = *(v0 + 3440) + 1;
  if (v2 == *(v0 + 3432))
  {
    v3 = *(v0 + 3472);
    v4 = *(v0 + 3384);
    v5 = *(v0 + 3657);
    v6 = *(v0 + 3128);

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    sub_100098CA0(v7, 0, v8);

    v9 = *(v0 + 3208);
    v10 = *(v0 + 3184);
    v11 = *(v0 + 3160);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 3440) = v2;
    v14 = *(v0 + 3655);
    v15 = *(v0 + 3384) + 72 * v2;
    *(v0 + 2664) = *(v15 + 32);
    v17 = *(v15 + 64);
    v16 = *(v15 + 80);
    v18 = *(v15 + 48);
    *(v0 + 2728) = *(v15 + 96);
    *(v0 + 2696) = v17;
    *(v0 + 2712) = v16;
    *(v0 + 2680) = v18;
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v19 = swift_task_alloc();
    *(v0 + 3448) = v19;
    *v19 = v0;
    v19[1] = sub_1000943E4;
    v20 = *(v0 + 3472);
    v21 = *(v0 + 3136);
    v22 = *(v0 + 3128);

    return sub_100096A48(v22, v0 + 2664, v20, v14 & 1);
  }
}

double sub_100096240@<D0>(uint64_t a1@<X8>)
{
  v3 = static ConversionType.downloadCases.getter();
  sub_1000E217C(v3, v7);

  if (!v1)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_1000962E0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10003FCC4(&off_100216658);
  sub_1000E217C(v3, v7);

  if (!v1)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100096388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100096460, 0, 0);
}

uint64_t sub_100096460()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  Date.init(timeIntervalSinceNow:)();
  v8 = (v7 + *(type metadata accessor for ReengagementConversionTask(0) + 24));
  v9 = v8[1];
  v15 = *v8;
  v10 = v8[2];
  (*(v3 + 16))(v2, v1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[10] = v12;
  (*(v3 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1000965F4;

  return sub_1001101F0(sub_100099654, v12, v15, v9, v10);
}

uint64_t sub_1000965F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_1000967DC;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_100096740;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100096740()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  (*(v0[6] + 8))(v0[9], v0[5]);
  *v3 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000967DC()
{
  v1 = v0[8];
  (*(v0[6] + 8))(v0[9], v0[5]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_100096864(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_10009690C;

  return sub_1001581F0(13);
}

uint64_t sub_10009690C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 48);
  v7 = *v2;
  *(v4 + 56) = a2;

  return _swift_task_switch(sub_100096A14, 0, 0);
}

uint64_t sub_100096A14()
{
  v1 = 24;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100096A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100096B6C, 0, 0);
}

uint64_t sub_1000971F4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);

  if (v0)
  {
    v6 = sub_1000973F4;
  }

  else
  {
    v6 = sub_100097328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100097328()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];

  sub_10001BABC(v1, v2);

  sub_10005CB30(v4, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000973F4()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  sub_10001BABC(v1, v2);

  sub_10005CB30(v4, v3);
  v8 = v0[27];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000974B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100089B80();
}

uint64_t sub_100097544()
{
  v1 = (sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v0 + v3 + v1[19];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(type metadata accessor for AppImpressionPayload() + 40) + 8);

  v10 = *(v0 + v3 + v1[20] + 8);

  v11 = *(v0 + v3 + v1[21] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100097684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009777C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CDE0(&qword_10023BCD0, &unk_1001BA6A8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 48 * v21);
      v24 = v23[1];
      v25 = v23[3];
      v40 = v23[2];
      v41 = *v23;
      v26 = v23[5];
      v39 = v23[4];
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 48 * v16);
      *v17 = v41;
      v17[1] = v24;
      v17[2] = v40;
      v17[3] = v25;
      v17[4] = v39;
      v17[5] = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100097A3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CDE0(&qword_10023BCF0, &qword_1001BA6E8);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v48 = v3;
    v49 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 224 * v21;
      if (v50)
      {
        v54 = *v23;
        v55 = *(v23 + 16);
        v56 = *(v23 + 32);
        v24 = *(v23 + 48);
        v59 = *(v23 + 56);
        v25 = *(v23 + 64);
        v57 = *(v23 + 72);
        v58 = *(v23 + 88);
        v60 = *(v23 + 104);
        v61 = *(v23 + 120);
        v62 = *(v23 + 128);
        v26 = *(v23 + 136);
        v27 = *(v23 + 144);
        v63 = v27;
        v64 = *(v23 + 176);
        v65 = *(v23 + 160);
        v66 = *(v23 + 192);
        v51 = *(v23 + 168);
        v52 = *(v23 + 200);
        v67 = *(v23 + 201);
        v68 = *(v23 + 208);
        v53 = *(v23 + 216);
      }

      else
      {
        v28 = *(v23 + 16);
        v70 = *v23;
        v71 = v28;
        v29 = *(v23 + 80);
        v31 = *(v23 + 32);
        v30 = *(v23 + 48);
        *v74 = *(v23 + 64);
        *&v74[16] = v29;
        v72 = v31;
        v73 = v30;
        v32 = *(v23 + 144);
        v34 = *(v23 + 96);
        v33 = *(v23 + 112);
        v75 = *(v23 + 128);
        v76 = v32;
        *&v74[32] = v34;
        *&v74[48] = v33;
        v36 = *(v23 + 176);
        v35 = *(v23 + 192);
        v38 = *(v23 + 160);
        *&v79[9] = *(v23 + 201);
        v37 = *&v79[9];
        v78 = v36;
        *v79 = v35;
        v77 = v38;
        v68 = v37 >> 56;
        v67 = BYTE9(v35);
        v52 = BYTE8(v35);
        v53 = HIBYTE(v37);
        v65 = v38;
        v66 = v35;
        v51 = BYTE8(v38);
        v63 = v76;
        v64 = v36;
        v26 = BYTE8(v75);
        v61 = *&v74[56];
        v62 = v75;
        v60 = *&v74[40];
        v57 = *&v74[8];
        v58 = *&v74[24];
        v59 = *(&v73 + 1);
        v25 = v74[0];
        v24 = v73;
        v56 = v72;
        v54 = v70;
        v55 = v71;
        sub_10000E870(&v70, v69);
      }

      v39 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v40 = -1 << *(v8 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v70) = v24;
      v69[0] = v25;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 224 * v16;
      *v17 = v54;
      *(v17 + 16) = v55;
      *(v17 + 32) = v56;
      *(v17 + 48) = v24;
      *(v17 + 56) = v59;
      *(v17 + 64) = v25;
      *(v17 + 72) = v57;
      *(v17 + 88) = v58;
      *(v17 + 104) = v60;
      *(v17 + 120) = v61;
      *(v17 + 128) = v62;
      *(v17 + 136) = v26;
      *(v17 + 144) = v63;
      *(v17 + 160) = v65;
      *(v17 + 168) = v51;
      *(v17 + 176) = v64;
      *(v17 + 192) = v66;
      *(v17 + 200) = v52;
      *(v17 + 201) = v67;
      *(v17 + 208) = v68;
      *(v17 + 216) = v53;
      ++*(v8 + 16);
      v5 = v49;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v10, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100097EC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CDE0(&qword_10023BCE8, &qword_1001BA6E0);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + (v21 << 6);
      if (v41)
      {
        v25 = *v23;
        v24 = *(v23 + 8);
        v43 = *(v23 + 16);
        v42 = *(v23 + 24);
        v44 = *(v23 + 40);
        v26 = *(v23 + 56);
      }

      else
      {
        v27 = *v23;
        v28 = *(v23 + 16);
        v29 = *(v23 + 32);
        *&v47[25] = *(v23 + 41);
        *v47 = v28;
        *&v47[16] = v29;
        v46 = v27;
        v26 = v47[40];
        v44 = __PAIR128__(*&v47[32], *(&v29 + 1));
        v42 = *&v47[8];
        v43 = v28;
        v24 = *(&v27 + 1);
        v25 = v27;
        sub_10000E7C0(&v46, v45);
      }

      v30 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v46) = v26;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + (v16 << 6);
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = v43;
      *(v17 + 24) = v42;
      *(v17 + 40) = v44;
      *(v17 + 56) = v26;
      ++*(v8 + 16);
      v5 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v41)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1000981D0(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  v30 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = *v3;
  v13 = sub_1000C3CA8(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_1000983A4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10009777C(v18, a3 & 1);
    v22 = *v4;
    v13 = sub_1000C3CA8(a2);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v4;
  if (v19)
  {
    v25 = (v24[7] + 48 * v13);
    v26 = v25[1];
    v27 = v25[3];
    v28 = v25[5];
    *v25 = v30;
    v25[1] = v7;
    v25[2] = v9;
    v25[3] = v8;
    v25[4] = v11;
    v25[5] = v10;
  }

  else
  {
    *&v31 = v30;
    *(&v31 + 1) = v7;
    v32 = v9;
    v33 = v8;
    v34 = v11;
    v35 = v10;
    return sub_10009834C(v13, a2, &v31, v24);
  }
}

unint64_t sub_10009834C(unint64_t result, uint64_t a2, __int128 *a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v8 = a4[7] + 48 * result;
  *v8 = v4;
  *(v8 + 16) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

void *sub_1000983A4()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCD0, &unk_1001BA6A8);
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
        v18 = (*(v2 + 56) + 48 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v25 = (*(v4 + 56) + 48 * v17);
        *v25 = v20;
        v25[1] = v19;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v23;
        v25[5] = v24;
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

void *sub_100098538()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCF0, &qword_1001BA6E8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_10000E870(&v41, &v40))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 224 * v16);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[5];
      v45 = v18[4];
      v46 = v21;
      v44 = v20;
      v22 = v18[9];
      v24 = v18[6];
      v23 = v18[7];
      v49 = v18[8];
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = v18[11];
      v25 = v18[12];
      v27 = v18[10];
      *(v53 + 9) = *(v18 + 201);
      v52 = v26;
      v53[0] = v25;
      v51 = v27;
      v28 = v18[1];
      v41 = *v18;
      v42 = v28;
      v43 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v29 = (*(v4 + 56) + 224 * v16);
      v30 = v42;
      *v29 = v41;
      v29[1] = v30;
      v31 = v43;
      v32 = v44;
      v33 = v46;
      v29[4] = v45;
      v29[5] = v33;
      v29[2] = v31;
      v29[3] = v32;
      v34 = v47;
      v35 = v48;
      v36 = v50;
      v29[8] = v49;
      v29[9] = v36;
      v29[6] = v34;
      v29[7] = v35;
      v37 = v51;
      v38 = v52;
      v39 = v53[0];
      *(v29 + 201) = *(v53 + 9);
      v29[11] = v38;
      v29[12] = v39;
      v29[10] = v37;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_10009873C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCE8, &qword_1001BA6E0);
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
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = v19[1];
        v20 = v19[2];
        v22 = *v19;
        *&v30[9] = *(v19 + 41);
        v29 = v21;
        *v30 = v20;
        v28 = v22;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = *v30;
        *(v23 + 41) = *&v30[9];
        v23[1] = v25;
        v23[2] = v26;
        *v23 = v24;
        result = sub_10000E7C0(&v28, &v27);
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

uint64_t sub_1000988DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100098984(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100098A3C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100098984(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100098AF0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

__n128 sub_100098B90@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  sub_10005E514(*(v1 + 16), *(v1 + 24), v1 + ((*(v4 + 80) + 25) & ~*(v4 + 80)), v8);
  if (!v2)
  {
    v6 = *v9;
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v6;
    *(a1 + 95) = *&v9[15];
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100098CA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_100098CB8()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[13];

  return _swift_deallocObject(v0, 115, 7);
}

uint64_t sub_100098D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100098D70()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = v5 + *(v6 + 20);
    v8 = *(v7 + 8);

    v9 = *(v7 + 24);

    v10 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v11 = v7 + v10[17];
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11, v12);
    v13 = *(v11 + *(type metadata accessor for AppImpressionPayload() + 40) + 8);

    v14 = *(v7 + v10[18] + 8);

    v15 = *(v7 + v10[19] + 8);

    v16 = *(v5 + *(v6 + 24) + 8);
  }

  v17 = v5 + v1[5];
  v18 = *(v17 + 8);

  v19 = v5 + v1[6];
  v20 = *(v19 + 8);

  v21 = v5 + v1[7];
  v22 = *(v21 + 8);

  v23 = v5 + v1[8];
  v24 = *(v23 + 8);

  v25 = v5 + v1[9];
  v26 = *(v25 + 8);

  sub_10000DB58((v5 + v1[10]));
  sub_10000DB58((v5 + v1[11]));
  sub_10000DB58((v5 + v1[12]));
  sub_10000DB58((v5 + v1[13]));
  sub_10000DB58((v5 + v1[14]));
  sub_10000DB58((v5 + v1[15]));
  v27 = v1[16];
  v28 = type metadata accessor for Logger();
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  sub_10000DB58((v5 + v1[17]));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100099038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000990A0(uint64_t a1)
{
  v4 = *(type metadata accessor for ReengagementConversionTask(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD30;

  return sub_100096388(a1, v1 + v5, v6);
}

uint64_t sub_1000991AC()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = v5 + *(v6 + 20);
    v8 = *(v7 + 8);

    v9 = *(v7 + 24);

    v10 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v11 = v7 + v10[17];
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11, v12);
    v13 = *(v11 + *(type metadata accessor for AppImpressionPayload() + 40) + 8);

    v14 = *(v7 + v10[18] + 8);

    v15 = *(v7 + v10[19] + 8);

    v16 = *(v5 + *(v6 + 24) + 8);
  }

  v17 = v5 + v1[5];
  v18 = *(v17 + 8);

  v19 = v5 + v1[6];
  v20 = *(v19 + 8);

  v21 = v5 + v1[7];
  v22 = *(v21 + 8);

  v23 = v5 + v1[8];
  v24 = *(v23 + 8);

  v25 = v5 + v1[9];
  v26 = *(v25 + 8);

  sub_10000DB58((v5 + v1[10]));
  sub_10000DB58((v5 + v1[11]));
  sub_10000DB58((v5 + v1[12]));
  sub_10000DB58((v5 + v1[13]));
  sub_10000DB58((v5 + v1[14]));
  sub_10000DB58((v5 + v1[15]));
  v27 = v1[16];
  v28 = type metadata accessor for Logger();
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  sub_10000DB58((v5 + v1[17]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100099468(uint64_t a1)
{
  v3 = *(type metadata accessor for ReengagementConversionTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000152E0;

  return sub_100096864(a1);
}

uint64_t sub_100099544()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000995CC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  result = sub_10005ECD8(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10009966C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099684()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100099718@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v1 + ((*(v4 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  result = sub_10005E974();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000997C8()
{
  result = qword_10023BCE0;
  if (!qword_10023BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BCE0);
  }

  return result;
}

BOOL sub_100099828(void *a1)
{
  v1 = a1;
  v2 = [v1 iTunesMetadata];
  v3 = [v2 storeItemIdentifier];

  v4 = [v1 iTunesMetadata];
  v5 = [v4 distributorInfo];

  v6 = [v5 distributorID];
  result = 0;
  if (v6)
  {

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100099904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100099984(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100099A04()
{
  v0 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100099A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100099B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100099C20()
{
  sub_100099CF4();
  if (v0 <= 0x3F)
  {
    sub_100079458(319, &qword_10023A198);
    if (v1 <= 0x3F)
    {
      sub_100079458(319, &unk_10023BE08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100099CF4()
{
  if (!qword_10023BE00)
  {
    type metadata accessor for AppImpressionPayload();
    sub_10003AFB8();
    sub_10003B00C();
    sub_100099DEC(&qword_10023A808, type metadata accessor for AppImpressionPayload);
    sub_100099DEC(&qword_10023A810, type metadata accessor for AppImpressionPayload);
    v0 = type metadata accessor for JWS();
    if (!v1)
    {
      atomic_store(v0, &qword_10023BE00);
    }
  }
}

uint64_t sub_100099DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100099E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReengagementConversionTask.Operation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100099F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReengagementConversionTask.Operation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009A0AC()
{
  result = type metadata accessor for ReengagementConversionTask.Operation(319);
  if (v1 <= 0x3F)
  {
    result = sub_100054FCC(319, &qword_10023AE00);
    if (v2 <= 0x3F)
    {
      result = sub_100054FCC(319, &qword_10023AE08);
      if (v3 <= 0x3F)
      {
        result = sub_100054FCC(319, &qword_10023AE10);
        if (v4 <= 0x3F)
        {
          result = sub_100054FCC(319, &qword_10023AE18);
          if (v5 <= 0x3F)
          {
            result = sub_100054FCC(319, &qword_10023BEB0);
            if (v6 <= 0x3F)
            {
              result = sub_100054FCC(319, &unk_10023BEB8);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Logger();
                if (v8 <= 0x3F)
                {
                  result = sub_100054FCC(319, &unk_10023AE20);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int sub_10009A7B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009A86C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10009A910()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10009A9C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009AD0C(*a1);
  *a2 = result;
  return result;
}

void sub_10009A9F4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "skan_impression_data";
  v4 = "agementPostbackCopies";
  v5 = 0xD000000000000031;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "appingConversions";
  }

  if (*v1)
  {
    v2 = 0xD000000000000035;
    v3 = "AttributionCopyEndpoint";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_10009AA6C()
{
  v1 = 0xD000000000000017;
  v2 = 0xD000000000000031;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000035;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

unint64_t sub_10009AAE0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009AD0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009AB08(uint64_t a1)
{
  v2 = sub_10009B0A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009AB44(uint64_t a1)
{
  v2 = sub_10009B0A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10009AB80@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10009AD58(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10009ABCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009ABF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10009AC14(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AC38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_10009AC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10009AD0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215F38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009AD58@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BF30, &qword_1001BA870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10009B0A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  LOBYTE(v33[0]) = 1;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33[0]) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = 3;
  sub_10009B0F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v26 = v43;
  v15 = *(&v44 + 1);
  v25 = v44;
  v24 = *(&v45 + 1);
  v16 = v45;
  v22 = *(&v46 + 1);
  v23 = v46;
  *&v28 = v14;
  *(&v28 + 1) = v13;
  v17 = v47;
  LOBYTE(v29) = v47;
  v18 = v27;
  BYTE1(v29) = v27;
  *(&v29 + 1) = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  sub_10009B148(&v28, v33);
  sub_10000DB58(a1);
  v33[0] = v14;
  v33[1] = v13;
  v34 = v17;
  v35 = v18;
  v36 = v26;
  v37 = v25;
  v38 = v15;
  v39 = v16;
  v40 = v24;
  v41 = v23;
  v42 = v22;
  result = sub_10009B180(v33);
  v20 = v31;
  a2[2] = v30;
  a2[3] = v20;
  a2[4] = v32;
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  return result;
}

unint64_t sub_10009B0A0()
{
  result = qword_10023BF38;
  if (!qword_10023BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF38);
  }

  return result;
}

unint64_t sub_10009B0F4()
{
  result = qword_10023BF40;
  if (!qword_10023BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF40);
  }

  return result;
}

unint64_t sub_10009B1C4()
{
  result = qword_10023BF48;
  if (!qword_10023BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF48);
  }

  return result;
}

unint64_t sub_10009B21C()
{
  result = qword_10023BF50;
  if (!qword_10023BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF50);
  }

  return result;
}

unint64_t sub_10009B274()
{
  result = qword_10023BF58;
  if (!qword_10023BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF58);
  }

  return result;
}

id sub_10009B468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostbackEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009B4C4()
{
  result = qword_10023BF88;
  if (!qword_10023BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF88);
  }

  return result;
}

uint64_t sub_10009B518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_100146DA4(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v11 = 0xEA00000000006461;
        v12 = 0x6F6C6E776F646572;
      }

      else
      {
        v12 = 0x6761676E652D6572;
        v11 = 0xED0000746E656D65;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x64616F6C6E776F64;
    }

    v13 = *(a1 + 36);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_100146DA4((v14 > 1), v15 + 1, 1);
      v6 = v26;
      v13 = v24;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_28;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_10009C048(result, v13, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_10009C048(result, v13, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

void sub_10009B79C()
{
  v1 = [v0 connection];
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = sub_100085FF0(v1, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v5 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10009B914()
{
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = objc_opt_self();
  v4 = [v3 predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  *(inited + 32) = v4;
  Date.timeIntervalSince1970.getter();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 predicateWithProperty:v7 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 40) = v8;
  v9 = String._bridgeToObjectiveC()();

  v10 = [v3 predicateWithProperty:v9 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v12 = [v15 connection];
  v13 = v11;
  v14 = sub_100085FF0(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  if (([v14 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10009BCC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10009B518(a2);
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 value:v8 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = [objc_opt_self() containsPredicateWithProperty:v10 values:v11];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
  swift_arrayDestroy();
  v14 = [v3 connection];
  v15 = v13;
  v16 = sub_100086388(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10009C048(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10009C1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FCBD0(a3, a4);
}

uint64_t sub_10009C464(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009C4F8;

  return sub_1000FD8D0();
}

uint64_t sub_10009C4F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(sub_10009C5F8, 0, 0);
}

uint64_t sub_10009C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FDE20(a3, a4);
}

uint64_t sub_10009CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FE3BC(a3, a4);
}

uint64_t sub_10009CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10000BD30;

  return sub_1000FE914(a3, a4);
}

uint64_t sub_10009D13C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D174()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D1AC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_10009CE3C(a1, a2, v7, v6);
}

uint64_t sub_10009D25C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D2F0;

  return sub_1000FC8B4();
}

uint64_t sub_10009D2F0()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100084968, 0, 0);
}

uint64_t sub_10009D3EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D480;

  return sub_1000FDC0C();
}

uint64_t sub_10009D480()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10009DAA0, 0, 0);
  }
}

uint64_t sub_10009D5B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_10009D480;

  return v10(a2, a3);
}

uint64_t sub_10009D6B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_10009D5B0(a1, a2, a3, v9);
}

uint64_t sub_10009D7BC(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D828(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009CB90(a1, a2, v7, v6);
}

uint64_t sub_10009D8D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009C8E4(a1, a2, v7, v6);
}

uint64_t sub_10009D988()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D9C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009C1B8(a1, a2, v7, v6);
}

unint64_t sub_10009DAA4(uint64_t a1)
{
  result = sub_100080044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009DACC(uint64_t a1)
{
  result = sub_10009DAF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009DAF4()
{
  result = qword_10023C040;
  if (!qword_10023C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C040);
  }

  return result;
}

uint64_t sub_10009DB48(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v7 = String.init<A>(describing:)();
  (*(v3 + 16))(v6, v1, a1);
  String.init<A>(describing:)();
  return v7;
}

uint64_t sub_10009DD18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009E494();
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v11];

    v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon28DeveloperModeServiceProtocol_];
    [a1 setExportedInterface:v12];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon36DeveloperModeServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v13 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v14, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing entitlement for DeveloperModeService", v17, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

unint64_t sub_10009DFE4()
{
  result = qword_10023C080;
  if (!qword_10023C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C080);
  }

  return result;
}

void sub_10009E048(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_10009E274(a2);
  }
}

unint64_t sub_10009E080(void *a1)
{
  a1[1] = sub_10009E0B8();
  a1[2] = sub_10009E10C();
  result = sub_10009E160();
  a1[3] = result;
  return result;
}

unint64_t sub_10009E0B8()
{
  result = qword_10023C0C8;
  if (!qword_10023C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0C8);
  }

  return result;
}

unint64_t sub_10009E10C()
{
  result = qword_10023C0D0;
  if (!qword_10023C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0D0);
  }

  return result;
}

unint64_t sub_10009E160()
{
  result = qword_10023C0D8;
  if (!qword_10023C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0D8);
  }

  return result;
}

unint64_t sub_10009E1B8()
{
  result = qword_10023C0E0;
  if (!qword_10023C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0E0);
  }

  return result;
}

unint64_t sub_10009E210()
{
  result = qword_10023C0E8;
  if (!qword_10023C0E8)
  {
    sub_10000CCC0(&qword_10023C0F0, &qword_1001BAD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0E8);
  }

  return result;
}

void sub_10009E274(uint64_t a1)
{
  _StringGuts.grow(_:)(107);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x6F635F7972746572;
  v3._object = 0xEB00000000746E75;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 665632;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x696669746E656469;
  v5._object = 0xEA00000000007265;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._object = 0xEA0000000000656DLL;
  v7._countAndFlagsBits = 0x616E5F70756F7267;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6F635F7972746572;
  v9._object = 0xEB00000000746E75;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x80000001001CA100;
  String.append(_:)(v11);
  v12._object = 0x80000001001CB530;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x696669746E656469;
  v13._object = 0xEA00000000007265;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x80000001001CB550;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v15);
}

uint64_t sub_10009E494()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10009E5CC(v7);
  }

  return 0;
}