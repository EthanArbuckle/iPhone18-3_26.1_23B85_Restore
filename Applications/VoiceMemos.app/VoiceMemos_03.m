void *sub_1000D3EF0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000D3F5C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000D4010(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000D408C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
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

unint64_t sub_1000D40DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CEC88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B46C(v4, &v13, &qword_1002CEC90);
      v5 = v13;
      v6 = v14;
      result = sub_1000D2E40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B668(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000D420C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CEC50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B46C(v4, &v11, &qword_1002CEC40);
      v5 = v11;
      result = sub_1000D2EB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000B668(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000D4334(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000D4388(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000D43DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000D4334(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D43F0(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CEC68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D4458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CE590);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B46C(v4, v10, &qword_1002CEC98);
      result = sub_100015FE8();
      if (v6)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      result = sub_100015FD0(v10, *(v3 + 56) + 40 * result);
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v9;
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

unint64_t sub_1000D4568(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CECA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000C773C(&qword_1002CECA8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000B46C(v10, v6, &qword_1002CECA0);
      result = sub_1000D2F6C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Session.Kind();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for UserIDConfiguration();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_1000D4788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CE5B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_1000D3004(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
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

unint64_t sub_1000D4874(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CECD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000C773C(&qword_1002CECD8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000B46C(v10, v6, &qword_1002CECD0);
      v12 = *v6;
      result = sub_1000D3048(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1000D4A5C(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CECC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000C773C(&qword_1002CECC8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000B46C(v10, v6, &qword_1002CECC0);
      v12 = *v6;
      result = sub_1000D311C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1000D4C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CEC80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10000B4D4(v6);
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

unint64_t sub_1000D4D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C773C(&qword_1002CEC70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000B46C(v4, &v11, &qword_1002CEC78);
      v5 = v11;
      result = sub_10000B4D4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000B668(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000D4E5C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1000D4F14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1000D4FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1000D3EF0(sub_1000D511C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000D501C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000D5098(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000D5190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D51DC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000D5258(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_1000D52EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D5334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D5380()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1000D53B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D5490(uint64_t a1)
{
  v2 = sub_1000D58D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D54CC(uint64_t a1)
{
  v2 = sub_1000D58D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D5508(void *a1)
{
  v3 = sub_1000C773C(&qword_1002CECF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - v6;
  sub_10000AACC(a1, a1[3]);
  sub_1000D58D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  sub_1000D597C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000D56A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000D5718(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000D56E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000D5718(void *a1)
{
  v2 = sub_1000C773C(&qword_1002CECE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9[-v5];
  sub_10000AACC(a1, a1[3]);
  sub_1000D58D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  sub_1000D5928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9[14] = 1;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100014B64(a1);
  return v7;
}

unint64_t sub_1000D58D4()
{
  result = qword_1002CECE8;
  if (!qword_1002CECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CECE8);
  }

  return result;
}

unint64_t sub_1000D5928()
{
  result = qword_1002CECF0;
  if (!qword_1002CECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CECF0);
  }

  return result;
}

unint64_t sub_1000D597C()
{
  result = qword_1002CED00;
  if (!qword_1002CED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CED00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoScrollStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutoScrollStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000D5B24()
{
  result = qword_1002CED08;
  if (!qword_1002CED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CED08);
  }

  return result;
}

unint64_t sub_1000D5B7C()
{
  result = qword_1002CED10;
  if (!qword_1002CED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CED10);
  }

  return result;
}

unint64_t sub_1000D5BD4()
{
  result = qword_1002CED18;
  if (!qword_1002CED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CED18);
  }

  return result;
}

uint64_t type metadata accessor for UserInfo()
{
  result = qword_1002CED80;
  if (!qword_1002CED80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D5C9C()
{
  sub_1000D5D24();
  if (v0 <= 0x3F)
  {
    sub_1000D5D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D5D24()
{
  if (!qword_1002CED90)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CED90);
    }
  }
}

void sub_1000D5D7C()
{
  if (!qword_1002CED98)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CED98);
    }
  }
}

uint64_t sub_1000D5DCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002CEDD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v11 - v8;
  sub_10000AACC(a1, a1[3]);
  sub_1000D6578();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for Date();
  sub_1000D6688(&qword_1002CEDE0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for UserInfo() + 20));
    v13 = 1;
    sub_1000C773C(&qword_1002CEDE8);
    sub_1000D673C(&qword_1002CEDF0, sub_1000D65CC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D6010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000C773C(&qword_1002CED20);
  v5 = __chkstk_darwin(v3 - 8, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v26 - v9;
  v11 = sub_1000C773C(&qword_1002CEE00);
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for UserInfo();
  __chkstk_darwin(v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v29 = v15;
  v31 = *(v15 + 24);
  v20(&v18[v31], 1, 1, v19);
  v21 = a1[3];
  v32 = a1;
  sub_10000AACC(a1, v21);
  sub_1000D6578();
  v22 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_100014B64(v32);
    sub_1000D6620(v18);
    return sub_1000D6620(&v18[v31]);
  }

  else
  {
    v36 = 0;
    v23 = sub_1000D6688(&qword_1002CEE08);
    v24 = v28;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v23;
    sub_1000D66CC(v10, v18);
    sub_1000C773C(&qword_1002CEDE8);
    v35 = 1;
    sub_1000D673C(&qword_1002CEE10, sub_1000D67B4);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v18[*(v29 + 20)] = v33;
    v34 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v27 + 8))(v14, v24);
    sub_1000D66CC(v7, &v18[v31]);
    sub_1000D6808(v18, v26);
    sub_100014B64(v32);
    return sub_1000D686C(v18);
  }
}

uint64_t sub_1000D6438()
{
  v1 = 0x73444972657375;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1000D649C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D6B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D64D0(uint64_t a1)
{
  v2 = sub_1000D6578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D650C(uint64_t a1)
{
  v2 = sub_1000D6578();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D6578()
{
  result = qword_1002CEDD8;
  if (!qword_1002CEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEDD8);
  }

  return result;
}

unint64_t sub_1000D65CC()
{
  result = qword_1002CEDF8;
  if (!qword_1002CEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEDF8);
  }

  return result;
}

uint64_t sub_1000D6620(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D6688(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D66CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CED20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D673C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002CEDE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D67B4()
{
  result = qword_1002CEE18;
  if (!qword_1002CEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEE18);
  }

  return result;
}

uint64_t sub_1000D6808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D686C(uint64_t a1)
{
  v2 = type metadata accessor for UserInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for UserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D6A1C()
{
  result = qword_1002CEE20;
  if (!qword_1002CEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEE20);
  }

  return result;
}

unint64_t sub_1000D6A74()
{
  result = qword_1002CEE28;
  if (!qword_1002CEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEE28);
  }

  return result;
}

unint64_t sub_1000D6ACC()
{
  result = qword_1002CEE30;
  if (!qword_1002CEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CEE30);
  }

  return result;
}

uint64_t sub_1000D6B20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73444972657375 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010022DD50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000D6C58(uint64_t a1)
{
  v34 = a1;
  v2 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v2 - 8, v3);
  v33 = &v30 - v4;
  v5 = sub_1000C773C(&qword_1002CEF60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v30 - v8;
  v32 = sub_1000C773C(&qword_1002CEF68);
  v35 = *(v32 - 8);
  __chkstk_darwin(v32, v10);
  v12 = &v30 - v11;
  v31 = sub_1000C773C(&qword_1002CEF70);
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v31, v15);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v30 - v19;
  *(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_transcriptionTask) = 0;
  *(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1000D8B3C();
  (*(v6 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  v30 = v12;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v9, v5);
  v21 = v32;
  (*(v35 + 16))(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_continuation, v12, v32);
  v22 = type metadata accessor for TaskPriority();
  v23 = v33;
  (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
  v24 = v31;
  (*(v13 + 16))(v17, v20, v31);
  v25 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v1;
  (*(v13 + 32))(&v27[v25], v17, v24);
  *&v27[v26] = v34;

  v28 = sub_100194190(0, 0, v23, &unk_100242308, v27);
  (*(v35 + 8))(v30, v21);
  (*(v13 + 8))(v20, v24);
  *(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_transcriptionTask) = v28;

  return v1;
}

uint64_t sub_1000D7094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10002001C;

  return sub_1000D7140(a5, a6);
}

uint64_t sub_1000D7140(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_1000C773C(&unk_1002D1D90);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for TranscriptionUtterance();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_1000C773C(&qword_1002CEF78);
  v3[18] = swift_task_alloc();
  v3[19] = sub_1000C773C(&qword_1002CEF80);
  v3[20] = swift_task_alloc();
  v3[21] = sub_1000C773C(&qword_1002CEF88);
  v3[22] = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002CEF90);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7360, 0, 0);
}

uint64_t sub_1000D7360()
{
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  *(v0 + 208) = qword_1002E8D20;
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1000D7428;

  return sub_1000F8FA0();
}

uint64_t sub_1000D7428()
{

  return _swift_task_switch(sub_1000D7524, 0, 0);
}

uint64_t sub_1000D7524()
{
  v1 = v0[26];
  v2 = v0[10];
  v3 = v0[11];
  v4 = OBJC_IVAR___RCRecordingTranscriptionService_isTranscribingLive;
  v0[28] = OBJC_IVAR___RCRecordingTranscriptionService_isTranscribingLive;
  *(v1 + v4) = 1;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *(v5 + 16) = v2;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_1000D7624;
  v8 = v0[11];

  return sub_1000F9AF0(1, v8, &unk_100242338, v5);
}

uint64_t sub_1000D7624(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = v2;

  if (v2)
  {
    v5 = sub_1000D79A0;
  }

  else
  {

    v5 = sub_1000D7744;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D7744()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1000C773C(&qword_1002CEF68);
  AsyncStream.Continuation.onTermination.setter();
  Transcriber.multisegmentResults.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  swift_getOpaqueTypeConformance2();
  AsyncCompactMapSequence.init(_:transform:)();
  sub_100008034(&qword_1002CEF98, &qword_1002CEF88);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[34] = OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_delegate;
  v5 = sub_100008034(&qword_1002CEFA0, &qword_1002CEF90);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1000D7A6C;
  v7 = v0[23];
  v8 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v0 + 9, v7, v5);
}

uint64_t sub_1000D79A0()
{

  *(v0[26] + v0[28]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D7A6C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1000D82BC;
  }

  else
  {
    v2 = sub_1000D7B80;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1000D7B80()
{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 128) + 48))(v1, 1, *(v0 + 120)) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 296) = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      *(v0 + 304) = v3;
      *v3 = v0;
      v3[1] = sub_1000D80D8;

      sub_10011D3D0();
    }

    else
    {

      *(*(v0 + 208) + *(v0 + 224)) = 0;

      v9 = *(v0 + 8);

      v9();
    }

    return;
  }

  sub_1000D90A4(v1, *(v0 + 136));
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 288);
    v7 = *(v0 + 136);
    v8 = *(v4 + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler);
    *(swift_task_alloc() + 16) = v7;
    os_unfair_lock_lock(v8 + 6);
    sub_1000D9108((v0 + 48));
    if (v6)
    {

      os_unfair_lock_unlock(v8 + 6);
      return;
    }

    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    os_unfair_lock_unlock(v8 + 6);
    v12 = *(v0 + 48);
    v27 = *(v0 + 56);

    v13 = type metadata accessor for TaskPriority();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v11, 1, 1, v13);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    *(v16 + 32) = v5;
    *(v16 + 40) = v12;
    *(v16 + 48) = v27;
    sub_1000D91F8(v11, v10);
    LODWORD(v10) = (*(v14 + 48))(v10, 1, v13);

    v17 = *(v0 + 104);
    if (v10 == 1)
    {
      sub_100003CBC(*(v0 + 104), &unk_1002D1D90);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v14 + 8))(v17, v13);
    }

    v18 = *(v16 + 16);
    swift_unknownObjectRetain();

    if (v18)
    {
      swift_getObjectType();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_100003CBC(*(v0 + 112), &unk_1002D1D90);
    v22 = swift_allocObject();
    *(v22 + 16) = &unk_100242348;
    *(v22 + 24) = v16;
    sub_1000C773C(&qword_1002CEFA8);
    if (v21 | v19)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v19;
      *(v0 + 40) = v21;
    }

    swift_task_create();
    swift_unknownObjectRelease();
  }

  sub_1000D9320(*(v0 + 136));
  v23 = sub_100008034(&qword_1002CEFA0, &qword_1002CEF90);
  v24 = swift_task_alloc();
  *(v0 + 280) = v24;
  *v24 = v0;
  v24[1] = sub_1000D7A6C;
  v25 = *(v0 + 184);
  v26 = *(v0 + 144);

  __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, 0, 0, v0 + 72, v25, v23);
}

uint64_t sub_1000D80D8()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1000D81F0, 0, 0);
}

uint64_t sub_1000D81F0()
{

  *(v0[26] + v0[28]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D82BC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  *(v0[26] + v0[28]) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D83B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;

  sub_100179578(0, 0, v8, &unk_100242368, v10);
}

uint64_t sub_1000D84C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000D855C;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1000D855C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D8690, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000D8690()
{
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100018D90(v1, qword_1002E8CB0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "finalizeAndFinishThroughEndOfInput failed with %@", v4, 0xCu);
    sub_100003CBC(v5, &unk_1002D3690);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D8834()
{
  v1 = v0;
  v2 = sub_1000C773C(&qword_1002CEF68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10 - v5;
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_transcriptionTask))
  {

    sub_1000C773C(&qword_1002D5540);
    Task.cancel()();
  }

  v7 = OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_continuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_continuation, v2);
  AsyncStream.Continuation.finish()();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);

  sub_10000E274(v1 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_delegate);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveTranscription()
{
  result = qword_1002CEE70;
  if (!qword_1002CEE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D8A40()
{
  sub_1000D8AE4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000D8AE4()
{
  if (!qword_1002CEE80)
  {
    sub_1000D8B3C();
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CEE80);
    }
  }
}

unint64_t sub_1000D8B3C()
{
  result = qword_1002CEE88;
  if (!qword_1002CEE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002CEE88);
  }

  return result;
}

uint64_t sub_1000D8B88(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C773C(&qword_1002CEF70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001FF1C;

  return sub_1000D7094(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1000D8CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000C773C(&qword_1002CEF70);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8D98, 0, 0);
}

uint64_t sub_1000D8D98()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  type metadata accessor for BufferFormatConverter();
  v6 = swift_allocObject();
  v6[3] = 0;
  sub_1000C773C(&qword_1002CEFB0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v6[4] = v7;
  v6[2] = v5;
  (*(v2 + 16))(v1, v4, v3);
  sub_1000D8B3C();
  sub_100008034(&qword_1002CEFB8, &qword_1002CEF70);
  v8 = v5;
  AsyncThrowingMapSequence.init(_:transform:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D8EF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001FF1C;

  return sub_1000D8CC8(a1, a2, v6);
}

uint64_t sub_1000D8FB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D8FF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_10010ACB0(a1, a2);
}

uint64_t sub_1000D90A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionUtterance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001FF1C;

  return sub_10011CFCC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000D91F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D1D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_10017C2C4(a1, v4);
}

uint64_t sub_1000D9320(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionUtterance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D937C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF1C;

  return sub_1000D84C8();
}

uint64_t sub_1000D943C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002001C;

  return sub_10010ABFC(a1, a2, v2);
}

unint64_t sub_1000D94FC()
{
  result = qword_1002CEFC0[0];
  if (!qword_1002CEFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002CEFC0);
  }

  return result;
}

uint64_t sub_1000D9550()
{

  return swift_deallocClassInstance();
}

double sub_1000D9588()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  [*(v0 + 16) rc_durationInSeconds];
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

void sub_1000D95C8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v9 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v83 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D9588();
  v14 = *(v3 + 24);
  v15 = v13 * v14;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (__OFSUB__(v15, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 - 1 >= (a1 & ~(a1 >> 63)))
  {
    v16 = a1 & ~(a1 >> 63);
  }

  else
  {
    v16 = v15 - 1;
  }

  v17 = *(v3 + 104);
  if (!v17 || v16 != *(v17 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex))
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 120);
  if (a3)
  {
    if (*(v3 + 120))
    {
      return;
    }

LABEL_16:
    v78 = v10;
    v79 = v9;
    v81 = a2;
    v82 = v16;
    *(v3 + 112) = a2;
    v80 = a3;
    *(v3 + 120) = a3 & 1;
    v19 = *(v3 + 16);
    epoch = *(v5 + 32);
    v84 = *(v5 + 40);
    v20 = *(v5 + 48);
    v21 = *(v5 + 56);
    v22 = *(v5 + 60);
    sub_1000DBBAC(v5 + 64, v95);
    v86 = type metadata accessor for AudioAssetReaderOutput();
    v23 = swift_allocObject();
    v24 = (v23 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer);
    *v24 = 0;
    v24[1] = 0;
    v85 = v24;
    v25 = v23 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_endTime;
    *v25 = 0;
    v77 = v25;
    *(v25 + 8) = 1;
    v26 = objc_allocWithZone(AVAssetReader);
    v89.value = 0;

    v27 = v19;
    v28 = [v26 initWithAsset:v27 error:&v89];
    if (!v28)
    {
      v32 = v89.value;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100003CBC(v95, &qword_1002D4E70);
      goto LABEL_29;
    }

    v29 = v28;
    v30 = v89.value;

    *(v23 + 16) = v29;
    sub_1000DBBAC(v95, &v93);
    if (v94)
    {
      sub_100015FD0(&v93, &v89);
      v31 = v29;
      if ((v22 & 1) == 0)
      {
        v75 = v4;
        v39 = [v31 asset];
        v40 = [v39 rc_audioTracksPreferringSpatial];

        v76 = sub_1000067AC(0, &qword_1002D0440);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v90;
        v42 = v91;
        sub_10000AACC(&v89, v90);
        v43 = (*(v42 + 8))(v20, v41, v42, v21);

        v87 = v43;
        sub_100014B64(&v89);
        goto LABEL_24;
      }

      sub_100014B64(&v89);
    }

    else
    {
      v33 = v29;
      sub_100003CBC(&v93, &qword_1002D4E70);
    }

    v34 = [v29 asset];
    v35 = [v34 rc_audioTracks];

    v76 = sub_1000067AC(0, &qword_1002D0440);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = [objc_allocWithZone(AVMutableAudioMix) init];

    sub_1000D1000(v20, v36);
    v75 = v4;

    sub_1000067AC(0, &qword_1002CEB78);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v37 setInputParameters:isa];

    v87 = v37;
LABEL_24:
    sub_1000C773C(&unk_1002D1E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100242460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v45;
    *(inited + 72) = &type metadata for UInt32;
    *(inited + 48) = 1819304813;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v46;
    *(inited + 120) = &type metadata for Double;
    *(inited + 96) = v14;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v47;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = epoch;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v48;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v49;
    *(inited + 264) = &type metadata for Int;
    *(inited + 240) = 32;
    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v50;
    v51 = v84 ^ 1;
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = v51;
    sub_1000D40DC(inited);
    swift_setDeallocating();
    sub_1000C773C(&qword_1002CEC90);
    swift_arrayDestroy();
    v52 = objc_allocWithZone(AVAssetReaderAudioMixOutput);
    sub_1000067AC(0, &qword_1002D0440);
    v53 = Array._bridgeToObjectiveC()().super.isa;

    v54 = Dictionary._bridgeToObjectiveC()().super.isa;

    v55 = [v52 initWithAudioTracks:v53 audioSettings:v54];

    v56 = v87;
    [v55 setAudioMix:v87];

    v57 = v55;
    if ([v29 canAddOutput:v57])
    {
      v58 = v80;
      v59 = v80 & 1;

      [v29 addOutput:v57];
      *(v23 + 24) = v57;
      v60 = v83;
      static AudioBufferList.allocate(maximumBuffers:)();
      (*(v78 + 32))(v23 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_utilityBufferList, v60, v79);
      v61 = v81;
      v62 = v82;
      *(v23 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex) = v82;
      v63 = v77;
      *v77 = v61;
      *(v63 + 8) = v59;
      sub_1000DBBAC(v95, v23 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_audioMixProvider);
      if ((v58 & 1) == 0)
      {
        if (__OFSUB__(v61, v62))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v14 <= -2147483650.0)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
        }

        if (v14 >= 2147483650.0)
        {
          goto LABEL_54;
        }

        v67 = CMTime.init(value:timescale:)(v61 - v62, v14);
        value = v67.value;
        timescale = v67.timescale;
        v65 = HIDWORD(*&v67.timescale);
LABEL_36:
        if (v14 > -2147483650.0)
        {
          if (v14 < 2147483650.0)
          {
            v69 = *(v23 + 16);
            epoch = v67.epoch;
            v70 = v23;
            v71 = v65;
            v72 = v69;
            CMTimeMake(&v89, v62, v14);
            v90 = value;
            v91 = __PAIR64__(v71, timescale);
            v92 = epoch;
            [v72 setTimeRange:&v89];

            [*(v70 + 16) setPreparesMediaDataForRealTimeConsumption:1];
            if ([*(v70 + 16) startReading])
            {
              sub_100003CBC(v95, &qword_1002D4E70);
              *(v5 + 104) = v70;
            }

            else
            {
              v73 = *(v70 + 16);
              if ([v73 error])
              {
              }

              else
              {
                sub_1000DBB58();
                swift_allocError();
                *v74 = v73;
                *(v74 + 8) = 0xD00000000000008ALL;
                *(v74 + 16) = 0x800000010022DFA0;
                *(v74 + 24) = 1;
              }

              swift_willThrow();
              sub_100003CBC(v95, &qword_1002D4E70);
            }

            return;
          }

          goto LABEL_50;
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        value = kCMTimePositiveInfinity.value;
        timescale = kCMTimePositiveInfinity.timescale;
        LODWORD(v65) = kCMTimePositiveInfinity.flags;
        v67.epoch = kCMTimePositiveInfinity.epoch;
        goto LABEL_36;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1000DBB58();
    swift_allocError();
    *v68 = v29;
    *(v68 + 8) = v57;
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    swift_willThrow();

    sub_100003CBC(v95, &qword_1002D4E70);
LABEL_29:

    swift_deallocPartialClassInstance();
    return;
  }

  if (*(v3 + 112) != a2)
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_16;
  }
}

uint64_t sub_1000DA040(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v9 = __chkstk_darwin(v7, v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 40);
  v14 = 8;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = *(v4 + 32);
  if (v15 != *(a1 + v14))
  {
    return 0;
  }

  v96 = v10;
  v97 = a1;
  v16 = v9;
  if (!*(v4 + 104))
  {
    sub_1000D95C8(0, 0, 1);
    if (v3)
    {
      goto LABEL_8;
    }

    if (!*(v4 + 104))
    {
      return 0;
    }
  }

  sub_1000DB228(v97, a2);
  if (!v3)
  {
    v32 = v17;

    return v32;
  }

LABEL_8:
  v98 = v3;
  swift_errorRetain();
  sub_1000C773C(&qword_1002D5540);
  if (!swift_dynamicCast())
  {
  }

  v95 = a2;
  v18 = v106;
  if (v109 != 3)
  {
    sub_1000DBC1C(v106, v107, v108, v109);
  }

  v81 = v16;
  v94 = 0;
  v90 = v107;
  v91 = v108;

  v92 = *(v4 + 16);
  v19 = *(v4 + 24);
  v86 = *&v18[OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex];
  v84 = *&v18[OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_endTime];
  v83 = v18[OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_endTime + 8];
  v20 = *(v4 + 48);
  v21 = *(v4 + 56);
  LODWORD(v85) = *(v4 + 60);
  sub_1000DBBAC(v4 + 64, v105);
  v88 = type metadata accessor for AudioAssetReaderOutput();
  v22 = swift_allocObject();
  v89 = v18;
  v23 = v22;
  v24 = (v22 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer);
  *v24 = 0;
  v24[1] = 0;
  v87 = v24;
  v25 = v22 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_endTime;
  *v25 = 0;
  v82 = v25;
  *(v25 + 8) = 1;
  v26 = objc_allocWithZone(AVAssetReader);
  v99.value = 0;
  v93 = v20;

  v27 = v92;
  v28 = [v26 initWithAsset:v27 error:&v99];
  if (!v28)
  {
    v34 = v99.value;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1000DBC1C(v89, v90, v91, 3);
    sub_100003CBC(v105, &qword_1002D4E70);
LABEL_27:

    swift_deallocPartialClassInstance();
  }

  v29 = v28;
  v30 = v99.value;

  v92 = v23;
  v23[2] = v29;
  sub_1000DBBAC(v105, &v103);
  v80 = v29;
  if (!v104)
  {
    v35 = v29;
    sub_100003CBC(&v103, &qword_1002D4E70);
    goto LABEL_20;
  }

  sub_100015FD0(&v103, &v99);
  v31 = v29;
  if (v85)
  {
    sub_100014B64(&v99);
LABEL_20:
    v36 = [v29 asset];
    v37 = [v36 rc_audioTracks];

    v85 = sub_1000067AC(0, &qword_1002D0440);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = [objc_allocWithZone(AVMutableAudioMix) init];

    v40 = v94;
    sub_1000D1000(v93, v38);
    v94 = v40;
    v79 = v38;

    sub_1000067AC(0, &qword_1002CEB78);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 setInputParameters:isa];

    v93 = v39;
    goto LABEL_22;
  }

  v42 = [v31 asset];
  v43 = [v42 rc_audioTracksPreferringSpatial];

  v85 = sub_1000067AC(0, &qword_1002D0440);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v100;
  v45 = v101;
  sub_10000AACC(&v99, v100);
  v46 = (*(v45 + 8))(v93, v44, v45, v21);

  v93 = v46;
  sub_100014B64(&v99);
LABEL_22:
  sub_1000C773C(&unk_1002D1E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100242460;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v48;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 48) = 1819304813;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v49;
  *(inited + 120) = &type metadata for Double;
  *(inited + 96) = v19;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v50;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v15;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v51;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v52;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = 32;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v53;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v13 ^ 1;
  sub_1000D40DC(inited);
  swift_setDeallocating();
  sub_1000C773C(&qword_1002CEC90);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(AVAssetReaderAudioMixOutput);
  sub_1000067AC(0, &qword_1002D0440);
  v55 = Array._bridgeToObjectiveC()().super.isa;

  v56 = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v54 initWithAudioTracks:v55 audioSettings:v56];

  v58 = v93;
  [v57 setAudioMix:v93];

  v59 = v57;
  v60 = v80;
  if (![v80 canAddOutput:v59])
  {
    sub_1000DBB58();
    swift_allocError();
    *v70 = v60;
    *(v70 + 8) = v59;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    swift_willThrow();

    sub_1000DBC1C(v89, v90, v91, 3);
    sub_100003CBC(v105, &qword_1002D4E70);

    goto LABEL_27;
  }

  [v60 addOutput:v59];
  v61 = v92;
  v92[3] = v59;
  static AudioBufferList.allocate(maximumBuffers:)();
  (*(v96 + 32))(v61 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_utilityBufferList, v12, v81);
  v62 = v86;
  *(v61 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex) = v86;
  v63 = v84;
  v64 = v82;
  *v82 = v84;
  v65 = v83;
  *(v64 + 8) = v83;
  sub_1000DBBAC(v105, v61 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_audioMixProvider);
  if (v65)
  {
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_44;
    }

    value = kCMTimePositiveInfinity.value;
    timescale = kCMTimePositiveInfinity.timescale;
    LODWORD(v68) = kCMTimePositiveInfinity.flags;
    epoch = kCMTimePositiveInfinity.epoch;
  }

  else
  {
    if (__OFSUB__(v63, v62))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v19 <= -2147483650.0)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    if (v19 >= 2147483650.0)
    {
      goto LABEL_49;
    }

    v110 = CMTime.init(value:timescale:)(v63 - v62, v19);
    value = v110.value;
    timescale = v110.timescale;
    epoch = v110.epoch;
    v68 = HIDWORD(*&v110.timescale);
  }

  if (v19 <= -2147483650.0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v19 >= 2147483650.0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v71 = v61[2];
  CMTimeMake(&v99, v86, v19);
  v100 = value;
  v101 = __PAIR64__(v68, timescale);
  v102 = epoch;
  [v71 setTimeRange:&v99];

  [v61[2] setPreparesMediaDataForRealTimeConsumption:1];
  if (![v61[2] startReading])
  {
    v75 = v61[2];
    v76 = [v75 error];
    v77 = v89;
    if (v76)
    {
    }

    else
    {
      sub_1000DBB58();
      swift_allocError();
      *v78 = v75;
      *(v78 + 8) = 0xD00000000000008ALL;
      *(v78 + 16) = 0x800000010022DFA0;
      *(v78 + 24) = 1;
    }

    swift_willThrow();
    sub_1000DBC1C(v77, v90, v91, 3);
    sub_100003CBC(v105, &qword_1002D4E70);
  }

  sub_100003CBC(v105, &qword_1002D4E70);
  *(v4 + 104) = v61;

  v72 = v94;
  sub_1000DB228(v97, v95);
  v74 = v73;
  sub_1000DBC1C(v89, v90, v91, 3);

  if (v72)
  {
  }

  return v74;
}

uint64_t sub_1000DABBC()
{

  sub_100003CBC(v0 + 64, &qword_1002D4E70);

  return swift_deallocClassInstance();
}

unint64_t sub_1000DAC40(void *a1, void *a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      _StringGuts.grow(_:)(36);

      strcpy(v31, "AVAssetReader ");
      HIBYTE(v31[1]) = -18;
      v7 = [a1 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._object = 0x800000010022E0C0;
      v12._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v12);
      v13 = [a2 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);
LABEL_18:

      return v31[0];
    }

    _StringGuts.grow(_:)(42);

    strcpy(v31, "AVAssetReader ");
    HIBYTE(v31[1]) = -18;
    v20 = [a1 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x2064656C69616620;
    v25._object = 0xEA0000000000202DLL;
    String.append(_:)(v25);
    if (a3)
    {
      v26 = a2;
    }

    else
    {
      v26 = 0x206E776F6E6B6E75;
    }

    if (a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = 0xED0000726F727265;
    }

    v28 = v27;
    String.append(_:)(*&v26);

    v29._countAndFlagsBits = 0x737574617473202CLL;
    v29._object = 0xEC000000203D3D20;
    String.append(_:)(v29);
    [a1 status];
LABEL_17:
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);
    goto LABEL_18;
  }

  if (a4 == 2)
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v18._countAndFlagsBits = 0xD000000000000040;
    v18._object = 0x800000010022E070;
    String.append(_:)(v18);
    goto LABEL_17;
  }

  if (a4 == 3)
  {
    return 0xD00000000000003ELL;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t sub_1000DAF7C()
{
  v1 = v0;
  v2 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_utilityBufferList;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_utilityBufferList, v2);
  v8 = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.getter();
  v9 = *(v3 + 8);
  v9(v6, v2);
  free(v8);

  v9((v1 + v7), v2);
  sub_100003CBC(v1 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_audioMixProvider, &qword_1002D4E70);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioAssetReaderOutput()
{
  result = qword_1002CF220;
  if (!qword_1002CF220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DB15C()
{
  result = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000DB228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnsafeMutableAudioBufferListPointer.init(_:)();
  if (a2 < 1)
  {
    v9 = 0;
LABEL_38:
    (*(v54 + 8))(v8, v55);
    v51 = *(v3 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex);
    v50 = __OFADD__(v51, v9);
    v52 = v51 + v9;
    if (!v50)
    {
      *(v3 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_readIndex) = v52;
      return;
    }
  }

  else
  {
    v9 = 0;
    v10 = (v2 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer);
    v65 = OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_utilityBufferList;
    v56 = (v2 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer);
    v57 = a2;
    while (1)
    {
      v11 = *v10;
      if (*v10)
      {
        v61 = v10[1];
        v12 = v11;
        v13 = a2 - v9;
        if (__OFSUB__(a2, v9))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v14 = v58;
        sub_1000DB6EC();
        v58 = v14;
        if (v14)
        {
          goto LABEL_41;
        }

        v12 = v15;
        if (!v15)
        {
          goto LABEL_38;
        }

        v61 = 0;
        v13 = a2 - v9;
        if (__OFSUB__(a2, v9))
        {
          goto LABEL_48;
        }
      }

      v16 = v11;
      v17 = CMSampleBufferRef.numSamples.getter();
      if (__OFSUB__(v17, v61))
      {
        goto LABEL_49;
      }

      if (v17 - v61 < v13)
      {
        v13 = v17 - v61;
      }

      UnsafeMutableAudioBufferListPointer.count.getter();
      UnsafeMutableAudioBufferListPointer.count.setter();
      v18 = UnsafeMutableAudioBufferListPointer.count.getter();
      if (v18 < 0)
      {
        break;
      }

      v19 = v18;
      v59 = v12;
      v60 = v13;
      v63 = v9;
      v20 = v3;
      if (v18)
      {
        v21 = 0;
        v22 = 4 * v60;
        v62 = (v60 - 0x2000000000000000) >> 62;
        do
        {
          v23 = UnsafeMutableAudioBufferListPointer.subscript.read();
          v25 = v24;
          v23(v64, 0);
          if (v25)
          {
            v26 = v8;
            v27 = UnsafeMutableAudioBufferListPointer.subscript.read();
            v29 = v28;
            v27(v64, 0);
            v30 = UnsafeMutableAudioBufferListPointer.subscript.modify();
            *v31 = v29;
            v30(v64, 0);
            v32 = v63 * v29;
            if ((v63 * v29) >> 64 != v32 >> 63)
            {
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if ((v32 - 0x2000000000000000) >> 62 != 3)
            {
              goto LABEL_43;
            }

            v33 = v25 + 4 * v32;
            v34 = UnsafeMutableAudioBufferListPointer.subscript.modify();
            *(v35 + 8) = v33;
            v34(v64, 0);
            if (v62 < 3)
            {
              goto LABEL_44;
            }

            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            if (HIDWORD(v22))
            {
              goto LABEL_46;
            }

            v36 = v22 * v29;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_47;
            }

            v37 = UnsafeMutableAudioBufferListPointer.subscript.modify();
            *(v38 + 4) = v36;
            v37(v64, 0);
            v8 = v26;
          }

          ++v21;
        }

        while (v19 != v21);
      }

      v3 = v20;
      v39 = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.getter();
      v40 = v61;
      if (v61 > 0x7FFFFFFF)
      {
        goto LABEL_51;
      }

      v41 = v60;
      if (v61 < 0xFFFFFFFF80000000 || v60 < 0xFFFFFFFF80000000)
      {
        goto LABEL_52;
      }

      if (v60 > 0x7FFFFFFF)
      {
        goto LABEL_53;
      }

      v42 = v39;
      v43 = v59;
      v44 = v59;
      v45 = CMSampleBufferCopyPCMDataIntoAudioBufferList(v44, v40, v41, v42);
      if (v45 != noErr.getter())
      {

        sub_1000DBB58();
        swift_allocError();
        *(v53 + 8) = 0;
        *(v53 + 16) = 0;
        *v53 = v45;
        *(v53 + 24) = 2;
        swift_willThrow();

LABEL_41:
        (*(v54 + 8))(v8, v55);
        return;
      }

      v46 = CMSampleBufferRef.numSamples.getter();

      if (__OFSUB__(v46, v40))
      {
        goto LABEL_54;
      }

      if (v41 >= v46 - v40)
      {

        v43 = 0;
        v47 = 0;
      }

      else
      {
        v47 = (v41 + v40);
      }

      v10 = v56;
      a2 = v57;
      v48 = v63;
      v49 = *v56;
      *v56 = v43;
      v10[1] = v47;

      v50 = __OFADD__(v48, v41);
      v9 = v48 + v41;
      if (v50)
      {
        goto LABEL_55;
      }

      if (v9 >= a2)
      {
        goto LABEL_38;
      }
    }

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
LABEL_55:
    __break(1u);
  }

  __break(1u);
}

void sub_1000DB6EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemosP33_670AC8C44BA3A495872081F24B9BC51622AudioAssetReaderOutput_partialSampleBuffer + 8);
    type metadata accessor for CMSampleBuffer(0);
    v3 = v1;
    if (CMSampleBufferRef.numSamples.getter() < v2)
    {
      __break(1u);
    }

    else
    {
      _CMSampleBufferInitTrampoline.init(copying:forRange:)();
    }
  }

  else if (![*(v0 + 24) copyNextSampleBuffer])
  {
    v4 = *(v0 + 16);
    if ([v4 status] != 2)
    {
      v5 = [v4 error];
      if (v5)
      {
        v6 = v5;
        if ([v5 code] == -11847)
        {
          sub_1000DBB58();
          swift_allocError();
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = v0;
          *(v7 + 24) = 3;
          swift_willThrow();

          return;
        }
      }

      if ([v4 status] == 4)
      {
        sub_1000DBB58();
        swift_allocError();
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v8 + 24) = 4;
      }

      else if (![v4 error])
      {
        sub_1000DBB58();
        swift_allocError();
        *v9 = v4;
        *(v9 + 8) = 0xD000000000000039;
        *(v9 + 16) = 0x800000010022DF60;
        *(v9 + 24) = 1;
        v10 = v4;
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_1000DB91C(uint64_t a1, int a2)
{
  result = sub_1000DA040(a1, a2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result > 0x7FFFFFFF)
  {
    __break(1u);

    return 0;
  }

  return result;
}

uint64_t sub_1000DBB0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DBB58()
{
  result = qword_1002CF348;
  if (!qword_1002CF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF348);
  }

  return result;
}

uint64_t sub_1000DBBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D4E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DBC1C(void *a1, void *a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 3:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

uint64_t sub_1000DBCD0(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 sub_1000DBCEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000DBD00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000DBD48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1000DBD90(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000DBDC0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = *a2;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBE60, v5, v4);
}

uint64_t sub_1000DBE60()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    IntentParameter.wrappedValue.getter();
    sub_1000DBF70();
  }

  v3 = *(v0 + 56);
  v3[3] = sub_1000C773C(&qword_1002D37B0);
  v3[4] = sub_1000DC510();
  sub_100015800(v3);
  static IntentResult.result<>()();
  v4 = *(v0 + 8);

  return v4();
}

void sub_1000DBF70()
{
  v1 = [v0 libraryActionHandler];
  if (v1)
  {
    if ([v1 isRecording])
    {
      sub_1000DC574();
      swift_allocError();
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = [v0 searchController];
      [v7 setActive:1];

      v8 = [v0 searchController];
      v9 = [v8 searchBar];

      v10 = String._bridgeToObjectiveC()();
      [v9 setText:v10];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100018D90(v2, qword_1002E8CB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10001901C(0xD000000000000016, 0x800000010022E1C0, &v11);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Unable to search recordings. libraryActionHandler is nil.", v5, 0xCu);
      sub_100014B64(v6);
    }
  }
}

uint64_t RCRecordingsCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recordingsDataCoordinator];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v3 recordingAtIndexPath:isa];

  if (v5 && (sub_100147558(v11), v6 = v11[1], v5, v6))
  {
    sub_1000DC3A4();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    EntityIdentifier.init<A>(for:)();
    sub_1000DC3F8(v11);

    v7 = type metadata accessor for EntityIdentifier();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for EntityIdentifier();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

unint64_t sub_1000DC3A4()
{
  result = qword_1002CF480;
  if (!qword_1002CF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF480);
  }

  return result;
}

uint64_t sub_1000DC3F8(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CF488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DC464(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002001C;

  return sub_1000DBDC0(a1, a2, v2);
}

unint64_t sub_1000DC510()
{
  result = qword_1002CF7E0;
  if (!qword_1002CF7E0)
  {
    sub_1000C7784(&qword_1002D37B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7E0);
  }

  return result;
}

unint64_t sub_1000DC574()
{
  result = qword_1002CF4A8;
  if (!qword_1002CF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF4A8);
  }

  return result;
}

Swift::Int sub_1000DC5C8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000DC624()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000DC660()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000DC6E4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 57) = v1 ^ 1;
  }

  return result;
}

uint64_t sub_1000DC73C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000DC794(void *a1)
{
  v2 = v1;
  v38 = a1;
  v37 = sub_1000C773C(&qword_1002CF698);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37, v3);
  v33 = &v29 - v4;
  v36 = sub_1000C773C(&qword_1002CF6A0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36, v5);
  v32 = &v29 - v6;
  v7 = sub_1000C773C(&qword_1002CF6A8);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *(v2 + 32) = v16;
  *(v2 + 40) = _swiftEmptyArrayStorage;
  *(v2 + 48) = sub_100007C50(_swiftEmptyArrayStorage);
  *(v2 + 56) = 0;
  AttributedString.init()();
  type metadata accessor for RCRecordButtonViewModel();
  v17 = swift_allocObject();
  *(v17 + 18) = 3;
  *(v17 + 48) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 56) = 1;
  ObservationRegistrar.init()();
  *(v17 + 16) = 0;
  *(v17 + 18) = 3;

  *(v17 + 24) = 0;

  *(v17 + 32) = 0;
  *(v17 + 40) = _swiftEmptyArrayStorage;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 57) = 0;
  (*(v12 + 32))(v17 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel, v15, v11);
  *(v17 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) = 0;
  v18 = v38;
  *(v2 + 16) = v17;
  *(v2 + 24) = v18;
  v19 = v18;
  sub_100008FA4();
  *&v39 = *&v19[OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonRepository_modelSubject];
  sub_1000C773C(&qword_1002CF6B0);
  v38 = &unk_10024E118;
  sub_100008034(&qword_1002CF6B8, &qword_1002CF6B0);
  sub_1000098A0();
  Publisher<>.removeDuplicates()();
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v42 = 2;
  sub_1000C773C(&qword_1002CF6C8);
  sub_100008034(&qword_1002CF6D0, &qword_1002CF6A8);
  v20 = v33;
  v21 = v31;
  Publisher.scan<A>(_:_:)();
  sub_1000C773C(&qword_1002CF6D8);
  sub_100008034(&qword_1002CF6E0, &qword_1002CF698);
  v22 = v32;
  v23 = v37;
  Publisher.compactMap<A>(_:)();
  (*(v35 + 8))(v20, v23);
  sub_100008034(&qword_1002CF6E8, &qword_1002CF6A0);
  v24 = v36;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v34 + 8))(v22, v24);
  (*(v30 + 8))(v10, v21);
  *&v39 = v25;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1000081A8;
  *(v27 + 24) = v26;

  sub_1000C773C(&qword_1002CF6F0);
  sub_100008034(&qword_1002CF6F8, &qword_1002CF6F0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  *&v39 = *&v19[OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonRepository_animationsAreDisabledSubject];
  swift_allocObject();
  swift_weakInit();

  sub_1000C773C(&qword_1002CF700);
  sub_100008034(&qword_1002CF708, &qword_1002CF700);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000DD030()
{
  v0 = sub_1000C773C(&qword_1002CF728);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Tips.UsesConstellation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002CF730);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v18 - v13;
  Tips.UsesConstellation.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v18 = v5;
  v19 = &protocol witness table for Tips.UsesConstellation;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_1000DD2D4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000DD2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v49 = type metadata accessor for Material._GlassVariant();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Material();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C773C(&qword_1002CF738);
  __chkstk_darwin(v11, v12);
  v14 = &v42 - v13;
  v46 = sub_1000C773C(&qword_1002CF740);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46, v15);
  v17 = &v42 - v16;
  v18 = sub_1000C773C(&qword_1002CF748);
  __chkstk_darwin(v18, v19);
  v21 = &v42 - v20;
  v51 = sub_1000C773C(&qword_1002CF750);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51, v22);
  v24 = &v42 - v23;
  v52 = sub_1000C773C(&qword_1002CF758);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52, v25);
  v43 = &v42 - v26;
  *(&v58 + 1) = &type metadata for MultitrackTip;
  *&v59 = sub_1000DD994();
  *&v57 = a1;
  *(&v57 + 1) = a2;

  TipView.init<>(_:isPresented:arrowEdge:action:)();
  static Color.black.getter();
  v27 = Color.opacity(_:)();

  v28 = &v14[*(v11 + 36)];
  *v28 = v27;
  v28[1] = 0x4020000000000000;
  v28[2] = 0;
  v28[3] = 0;
  static Material._GlassVariant.regular.getter();
  static Material._glass(_:)();
  (*(v48 + 8))(v7, v49);
  sub_1000DD9E8();
  v29 = v45;
  View.tipBackground<A>(_:)();
  (*(v47 + 8))(v10, v29);
  sub_1000DDAA0(v14);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v44 + 32))(v21, v17, v46);
  v30 = &v21[*(v18 + 36)];
  v31 = v62;
  *(v30 + 4) = v61;
  *(v30 + 5) = v31;
  *(v30 + 6) = v63;
  v32 = v58;
  *v30 = v57;
  *(v30 + 1) = v32;
  v33 = v60;
  *(v30 + 2) = v59;
  *(v30 + 3) = v33;
  v34 = sub_1000DDB08();
  View.tipImageSize(_:)();
  sub_10002D238(v21);
  static Font.Weight.medium.getter();
  v55 = v18;
  v56 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  v36 = v51;
  View.fontWeight(_:)();
  (*(v53 + 8))(v24, v36);
  v37 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v39 = v54;
  (*(v50 + 32))(v54, v35, v52);
  result = sub_1000C773C(&qword_1002CF780);
  v41 = (v39 + *(result + 36));
  *v41 = KeyPath;
  v41[1] = v37;
  return result;
}

unint64_t sub_1000DD940()
{
  result = qword_1002CF720;
  if (!qword_1002CF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF720);
  }

  return result;
}

unint64_t sub_1000DD994()
{
  result = qword_1002D1C10;
  if (!qword_1002D1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1C10);
  }

  return result;
}

unint64_t sub_1000DD9E8()
{
  result = qword_1002CF760;
  if (!qword_1002CF760)
  {
    sub_1000C7784(&qword_1002CF738);
    sub_100008034(&qword_1002CF768, &qword_1002CF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF760);
  }

  return result;
}

uint64_t sub_1000DDAA0(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CF738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DDB08()
{
  result = qword_1002CF778;
  if (!qword_1002CF778)
  {
    sub_1000C7784(&qword_1002CF748);
    sub_1000C7784(&qword_1002CF738);
    type metadata accessor for Material();
    sub_1000DD9E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF778);
  }

  return result;
}

unint64_t sub_1000DDBF0()
{
  result = qword_1002CF788;
  if (!qword_1002CF788)
  {
    sub_1000C7784(&qword_1002CF780);
    sub_1000C7784(&qword_1002CF750);
    sub_1000C7784(&qword_1002CF748);
    sub_1000DDB08();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002CF790, &unk_1002CF798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF788);
  }

  return result;
}

uint64_t sub_1000DDD30(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = a1;
  v2[3] = v3;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v5;
  v2[6] = v4;

  return _swift_task_switch(sub_1000DDDCC, v5, v4);
}

uint64_t sub_1000DDDCC()
{
  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v0[7] = v4, v3, v4))
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1000DDF44;
    v6 = v0[3];

    return sub_1001946F4(v6, v4);
  }

  else
  {

    sub_1000E454C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000DDF44()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1000DE154;
  }

  else
  {
    v5 = sub_1000DE080;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000DE080()
{
  v1 = v0[7];
  v2 = v0[2];

  v2[3] = sub_1000C773C(&qword_1002D37B0);
  v2[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v2);
  static IntentResult.result<>()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000DE154()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DE1C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v5 = type metadata accessor for ConfirmationActionName();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for ConfirmationConditions();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[23] = v8;
  v3[24] = v9;
  type metadata accessor for MainActor();
  v3[25] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[26] = v11;
  v3[27] = v10;

  return _swift_task_switch(sub_1000DE3A0, v11, v10);
}

uint64_t sub_1000DE3A0()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[8];
  v0[28] = v1;
  v2 = IntentParameter.projectedValue.getter();
  v0[29] = v2;
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1000DE46C;

  return (sub_10015B718)(v1, v2);
}

uint64_t sub_1000DE46C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_1000DE5D4, v4, v3);
}

uint64_t sub_1000DE5D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_1000E454C();
    swift_allocError();
    *v3 = 0;
LABEL_4:
    swift_willThrow();

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = sub_1000DEEB4(*(v0 + 248));
  *(v0 + 256) = v2;
  v6 = v2;

  v7 = [objc_opt_self() sharedSettingsUserDefaults];
  if (!v7)
  {

    sub_1000E45A0();
    swift_allocError();
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v7 rc_deletionIsImmediate];

  if (v9)
  {
    v10 = *(v0 + 192);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x800000010022E8D0;
    v11._countAndFlagsBits = 0xD000000000000019;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 72) = *(v6 + 16);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    IntentDialog.init(stringInterpolation:)();
    *(v0 + 80) = v10;
    *(v0 + 88) = _swiftEmptyArrayStorage;
    sub_1000E45F4();
    sub_1000C773C(&qword_1002CF808);
    sub_100008034(&qword_1002CF810, &qword_1002CF808);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static ConfirmationActionName.continue.getter();
    v13 = swift_task_alloc();
    *(v0 + 264) = v13;
    v14 = sub_100012C70();
    *v13 = v0;
    v13[1] = sub_1000DEA28;
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);

    return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v16, v17, v15, &type metadata for DeleteRecording, v14);
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_1000DF21C(v6);
  }

  else
  {
  }

  v20 = *(v0 + 96);
  v20[3] = sub_1000C773C(&qword_1002D37B0);
  v20[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v20);
  static IntentResult.result<>()();

  v4 = *(v0 + 8);
LABEL_5:

  return v4();
}

uint64_t sub_1000DEA28()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[18];
    v3 = v2[19];
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[14];
    v8 = v2[15];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v9 = v2[26];
    v10 = v2[27];
    v11 = sub_1000DED54;
  }

  else
  {
    v13 = v2[18];
    v12 = v2[19];
    v14 = v2[17];
    (*(v2[15] + 8))(v2[16], v2[14]);
    (*(v13 + 8))(v12, v14);
    v9 = v2[26];
    v10 = v2[27];
    v11 = sub_1000DEBCC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000DEBCC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  v4 = [objc_opt_self() sharedRecordingsModelInteractor];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 eraseRecordingsWithUUIDs:isa];

  (*(v2 + 8))(v1, v3);
  v6 = v0[12];
  v6[3] = sub_1000C773C(&qword_1002D37B0);
  v6[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v6);
  static IntentResult.result<>()();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000DED54()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DEE08(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001FF1C;

  return sub_1000DE1C0(a1, a2, v2);
}

void *sub_1000DEEB4(void *a1)
{
  v2 = v1;
  v4 = [v2 mainViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 recordingInProgressUUID];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = a1[2];
      if (v11)
      {
        v30 = v5;
        v12 = 0;
        v13 = a1 + 5;
        a1 = _swiftEmptyArrayStorage;
        v29 = v13;
        do
        {
          v14 = &v13[2 * v12];
          v15 = v12;
          while (1)
          {
            if (v15 >= v11)
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v12 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_32;
            }

            v16 = *(v14 - 1);
            v17 = *v14;
            v18 = v16 == v8 && v17 == v10;
            if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            ++v15;
            v14 += 2;
            if (v12 == v11)
            {
              goto LABEL_24;
            }
          }

          v31 = a1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001AE5F4(0, a1[2] + 1, 1);
            a1 = v31;
          }

          v20 = a1[2];
          v19 = a1[3];
          v21 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            sub_1001AE5F4((v19 > 1), v20 + 1, 1);
            v21 = v20 + 1;
            a1 = v31;
          }

          a1[2] = v21;
          v22 = &a1[2 * v20];
          v22[4] = v16;
          v22[5] = v17;
          v13 = v29;
        }

        while (v12 != v11);
LABEL_24:

        v5 = v30;
        if (v11 == 1 && !a1[2])
        {

          sub_1000E4F88();
          swift_allocError();
          swift_willThrow();

          return a1;
        }
      }

      else
      {

        a1 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
LABEL_33:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100018D90(v23, qword_1002E8CB0);
    v24 = Logger.logObject.getter();
    a1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, a1))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10001901C(0xD000000000000032, 0x800000010022E910, &v31);
      _os_log_impl(&_mh_execute_header, v24, a1, "%s Unable to delete folders. RCMainViewController is nil.", v25, 0xCu);
      sub_100014B64(v26);
    }

    sub_1000E454C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  return a1;
}

void sub_1000DF21C(uint64_t a1)
{
  v3 = [v1 mainViewController];
  if (v3)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = a1 + 40;
    v11 = v3;
    do
    {

      v6 = String._bridgeToObjectiveC()();

      [v11 performAction:14 atPosition:v6 forUUID:0 sourceController:0 source:0.0];

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100018D90(v7, qword_1002E8CB0);
    v11 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001901C(0xD000000000000018, 0x800000010022E8F0, &v12);
      _os_log_impl(&_mh_execute_header, v11, v8, "%s Unable to delete recordings. RCMainViewController is nil.", v9, 0xCu);
      sub_100014B64(v10);
    }
  }

  v3 = v11;
LABEL_11:
}

uint64_t sub_1000DF3F8(uint64_t a1, _OWORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = *a2;
  type metadata accessor for MainActor();
  *(v2 + 80) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 88) = v4;
  *(v2 + 96) = v3;

  return _swift_task_switch(sub_1000DF498, v4, v3);
}

uint64_t sub_1000DF498()
{
  sub_1000DF818(v0 + 2);
  v1 = sub_10000AACC(v0 + 2, v0[5]);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1000DF59C;
  v6 = v0[8];
  v5 = v0[9];

  return sub_100197BA8(v6, v5, v3, v2);
}

uint64_t sub_1000DF59C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000DF7AC;
  }

  else
  {
    v5 = sub_1000DF6D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000DF6D8()
{
  v1 = *(v0 + 56);

  v1[3] = sub_1000C773C(&qword_1002D37B0);
  v1[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v1);
  static IntentResult.result<>()();
  sub_100014B64(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DF7AC()
{

  sub_100014B64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000DF818(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedAppDelegate];
  if (v2 && (v3 = v2, v4 = [v2 defaultSceneDelegate], v3, v4) && (v5 = objc_msgSend(v4, "mainViewController"), v4, v5))
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 sharedApplicationModel];
    a1[3] = &type metadata for RCPlayRecordingIntentPerformer;
    a1[4] = &off_1002954E8;

    *a1 = v7;
    a1[1] = v8;
  }

  else
  {
    sub_1000E454C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000DF934(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DF9D4, v5, v4);
}

uint64_t sub_1000DF9D4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    IntentParameter.wrappedValue.getter();
    sub_1000E4998();
  }

  v3 = *(v0 + 80);
  v3[3] = sub_1000C773C(&qword_1002D37B0);
  v3[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v3);
  static IntentResult.result<>()();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DFB3C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001FF1C;

  return sub_1000DF934(a1, a2, v2);
}

uint64_t sub_1000DFBE8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  v5 = type metadata accessor for ChangeOperation();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = *a2;
  type metadata accessor for MainActor();
  *(v3 + 96) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFCE8, v7, v6);
}

uint64_t sub_1000DFCE8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 72);
    IntentParameter.wrappedValue.getter();
    v4 = *(v0 + 104);
    IntentParameter.wrappedValue.getter();
    sub_1000DFF0C(v4, v3);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v5 = *(v0 + 40);
  v5[3] = sub_1000C773C(&qword_1002D37B0);
  v5[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v5);
  static IntentResult.result<>()();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DFE60(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001FF1C;

  return sub_1000DFBE8(a1, a2, v2);
}

void sub_1000DFF0C(int a1, uint64_t a2)
{
  v5 = type metadata accessor for ChangeOperation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000C773C(&qword_1002CF830);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v45[-v12];
  v14 = [v2 mainViewController];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [v14 selectedUUID];
  if (!v16)
  {

LABEL_8:
    sub_1000E4EE0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  v17 = v16;
  v52 = a1;
  v53[2] = &OBJC_PROTOCOL___RCPlaybackSettingsDelegate;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {

    goto LABEL_8;
  }

  v19 = v18;
  v20 = v15;
  if ([v20 isRecording])
  {

    sub_1000E4EE0();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    return;
  }

  v49 = v20;

  v50 = [objc_opt_self() sharedRecordingsModelInteractor];
  v23 = [v50 isSpatialRecordingForUUID:v17];
  v51 = v6;
  v48 = *(v6 + 16);
  v48(v13, a2, v5);
  if (v52)
  {
    if (v52 != 1)
    {
      if (v23)
      {
        v28 = (*(v51 + 88))(v13, v5);
        if (v28 == enum case for ChangeOperation.disable(_:))
        {
          v25 = "setSpeechIsolatorEnabled:forUUID:";
          goto LABEL_21;
        }

        if (v28 == enum case for ChangeOperation.enable(_:))
        {
          v25 = "setSpeechIsolatorEnabled:forUUID:";
          goto LABEL_30;
        }

        if (v28 == enum case for ChangeOperation.toggle(_:))
        {
          [v19 toggleSpeechIsolatorEnabledForUUID:v17];
          goto LABEL_32;
        }

        goto LABEL_40;
      }

      sub_1000E4EE0();
      swift_allocError();
      v27 = 3;
LABEL_23:
      *v26 = v27;
      swift_willThrow();

      (*(v51 + 8))(v13, v5);
      return;
    }

    if (!v23)
    {
      v24 = (*(v51 + 88))(v13, v5);
      if (v24 == enum case for ChangeOperation.disable(_:))
      {
        v25 = "setRemoveSilence:forUUID:";
LABEL_21:
        v30 = v19;
        v31 = 0;
LABEL_31:
        [v30 v25];
LABEL_32:

LABEL_33:
        return;
      }

      if (v24 == enum case for ChangeOperation.enable(_:))
      {
        v25 = "setRemoveSilence:forUUID:";
LABEL_30:
        v30 = v19;
        v31 = 1;
        goto LABEL_31;
      }

      if (v24 == enum case for ChangeOperation.toggle(_:))
      {
        [v19 toggleRemoveSilenceForUUID:v17];
        goto LABEL_32;
      }

      goto LABEL_40;
    }

LABEL_15:

    sub_1000E4EE0();
    swift_allocError();
    v27 = 2;
    goto LABEL_23;
  }

  if (v23)
  {
    goto LABEL_15;
  }

  v29 = (*(v51 + 88))(v13, v5);
  if (v29 == enum case for ChangeOperation.disable(_:))
  {
    v25 = "setEnhanced:forUUID:";
    goto LABEL_21;
  }

  if (v29 == enum case for ChangeOperation.enable(_:))
  {
    v25 = "setEnhanced:forUUID:";
    goto LABEL_30;
  }

  if (v29 == enum case for ChangeOperation.toggle(_:))
  {
    [v19 toggleEnhanceRecordingForUUID:v17];

    goto LABEL_33;
  }

LABEL_40:

  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100018D90(v32, qword_1002E8CB0);
  v48(v9, a2, v5);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v46 = v34;
    v47 = v33;
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53[0] = v48;
    *v35 = 136315650;
    *(v35 + 4) = sub_10001901C(0xD000000000000029, 0x800000010022E880, v53);
    *(v35 + 12) = 2080;
    v36 = ChangeOperation.rawValue.getter();
    v38 = v37;
    v39 = *(v51 + 8);
    v39(v9, v5);
    v40 = sub_10001901C(v36, v38, v53);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    if (v52)
    {
      v41 = 0xEB00000000656369;
      if (v52 == 1)
      {
        v41 = 0xEB0000000065636ELL;
        v42 = 0x656C695370696B73;
      }

      else
      {
        v42 = 0x6F566F6964757473;
      }
    }

    else
    {
      v41 = 0x800000010022D240;
      v42 = 0xD000000000000010;
    }

    v43 = sub_10001901C(v42, v41, v53);

    *(v35 + 24) = v43;
    v44 = v47;
    _os_log_impl(&_mh_execute_header, v47, v46, "%s Unexpected change operation %s and / or setting %s", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v39 = *(v51 + 8);
    v39(v9, v5);
  }

  v39(v13, v5);
}

uint64_t sub_1000E068C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v5 = type metadata accessor for LocalizedStringResource();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[12] = v6;
  v3[13] = v7;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v9;
  v3[16] = v8;

  return _swift_task_switch(sub_1000E0788, v9, v8);
}

uint64_t sub_1000E0788()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[7];
  v0[17] = v1;
  v2 = IntentParameter.projectedValue.getter();
  v0[18] = v2;
  LocalizedStringResource.init(stringLiteral:)();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1000E0894;
  v4 = v0[12];

  return sub_1000E1FFC(v1, v2, v4, sub_1000E0FF4, 0);
}

uint64_t sub_1000E0894(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 160) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);

  return _swift_task_switch(sub_1000E0A60, v7, v6);
}

uint64_t sub_1000E0A60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_1000E2F5C(v0[20]);
    v0[21] = v2;
    v6 = v2;

    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_1000E0C0C;
    v8 = v0[13];

    return sub_1000E34E4(v8, v6);
  }

  else
  {

    sub_1000E454C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000E0C0C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1000E0EDC;
  }

  else
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1000E0D28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000E0D28()
{
  v1 = v0[21];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = objc_opt_self();
    v5 = v3 + 56;
    do
    {
      v5 += 40;

      v6 = [v4 sharedRecordingsModelInteractor];
      EntityProperty.wrappedValue.getter();
      v7 = String._bridgeToObjectiveC()();

      [v6 deleteUserFolderWithName:v7];

      --v2;
    }

    while (v2);
  }

  v8 = v0[8];

  v8[3] = sub_1000C773C(&qword_1002D37B0);
  v8[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v8);
  static IntentResult.result<>()();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E0EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E0F48(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001FF1C;

  return sub_1000E068C(a1, a2, v2);
}

uint64_t sub_1000E0FF4()
{
  EntityProperty.wrappedValue.getter();
  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000E1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_1000C773C(&qword_1002CF820);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v9;
  v5[21] = v8;

  return _swift_task_switch(sub_1000E11E8, v9, v8);
}

uint64_t sub_1000E11E8()
{
  v39 = v0;
  v1 = *(v0 + 80);

  v3 = sub_1000E46A0(v2, v1);
  *(v0 + 176) = v3;
  v10 = 0;
  v11 = *(v3 + 32);
  *(v0 + 232) = v11;
  v12 = 1 << v11;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v3 + 64);
  v9 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v0 + 224) = v9;
  while (v14)
  {
    v15 = *(v0 + 176);
LABEL_16:
    *(v0 + 184) = v14;
    *(v0 + 192) = v10;
    v17 = *(*(v15 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
    *(v0 + 200) = v17;
    v18 = v17[2];
    if (v18 >= 2)
    {
      v31 = *(v0 + 136);
      v30 = *(v0 + 144);
      v32 = *(v0 + 128);
      v33 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v31 + 16))(v33, v30, v32);
      (*(v31 + 56))(v33, 0, 1, v32);
      v34 = swift_task_alloc();
      *(v0 + 208) = v34;
      *v34 = v0;
      v34[1] = sub_1000E1658;
      v35 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v0 + 16, v17, v35);
    }

    v14 &= v14 - 1;
    if (v18)
    {
      v19 = v17[5];
      v36 = v17[4];
      v20 = v17[6];
      v21 = v17[7];
      v22 = v17[8];

      v37 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000F2648(0, *(v9 + 2) + 1, 1, v9);
      }

      v24 = *(v9 + 2);
      v23 = *(v9 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_1000F2648((v23 > 1), v24 + 1, 1, v9);
        v25 = v24 + 1;
        v9 = v27;
      }

      *(v9 + 2) = v25;
      v26 = &v9[40 * v24];
      *(v26 + 4) = v36;
      *(v26 + 5) = v19;
      *(v26 + 6) = v20;
      *(v26 + 7) = v21;
      *(v26 + 8) = v37;
      goto LABEL_9;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = *(v0 + 176);
    if (v16 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {

      goto LABEL_24;
    }

    v14 = *(v15 + 8 * v16 + 64);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_16;
    }
  }

  __break(1u);
  swift_once();
  v4 = type metadata accessor for Logger();
  sub_100018D90(v4, qword_1002E8CB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001901C(0xD000000000000066, 0x800000010022E810, &v38);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failed to map disambiguation key to entities list", v7, 0xCu);
    sub_100014B64(v8);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_24:

  v28 = *(v0 + 8);

  return v28(v9);
}

uint64_t sub_1000E1658()
{
  v2 = *v1;
  (*v1)[27] = v0;

  sub_1000E4E78(v2[12]);

  v3 = v2[21];
  v4 = v2[20];
  if (v0)
  {
    v5 = sub_1000E1BCC;
  }

  else
  {
    v5 = sub_1000E17C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000E17C8()
{
  v1 = v0 + 16;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 224);
  v42 = v2;
  v40 = v6;
  v9 = v5;
  v10 = v4;
  v11 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v8 = sub_1000F2648(0, *(v8 + 2) + 1, 1, v8);
  }

  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v39 = v1;
  if (v13 >= v12 >> 1)
  {
    v14 = sub_1000F2648((v12 > 1), v13 + 1, 1, v8);
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);

  (*(v15 + 8))(v16, v17);
  v18 = v14;
  *(v14 + 2) = v13 + 1;
  v1 = 40;
  v19 = &v14[40 * v13];
  *(v19 + 4) = v42;
  *(v19 + 5) = v11;
  *(v19 + 6) = v10;
  *(v19 + 7) = v9;
  *(v19 + 8) = v40;
  v20 = *(v0 + 192);
  v10 = (*(v0 + 184) - 1) & *(v0 + 184);
  *(v0 + 224) = v14;
  v11 = 1;
  while (v10)
  {
    v21 = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v10;
    *(v0 + 192) = v20;
    v23 = *(*(v21 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v10)))));
    *(v0 + 200) = v23;
    v24 = v23[2];
    if (v24 >= 2)
    {
      v34 = *(v0 + 136);
      v33 = *(v0 + 144);
      v35 = *(v0 + 128);
      v36 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v34 + 16))(v36, v33, v35);
      (*(v34 + 56))(v36, 0, 1, v35);
      v37 = swift_task_alloc();
      *(v0 + 208) = v37;
      *v37 = v0;
      v37[1] = sub_1000E1658;
      v38 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v39, v23, v38);
    }

    v10 &= v10 - 1;
    if (v24)
    {
      v25 = v23[5];
      v40 = v23[4];
      v26 = v23[6];
      v9 = v23[7];
      v27 = v23[8];

      v41 = v26;
      v42 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000F2648(0, *(v18 + 2) + 1, 1, v18);
      }

      v29 = *(v18 + 2);
      v28 = *(v18 + 3);
      if (v29 >= v28 >> 1)
      {
        v18 = sub_1000F2648((v28 > 1), v29 + 1, 1, v18);
      }

      *(v18 + 2) = v29 + 1;
      v30 = &v18[40 * v29];
      *(v30 + 4) = v40;
      *(v30 + 5) = v25;
      *(v30 + 6) = v41;
      *(v30 + 7) = v9;
      *(v30 + 8) = v27;
      *(v0 + 224) = v18;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v21 = *(v0 + 176);
    if (v22 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v10 = *(v21 + 8 * v22 + 64);
    ++v20;
    if (v10)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  v31 = *(v0 + 8);

  return v31(v18);
}

uint64_t sub_1000E1BCC()
{
  v33 = v0;
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  if (qword_1002CDD88 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100018D90(v1, qword_1002E8CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001901C(0xD000000000000066, 0x800000010022E810, &v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failed to disambiguate entities", v4, 0xCu);
    sub_100014B64(v5);
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = (*(v0 + 184) - 1) & *(v0 + 184);
  *(v0 + 224) = v6;
  while (v8)
  {
    v9 = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v8;
    *(v0 + 192) = v7;
    v11 = *(*(v9 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v8)))));
    *(v0 + 200) = v11;
    v12 = v11[2];
    if (v12 >= 2)
    {
      v26 = *(v0 + 136);
      v25 = *(v0 + 144);
      v27 = *(v0 + 128);
      v28 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v26 + 16))(v28, v25, v27);
      (*(v26 + 56))(v28, 0, 1, v27);
      v29 = swift_task_alloc();
      *(v0 + 208) = v29;
      *v29 = v0;
      v29[1] = sub_1000E1658;
      v30 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v0 + 16, v11, v30);
    }

    v8 &= v8 - 1;
    if (v12)
    {
      v14 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      v16 = v11[7];
      v17 = v11[8];

      v31 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000F2648(0, *(v6 + 2) + 1, 1, v6);
      }

      v19 = *(v6 + 2);
      v18 = *(v6 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = sub_1000F2648((v18 > 1), v19 + 1, 1, v6);
        v20 = v19 + 1;
        v6 = v22;
      }

      *(v6 + 2) = v20;
      v21 = &v6[40 * v19];
      *(v21 + 4) = v31;
      *(v21 + 5) = v13;
      *(v21 + 6) = v15;
      *(v21 + 7) = v16;
      *(v21 + 8) = v17;
      *(v0 + 224) = v6;
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v9 = *(v0 + 176);
    if (v10 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v9 + 8 * v10 + 64);
    ++v7;
    if (v8)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_1000E1FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_1000C773C(&qword_1002CF820);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v9;
  v5[21] = v8;

  return _swift_task_switch(sub_1000E218C, v9, v8);
}

uint64_t sub_1000E218C()
{
  v37 = v0;
  v1 = *(v0 + 80);

  v3 = sub_1000E4B90(v2, v1);
  *(v0 + 176) = v3;
  v10 = 0;
  v11 = *(v3 + 32);
  *(v0 + 232) = v11;
  v12 = 1 << v11;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v3 + 64);
  v9 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v0 + 224) = v9;
  while (v14)
  {
    v15 = *(v0 + 176);
LABEL_16:
    *(v0 + 184) = v14;
    *(v0 + 192) = v10;
    v17 = *(*(v15 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
    *(v0 + 200) = v17;
    v18 = v17[2];
    if (v18 >= 2)
    {
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 128);
      v31 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v29 + 16))(v31, v28, v30);
      (*(v29 + 56))(v31, 0, 1, v30);
      v32 = swift_task_alloc();
      *(v0 + 208) = v32;
      *v32 = v0;
      v32[1] = sub_1000E25F0;
      v33 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v0 + 16, v17, v33);
    }

    v14 &= v14 - 1;
    if (v18)
    {
      v19 = v17[5];
      v34 = v17[4];
      v20 = v17[6];
      v21 = v17[7];
      v22 = v17[8];

      v35 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000F2768(0, *(v9 + 2) + 1, 1, v9);
      }

      v24 = *(v9 + 2);
      v23 = *(v9 + 3);
      if (v24 >= v23 >> 1)
      {
        v9 = sub_1000F2768((v23 > 1), v24 + 1, 1, v9);
      }

      *(v9 + 2) = v24 + 1;
      v25 = &v9[40 * v24];
      *(v25 + 4) = v34;
      *(v25 + 5) = v35;
      *(v25 + 6) = v20;
      *(v25 + 7) = v21;
      *(v25 + 8) = v22;
      goto LABEL_9;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = *(v0 + 176);
    if (v16 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {

      goto LABEL_24;
    }

    v14 = *(v15 + 8 * v16 + 64);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_16;
    }
  }

  __break(1u);
  swift_once();
  v4 = type metadata accessor for Logger();
  sub_100018D90(v4, qword_1002E8CB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10001901C(0xD000000000000066, 0x800000010022E810, &v36);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failed to map disambiguation key to entities list", v7, 0xCu);
    sub_100014B64(v8);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_24:

  v26 = *(v0 + 8);

  return v26(v9);
}

uint64_t sub_1000E25F0()
{
  v2 = *v1;
  (*v1)[27] = v0;

  sub_1000E4E78(v2[12]);

  v3 = v2[21];
  v4 = v2[20];
  if (v0)
  {
    v5 = sub_1000E2B3C;
  }

  else
  {
    v5 = sub_1000E2760;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000E2760()
{
  v1 = v0 + 16;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 224);
  v37 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v8 = sub_1000F2768(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v8;
  v34 = v1;
  v35 = v6;
  if (v10 >= v9 >> 1)
  {
    v11 = sub_1000F2768((v9 > 1), v10 + 1, 1, v8);
  }

  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);

  v15 = *(v13 + 8);
  v6 = v13 + 8;
  v15(v12, v14);
  *(v11 + 2) = v10 + 1;
  v1 = 40;
  v16 = &v11[40 * v10];
  *(v16 + 4) = v37;
  *(v16 + 5) = v3;
  *(v16 + 6) = v4;
  *(v16 + 7) = v5;
  *(v16 + 8) = v35;
  v17 = *(v0 + 192);
  v4 = (*(v0 + 184) - 1) & *(v0 + 184);
  *(v0 + 224) = v11;
  while (v4)
  {
    v3 = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v4;
    *(v0 + 192) = v17;
    v3 = *(v3[7] + ((v17 << 9) | (8 * __clz(__rbit64(v4)))));
    *(v0 + 200) = v3;
    v19 = v3[2];
    if (v19 >= 2)
    {
      v28 = *(v0 + 136);
      v27 = *(v0 + 144);
      v29 = *(v0 + 128);
      v30 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v28 + 16))(v30, v27, v29);
      (*(v28 + 56))(v30, 0, 1, v29);
      v31 = swift_task_alloc();
      *(v0 + 208) = v31;
      *v31 = v0;
      v31[1] = sub_1000E25F0;
      v32 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v34, v3, v32);
    }

    v4 &= v4 - 1;
    if (v19)
    {
      v6 = v3[5];
      v36 = v3[4];
      v20 = v3[6];
      v21 = v3[7];
      v22 = v3[8];

      v37 = v20;
      v33 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1000F2768(0, *(v11 + 2) + 1, 1, v11);
      }

      v5 = *(v11 + 2);
      v23 = *(v11 + 3);
      v3 = (v5 + 1);
      if (v5 >= v23 >> 1)
      {
        v11 = sub_1000F2768((v23 > 1), v5 + 1, 1, v11);
      }

      *(v11 + 2) = v3;
      v24 = &v11[40 * v5];
      *(v24 + 4) = v36;
      *(v24 + 5) = v6;
      *(v24 + 6) = v37;
      *(v24 + 7) = v21;
      *(v24 + 8) = v33;
      *(v0 + 224) = v11;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v3 = *(v0 + 176);
    if (v18 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v4 = v3[v18 + 8];
    ++v17;
    if (v4)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  v25 = *(v0 + 8);

  return v25(v11);
}

uint64_t sub_1000E2B3C()
{
  v31 = v0;
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  if (qword_1002CDD88 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100018D90(v1, qword_1002E8CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001901C(0xD000000000000066, 0x800000010022E810, &v30);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failed to disambiguate entities", v4, 0xCu);
    sub_100014B64(v5);
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = (*(v0 + 184) - 1) & *(v0 + 184);
  *(v0 + 224) = v6;
  while (v8)
  {
    v9 = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v8;
    *(v0 + 192) = v7;
    v11 = *(*(v9 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v8)))));
    *(v0 + 200) = v11;
    v12 = v11[2];
    if (v12 >= 2)
    {
      v24 = *(v0 + 136);
      v23 = *(v0 + 144);
      v25 = *(v0 + 128);
      v26 = *(v0 + 96);
      (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 72), *(v0 + 104));

      IntentDialog.init(_:)();
      (*(v24 + 16))(v26, v23, v25);
      (*(v24 + 56))(v26, 0, 1, v25);
      v27 = swift_task_alloc();
      *(v0 + 208) = v27;
      *v27 = v0;
      v27[1] = sub_1000E25F0;
      v28 = *(v0 + 96);

      return IntentParameter.requestDisambiguation(among:dialog:)(v0 + 16, v11, v28);
    }

    v8 &= v8 - 1;
    if (v12)
    {
      v14 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      v16 = v11[7];
      v17 = v11[8];

      v29 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000F2768(0, *(v6 + 2) + 1, 1, v6);
      }

      v19 = *(v6 + 2);
      v18 = *(v6 + 3);
      if (v19 >= v18 >> 1)
      {
        v6 = sub_1000F2768((v18 > 1), v19 + 1, 1, v6);
      }

      *(v6 + 2) = v19 + 1;
      v20 = &v6[40 * v19];
      *(v20 + 4) = v29;
      *(v20 + 5) = v13;
      *(v20 + 6) = v15;
      *(v20 + 7) = v16;
      *(v20 + 8) = v17;
      *(v0 + 224) = v6;
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v9 = *(v0 + 176);
    if (v10 >= (((1 << *(v0 + 232)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v9 + 8 * v10 + 64);
    ++v7;
    if (v8)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  v21 = *(v0 + 8);

  return v21(v6);
}

void *sub_1000E2F5C(uint64_t a1)
{
  v4 = [v1 mainViewController];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v2 = _swiftEmptyArrayStorage;
LABEL_4:
      v8 = (a1 + 40 * v7);
      while (v6 != v7)
      {
        if (v7 >= v6)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_48;
        }

        v10 = v8[8];
        ++v7;
        v8 += 5;
        if (v10 == 4)
        {
          v12 = *(v8 - 1);
          v11 = *v8;
          v13 = v8[1];
          v14 = v8[2];

          v59 = v2;
          v57 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001AE614(0, v2[2] + 1, 1);
            v2 = v59;
          }

          v16 = v2[2];
          v15 = v2[3];
          if (v16 >= v15 >> 1)
          {
            sub_1001AE614((v15 > 1), v16 + 1, 1);
            v2 = v59;
          }

          v2[2] = v16 + 1;
          v17 = &v2[5 * v16];
          v17[4] = v12;
          v17[5] = v57;
          v17[6] = v13;
          v17[7] = v14;
          v17[8] = 4;
          v7 = v9;
          goto LABEL_4;
        }
      }

      if (!v2[2])
      {

        sub_1000E464C();
        swift_allocError();
        *v48 = 0;
        swift_willThrow();

        return v2;
      }

      v18 = [v5 recordingInProgressUUID];
      v19 = v5;
      if (!v18)
      {

        return v2;
      }

      v20 = v18;
      v55 = v19;
      v21 = [objc_opt_self() sharedRecordingsModelInteractor];
      v22 = [v21 uuidOfUserFolderForRecordingWithUUID:v20];

      if (!v22)
      {

        return v2;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v23;

      v24 = v2[2];
      if (v24)
      {
        v25 = 0;
        v26 = v2 + 8;
        v27 = _swiftEmptyArrayStorage;
        v28 = v56;
        v52 = v2[2];
LABEL_19:
        v53 = v27;
        v29 = v24 - v25;
        v30 = &v26[5 * v25];
        v31 = v58;
        while (v25 < v2[2])
        {
          v32 = *(v30 - 4);
          v33 = *(v30 - 3);
          if (v32 != v28 || v33 != v31)
          {
            v36 = *(v30 - 1);
            v35 = *v30;
            v37 = *(v30 - 2);
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v28 = v56;
            v31 = v58;
            if ((v38 & 1) == 0)
            {

              v27 = v53;
              v59 = v53;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1001AE614(0, *(v53 + 16) + 1, 1);
                v27 = v59;
              }

              v26 = v2 + 8;
              v40 = v27[2];
              v39 = v27[3];
              v41 = v40 + 1;
              v28 = v56;
              if (v40 >= v39 >> 1)
              {
                v54 = v40 + 1;
                v51 = v27[2];
                sub_1001AE614((v39 > 1), v40 + 1, 1);
                v26 = v2 + 8;
                v41 = v54;
                v40 = v51;
                v28 = v56;
                v27 = v59;
              }

              ++v25;
              v27[2] = v41;
              v42 = &v27[5 * v40];
              v42[4] = v32;
              v42[5] = v33;
              v42[6] = v37;
              v42[7] = v36;
              v42[8] = v35;
              v24 = v52;
              if (v29 != 1)
              {
                goto LABEL_19;
              }

              goto LABEL_44;
            }
          }

          v30 += 5;
          ++v25;
          if (!--v29)
          {
            v27 = v53;
            goto LABEL_44;
          }
        }

        goto LABEL_49;
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_44:

      if (v27[2])
      {

        return v27;
      }

      else
      {

        sub_1000E464C();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
      }
    }

    else
    {

      return a1;
    }
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
LABEL_50:
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100018D90(v43, qword_1002E8CB0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v59 = v2;
      *v46 = 136315138;
      *(v46 + 4) = sub_10001901C(0xD000000000000033, 0x800000010022E7D0, &v59);
      _os_log_impl(&_mh_execute_header, v44, v45, "%s Unable to delete folders. RCMainViewController is nil.", v46, 0xCu);
      sub_100014B64(v2);
    }

    sub_1000E454C();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000E34E4(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v4 = type metadata accessor for ConfirmationActionName();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for ConfirmationConditions();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[2] = a1;
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v9;
  v2[20] = v8;

  return _swift_task_switch(sub_1000E3700, v9, v8);
}

uint64_t sub_1000E3700()
{
  v2 = 0;
  v3 = v1[4];
  v4 = v3 + 56;
  v5 = *(v3 + 16);
  v28 = v3 + 56;
LABEL_2:
  v6 = (v4 + 40 * v2);
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      goto LABEL_32;
    }

    v0 = *v6;
    v7 = objc_opt_self();

    v8 = [v7 sharedRecordingsModelInteractor];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 folderForUUID:v9];

    v6 += 5;
    ++v2;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v1;
      v4 = v28;
      goto LABEL_2;
    }
  }

  v0 = [objc_opt_self() sharedRecordingsModelInteractor];
  v1 = v29;
  v6 = _swiftEmptyArrayStorage;
  v29[21] = v0;
  v2 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_34:
  v11 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:
  v12 = 0;
  do
  {
    if (v11 == v12)
    {
      goto LABEL_22;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v12 >= *(v2 + 16))
      {
        goto LABEL_33;
      }

      v13 = v6[v12 + 4];
      swift_unknownObjectRetain();
      if (__OFADD__(v12, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        v15 = v1[1];
        goto LABEL_28;
      }
    }

    v14 = [v0 playableCountForFolder:v13];
    swift_unknownObjectRelease();
    ++v12;
  }

  while (!v14);

  v16 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v16)
  {
    v18 = v1[16];
    v17 = v1[17];
    v20 = v1[14];
    v19 = v1[15];
    v21 = v16;
    [v16 rc_deletionIsImmediate];

    LocalizedStringResource.init(stringLiteral:)();
    (*(v19 + 16))(v18, v17, v20);
    IntentDialog.init(_:)();
    v1[3] = _swiftEmptyArrayStorage;
    sub_1000E45F4();
    sub_1000C773C(&qword_1002CF808);
    sub_100008034(&qword_1002CF810, &qword_1002CF808);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static ConfirmationActionName.continue.getter();
    v22 = swift_task_alloc();
    v1[22] = v22;
    v23 = sub_1000131E8();
    *v22 = v1;
    v22[1] = sub_1000E3C4C;
    v24 = v1[13];
    v25 = v1[10];
    v26 = v1[7];

    return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v25, v26, v24, &type metadata for DeleteFolder, v23);
  }

  sub_1000E45A0();
  swift_allocError();
  swift_willThrow();

  v15 = v1[1];
LABEL_28:

  return v15();
}

uint64_t sub_1000E3C4C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[20];
  v7 = v2[19];
  if (v0)
  {
    v8 = sub_1000E3F28;
  }

  else
  {
    v8 = sub_1000E3E30;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000E3E30()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000E3F28()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000E4020(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E40C0, v5, v4);
}

uint64_t sub_1000E40C0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    IntentParameter.wrappedValue.getter();

    v3 = v0[6];
    IntentParameter.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();

    sub_1000E42F8(v3, v0[2], v0[3]);
  }

  v4 = v0[10];
  v4[3] = sub_1000C773C(&qword_1002D37B0);
  v4[4] = sub_100008034(&qword_1002CF7E0, &qword_1002D37B0);
  sub_100015800(v4);
  static IntentResult.result<>()();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E424C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002001C;

  return sub_1000E4020(a1, a2, v2);
}

void sub_1000E42F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 mainViewController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 recordingInProgressUUID];
    if (v9)
    {

      sub_1000E44F8();
      swift_allocError();
      *v10 = a2;
      v10[1] = a3;
      swift_willThrow();
    }

    else
    {
      v16 = String._bridgeToObjectiveC()();
      [v8 goToFolderOfType:a1 withName:v16 animated:1 completion:0];
    }
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100018D90(v11, qword_1002E8CB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001901C(0xD000000000000022, 0x800000010022E700, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Unable to select recording. RCMainViewController is nil.", v14, 0xCu);
      sub_100014B64(v15);
    }
  }
}

unint64_t sub_1000E44F8()
{
  result = qword_1002CF7E8;
  if (!qword_1002CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7E8);
  }

  return result;
}

unint64_t sub_1000E454C()
{
  result = qword_1002CF7F0;
  if (!qword_1002CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7F0);
  }

  return result;
}

unint64_t sub_1000E45A0()
{
  result = qword_1002CF7F8;
  if (!qword_1002CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF7F8);
  }

  return result;
}

unint64_t sub_1000E45F4()
{
  result = qword_1002CF800;
  if (!qword_1002CF800)
  {
    type metadata accessor for ConfirmationConditions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF800);
  }

  return result;
}

unint64_t sub_1000E464C()
{
  result = qword_1002CF818;
  if (!qword_1002CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF818);
  }

  return result;
}

uint64_t sub_1000E46A0(uint64_t a1, uint64_t (*a2)(void *))
{
  v41 = &_swiftEmptyDictionarySingleton;
  v35 = *(a1 + 16);
  if (v35)
  {
    v3 = 0;
    v4 = (a1 + 64);
    v39 = &_swiftEmptyDictionarySingleton;
    v34 = a1;
    while (v3 < *(a1 + 16))
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v40[0] = v7;
      v40[1] = v6;
      v40[2] = v8;
      v40[3] = v9;
      v40[4] = v10;
      v38 = v6;

      v11 = a2(v40);
      if (v2)
      {

        return v39;
      }

      v13 = v11;
      v14 = v12;
      v37 = v7;
      v16 = sub_1000D2E40(v11, v12);
      v17 = v39[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v39[3] < v19)
      {
        sub_1000CA778(v19, 1);
        v39 = v41;
        v21 = sub_1000D2E40(v13, v14);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_25;
        }

        v16 = v21;
      }

      if (v20)
      {

        v23 = v39[7];
        v24 = *(v23 + 8 * v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + 8 * v16) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1000F2648(0, *(v24 + 2) + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = sub_1000F2648((v26 > 1), v27 + 1, 1, v24);
          *(v23 + 8 * v16) = v24;
        }

        a1 = v34;
        *(v24 + 2) = v27 + 1;
        v5 = &v24[40 * v27];
        *(v5 + 4) = v37;
        *(v5 + 5) = v38;
        *(v5 + 6) = v8;
        *(v5 + 7) = v9;
        *(v5 + 8) = v10;
      }

      else
      {
        sub_1000C773C(&unk_1002CF8B0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100242C70;
        *(v28 + 32) = v37;
        *(v28 + 40) = v38;
        *(v28 + 48) = v8;
        *(v28 + 56) = v9;
        *(v28 + 64) = v10;
        v39[(v16 >> 6) + 8] |= 1 << v16;
        v29 = (v39[6] + 16 * v16);
        *v29 = v13;
        v29[1] = v14;
        *(v39[7] + 8 * v16) = v28;
        v30 = v39[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_24;
        }

        v39[2] = v32;
        a1 = v34;
      }

      ++v3;
      v4 += 5;
      v2 = 0;
      if (v35 == v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v39 = &_swiftEmptyDictionarySingleton;
LABEL_19:

    return v39;
  }

  return result;
}

void sub_1000E4998()
{
  v1 = [v0 mainViewController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isRecording])
    {
      EntityProperty.wrappedValue.getter();
      v3 = v10[1];
      sub_1000E4F34();
      swift_allocError();
      *v4 = v10[0];
      v4[1] = v3;
      swift_willThrow();

      return;
    }

    v6 = String._bridgeToObjectiveC()();
    [v2 selectRecordingWithUUID:v6 returnToBrowse:1];
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100018D90(v5, qword_1002E8CB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10001901C(0xD000000000000013, 0x800000010022E8B0, v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Unable to select recording. RCMainViewController is nil.", v8, 0xCu);
      sub_100014B64(v9);
    }
  }
}

uint64_t sub_1000E4B90(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = a1;
  v40 = &_swiftEmptyDictionarySingleton;
  v34 = *(a1 + 16);
  if (v34)
  {
    v4 = 0;
    v5 = (a1 + 64);
    v38 = &_swiftEmptyDictionarySingleton;
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v36 = *(v5 - 4);
      v37 = *v5;
      v39[0] = v36;
      v39[1] = v7;
      v39[2] = v8;
      v39[3] = v9;
      v39[4] = v37;

      v10 = a2(v39);
      if (v2)
      {

        goto LABEL_21;
      }

      v12 = v10;
      v13 = v11;
      v15 = sub_1000D2E40(v10, v11);
      v16 = v38[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (v38[3] < v18)
      {
        sub_1000CA78C(v18, 1);
        v38 = v40;
        v20 = sub_1000D2E40(v12, v13);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_25;
        }

        v15 = v20;
      }

      if (v19)
      {

        v22 = v38[7];
        v23 = *(v22 + 8 * v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 8 * v15) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1000F2768(0, *(v23 + 2) + 1, 1, v23);
          *(v22 + 8 * v15) = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_1000F2768((v25 > 1), v26 + 1, 1, v23);
          *(v22 + 8 * v15) = v23;
        }

        *(v23 + 2) = v26 + 1;
        v6 = &v23[40 * v26];
        *(v6 + 4) = v36;
        *(v6 + 5) = v7;
        *(v6 + 6) = v8;
        *(v6 + 7) = v9;
        *(v6 + 8) = v37;
      }

      else
      {
        sub_1000C773C(&qword_1002CF828);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100242C70;
        *(v27 + 32) = v36;
        *(v27 + 40) = v7;
        *(v27 + 48) = v8;
        *(v27 + 56) = v9;
        *(v27 + 64) = v37;
        v38[(v15 >> 6) + 8] |= 1 << v15;
        v28 = (v38[6] + 16 * v15);
        *v28 = v12;
        v28[1] = v13;
        *(v38[7] + 8 * v15) = v27;
        v29 = v38[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_24;
        }

        v38[2] = v31;
      }

      ++v4;
      v5 += 5;
      v3 = a1;
      v2 = 0;
      if (v34 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v38 = &_swiftEmptyDictionarySingleton;
LABEL_21:

    return v38;
  }

  return result;
}

uint64_t sub_1000E4E78(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CF820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E4EE0()
{
  result = qword_1002CF838;
  if (!qword_1002CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF838);
  }

  return result;
}

unint64_t sub_1000E4F34()
{
  result = qword_1002CF8A0;
  if (!qword_1002CF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF8A0);
  }

  return result;
}

unint64_t sub_1000E4F88()
{
  result = qword_1002CF8A8;
  if (!qword_1002CF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF8A8);
  }

  return result;
}

uint64_t sub_1000E52DC(char a1, char a2, char a3)
{
  NSDiffableDataSourceSnapshot.init()();
  v6 = sub_1000F253C(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1000F253C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v9;
  v10 = &v6[16 * v8];
  *(v10 + 4) = 0xD00000000000001FLL;
  *(v10 + 5) = 0x800000010022EBB0;
  if (a1)
  {
    v11 = RCSpatialEffectsAreAvailable();
    if (v11)
    {
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1000F253C((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[16 * v13];
      *(v14 + 4) = 0xD000000000000020;
      *(v14 + 5) = 0x800000010022ECC0;
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_1000F253C((v18 > 1), v19 + 1, 1, v6);
    }

    *(v6 + 2) = v19 + 1;
    v20 = &v6[16 * v19];
    *(v20 + 4) = 0xD00000000000001ALL;
    *(v20 + 5) = 0x800000010022EC60;
    goto LABEL_16;
  }

  v15 = *(v6 + 3);
  v16 = v8 + 2;
  if ((v8 + 2) > (v15 >> 1))
  {
    v6 = sub_1000F253C((v15 > 1), v8 + 2, 1, v6);
  }

  v11 = 0;
  *(v6 + 2) = v16;
  v17 = &v6[16 * v9];
  *(v17 + 4) = 0xD000000000000021;
  *(v17 + 5) = 0x800000010022EBD0;
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_16:
  sub_1000C773C(&qword_1002CF8E8);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v6);

  sub_1000C773C(&unk_1002D02A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100242C70;
  *(v21 + 32) = 0xD000000000000029;
  *(v21 + 40) = 0x800000010022EC00;
  if (a1)
  {
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v23 = sub_1000F253C(1, 2, 1, v21);
    *(v23 + 2) = 2;
    *(v23 + 6) = 0xD00000000000002BLL;
    *(v23 + 7) = 0x800000010022EC30;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100242C70;
  *(v24 + 32) = 0xD000000000000032;
  *(v24 + 40) = 0x800000010022EC80;
  if (a3)
  {
    v25 = sub_1000F253C(1, 2, 1, v24);
    *(v25 + 2) = 2;
    *(v25 + 6) = 0xD000000000000032;
    *(v25 + 7) = 0x800000010022ECF0;
  }

  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

LABEL_23:
  if (a2)
  {
    return NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  return result;
}

id sub_1000E5848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCPlaybackSettingsViewDataSourceHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E58A4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ([v1 mode] == 2 || !objc_msgSend(v1, "mode"))
    {

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1000E5964()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E59B4()
{
  sub_1000E7548();

  return static AttributeScope.decodingConfiguration.getter();
}

uint64_t sub_1000E5A00()
{
  sub_1000E7548();

  return static AttributeScope.encodingConfiguration.getter();
}

uint64_t sub_1000E5BC0(void *a1)
{
  v3 = sub_1000C773C(&qword_1002CFBB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000AACC(a1, a1[3]);
  sub_1000E7AF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for Locale();
  sub_1000E759C(&qword_1002CFB88, &type metadata accessor for Locale);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TranscriptionData(0);
    v9[14] = 1;
    type metadata accessor for AttributedString();
    sub_1000E759C(&qword_1002CFBC0, &type metadata accessor for AttributedString);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000E5DC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = type metadata accessor for AttributedString();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Locale();
  v27 = *(v31 - 8);
  __chkstk_darwin(v31, v7);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C773C(&qword_1002CFBA0);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TranscriptionData(0);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_1000E7AF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v24 = v12;
  v16 = v15;
  v18 = v27;
  v17 = v28;
  v34 = 0;
  sub_1000E759C(&qword_1002CFB70, &type metadata accessor for Locale);
  v19 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v18 + 32);
  v23 = v16;
  v20(v16, v19, v31);
  v33 = 1;
  sub_1000E759C(&qword_1002CFBB0, &type metadata accessor for AttributedString);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v11, v32);
  v21 = v23;
  (*(v25 + 32))(v23 + *(v24 + 20), v6, v17);
  sub_1000E7B44(v21, v26, type metadata accessor for TranscriptionData);
  sub_100014B64(a1);
  return sub_1000E7BAC(v21, type metadata accessor for TranscriptionData);
}

uint64_t sub_1000E61FC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_1000E6238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010022EE30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000E6318(uint64_t a1)
{
  v2 = sub_1000E7AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E6354(uint64_t a1)
{
  v2 = sub_1000E7AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E63C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1000C773C(&qword_1002CF9D8);
  __chkstk_darwin(v5 - 8, v6);
  v41 = &v36 - v7;
  v40 = type metadata accessor for Locale();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40, v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptionCodingContainer(0);
  v12 = __chkstk_darwin(v10, v11);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for AttributedString();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000E759C(&qword_1002CF9E0, type metadata accessor for TranscriptionCodingContainer);
  v43 = a1;
  v44 = a2;
  v21 = v46;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v21)
  {
    v46 = v17;
    v24 = v40;
    v23 = v41;
    sub_1000C773C(&qword_1002CF9E8);
    CodableConfiguration.wrappedValue.getter();
    sub_1000E7BAC(v16, type metadata accessor for TranscriptionCodingContainer);
    swift_allocObject();
    JSONDecoder.init()();
    v25 = v42;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v44 = v20;

    v26 = v23;
    sub_1000E685C(v25 + *(v10 + 20), v23);
    sub_1000E7BAC(v25, type metadata accessor for TranscriptionCodingContainer);
    v27 = v38;
    v28 = *(v38 + 48);
    v29 = v28(v26, 1, v24);
    v30 = v46;
    if (v29 == 1)
    {
      v31 = v37;
      Locale.init(identifier:)();
      v32 = v28(v26, 1, v24);
      v33 = v39;
      v34 = v45;
      if (v32 != 1)
      {
        sub_1000E68CC(v26);
      }
    }

    else
    {
      v31 = v37;
      (*(v27 + 32))(v37, v26, v24);
      v33 = v39;
      v34 = v45;
    }

    (*(v27 + 32))(v33, v31, v24);
    v35 = type metadata accessor for TranscriptionData(0);
    return (*(v34 + 32))(v33 + *(v35 + 20), v44, v30);
  }

  return result;
}

uint64_t sub_1000E685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CF9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E68CC(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CF9D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E6954(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E698C(void *a1)
{
  v3 = sub_1000C773C(&qword_1002CFB78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000AACC(a1, a1[3]);
  sub_1000E7970();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  sub_1000C773C(&qword_1002CF9E8);
  sub_1000E7A34(&qword_1002CFB80);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TranscriptionCodingContainer(0);
    v9[14] = 1;
    type metadata accessor for Locale();
    sub_1000E759C(&qword_1002CFB88, &type metadata accessor for Locale);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000E6B84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v31 = a2;
  v2 = sub_1000C773C(&qword_1002CF9D8);
  __chkstk_darwin(v2 - 8, v3);
  v33 = &v31 - v4;
  v5 = sub_1000C773C(&qword_1002CF9E8);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v34 = &v31 - v7;
  v35 = sub_1000C773C(&qword_1002CFB58);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for TranscriptionCodingContainer(0);
  __chkstk_darwin(v20, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.init()();
  (*(v12 + 16))(v16, v19, v11);
  swift_getKeyPath();
  sub_1000E7548();
  CodableConfiguration<>.init(wrappedValue:from:)();
  (*(v12 + 8))(v19, v11);
  v24 = v38;
  sub_10000AACC(v38, v38[3]);
  sub_1000E7970();
  v25 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v26 = v37;
    sub_100014B64(v24);
    return (*(v26 + 8))(v23, v5);
  }

  else
  {
    v36 = v20;
    v28 = v32;
    v27 = v33;
    v40 = 0;
    sub_1000E7A34(&qword_1002CFB68);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v37 + 40))(v23, v34, v5);
    type metadata accessor for Locale();
    v39 = 1;
    sub_1000E759C(&qword_1002CFB70, &type metadata accessor for Locale);
    v29 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v28 + 8))(v10, v29);
    sub_1000E79C4(v27, &v23[*(v36 + 20)]);
    sub_1000E7B44(v23, v31, type metadata accessor for TranscriptionCodingContainer);
    sub_100014B64(v38);
    return sub_1000E7BAC(v23, type metadata accessor for TranscriptionCodingContainer);
  }
}

uint64_t sub_1000E7084()
{
  if (*v0)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1000E70C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010022EE30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000E71A4(uint64_t a1)
{
  v2 = sub_1000E7970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E71E0(uint64_t a1)
{
  v2 = sub_1000E7970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E724C(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v22 = *(v2 - 8);
  v3 = v22;
  v5 = __chkstk_darwin(v2, v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TranscriptionCodingContainer(0);
  v24 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptionData(0);
  v15 = *(v3 + 16);
  v15(v9, a1 + *(v14 + 20), v2);
  v16 = *(v10 + 20);
  v17 = type metadata accessor for Locale();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v16], a1, v17);
  (*(v18 + 56))(&v13[v16], 0, 1, v17);
  v15(v23, v9, v2);
  swift_getKeyPath();
  sub_1000E7548();
  CodableConfiguration<>.init(wrappedValue:from:)();
  (*(v22 + 8))(v9, v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000E759C(&qword_1002CF9F8, type metadata accessor for TranscriptionCodingContainer);
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000E7BAC(v13, type metadata accessor for TranscriptionCodingContainer);

  return v19;
}

unint64_t sub_1000E7548()
{
  result = qword_1002CF9F0;
  if (!qword_1002CF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CF9F0);
  }

  return result;
}

uint64_t sub_1000E759C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000E7638()
{
  if (!qword_1002CFA68)
  {
    type metadata accessor for AttributedString();
    sub_1000E76D4();
    sub_1000E7728();
    v0 = type metadata accessor for CodableConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CFA68);
    }
  }
}

unint64_t sub_1000E76D4()
{
  result = qword_1002CFA70;
  if (!qword_1002CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFA70);
  }

  return result;
}

unint64_t sub_1000E7728()
{
  result = qword_1002CFA78;
  if (!qword_1002CFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFA78);
  }

  return result;
}

void sub_1000E777C()
{
  if (!qword_1002CFA80)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CFA80);
    }
  }
}

uint64_t sub_1000E7848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000E78D8()
{
  result = qword_1002CFB40;
  if (!qword_1002CFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFB40);
  }

  return result;
}

unint64_t sub_1000E7970()
{
  result = qword_1002CFB60;
  if (!qword_1002CFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFB60);
  }

  return result;
}

uint64_t sub_1000E79C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CF9D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E7A34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002CF9E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E7A84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002CFB50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E7AF0()
{
  result = qword_1002CFBA8;
  if (!qword_1002CFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBA8);
  }

  return result;
}

uint64_t sub_1000E7B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E7BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000E7C30()
{
  result = qword_1002CFBC8;
  if (!qword_1002CFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBC8);
  }

  return result;
}

unint64_t sub_1000E7C88()
{
  result = qword_1002CFBD0;
  if (!qword_1002CFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBD0);
  }

  return result;
}

unint64_t sub_1000E7CE0()
{
  result = qword_1002CFBD8;
  if (!qword_1002CFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBD8);
  }

  return result;
}

unint64_t sub_1000E7D38()
{
  result = qword_1002CFBE0;
  if (!qword_1002CFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBE0);
  }

  return result;
}

unint64_t sub_1000E7D90()
{
  result = qword_1002CFBE8;
  if (!qword_1002CFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBE8);
  }

  return result;
}

unint64_t sub_1000E7DE8()
{
  result = qword_1002CFBF0;
  if (!qword_1002CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFBF0);
  }

  return result;
}

uint64_t sub_1000E7E64()
{
  v1 = type metadata accessor for OSSignpostError();
  v21 = *(v1 - 8);
  __chkstk_darwin(v1, v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0 + *(type metadata accessor for SignpostInterval() + 20);
  v11 = *v10;
  v12 = *(v10 + 16);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v9, v5);
  }

  if ((v12 & 1) == 0)
  {
    if (v11)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v15 = v21;
      if ((*(v21 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v15 + 8))(v4, v1);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v11, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_1002CFC50;
  if (!qword_1002CFC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E81C0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  sub_100018DC8(v12, a2);
  sub_100018D90(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_100018D90(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return OSSignposter.init(logger:)();
}

uint64_t sub_1000E831C()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostIntervalState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E83A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000E83C8, 0, 0);
}

uint64_t sub_1000E83C8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1000E8548;

    return sub_1000E9554(v2);
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_1000E86D0;

      return sub_1000E9AC0(v5);
    }

    else
    {
      v7 = v0[2];
      *(v7 + 32) = 0;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_1000E8548(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1000E867C, 0, 0);
  }
}

uint64_t sub_1000E867C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 16);
    v3[3] = &type metadata for AVURLAudioMixProvider;
    v3[4] = &off_10028EB58;
    *v3 = v1;
    v3[1] = v2;
  }

  else
  {
    v4 = *(v0 + 16);
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return (*(v0 + 8))();
}

uint64_t sub_1000E86D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1000E8808, 0, 0);
  }
}

uint64_t sub_1000E8808()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    *(v4 + 24) = &type metadata for CompositionAudioMixProvider;
    *(v4 + 32) = &off_10028EB70;
    *v4 = v3;
    *(v4 + 8) = v1;
    *(v4 + 16) = v2;
    *(v4 + 20) = BYTE4(v2) & 1;
  }

  else
  {
    v5 = *(v0 + 16);
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
  }

  return (*(v0 + 8))();
}

void *sub_1000E8870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x100000000) != 0 || *(a1 + 16) != 2)
  {
    LOBYTE(v22) = 1;
    v14 = sub_1000E8A88(0x100000000, a2);
    if (v14)
    {
      v15 = v14;
      sub_1000C773C(&unk_1002CE190);
      result = swift_allocObject();
      *(result + 1) = xmmword_1002432F0;
      result[4] = v15;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_1000C773C(&unk_1002CE190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002432E0;
    v8 = *(a1 + 32);
    LOBYTE(v22) = 0;
    v9 = a2;
    v10 = sub_1000E8A88(v8, a2);
    if (v10)
    {
      value = kCMTimeZero.value;
      v12 = *&kCMTimeZero.timescale;
      epoch = kCMTimeZero.epoch;
    }

    else
    {
      v17 = [objc_allocWithZone(AVMutableAudioMixInputParameters) init];
      [v17 setTrackID:v9];
      value = kCMTimeZero.value;
      v12 = *&kCMTimeZero.timescale;
      epoch = kCMTimeZero.epoch;
      v22 = kCMTimeZero.value;
      v23 = v12;
      v24 = epoch;
      LODWORD(v18) = v8;
      [v17 setVolume:&v22 atTime:v18];
      v10 = v17;
    }

    *(v7 + 32) = v10;
    v19 = *(a1 + 36);
    v20 = [objc_allocWithZone(AVMutableAudioMixInputParameters) init];
    [v20 setTrackID:a4];
    v22 = value;
    v23 = v12;
    v24 = epoch;
    LODWORD(v21) = v19;
    [v20 setVolume:&v22 atTime:v21];
    result = v7;
    *(v7 + 40) = v20;
  }

  return result;
}

uint64_t sub_1000E8A88(uint64_t a1, uint64_t a2)
{
  if (!RCSpatialEffectsAreAvailable())
  {
    return 0;
  }

  v4 = dispatch thunk of CNAssetSpatialAudioInfo.audioMix(effectIntensity:renderingStyle:)();
  v5 = [v4 inputParameters];

  sub_1000067AC(0, &qword_1002CEB78);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:

LABEL_15:
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100018D90(v15, qword_1002E8CB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001901C(0xD000000000000036, 0x800000010022EE80, v21);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s failed to create audioMix paramaters", v18, 0xCu);
      sub_100014B64(v19);
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  [v9 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000067AC(0, &qword_1002CFC98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = [v20 trackID];
  v11 = dispatch thunk of CNAssetSpatialAudioInfo.defaultSpatialAudioTrack.getter();
  v12 = [v11 trackID];

  if (v10 == v12)
  {
    [v20 setTrackID:a2];
  }

  if ((a1 & 0x100000000) == 0)
  {
    LODWORD(v13) = a1;
    epoch = kCMTimeZero.epoch;
    v21[0] = kCMTimeZero.value;
    v21[1] = *&kCMTimeZero.timescale;
    v21[2] = epoch;
    [v20 setVolume:v21 atTime:v13];
  }

  return v20;
}

id sub_1000E8DA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[4];
  v6 = *(v1 + 20);
  v7 = [objc_allocWithZone(AVMutableAudioMix) init];
  sub_1000E8870(a1, v3, v4, v5 | (v6 << 32));
  sub_1000067AC(0, &qword_1002CEB78);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setInputParameters:isa];

  return v7;
}

uint64_t sub_1000E8E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = dispatch thunk of CNAssetSpatialAudioInfo.audioMix(effectIntensity:renderingStyle:)();
  if (*(a3 + 16) != 2 || *(a1 + 16) != 2)
  {
    return v5;
  }

  v37 = v5;
  v6 = [v5 inputParameters];
  sub_1000067AC(0, &qword_1002CEB78);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {

    goto LABEL_13;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v10 = v9;

    [v10 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000067AC(0, &qword_1002CFC98);
    if (swift_dynamicCast())
    {
      v12 = v38;
      LODWORD(v11) = *(a1 + 32);
      epoch = kCMTimeZero.epoch;
      value = kCMTimeZero.value;
      v40 = *&kCMTimeZero.timescale;
      v41 = epoch;
      [v38 setVolume:&value atTime:v11];
LABEL_18:
      v14 = [objc_allocWithZone(AVMutableAudioMix) init];
      sub_1000C773C(&unk_1002CE190);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1002432E0;
      if (v12)
      {
        v21 = kCMTimeZero.value;
        v22 = *&kCMTimeZero.timescale;
        v23 = kCMTimeZero.epoch;
        v24 = v12;
        v25 = &ComposedAudioEffectRenderer;
      }

      else
      {
        v26 = *(a3 + 32);
        v27 = *(a1 + 32);
        v24 = [objc_allocWithZone(AVMutableAudioMixInputParameters) init];
        [v24 setTrackID:v26];
        v21 = kCMTimeZero.value;
        v22 = *&kCMTimeZero.timescale;
        v23 = kCMTimeZero.epoch;
        v25 = &ComposedAudioEffectRenderer;
        value = kCMTimeZero.value;
        v40 = v22;
        v41 = v23;
        LODWORD(v28) = v27;
        [v24 setVolume:&value atTime:v28];
        v12 = 0;
      }

      *(v20 + 32) = v24;
      v29 = *(a3 + 36);
      v30 = *(a1 + 36);
      v31 = objc_allocWithZone(AVMutableAudioMixInputParameters);
      v32 = v12;
      v33 = [v31 init];
      [v33 setTrackID:v29];
      count = v25[174].count;
      value = v21;
      v40 = v22;
      v41 = v23;
      LODWORD(v35) = v30;
      [v33 count];
      *(v20 + 40) = v33;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 setInputParameters:isa];

      return v14;
    }

LABEL_13:
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100018D90(v15, qword_1002E8CB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      value = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10001901C(0xD000000000000032, 0x800000010022EEC0, &value);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s failed to create spatial parameter", v18, 0xCu);
      sub_100014B64(v19);
    }

    v12 = 0;
    goto LABEL_18;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000E9300(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (RCSpatialEffectsAreAvailable())
  {

    return sub_1000E8E88(a1, v4, v3);
  }

  else
  {

    return sub_1000E938C(a1, v3);
  }
}

id sub_1000E938C(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(AVMutableAudioMix) init];
  if (*(a2 + 16) == 2 && *(a1 + 16) == 2)
  {
    v18 = result;
    sub_1000C773C(&unk_1002CE190);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002432E0;
    v6 = *(a2 + 32);
    v7 = *(a1 + 32);
    v8 = [objc_allocWithZone(AVMutableAudioMixInputParameters) init];
    [v8 setTrackID:v6];
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    value = kCMTimeZero.value;
    v20 = timescale;
    v21 = flags;
    v22 = epoch;
    LODWORD(v12) = v7;
    [v8 setVolume:&value atTime:v12];
    *(v5 + 32) = v8;
    v13 = *(a2 + 36);
    v14 = *(a1 + 36);
    v15 = [objc_allocWithZone(AVMutableAudioMixInputParameters) init];
    [v15 setTrackID:v13];
    value = kCMTimeZero.value;
    v20 = timescale;
    v21 = flags;
    v22 = epoch;
    LODWORD(v16) = v14;
    [v15 setVolume:&value atTime:v16];
    *(v5 + 40) = v15;
    sub_1000067AC(0, &qword_1002CEB78);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setInputParameters:isa];

    return v18;
  }

  return result;
}

uint64_t sub_1000E9554(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for CNAssetSpatialAudioInfo();
  v5 = (&async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:) + async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:));
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000E9618;

  return v5(a1);
}

uint64_t sub_1000E9618(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v3 + 16);
    swift_allocObject();
    v6 = v5;
    v7 = swift_task_alloc();
    *(v3 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_1000E97BC;
    v8 = *(v3 + 16);

    return CNAssetSpatialAudioInfo.init(asset:)(v8);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9(0, 0);
  }
}

uint64_t sub_1000E97BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000E98F0, 0, 0);
  }
}

char *sub_1000E98F0()
{
  v1 = [*(v0 + 16) rc_audioTracksPreferringSpatial];
  sub_1000067AC(0, &qword_1002D0440);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = sub_1001AE634(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    v8 = [v6 trackID];

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1001AE634((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v8;
  }

LABEL_13:

  v11 = *(v0 + 48);
  v12 = *(v0 + 8);

  return v12(v11, _swiftEmptyArrayStorage);
}

uint64_t sub_1000E9AC0(uint64_t a1)
{
  v1[2] = a1;
  sub_1000C773C(&qword_1002D5FA0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000E9BDC, 0, 0);
}

uint64_t sub_1000E9BDC()
{
  v1 = [*(v0 + 16) tracksWithMediaType:AVMediaTypeAudio];
  sub_1000067AC(0, &unk_1002D1DF0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result != 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  for (i = *(v2 + 40); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v5 = i;
LABEL_9:
    *(v0 + 80) = v5;
    if (v2 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_46;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_37;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_50:
    ;
  }

  v6 = *(v2 + 32);
LABEL_16:
  v7 = v6;
  *(v0 + 88) = v6;

  v8 = [v7 segments];
  sub_1000067AC(0, &qword_1002CFC90);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_39;
    }

    goto LABEL_18;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
LABEL_18:
    v11 = 0;
    v12 = *(v0 + 56);
    v47 = v9 & 0xFFFFFFFFFFFFFF8;
    v48 = v9 & 0xC000000000000001;
    v44 = (v12 + 48);
    v45 = (v12 + 56);
    v42 = v12;
    v43 = (v12 + 32);
    v13 = _swiftEmptyArrayStorage;
    v46 = v10;
    while (1)
    {
      if (v48)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v11 >= *(v47 + 16))
        {
          goto LABEL_36;
        }

        v14 = *(v9 + 8 * v11 + 32);
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_16;
        }
      }

      v16 = v9;
      v17 = v14;
      v18 = [v17 sourceURL];
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

      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      v24 = *(v0 + 24);
      v23 = *(v0 + 32);
      (*v45)(v24, v20, 1, v21);
      sub_1000EA824(v24, v23);
      sub_1000EA824(v23, v22);

      if ((*v44)(v22, 1, v21) == 1)
      {
        sub_1000EA894(*(v0 + 40));
      }

      else
      {
        v25 = *v43;
        (*v43)(*(v0 + 72), *(v0 + 40), *(v0 + 48));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1000F2888(0, *(v13 + 2) + 1, 1, v13);
        }

        v27 = *(v13 + 2);
        v26 = *(v13 + 3);
        if (v27 >= v26 >> 1)
        {
          v13 = sub_1000F2888(v26 > 1, v27 + 1, 1, v13);
        }

        v28 = *(v0 + 72);
        v29 = *(v0 + 48);
        *(v13 + 2) = v27 + 1;
        v25(&v13[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v27], v28, v29);
      }

      v9 = v16;
      ++v11;
      if (v15 == v46)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_39:
  v13 = _swiftEmptyArrayStorage;
LABEL_40:
  *(v0 + 96) = v13;

  v30 = *(v13 + 2);
  *(v0 + 104) = v30;
  if (!v30)
  {
    v5 = *(v0 + 80);

LABEL_46:

    v41 = *(v0 + 8);

    return v41(0, 0, 0);
  }

  v31 = *(v0 + 56);
  *(v0 + 112) = 0;
  v32 = *(v0 + 96);
  if (!*(v32 + 16))
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v33 = *(v0 + 64);
  v34 = *(v0 + 48);
  (*(v31 + 16))(v33, v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v34);
  v35 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  (*(v31 + 8))(v33, v34);
  v39 = [v35 initWithURL:v38 options:0];
  *(v0 + 120) = v39;

  *(v0 + 128) = type metadata accessor for CNAssetSpatialAudioInfo();
  v49 = (&async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:) + async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:));
  v40 = swift_task_alloc();
  *(v0 + 136) = v40;
  *v40 = v0;
  v40[1] = sub_1000EA1AC;

  return v49(v39);
}

uint64_t sub_1000EA1AC(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {

    swift_allocObject();
    v5 = swift_task_alloc();
    *(v3 + 144) = v5;
    *v5 = v4;
    v5[1] = sub_1000EA34C;
    v6 = *(v3 + 120);

    return CNAssetSpatialAudioInfo.init(asset:)(v6);
  }

  else
  {

    return _swift_task_switch(sub_1000EA50C, 0, 0);
  }
}

uint64_t sub_1000EA34C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1000EA460;
  }

  else
  {
    v4 = sub_1000EA71C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000EA460()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000EA50C()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 104))
  {
    v2 = *(v0 + 80);

    v3 = *(v0 + 8);

    v3(0, 0, 0);
  }

  else
  {
    *(v0 + 112) = v1;
    v4 = *(v0 + 96);
    if (v1 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = *(v0 + 48);
      (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v1, v7);
      v8 = objc_allocWithZone(AVURLAsset);
      URL._bridgeToObjectiveC()(v9);
      v11 = v10;
      (*(v6 + 8))(v5, v7);
      v12 = [v8 initWithURL:v11 options:0];
      *(v0 + 120) = v12;

      *(v0 + 128) = type metadata accessor for CNAssetSpatialAudioInfo();
      v14 = (&async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:) + async function pointer to dispatch thunk of static CNAssetSpatialAudioInfo.assetContainsSpatialAudio(asset:));
      v13 = swift_task_alloc();
      *(v0 + 136) = v13;
      *v13 = v0;
      v13[1] = sub_1000EA1AC;

      v14(v12);
    }
  }
}

uint64_t sub_1000EA71C()
{
  v1 = *(v0 + 80);
  v2 = [*(v0 + 88) trackID];
  v3 = *(v0 + 88);
  if (v1)
  {
    v4 = *(v0 + 80);
    v5 = [v4 trackID];

    v6 = v5;
  }

  else
  {

    v6 = &_mh_execute_header;
  }

  v7 = *(v0 + 152);

  v8 = *(v0 + 8);

  return v8(v2, v7, v6);
}

uint64_t sub_1000EA824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EA894(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D5FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000EA90C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1000EA920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000EA968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000EA9CC()
{
  result = [objc_opt_self() sharedAppDelegate];
  if (result)
  {
    v1 = result;
    v2 = [result connectedPlatterSceneDelegates];
    sub_1000EB3E8();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v5 = [v1 defaultSceneDelegate];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 isInForeground];

        return v7 ^ 1;
      }

      else
      {

        return 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EAAD4(void *a1)
{
  v1 = [a1 activeLayoutMode];
  if (v1 + 1 >= 6)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100018D90(v3, qword_1002E8CB0);
    v4 = static os_log_type_t.debug.getter();
    v5 = Logger.logObject.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10001901C(0xD000000000000031, 0x800000010022EF70, &v9);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s Unexpected layout mode", v6, 0xCu);
      sub_100014B64(v7);
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0x38u >> (v1 + 1);
  }

  return v2 & 1;
}

uint64_t sub_1000EAC34()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000EACC8, v2, v1);
}

uint64_t sub_1000EACC8()
{
  v29 = v0;
  if (sub_1000EA9CC())
  {
    v1 = [objc_opt_self() sharedAppDelegate];
    v0[5] = v1;
    if (v1)
    {
      v2 = v1;
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      v0[6] = sub_100018D90(v3, qword_1002E8CB0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v28 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_10001901C(0xD000000000000024, 0x800000010022EF40, &v28);
        _os_log_impl(&_mh_execute_header, v4, v5, "%s Preparing to present recording stopped success state", v6, 0xCu);
        sub_100014B64(v7);
      }

      v8 = [v2 connectedPlatterSceneDelegates];
      sub_1000EB3E8();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v9 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v11 = v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      if (v11 < 1)
      {
LABEL_32:
        __break(1u);
        return static Task<>.sleep(nanoseconds:)(v10);
      }

      v12 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        v15 = [v13 platterViewController];
        [v15 displayRecordingSavedStatusMessage];
      }

      while (v11 != v12);
LABEL_19:

      v18 = [objc_opt_self() sharedStyleProvider];
      v0[7] = v18;
      [v18 bannerStatusMessageDisplayLength];
      v20 = v19;
      v10 = [v2 dynamicIslandSceneDelegate];
      if (v10)
      {
        v21 = v10;
        v22 = [v10 platterViewController];
        v23 = sub_1000EAAD4(v22);

        if (v23)
        {
          [v18 dynamicIslandStatusMessageDisplayLength];
          v20 = v24;
        }
      }

      v25 = v20 * 1000000000.0;
      if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v25 > -1.0)
      {
        if (v25 < 1.84467441e19)
        {
          v26 = v25;
          v27 = swift_task_alloc();
          v0[8] = v27;
          *v27 = v0;
          v27[1] = sub_1000EB0DC;
          v10 = v26;

          return static Task<>.sleep(nanoseconds:)(v10);
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000EB0DC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1000EB28C;
  }

  else
  {
    v5 = sub_1000EB218;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000EB218()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EB28C()
{
  v11 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  v5 = v0[5];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10001901C(0xD000000000000024, 0x800000010022EF40, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Unable to present success state", v6, 0xCu);
    sub_100014B64(v7);
  }

  v8 = v0[1];

  return v8();
}

unint64_t sub_1000EB3E8()
{
  result = qword_1002CFD50;
  if (!qword_1002CFD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002CFD50);
  }

  return result;
}