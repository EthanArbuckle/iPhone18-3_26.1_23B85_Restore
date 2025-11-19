uint64_t sub_100C7B4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C7B560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE **sub_100C7B6CC(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_100C7B70C(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))();
  v8 = sub_1000109A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100C7B768(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    sub_10010FC20(&qword_1011BC168);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EBC6B0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    debugPrint<A>(_:separator:terminator:to:)();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10._countAndFlagsBits = 8236;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        sub_10010FC20(&qword_1011BC168);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100EBC6B0;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;

        debugPrint<A>(_:separator:terminator:to:)();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 91;
}

uint64_t sub_100C7B91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100C7B9B8()
{
  result = qword_1011BBB20;
  if (!qword_1011BBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB20);
  }

  return result;
}

unint64_t sub_100C7BA10()
{
  result = qword_1011BBB28;
  if (!qword_1011BBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB28);
  }

  return result;
}

unint64_t sub_100C7BA68()
{
  result = qword_1011BBB30;
  if (!qword_1011BBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB30);
  }

  return result;
}

uint64_t sub_100C7BB04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100C7BB50()
{
  result = qword_1011BBB40;
  if (!qword_1011BBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB40);
  }

  return result;
}

unint64_t sub_100C7BBA8()
{
  result = qword_1011BBB48;
  if (!qword_1011BBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB48);
  }

  return result;
}

unint64_t sub_100C7BC00()
{
  result = qword_1011BBB50;
  if (!qword_1011BBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB50);
  }

  return result;
}

unint64_t sub_100C7BC58()
{
  result = qword_1011BBB58;
  if (!qword_1011BBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB58);
  }

  return result;
}

unint64_t sub_100C7BCB0()
{
  result = qword_1011BBB60;
  if (!qword_1011BBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB60);
  }

  return result;
}

unint64_t sub_100C7BD08()
{
  result = qword_1011BBB68;
  if (!qword_1011BBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB68);
  }

  return result;
}

unint64_t sub_100C7BDA4()
{
  result = qword_1011BBB80;
  if (!qword_1011BBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBB80);
  }

  return result;
}

void sub_100C7BE00()
{
  sub_100C7BFB4(319, &qword_1011BBBC0, &type metadata accessor for Locale.Language);
  if (v0 <= 0x3F)
  {
    sub_100C7BFB4(319, &unk_1011BD710, type metadata accessor for Lyrics.Translation);
    if (v1 <= 0x3F)
    {
      sub_100C7BFB4(319, &unk_1011BBBC8, type metadata accessor for Lyrics.Transliteration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100C7BFB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 sub_100C7C008(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100C7C024(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100C7C06C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Lyrics.Word.Emphasis(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 sub_100C7C0F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100C7C10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100C7C154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100C7C1D8()
{
  sub_100C7BFB4(319, &qword_1011BBBC0, &type metadata accessor for Locale.Language);
  if (v0 <= 0x3F)
  {
    sub_100C7C330(319, &qword_1011BBE20, &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100C7C330(319, &unk_1011BBE28, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10001F928();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100C7C330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100C7C380(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100C7C3A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100C7C3B8(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100C7C3FC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100C7C454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C7C49C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_100C7C53C()
{
  type metadata accessor for Locale.Language();
  if (v0 <= 0x3F)
  {
    sub_100C7C5DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100C7C5DC()
{
  if (!qword_1011BBEF8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BBEF8);
    }
  }
}

void sub_100C7C684()
{
  sub_100C7C330(319, &unk_1011BBE28, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Locale.Language();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C7C758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100C7C82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale.Language();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100C7C8E8()
{
  type metadata accessor for Locale.Language();
  if (v0 <= 0x3F)
  {
    sub_100C7C5DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C7C9E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100C7C9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100C7CA1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100C7CA64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_100C7CAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC068);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100C7CD10()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void sub_100C7CD94(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011BC0F0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100C7D060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_100C7D0C8()
{
  result = qword_1011BC178;
  if (!qword_1011BC178)
  {
    sub_100009F78(255, &qword_1011BBB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC178);
  }

  return result;
}

uint64_t sub_100C7D1DC()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int sub_100C7D308()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F0F300[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C7D390()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F0F300[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100C7D3DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void *sub_100C7D440()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = sub_100C7DCB0();
  static LyricsOptionsManager.shared = v0;
  return result;
}

uint64_t static LyricsOptionsManager.shared.getter()
{
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100C7D4D8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    result = [result dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (result)
    {
      v2 = result;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v4 = v0, v5 = sub_1000160B4(v20), (v6 & 1) != 0))
      {
        sub_10000DD18(*(v3 + 56) + 32 * v5, &v21);
        sub_10001621C(v20);

        sub_10010FC20(&qword_1011BC220);
        result = swift_dynamicCast();
        if (result)
        {
          if (!sub_100C6E398(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v7 = sub_10000F8B8(0xD00000000000001CLL, 0x8000000100E6A220);
              if (v8)
              {
                sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v7, v20);
                if (swift_dynamicCast())
                {
                  v20[0] = *(v0 + 40);
                  if (v21)
                  {

                    sub_100C7F580(&v21, 0);
                  }

                  else
                  {

                    sub_100C81A84(0);
                  }

                  v9 = *(v0 + 40);
                  *(v0 + 40) = v20[0];
                  sub_100C7DA4C(v9);
                }
              }
            }
          }

          if (!sub_100C6E398(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v10 = sub_10000F8B8(0xD000000000000020, 0x8000000100E6A240);
              if (v11)
              {
                sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v10, v20);
                if (swift_dynamicCast())
                {
                  v20[0] = *(v0 + 40);
                  if (v21)
                  {

                    sub_100C7F580(&v21, 1);
                  }

                  else
                  {

                    sub_100C81A84(1);
                  }

                  v12 = *(v0 + 40);
                  *(v0 + 40) = v20[0];
                  sub_100C7DA4C(v12);
                }
              }
            }
          }

          if (sub_100C6E398(8, *(v0 + 40)))
          {
          }

          if (!MEMORY[0xD000000000000025])
          {
          }

          v13 = sub_10000F8B8(0xD000000000000018, 0x8000000100E6A270);
          if ((v14 & 1) == 0)
          {
          }

          sub_1000160F8(MEMORY[0xD00000000000004D] + 40 * v13, v20);

          result = swift_dynamicCast();
          if (result)
          {
            v16 = v21;
            v15 = v22;
            if (v21 == 0x73636972796CLL && v22 == 0xE600000000000000)
            {

              v17 = v4;
LABEL_33:
              v20[0] = *(v17 + 40);

              sub_100C81A84(3);
LABEL_34:
              v18 = *(v17 + 40);
              *(v17 + 40) = v20[0];
              sub_100C7DA4C(v18);
            }

            v17 = v4;
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              goto LABEL_33;
            }

            if (v16 == 0x74696C736E617274 && v15 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v20[0] = *(v17 + 40);

              sub_100C7F580(&v21, 3);
              goto LABEL_34;
            }

            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        return sub_10001621C(v20);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_100C7D4D8();
}

uint64_t (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100C7DA18;
}

uint64_t sub_100C7DA18(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100C7D4D8();
  }

  return result;
}

void sub_100C7DA4C(uint64_t a1)
{
  if ((sub_100C7F064(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        sub_10010FC20(&qword_1011BC1D8);
        sub_100C82CD8();
        BidirectionalCollection<>.joined(separator:)();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = String._bridgeToObjectiveC()();

        v21 = String._bridgeToObjectiveC()();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100C7094C(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_100C7094C((v16 > 1), v17 + 1, 1, v11);
          }

          v8 &= v8 - 1;
          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *sub_100C7DCB0()
{
  v1 = v0;
  v0[2] = 0;
  v2 = type metadata accessor for LyricsOptionsManager.Observer();
  v0[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v2);
  v0[4] = 0;
  v0[5] = &_swiftEmptySetSingleton;
  sub_100009F78(0, &qword_1011BC440);
  strcpy(v6, "lyricsOptions");
  v6[7] = -4864;
  v3 = swift_allocObject();
  swift_weakInit();
  sub_100009988();

  v4 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v6, 0, 0, sub_100C82D3C, v3, &type metadata for String);

  v1[4] = v4;

  sub_100C7DF2C();
  return v1;
}

uint64_t sub_100C7DDFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);

    sub_100C7DF2C();
    swift_beginAccess();
    type metadata accessor for LyricsOptionsManager.Observer();

    v2 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v2 != WeakArray.endIndex.getter())
    {
      v3 = WeakArray.subscript.getter();
      v2 = FixedLengthCollection.index(after:)(v2);
      if (v3)
      {
        v4 = *(v3 + 16);

        v4(v1);
      }
    }
  }

  return result;
}

uint64_t sub_100C7DF2C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v44 = v3;
  v45 = v5;
  sub_100009988();
  v6 = StringProtocol.components<A>(separatedBy:)();

  v8 = *(v6 + 16);
  if (!v8)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_100:

    v41 = sub_100C9C0E4(v10);

    v42 = *(v43 + 40);
    *(v43 + 40) = v41;
    sub_100C7DA4C(v42);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v9 < *(v6 + 16))
  {
    v11 = (v6 + 32 + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    ++v9;
    v14 = HIBYTE(v13) & 0xF;
    v15 = v12 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      goto LABEL_7;
    }

    if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v44 = v12;
        v45 = v13 & 0xFFFFFFFFFFFFFFLL;
        if (v12 == 43)
        {
          if (!v14)
          {
            goto LABEL_102;
          }

          if (--v14)
          {
            v18 = 0;
            v28 = &v44 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v30 + v29);
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v12 == 45)
        {
          if (!v14)
          {
            goto LABEL_104;
          }

          if (--v14)
          {
            v18 = 0;
            v22 = &v44 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v24 - v23);
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v14)
        {
          v18 = 0;
          v33 = &v44;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = (v35 + v34);
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v14)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v17 = *result;
        if (v17 == 43)
        {
          if (v15 < 1)
          {
            goto LABEL_105;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (!result)
            {
              goto LABEL_61;
            }

            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v27 + v26);
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v15 < 1)
          {
            goto LABEL_103;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (result)
            {
              v19 = (result + 1);
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = (v21 - v20);
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v14)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v14) = 0;
LABEL_70:
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!result)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = (v32 + v31);
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_70;
    }

    v18 = sub_100C82448(v12, v13, 10);
    v40 = v39;

    if (v40)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      if (v18 == 7)
      {
        v36 = 7;
        goto LABEL_92;
      }

      if (v18 == 8)
      {
        v36 = 8;
        goto LABEL_92;
      }

      if (v18 == 1000)
      {
        v36 = 9;
LABEL_92:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100C70A58(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v38 = *(v10 + 2);
        v37 = *(v10 + 3);
        if (v38 >= v37 >> 1)
        {
          result = sub_100C70A58((v37 > 1), v38 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v38 + 1;
        v10[v38 + 32] = v36;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v9 == v8)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  sub_10010FC20(&qword_1011BC218);
  WeakArray.append(_:)();
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100C7F580(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100C7DA4C(v5);
  }

  v6 = *(v1 + 40);

  sub_100C7F580(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  sub_100C7DA4C(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100C7F580(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_100C7DA4C(v5);
  }

  v7 = *(v1 + 40);

  sub_100C81A84(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  sub_100C7DA4C(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return sub_100C6E398(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BBA80);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Locale.Language();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(v1 + 16);
  if (!v19)
  {
    return 1;
  }

  v20 = [v19 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v20)
  {
    return 1;
  }

  v62 = v5;
  v63 = a1;
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = 0xD000000000000015;
  v65 = 0x8000000100E6A150;
  AnyHashable.init<A>(_:)();
  if (*(v22 + 16) && (v23 = sub_1000160B4(&v66), (v24 & 1) != 0))
  {
    sub_10000DD18(*(v22 + 56) + 32 * v23, v68);
    sub_10001621C(&v66);

    sub_10010FC20(&qword_1011BC220);
    if (swift_dynamicCast())
    {
      v25 = v64;
      if (!*(v64 + 16) || (v26 = sub_10000F8B8(0xD000000000000021, 0x8000000100E6A170), (v27 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      sub_1000160F8(*(v25 + 56) + 40 * v26, &v66);

      sub_10010FC20(&qword_1011BC1D8);
      if (swift_dynamicCast())
      {
        result = v68[0];
        v55 = *(v68[0] + 16);
        if (v55)
        {
          v29 = 0;
          v53 = (v16 + 8);
          v30 = v68[0] + 40;
          v54 = v68[0];
          while (1)
          {
            v31 = *(result + 16);
            v60 = v29;
            if (v29 >= v31)
            {
              __break(1u);
              return result;
            }

            v59 = v30;

            Locale.Language.init(identifier:)();
            Locale.Language.languageCode.getter();
            v32 = type metadata accessor for Locale.LanguageCode();
            v33 = *(v32 - 8);
            v61 = *(v33 + 48);
            v34 = v61(v14, 1, v32);
            v56 = v33;
            if (v34 == 1)
            {
              sub_1000095E8(v14, &qword_1011BBA50);
              v58 = 0;
              v35 = 0;
            }

            else
            {
              v36 = Locale.LanguageCode.identifier.getter();
              v35 = v37;
              (*(v33 + 8))(v14, v32);
              v58 = v36;
              if (v36 == 26746 && v35 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v57 = v35;
                Locale.Language.script.getter();
                v38 = type metadata accessor for Locale.Script();
                v39 = *(v38 - 8);
                if ((*(v39 + 48))(v8, 1, v38) == 1)
                {
                  sub_1000095E8(v8, &qword_1011BBA80);
                  v35 = v57;
                }

                else
                {

                  v41 = Locale.Script.identifier.getter();
                  v57 = v42;
                  v58 = v41;
                  (*(v39 + 8))(v8, v38);
                  v66 = 2975866;
                  v67 = 0xE300000000000000;
                  v43._countAndFlagsBits = v58;
                  v43._object = v57;
                  String.append(_:)(v43);

                  v35 = v67;
                  v58 = v66;
                }
              }
            }

            Locale.Language.languageCode.getter();
            if (v61(v11, 1, v32) == 1)
            {
              break;
            }

            v44 = Locale.LanguageCode.identifier.getter();
            v40 = v45;
            (*(v56 + 8))(v11, v32);
            if (v44 == 26746 && v40 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v61 = v44;
              v57 = v35;
              v46 = v62;
              Locale.Language.script.getter();
              v47 = type metadata accessor for Locale.Script();
              v48 = *(v47 - 8);
              if ((*(v48 + 48))(v46, 1, v47) == 1)
              {
                sub_1000095E8(v46, &qword_1011BBA80);
                v35 = v57;
                v44 = v61;
              }

              else
              {

                v61 = Locale.Script.identifier.getter();
                v50 = v49;
                (*(v48 + 8))(v46, v47);
                v66 = 2975866;
                v67 = 0xE300000000000000;
                v51._countAndFlagsBits = v61;
                v51._object = v50;
                String.append(_:)(v51);

                v44 = v66;
                v40 = v67;
                v35 = v57;
              }
            }

            if (!v35)
            {
              goto LABEL_40;
            }

            if (!v40)
            {
LABEL_15:

              (*v53)(v18, v15);
              goto LABEL_16;
            }

            if (v58 == v44 && v35 == v40)
            {

              (*v53)(v18, v15);
LABEL_44:

              return 0;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v53)(v18, v15);
            if (v52)
            {
              goto LABEL_44;
            }

LABEL_16:
            v29 = v60 + 1;
            v30 = v59 + 16;
            result = v54;
            if (v55 == v60 + 1)
            {
              goto LABEL_42;
            }
          }

          sub_1000095E8(v11, &qword_1011BBA50);
          if (v35)
          {
            goto LABEL_15;
          }

          v40 = 0;
LABEL_40:
          (*v53)(v18, v15);
          if (!v40)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    sub_10001621C(&v66);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100C7F064(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    v14 = qword_100F0F300[v13];
    Hasher._combine(_:)(v14);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_100F0F300[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C7F1E8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100C80898(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100C7F338(void *a1, void *a2)
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

      sub_100009F78(0, &qword_1011BBB18);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100C7FAC4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_1011BC120);
    }

    v18 = v8;
    sub_10066FD84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_1011BBB18);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100C80A18(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100C7F580(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = qword_100F0F300[a2];
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_100F0F300[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100C80BB8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100C7F698(Swift::UInt *a1, Swift::UInt a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      _s4WordCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100C7FCD4(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_100C805A4();
    }

    sub_100C807F4(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_100C80D20(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100C7F89C(void *a1, void *a2)
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

      type metadata accessor for SyncedLyricsLineView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100C7FED4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_1011BC0F0);
    }

    v18 = v8;
    sub_10066FD84(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100C80E7C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100C7FAC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC120);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_1011BBB18);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1538(v9 + 1, &qword_1011BC120);
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

Swift::Int sub_100C7FCD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC430);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      _s4WordCMa();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100C805A4();
        }

        v2 = v14;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v13);
        result = Hasher._finalize()();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
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

Swift::Int sub_100C7FED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_1011BC0F0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1538(v9 + 1, &qword_1011BC0F0);
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

uint64_t sub_100C800D4()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC448);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100C80348()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC438);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100F0F300[v16]);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100C805A4()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC430);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100C807F4(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100C80898(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100C800D4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100C8100C();
      goto LABEL_16;
    }

    sub_100C813F8();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100C80A18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_1011BC120);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A48(&qword_1011BC120);
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_1011BC120);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009F78(0, &qword_1011BBB18);
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

Swift::Int sub_100C80BB8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100C80348();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100C81168();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100C81630();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = qword_100F0F300[v4];
  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (qword_100F0F300[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100C80D20(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100C805A4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100C812A8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100C8185C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = _s4WordCMa();
    a2 = v11;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100C80E7C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B1538(v6 + 1, &qword_1011BC0F0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100194A48(&qword_1011BC0F0);
      goto LABEL_12;
    }

    sub_10005F170(v6 + 1, &qword_1011BC0F0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView();
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

void *sub_100C8100C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC448);
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

void *sub_100C81168()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC438);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100C812A8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC430);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100C813F8()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC448);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100C81630()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC438);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100F0F300[v15]);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100C8185C()
{
  v1 = v0;
  v2 = *v0;
  sub_10010FC20(&qword_1011BC430);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100C81A84(char a1)
{
  v2 = v1;
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = qword_100F0F300[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_100F0F300[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C81168();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_100C820F0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

Swift::Int sub_100C81B9C(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100C81EA4(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C812A8();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_100C822A0(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_100C81D0C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100C81F98();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for SyncedLyricsLineView();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100194A48(&qword_1011BC0F0);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_10019745C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

Swift::Int sub_100C81EA4(uint64_t a1, Swift::UInt a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100C7FCD4(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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

  sub_100C822A0(v10);
  *v2 = v14;
  return v6;
}

uint64_t sub_100C81F98()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100C7FED4(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for SyncedLyricsLineView();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_10019745C(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100C820F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(qword_100F0F300[v10]);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100C822A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unsigned __int8 *sub_100C82448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100C829D4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100C829D4()
{
  v0 = String.subscript.getter();
  v4 = sub_100C82A54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100C82A54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000DCA0(v9, 0), v12 = sub_1002CEF28(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

uint64_t _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t sub_100C82C50()
{
  result = qword_1011BC228;
  if (!qword_1011BC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC228);
  }

  return result;
}

unint64_t sub_100C82CD8()
{
  result = qword_1011BC1E0;
  if (!qword_1011BC1E0)
  {
    sub_1001109D0(&qword_1011BC1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC1E0);
  }

  return result;
}

uint64_t sub_100C82D44(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100C71CF0(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C82D94(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100C71CF0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C82DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100C742F4(a1, a2, isUniquelyReferenced_nonNull_native);
    v16 = *(a2 + 16);
    sub_100015BB0(&v16);
    v15 = *(a2 + 32);
    result = sub_1000095E8(&v15, &qword_1011BC0A0);
    *v2 = v13;
  }

  else
  {
    v8 = sub_100C71CF0(a2);
    v10 = v9;
    v16 = *(a2 + 16);
    sub_100015BB0(&v16);
    v15 = *(a2 + 32);
    result = sub_1000095E8(&v15, &qword_1011BC0A0);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v14 = *v3;
      if (!v11)
      {
        sub_100C750DC();
        v12 = v14;
      }

      result = sub_100C962B4(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

id sub_100C82F2C(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  sub_1002AD8C8(__dst, v6);
  LOBYTE(a1) = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  result = sub_100C9C2C4(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100C82FD8(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = a1 & 1;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = a1;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v85 = a1 & 1;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v10 = sub_100C8DF2C(v8, v6);

        [v9 setAttributedText:v10];
      }

      else
      {
      }

      v11 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v12 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v12 = 384;
      }

      v13 = *(v11 + 368);
      v14 = *(v11 + v12);
      v15 = v13;
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() animationWithKeyPath:v16];

      v77 = v11;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v11 + 664) stiffness:*(v11 + 672) damping:*(v11 + 680) initialVelocity:{0.0, 0.0}]);
      v18 = v17;
      if (v5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      if (v5)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = [v19 CGColor];
      [v18 setFromValue:v21];

      v89 = v20;
      v22 = [v20 CGColor];
      [v18 setToValue:v22];
      v73 = v18;

      v23 = swift_allocObject();
      *(v23 + 16) = _swiftEmptyArrayStorage;
      v24 = (v23 + 16);
      v25 = *(v3 + 56);
      v75 = v14;
      v76 = v15;
      v88 = v23;
      v83 = *(v25 + 16);
      if (v83)
      {
        v81 = v25 + 32;
        if (v5)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = 0;
        v79 = v25;
        v74 = a2;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v28 = *(v81 + 8 * v27);
          if ((a2 & 1) != 0 && (v29 = *(v28 + 112)) != 0 && (v30 = *(v29 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v31 = v30;
            v32 = String._bridgeToObjectiveC()();
            [v31 addAnimation:v73 forKey:v32];

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v34)
          {
            v35 = v34;
            v36 = [v89 CGColor];
            [v35 setBackgroundColor:v36];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v28;
          *(v5 + 24) = v85;
          *(v5 + 32) = v23;
          *(v5 + 40) = v14;
          *(v5 + 48) = v15;
          v87 = v27;
          if (a2)
          {
            sub_100009F78(0, &qword_1011BC570);
            v37 = v77[83];
            v38 = v77[84];
            v39 = v77[85];
            v40 = objc_allocWithZone(UISpringTimingParameters);
            v41 = v14;
            v42 = v15;

            v43 = [v40 initWithMass:v37 stiffness:v38 damping:v39 initialVelocity:{0.0, 0.0}];
            v44 = swift_allocObject();
            *(v44 + 16) = sub_100C9E3E4;
            *(v44 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v43, 0, sub_100029B6C, v44, 0, 0, 0.0);
          }

          else
          {
            v45 = *(v28 + 112);
            if (v45 && (v46 = *(v45 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v47 = v14;
              v48 = v15;

              [v46 setAlpha:v26];
            }

            else
            {
              v49 = v14;
              v50 = v15;
            }

            swift_beginAccess();
            v51 = *(v28 + 16);
            if (v51 >> 62)
            {
              v52 = _CocoaArrayWrapper.endIndex.getter();
              if (v52)
              {
LABEL_39:
                if (v52 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v52; ++i)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v54 = *(v51 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v55 = *(v54 + 208);
                  if (v55)
                  {
                    v56 = *(v55 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v56 setBackgroundColor:v89];
                  }
                }

                v14 = v75;
                v15 = v76;
                a2 = v74;
                goto LABEL_21;
              }
            }

            else
            {
              v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v23 = v88;
          v27 = v87 + 1;
          v25 = v79;
          if (v87 + 1 == v83)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v24;
      if (*v24 >> 62)
      {
        goto LABEL_88;
      }

      v57 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        while (1)
        {
          v86 = v5 & 0xC000000000000001;
          v78 = v5 + 32;
          v80 = v5 & 0xFFFFFFFFFFFFFF8;
          v14 = &v92;

          v58 = 0;
          v82 = v57;
          v84 = v5;
          while (1)
          {
            if (v86)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v58 >= *(v80 + 16))
              {
                goto LABEL_86;
              }

              v59 = *(v78 + 8 * v58);

              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            sub_100CA3FE4();
            v61 = *(v59 + 104);
            if (!(v61 >> 62))
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                break;
              }

              goto LABEL_81;
            }

            v62 = _CocoaArrayWrapper.endIndex.getter();
            if (v62)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v58 == v57)
            {

              goto LABEL_90;
            }
          }

          if (v62 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (!v57)
          {
            goto LABEL_89;
          }
        }

        v63 = 0;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v69 = *(v61 + 8 * v63 + 32);
          }

          v70 = *(v69 + 136);
          v71 = *(v69 + 144);
          if (v71 == 1)
          {
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v69 + 144))
            {
              v72 = 1;
            }

            else
            {
              v72 = v70 == 0;
            }

            if (v72)
            {
LABEL_79:
              sub_100009F78(0, &qword_1011BD500);
              v70 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          sub_100C9E408(*(v69 + 136), *(v69 + 144));
          sub_100C9E408(v70, v71);
          [(objc_class *)v70 stopAnimation:1];
LABEL_69:
          ++v63;
          v94 = sub_100C9E3F8;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_10002BC98;
          v93 = &unk_1010F5EC8;
          v64 = _Block_copy(&aBlock);

          [(objc_class *)v70 addAnimations:v64];
          _Block_release(v64);
          v94 = sub_100C9E400;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_100338AB8;
          v93 = &unk_1010F5EF0;
          v65 = _Block_copy(&aBlock);

          v66 = v70;

          [(objc_class *)v66 addCompletion:v65];
          _Block_release(v65);
          v67 = *(v69 + 136);
          *(v69 + 136) = v66;
          v68 = *(v69 + 144);
          *(v69 + 144) = 1;
          sub_100C9E32C(v67, v68);
          [(objc_class *)v66 startAnimation];

          if (v62 == v63)
          {

            v57 = v82;
            v5 = v84;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

uint64_t sub_100C83AAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  result = swift_beginAccess();
  v14 = *(a1 + 16);
  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
      }

      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v18 = *(v17 + 208);
      if (v18)
      {
        v19 = *(v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v19 setBackgroundColor:a4];
      }
    }
  }

  return result;
}

uint64_t sub_100C83C9C(uint64_t result, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (result)
    {
      v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v5)
      {
        return result;
      }

      v6 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      result = memcpy(__dst, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v7 = *(v5 + 56);
      v8 = *(v7 + 16);
      if (!v8)
      {
        return result;
      }

      v9 = v6 + a2;

      sub_1002AD8C8(__dst, v57);

      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;

        sub_100CA03C8(__dst, v9);

        if (v8 == v10)
        {

          return sub_100C9C2C4(__dst);
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v44 = objc_opt_self();
      v45 = swift_allocObject();
      *(v45 + 16) = v3;
      *(v45 + 24) = a2;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_100C9E388;
      *(v46 + 24) = v45;
      __dst[4] = sub_10018A020;
      __dst[5] = v46;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = sub_100029B9C;
      __dst[3] = &unk_1010F5E50;
      v47 = _Block_copy(__dst);
      v48 = v3;

      [v44 performWithoutAnimation:v47];
      _Block_release(v47);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
    return result;
  }

  v11 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v11)
  {
    sub_100C8B404(_swiftEmptyArrayStorage);
    v12 = v50;
    v13 = *(v50 + 16);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_43:
  }

  v12 = *(v11 + 56);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_43;
  }

LABEL_11:
  sub_100009F78(0, &qword_1011BD580);
  v14 = 0;
  v15 = v12 + 32;
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v53 = v12;
  v54 = v2;
  v52 = v13;
  v51 = v12 + 32;
  v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v17 = *(v15 + 8 * v14++);
    memcpy(__dst, &v3[v16], 0x2B0uLL);
    *(v17 + 120) = 1;

    sub_1002AD8C8(__dst, v57);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(sub_100C9E340, v19);

    if ((*(v17 + 57) & 1) == 0)
    {
      break;
    }

    result = swift_beginAccess();
    v20 = *(v17 + 16);
    if (v20 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v21 = result;
      if (!result)
      {
LABEL_36:
        sub_100C9C2C4(__dst);

        v16 = v55;
        if (v14 == v13)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_36;
      }
    }

    if (v21 < 1)
    {
      goto LABEL_47;
    }

    v56 = v14;

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
        if (!v23)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = *(v20 + 8 * i + 32);

        v23 = *(v24 + 208);
        if (!v23)
        {
          goto LABEL_17;
        }
      }

      v25 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v25)
      {
        v26 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v27 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v28 = v23;
        sub_100C9E348(v25, v26);
        v29 = v27;
        v30 = v25;
        [v29 setBackgroundColor:v30];
      }

LABEL_17:
    }

    sub_100C9C2C4(__dst);

    v12 = v53;
    v3 = v54;
    v13 = v52;
    v16 = v55;
    v14 = v56;
    v15 = v51;
    if (v56 == v52)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v31 = *(v17 + 112);
  if (v31 && (v32 = *(v31 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v33 = __dst[25];
    v34 = v32;
    [v33 lineHeight];
    v36 = vabdd_f64(v35 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
    if (*(v17 + 58))
    {
      v37 = v36 + CGRectGetWidth(*(v17 + 80));
      v38 = -v36;
    }

    else
    {
      v38 = -v36;
      v37 = -v36;
    }

    v39 = *(v17 + 80);
    v40 = *(v17 + 88);
    v41 = *(v17 + 96);
    v42 = *(v17 + 104);
    v43 = v34;
    v60.origin.x = v39;
    v60.origin.y = v40;
    v60.size.width = v41;
    v60.size.height = v42;
    [v43 setFrame:{v37, v38, v36, v36 + v36 + CGRectGetHeight(v60)}];
    sub_100C9C2C4(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_100C9C2C4(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

uint64_t sub_100C84354(uint64_t result, double a2)
{
  v2 = *(result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    result = memcpy(__dst, (result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      sub_1002AD8C8(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        sub_100CA03C8(__dst, v7);

        if (v6 == v8)
        {

          return sub_100C9C2C4(__dst);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100C8448C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_100C845CC(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = sub_100C8448C(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      sub_100009988();
      *v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    sub_100C8A7F8(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

uint64_t sub_100C847DC()
{
  v11.receiver = v0;
  v11.super_class = _s8TextViewCMa();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  [v0 bounds];
  v2 = sub_100C8448C(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v10 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v8 = sub_100009988();
    *v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v12);
  }

  [v0 bounds];
  sub_100C8A7F8(v2 & 1, 0, v5, v6);
  sub_100C84960();
  return sub_100C83C9C(0, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

id sub_100C84960()
{
  v3 = v0;
  result = [v0 bounds];
  if (v5 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return result;
  }

  v123 = v0;
  v124 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v7 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v8 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v9 = *(v8 + 48);
  v142[2] = *(v8 + 32);
  v142[3] = v9;
  v10 = *(v8 + 80);
  v142[4] = *(v8 + 64);
  v142[5] = v10;
  v11 = *(v8 + 16);
  v142[0] = *v8;
  v142[1] = v11;
  v12 = *(&v10 + 1);
  v13 = v10;
  if (*(&v142[0] + 1))
  {

    v14 = v13;
    v15 = v12;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v139[0] = v142[0];
  v16 = *(v8 + 32);
  v139[1] = *(v8 + 16);
  v139[2] = v16;
  v17 = *(v8 + 64);
  v139[3] = *(v8 + 48);
  v139[4] = v17;
  v140 = v13;
  v141 = v12;

  v18 = v124;

  sub_1000089F8(v142, __dst, &qword_1011BC540);
  sub_1000095E8(v139, &qword_1011BC540);
  v19 = &selRef_setContacts_;
  v20 = off_1011BC000;
  if (!v6)
  {
    if (!v15)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v15)
  {
LABEL_12:
    v21 = v123;

    goto LABEL_13;
  }

  if (v7 == v14 && v6 == v15)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v21 = v123;
    goto LABEL_49;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v21 = v123;
  if ((v84 & 1) == 0)
  {
LABEL_13:
    v22 = *(v8 + 16);
    __dst[0] = *v8;
    __dst[1] = v22;
    v23 = *(v8 + 48);
    __dst[2] = *(v8 + 32);
    __dst[3] = v23;
    v24 = *(v8 + 80);
    __dst[4] = *(v8 + 64);
    __dst[5] = v24;
    if (*(&__dst[0] + 1))
    {
      v125 = *(&__dst[1] + 1);
      v25 = *&__dst[1];
      v26 = *(&__dst[2] + 1);
      v113 = __dst[4];
      v114 = __dst[3];
      v27 = objc_opt_self();
      v135 = __dst[2];
      v136 = __dst[3];
      v137 = __dst[4];
      v138 = __dst[5];
      v133 = __dst[0];
      v134 = __dst[1];
      sub_100C9DFD4(&v133, &aBlock);
      if ([v27 _isInAnimationBlockWithAnimationsEnabled] && v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v118 = *(v26 + 16);
        v112 = v8;
        if (!v118)
        {
          goto LABEL_77;
        }

        v117 = v26 + 32;

        v28 = 0.0;
        v115 = v26;
        v116 = v25;
        while (1)
        {
          if (*&v28 >= *(v26 + 16))
          {
            goto LABEL_95;
          }

          v8 = *(v117 + 8 * *&v28);
          recta = v28;
          if (v25[2] && (v29 = sub_1006BE788(v8), (v30 & 1) != 0))
          {
            v25 = *(v25[7] + 8 * v29);
          }

          else
          {
            v25 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v32 = sub_100C9C158(v31);

          v33 = sub_100C857A4(v32, v25);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v25 = __CocoaSet.makeIterator()();
            _s4WordCMa();
            sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
            Set.Iterator.init(_cocoa:)();
            v33 = v143;
            v34 = v144;
            v35 = v145;
            v20 = v146;
            v36 = v147;
          }

          else
          {
            v20 = 0;
            v37 = -1 << *(v33 + 32);
            v34 = (v33 + 56);
            v35 = ~v37;
            v38 = -v37;
            v39 = v38 < 64 ? ~(-1 << v38) : -1;
            v36 = v39 & *(v33 + 56);
          }

          *&rect = *&recta + 1;
          v19 = ((v35 + 64) >> 6);
          while (1)
          {
            v18 = v20;
            if ((v33 & 0x8000000000000000) == 0)
            {
              break;
            }

            v25 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = __CocoaSet.Iterator.next()();
            if (!v43)
            {
              goto LABEL_19;
            }

            *&v126[0] = v43;
            _s4WordCMa();
            swift_dynamicCast();
            v42 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v125[2])
            {
              v25 = v125;
              v44 = sub_1006BE788(v8);
              if (v45)
              {
                v46 = *(v42 + 208);
                if (v46)
                {
                  v47 = v125[7] + 32 * v44;
                  v49 = *(v47 + 16);
                  v48 = *(v47 + 24);
                  v2 = *v47;
                  v1 = *(v47 + 8);
                  v25 = v46;
                  v150.origin.x = v2;
                  v150.origin.y = v1;
                  v150.size.width = v49;
                  v150.size.height = v48;
                  Width = CGRectGetWidth(v150);
                  v51 = Width - CGRectGetWidth(*(v8 + 80));
                  [v25 frame];
                  [v25 setFrame:v52 - v51];
                }
              }
            }
          }

          v40 = v20;
          v41 = v36;
          if (v36)
          {
            break;
          }

          while (1)
          {
            v20 = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (v20 >= v19)
            {
              break;
            }

            v41 = *&v34[8 * v20];
            v40 = (v40 + 1);
            if (v41)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          sub_10005C9F8();

          v28 = rect;
          v18 = v124;
          v19 = &selRef_setContacts_;
          v26 = v115;
          v25 = v116;
          if (*&rect == v118)
          {

            v8 = v112;
LABEL_77:
            v91 = *(v18 + 8);
            v92 = v18[9];
            v93 = v18[10];
            v94 = v18[11];
            *(v18 + 4) = v114;
            *(v18 + 5) = v113;
            v25 = swift_allocObject();
            v25[2] = v18;
            v125 = v91;
            v25[3] = v91;
            *(v25 + 4) = v92;
            rect = v92;
            v1 = v93;
            *(v25 + 5) = v93;
            *(v25 + 6) = v94;
            v2 = v94;

            v20 = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v36 = (v41 - 1) & v41;
        v42 = *(*(v33 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v41)))));

        if (!v42)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      sub_1000095E8(__dst, &qword_1011BC540);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v53 = *&v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v53 == 1)
  {
    [v21 bounds];
    v54 = (CGRectGetMaxX(v152) - v124[10]) * 0.5;
    goto LABEL_53;
  }

  if (v53 == 2)
  {
    [v21 bounds];
    v54 = CGRectGetMaxX(v151) - v124[10];
LABEL_53:
    v124[8] = v54;
  }

  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v56 = (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v56 = v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v58 = *v57;
    memcpy(__dst, &v21[v55], 0x2B0uLL);
    v59 = v58;
    sub_1002AD8C8(__dst, &v133);
    v60 = sub_100CA33F8(v59, v56, __dst);
    sub_100C9C2C4(__dst);

    [v21 addSubview:v60];
    v125 = objc_opt_self();
    if (![v125 v19[201]])
    {

      goto LABEL_68;
    }

    v61 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v62 = v61 + 8;
    v63 = *v61;
    if (*v61 != 2)
    {
      v124 = v20;
      v119 = v60;
      v65 = *(v61 + 3);
      v64 = *(v61 + 4);
      v66 = v8;
      v67 = *(v61 + 1);
      v68 = *(v61 + 2);
      v148[0] = *v61;
      v148[1] = v67;
      v148[2] = v68;
      v148[3] = v65;
      v148[4] = v64;
      sub_100C9E2F8(v63);
      sub_100C864C0(v148);
      v8 = v66;
      v60 = v119;
      v20 = v124;
      sub_100C9DE90(v63);
      v69 = *v61;
      *v61 = 2;
      *v62 = 0u;
      *(v61 + 24) = 0u;
      sub_100C9DE90(v69);
    }

    v70 = *(v8 + 16);
    aBlock = *v8;
    v71 = *(v8 + 32);
    v72 = *(v8 + 64);
    v73 = *(v8 + 80);
    v130 = *(v8 + 48);
    v131 = v72;
    v132 = v73;
    v128 = v70;
    v129 = v71;
    if (*(&aBlock + 1))
    {
      v133 = aBlock;
      v74 = *(v8 + 64);
      v136 = *(v8 + 48);
      v137 = v74;
      v138 = *(v8 + 80);
      v75 = *(v8 + 32);
      v134 = *(v8 + 16);
      v135 = v75;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v63 != 2)
    {

      goto LABEL_74;
    }

    v21 = v123;
LABEL_68:
    v25 = swift_allocObject();
    v25[2] = v21;
    v25[3] = v18;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_100C9E2E8;
    *(v76 + 24) = v25;
    *&v129 = sub_10018A020;
    *(&v129 + 1) = v76;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v128 = sub_100029B9C;
    *(&v128 + 1) = &unk_1010F5D38;
    v77 = _Block_copy(&aBlock);
    v19 = *(&v129 + 1);

    v18 = v21;

    [v125 performWithoutAnimation:v77];

    _Block_release(v77);
    LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

    if ((v77 & 1) == 0)
    {
      v78 = v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v79 = *(v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v78 = 2;
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
      sub_100C9DE90(v79);
      v80 = *(v8 + 32);
      v81 = *(v8 + 64);
      v82 = *(v8 + 80);
      v130 = *(v8 + 48);
      v131 = v81;
      v132 = v82;
      v83 = *(v8 + 16);
      aBlock = *v8;
      v128 = v83;
      v129 = v80;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      sub_1000095E8(&aBlock, &qword_1011BC540);
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v20 = sub_100064418(0, v20[2] + 1, 1, v20);
LABEL_78:
      v96 = v20[2];
      v95 = v20[3];
      if (v96 >= v95 >> 1)
      {
        v20 = sub_100064418((v95 > 1), v96 + 1, 1, v20);
      }

      v20[2] = (v96 + 1);
      v97 = &v20[2 * v96];
      v97[4] = sub_100C9E308;
      v97[5] = v25;
      v25 = *(v18 + 7);
      v98 = v25[2];
      if (!v98)
      {
        break;
      }

      v120 = Int.seconds.getter(0);

      v8 = 0;
      while (v8 < v25[2])
      {
        v19 = v25[v8 + 4];
        v99 = *(v19 + 10);
        v100 = *(v19 + 11);
        v102 = *(v19 + 12);
        v101 = *(v19 + 13);

        v153.origin.x = v99;
        v153.origin.y = v100;
        v153.size.width = v102;
        v153.size.height = v101;
        MaxX = CGRectGetMaxX(v153);
        *&v154.origin.x = v125;
        v154.origin.y = rect;
        v154.size.width = v1;
        v154.size.height = v2;
        v104 = v120;
        if (CGRectGetWidth(v154) < MaxX)
        {
          v105 = CGRectGetMaxX(*(v19 + 10));
          *&v155.origin.x = v125;
          v155.origin.y = rect;
          v155.size.width = v1;
          v155.size.height = v2;
          v104 = v105 - CGRectGetWidth(v155);
        }

        v106 = CGRectGetWidth(*(v18 + 8));
        v156.origin.x = v104 + v106 - CGRectGetWidth(*(v19 + 10));
        *&v156.size.width = v19[12];
        *&v156.size.height = v19[13];
        *&v157.origin.x = v19[10];
        *&v156.origin.y = v19[11];
        v19[10] = *&v156.origin.x;
        v157.origin.y = v156.origin.y;
        v157.size.width = v156.size.width;
        v157.size.height = v156.size.height;
        if (!CGRectEqualToRect(v156, v157))
        {
          v19[16] = 0;
        }

        v107 = swift_allocObject();
        *(v107 + 2) = v19;
        v107[3] = v99;
        v107[4] = v100;
        v107[5] = v102;
        v107[6] = v101;
        v108 = v20[2];
        v109 = v20[3];
        v110 = v20;

        if (v108 >= v109 >> 1)
        {
          v110 = sub_100064418((v109 > 1), v108 + 1, 1, v20);
        }

        ++v8;

        v110[2] = (v108 + 1);
        v20 = v110;
        v111 = &v110[2 * v108];
        v111[4] = sub_100C9E31C;
        v111[5] = v107;
        v18 = v124;
        if (v98 == v8)
        {

          sub_1000095E8(__dst, &qword_1011BC540);
          LODWORD(rect) = 0;
          v8 = v112;
          v21 = v123;
          v19 = &selRef_setContacts_;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    sub_1000095E8(__dst, &qword_1011BC540);
    LODWORD(rect) = 0;
    v21 = v123;
  }

  v85 = swift_allocObject();
  *(v85 + 16) = v20;
  *(v85 + 24) = v123;
  sub_1000089F8(&aBlock, v126, &qword_1011BC540);
  v86 = v123;
  sub_100C871AC(&v133, sub_100C9E2F0, v85);

  sub_1000095E8(&aBlock, &qword_1011BC540);
LABEL_74:
  v87 = *v61;
  *v61 = 2;
  *v62 = 0u;
  *(v61 + 24) = 0u;
  sub_100C9DE90(v87);
  v88 = *(v8 + 48);
  v126[2] = *(v8 + 32);
  v126[3] = v88;
  v89 = *(v8 + 80);
  v126[4] = *(v8 + 64);
  v126[5] = v89;
  v90 = *(v8 + 16);
  v126[0] = *v8;
  v126[1] = v90;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  return sub_1000095E8(v126, &qword_1011BC540);
}

void *sub_100C857A4(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100C98000(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100C7FCD4(v5, v6);
LABEL_10:

  return sub_100C98238(a1, v2);
}

uint64_t sub_100C85898(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  result = CGRectEqualToRect(*&a2, v8);
  if ((result & 1) == 0)
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_100C858F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    sub_100C84960(v7);
    v8 = [a2 superview];
    [v8 setNeedsLayout];
  }
}

void sub_100C859BC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v128 = *v3;
  v129 = v4;
  v5 = v3[3];
  v130 = v3[2];
  v131 = v5;
  v6 = v3[5];
  v132 = v3[4];
  v133 = v6;
  v7 = *(&v128 + 1);
  if (*(&v128 + 1))
  {
    v8 = v128;
    v10 = *(&v130 + 1);
    v9 = v130;
    v104 = *(*(&v130 + 1) + 16);
    if (!v104)
    {

      goto LABEL_62;
    }

    v101 = v128;
    v105 = *(&v130 + 1) + 32;
    v107 = v129;
    sub_1000089F8(&v128, v127, &qword_1011BC540);
    v100 = v9;

    v11 = 0;
    v103 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v111 = v11;
    v12 = *(v105 + 8 * v11);
    swift_beginAccess();

    v14 = sub_100C9C158(v13);

    if (*(v107 + 16) && (sub_1006BE788(v12), (v15 & 1) != 0))
    {
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }

    v17 = sub_100C857A4(v14, v16);

    if ((v17 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      _s4WordCMa();
      sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
      Set.Iterator.init(_cocoa:)();
      v17 = v127[0];
      v18 = v127[1];
      v19 = v127[2];
      v20 = v127[3];
      v21 = v127[4];
    }

    else
    {
      v20 = 0;
      v22 = -1 << *(v17 + 32);
      v18 = (v17 + 56);
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v17 + 56);
    }

    v25 = (v19 + 64) >> 6;
    v115 = v17;
    v116 = v18;
    v112 = v111 + 1;
    for (i = v25; ; v25 = i)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        if (!__CocoaSet.Iterator.next()() || (_s4WordCMa(), swift_dynamicCast(), v31 = v126, v120 = v21, v122 = v20, !v126))
        {
LABEL_4:
          sub_10005C9F8();

          v10 = v103;
          v11 = v112;
          if (v112 == v104)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v28 = v20;
        v29 = v21;
        for (j = v20; !v29; ++v28)
        {
          j = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_128;
          }

          if (j >= v25)
          {
            goto LABEL_4;
          }

          v29 = *&v18[8 * j];
        }

        v120 = (v29 - 1) & v29;
        v122 = j;

        if (!v31)
        {
          goto LABEL_4;
        }
      }

      v118 = v31;
      v32 = *(v31 + 104);
      v124 = v32;
      if (v32 >> 62)
      {
        break;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_29;
      }

LABEL_53:
      v48 = *(v118 + 208);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v118 + 208);
      }

      else
      {
        v49 = 0;
      }

      v17 = v115;
      *(v118 + 208) = 0;

      if (!*(v118 + 208))
      {
        v50 = *(v118 + 128);
        *(v118 + 128) = 0;
        v51 = *(v118 + 136);
        *(v118 + 136) = 2;
        sub_100C9E32C(v50, v51);
      }

      v26 = *(v118 + 128);
      *(v118 + 128) = 0;
      v27 = *(v118 + 136);
      *(v118 + 136) = 2;
      sub_100C9E32C(v26, v27);

      v21 = v120;
      v20 = v122;
      v18 = v116;
    }

    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_53;
    }

LABEL_29:
    v34 = 0;
    v35 = v124 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v124 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = __OFADD__(v34++, 1);
        if (v41)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v34 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v40 = *(v124 + 32 + 8 * v34);

      v41 = __OFADD__(v34++, 1);
      if (v41)
      {
        break;
      }

LABEL_39:
      v42 = *(v40 + 88);
      if (!(v42 >> 62))
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
LABEL_41:
        if (v43 < 1)
        {
          goto LABEL_60;
        }

        v44 = 0;
        while (2)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v46 = *(v45 + 96);
            if (!v46)
            {
LABEL_48:
              v47 = 0;
LABEL_45:
              ++v44;
              *(v45 + 96) = 0;

              if (v43 == v44)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v45 = *(v42 + 8 * v44 + 32);

            v46 = *(v45 + 96);
            if (!v46)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v46 removeFromSuperview];
        v47 = *(v45 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v36 = *(v40 + 184);
      if (v36)
      {
        [v36 removeFromSuperview];
        v37 = *(v40 + 184);
      }

      else
      {
        v37 = 0;
      }

      *(v40 + 184) = 0;

      v38 = *(v40 + 136);
      *(v40 + 136) = 0;
      v39 = *(v40 + 144);
      *(v40 + 144) = 2;
      sub_100C9E32C(v38, v39);

      if (v34 == v33)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v101 + 1);
    v8 = v101;
LABEL_62:
    v52 = *(a2 + 48);
    v53 = *(a2 + 56);

    sub_100C98B30(v52, v53, v8, v7);
    v55 = v54;

    v109 = *(v55 + 16);
    if (v109)
    {
      v56 = 0;
      v110 = v55 + 32;
      v108 = v55;
      while (1)
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_130;
        }

        v113 = v56;
        v57 = *(v110 + 8 * v56);
        swift_beginAccess();
        v58 = v57;
        v59 = *(v57 + 16);
        if (!(v59 >> 62))
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v60)
          {
            break;
          }

          goto LABEL_105;
        }

        v83 = *(v57 + 16);
        v84 = _CocoaArrayWrapper.endIndex.getter();
        v59 = v83;
        v60 = v84;
        v58 = v57;
        if (v60)
        {
          break;
        }

LABEL_105:
        v82 = v58;

LABEL_106:
        v85 = *(v82 + 112);
        v86 = v82;
        if (v85)
        {
          [v85 removeFromSuperview];
          v86 = v82;
          v87 = *(v82 + 112);
        }

        else
        {
          v87 = 0;
        }

        *(v86 + 112) = 0;

        v56 = v113 + 1;
        v55 = v108;
        if (v113 + 1 == v109)
        {
          goto LABEL_110;
        }
      }

      if (v60 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v119 = v59 & 0xC000000000000001;
      v106 = v58;

      v61 = 0;
      v117 = v60;
      while (2)
      {
        if (v119)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v65 = *(v64 + 104);
        v125 = v65;
        v121 = v64;
        v123 = v61;
        if (!(v65 >> 62))
        {
          v33 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_75;
          }

LABEL_98:
          v78 = *(v121 + 208);
          if (v78)
          {
            [v78 removeFromSuperview];
            v79 = *(v121 + 208);
          }

          else
          {
            v79 = 0;
          }

          *(v121 + 208) = 0;

          if (!*(v121 + 208))
          {
            v80 = *(v121 + 128);
            *(v121 + 128) = 0;
            v81 = *(v121 + 136);
            *(v121 + 136) = 2;
            sub_100C9E32C(v80, v81);
          }

          v61 = v123 + 1;
          v62 = *(v121 + 128);
          *(v121 + 128) = 0;
          v63 = *(v121 + 136);
          *(v121 + 136) = 2;
          sub_100C9E32C(v62, v63);

          if (v123 + 1 == v117)
          {

            v82 = v106;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (!v33)
      {
        goto LABEL_98;
      }

LABEL_75:
      v66 = 0;
      while (2)
      {
        if ((v125 & 0xC000000000000001) != 0)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v41 = __OFADD__(v66++, 1);
          if (v41)
          {
            goto LABEL_118;
          }

LABEL_84:
          v71 = *(v70 + 88);
          if (!(v71 >> 62))
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              goto LABEL_86;
            }

LABEL_95:
            v77 = *(v70 + 184);
            if (v77)
            {
              [v77 removeFromSuperview];
              v67 = *(v70 + 184);
            }

            else
            {
              v67 = 0;
            }

            *(v70 + 184) = 0;

            v68 = *(v70 + 136);
            *(v70 + 136) = 0;
            v69 = *(v70 + 144);
            *(v70 + 144) = 2;
            sub_100C9E32C(v68, v69);

            if (v66 == v33)
            {
              goto LABEL_98;
            }

            continue;
          }

          v72 = _CocoaArrayWrapper.endIndex.getter();
          if (!v72)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v72 >= 1)
          {
            v73 = 0;
            while (1)
            {
              if ((v71 & 0xC000000000000001) != 0)
              {
                v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v75 = *(v74 + 96);
                if (!v75)
                {
LABEL_93:
                  v76 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v74 = *(v71 + 8 * v73 + 32);

                v75 = *(v74 + 96);
                if (!v75)
                {
                  goto LABEL_93;
                }
              }

              [v75 removeFromSuperview];
              v76 = *(v74 + 96);
LABEL_90:
              ++v73;
              *(v74 + 96) = 0;

              if (v72 == v73)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v66 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v70 = *(v125 + 32 + 8 * v66);

          v41 = __OFADD__(v66++, 1);
          if (!v41)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    sub_1000095E8(&v128, &qword_1011BC540);
  }

  v35 = a1;
  v88 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v89 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v89)
  {
    if (v89 == 1)
    {
      v33 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v96 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v96)
      {
        [v96 removeFromSuperview];
        v35 = a1;
        v97 = *(a1 + v33);
LABEL_122:
        *(v35 + v33) = 0;

        return;
      }

LABEL_121:
      v97 = 0;
      goto LABEL_122;
    }

    if (v89 != 2)
    {
      v90 = v88[1];
      v91 = v88[2];
      v92 = v88[3];
      v93 = v88[4];
      v94 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v95 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      sub_100C9E2F8(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v95)
      {
        [v95 setAttributedText:v89];
      }

      v98 = *(a1 + v94);
      if (v98)
      {
        v99 = v98;
        [v99 setFrame:{v90, v91, v92, v93}];
        sub_100C9DE90(v89);
      }

      else
      {
        sub_100C9DE90(v89);
      }
    }
  }
}

void sub_100C864C0(double *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v2)
  {
    v3 = *a1;
    if (*a1 == 1)
    {
      v19 = objc_allocWithZone(UISpringTimingParameters);
      v20 = v2;
      v21 = [v19 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      sub_100009F78(0, &qword_1011BD500);
      v22 = v21;
      v23 = v1;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v22).super.isa;
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v60 = sub_100C9E28C;
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10002BC98;
      v59 = &unk_1010F5B08;
      v26 = _Block_copy(&aBlock);
      v27 = v20;

      [(objc_class *)isa addAnimations:v26];
      _Block_release(v26);
      v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v60 = sub_1001D2724;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10002BC98;
      v59 = &unk_1010F5B58;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 addAnimations:v30];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v23;
      v60 = sub_100C9E294;
      v61 = v32;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100338AB8;
      v59 = &unk_1010F5BA8;
      v33 = _Block_copy(&aBlock);
      v18 = v31;
      v34 = v23;

      [(objc_class *)isa addCompletion:v33];
      _Block_release(v33);
      [(objc_class *)isa startAnimation];
      [v28 startAnimation];

LABEL_11:
      return;
    }

    if (v3 == 0.0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_100C9E2E0;
      *(v6 + 24) = v5;
      v60 = sub_10018A020;
      v61 = v6;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100029B9C;
      v59 = &unk_1010F5C20;
      v7 = _Block_copy(&aBlock);
      v8 = v2;

      [v4 performWithoutAnimation:v7];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if ((v4 & 1) == 0)
      {
        v9 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        sub_100009F78(0, &qword_1011BD500);
        v10 = v9;
        v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        v60 = sub_1005EB424;
        v61 = v12;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5C70;
        v13 = _Block_copy(&aBlock);
        v14 = v8;

        [(objc_class *)v11.super.isa addAnimations:v13];
        _Block_release(v13);
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v60 = sub_1001D2178;
        v61 = v16;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5CC0;
        v17 = _Block_copy(&aBlock);
        v18 = v14;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v36 = a1[1];
    v35 = a1[2];
    v38 = a1[3];
    v37 = a1[4];
    v54 = v2;
    v40 = [v54 snapshotViewAfterScreenUpdates:0];
    if (v40)
    {
      v41 = v40;
      v42 = objc_opt_self();
      v43 = swift_allocObject();
      *(v43 + 2) = v41;
      *(v43 + 3) = v54;
      *(v43 + 4) = v1;
      v43[5] = v3;
      v43[6] = v36;
      v43[7] = v35;
      v43[8] = v38;
      v43[9] = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_100C9E240;
      *(v44 + 24) = v43;
      v60 = sub_10018A020;
      v61 = v44;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100029B9C;
      v59 = &unk_1010F5A18;
      v45 = _Block_copy(&aBlock);
      v46 = v54;
      v47 = v1;
      v48 = v41;
      sub_100C9E254(a1, v55);

      [v42 performWithoutAnimation:v45];
      _Block_release(v45);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v48 frame];
        [v48 setFrame:?];
        [v46 setFrame:{v36, v35, v38, v37}];

        v11.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v60 = sub_1001D3178;
        v61 = v50;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5A68;
        v51 = _Block_copy(&aBlock);
        v10 = v48;

        [(objc_class *)v11.super.isa addAnimations:v51];
        _Block_release(v51);
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v60 = sub_1005EBD78;
        v61 = v52;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010F5AB8;
        v53 = _Block_copy(&aBlock);
        v18 = v46;

        [v15 addAnimations:v53];
        _Block_release(v53);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v54 setAttributedText:*&v3];
    [v54 setFrame:{v36, v35, v38, v37}];
  }
}

id sub_100C86F74(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id sub_100C87040(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void sub_100C87114(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setFilters:isa];

  v4 = String._bridgeToObjectiveC()();
  [a2 removeAnimationForKey:v4];
}

void sub_100C871AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v200 = a2;
  v201 = a3;
  if (a1[11])
  {
    v208 = 0;
  }

  else
  {
    v208 = v4[5] != 0;
  }

  sub_100009F78(0, &qword_1011BD500);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v217 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v222 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  sub_100C98B30(v9, v10, v7, v8);
  v205 = v11;
  v12 = v4[6];
  v13 = v4[7];

  sub_100C98B30(v12, v13, v9, v10);
  v206 = v14;

  v15 = a1[5];
  v16 = &stru_101148000;
  v204 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v204)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v203 = v15 + 32;
  v216 = a1;
  v21 = a1[2];
  v215 = kCAFilterGaussianBlur;
  v213 = kCAFilterInputRadius;
  v202 = v21;
LABEL_8:
  v209 = v20;
  v22 = *(v203 + 8 * v20);
  swift_beginAccess();

  v24 = sub_100C9C158(v23);

  if (*(v21 + 16) && (v25 = sub_1006BE788(v22), (v26 & 1) != 0))
  {
    v27 = *(*(v21 + 56) + 8 * v25);
  }

  else
  {
    v27 = &_swiftEmptySetSingleton;
  }

  v28 = sub_100C857A4(v27, v24);
  v226 = sub_100C857A4(v24, v27);

  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
    Set.Iterator.init(_cocoa:)();
    v28 = v245;
    v29 = v246;
    v30 = v247;
    v31 = v248;
    v32 = v249;
  }

  else
  {
    v31 = 0;
    v33 = -1 << *(v28 + 32);
    v29 = (v28 + 56);
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v28 + 56);
  }

  v210 = v209 + 1;
  v36 = (v30 + 64) >> 6;
  v223 = v29;
  v218 = v36;
  v221 = v28;
  while ((v28 & 0x8000000000000000) == 0)
  {
    v37 = v31;
    v38 = v32;
    v39 = v31;
    if (!v32)
    {
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
          goto LABEL_33;
        }

        v38 = *&v29[8 * v39];
        ++v37;
        if (v38)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v28 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));

    if (!v41)
    {
      goto LABEL_33;
    }

LABEL_29:
    v231 = v40;
    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v234;
    v45 = *(v216 + 3);
    *(v44 + 64) = *(v216 + 2);
    *(v44 + 80) = v45;
    v46 = *(v216 + 5);
    *(v44 + 96) = *(v216 + 4);
    *(v44 + 112) = v46;
    v47 = *(v216 + 1);
    *(v44 + 32) = *v216;
    *(v44 + 48) = v47;
    *(v44 + 128) = v22;
    v48 = v234;
    v49 = v22;

    sub_100C9DFD4(v216, &aBlock);
    sub_100020438(v17);
    v50 = swift_allocObject();
    *(v50 + 16) = sub_100C9DFC4;
    *(v50 + 24) = v44;
    v242 = sub_10018A020;
    v243 = v50;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = sub_100029B9C;
    v241 = &unk_1010F5928;
    v51 = _Block_copy(&aBlock);

    [v43 performWithoutAnimation:v51];
    _Block_release(v51);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      goto LABEL_125;
    }

    v242 = sub_100C9E00C;
    v243 = v41;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = sub_10002BC98;
    v241 = &unk_1010F5950;
    v52 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v52];
    _Block_release(v52);
    v53 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v242 = sub_100C9E054;
    v243 = v41;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = sub_10002BC98;
    v241 = &unk_1010F5978;
    v54 = _Block_copy(&aBlock);

    [v53 addAnimations:v54];
    _Block_release(v54);
    v55 = v41[26];
    if (v55)
    {
      v56 = [v55 layer];
      if (v56)
      {
        v57 = v56;
        v58 = [objc_allocWithZone(CAFilter) initWithType:v215];
        v59 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v58 setValue:v59 forKey:v213];

        sub_10010FC20(&qword_1011BC168);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100EBC6B0;
        *(v60 + 56) = sub_100009F78(0, &qword_1011BC578);
        *(v60 + 32) = v58;
        v61 = v58;
        v62 = Array._bridgeToObjectiveC()().super.isa;

        [v57 setFilters:v62];

        v63 = String._bridgeToObjectiveC()();
        v64 = [objc_opt_self() animationWithKeyPath:v63];

        v65 = v64;
        [v65 setDuration:0.23];
        [v65 setBeginTime:CACurrentMediaTime() + 0.15];
        [v65 setFillMode:kCAFillModeBoth];
        v66 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v65 setFromValue:v66];

        v67 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v65 setToValue:v67];

        [v65 setRemovedOnCompletion:0];
        v68 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v69) = 1051260355;
        LODWORD(v70) = 1059816735;
        LODWORD(v71) = 1.0;
        v72 = [v68 initWithControlPoints:v69 :0.0 :v70 :v71];
        [v65 setTimingFunction:v72];

        v73 = swift_allocObject();
        *(v73 + 16) = v57;
        v74 = v57;
        CAAnimation.completion.setter(sub_100C9E7E4, v73);

        v75 = String._bridgeToObjectiveC()();
        [v74 addAnimation:v65 forKey:v75];
      }
    }

    [v53 startAnimationAfterDelay:{0.1, v200, v201}];

    v19 = 1;
    v17 = sub_100C9DFC4;
    v18 = v44;
    v31 = v39;
    v32 = v231;
    v22 = v49;
    v36 = v218;
    v28 = v221;
    v29 = v223;
  }

  v42 = __CocoaSet.Iterator.next()();
  if (v42)
  {
    v244 = v42;
    _s4WordCMa();
    swift_dynamicCast();
    v41 = aBlock;
    v39 = v31;
    v40 = v32;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v219 = v17;
  sub_10005C9F8();
  v76 = v226;
  v207 = v18;
  v77 = v19;
  if ((v226 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa);
    Set.Iterator.init(_cocoa:)();
    v76 = v250;
    v78 = v251;
    v79 = v252;
    v80 = v253;
    v81 = v254;
  }

  else
  {
    v80 = 0;
    v82 = -1 << *(v226 + 32);
    v78 = (v226 + 56);
    v79 = ~v82;
    v83 = -v82;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    else
    {
      v84 = -1;
    }

    v81 = v84 & *(v226 + 56);
  }

  v227 = v76;
  v85 = (v79 + 64) >> 6;
  while (2)
  {
    if ((v76 & 0x8000000000000000) != 0)
    {
      v91 = __CocoaSet.Iterator.next()();
      if (v91)
      {
        v244 = v91;
        _s4WordCMa();
        swift_dynamicCast();
        v90 = aBlock;
        v88 = v80;
        v89 = v81;
        if (aBlock)
        {
LABEL_51:
          v232 = v89;
          v92 = swift_allocObject();
          *(v92 + 16) = v234;
          *(v92 + 24) = v90;
          v242 = sub_100C9DF9C;
          v243 = v92;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F5838;
          v93 = _Block_copy(&aBlock);
          v94 = v234;

          [(objc_class *)v217 addAnimations:v93];
          _Block_release(v93);
          v242 = sub_100C9DFA4;
          v243 = v90;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_100338AB8;
          v241 = &unk_1010F5860;
          v95 = _Block_copy(&aBlock);

          [(objc_class *)v217 addCompletion:v95];
          _Block_release(v95);
          v242 = sub_100C9DFA8;
          v243 = v90;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F5888;
          v96 = _Block_copy(&aBlock);

          [v222 addAnimations:v96];
          _Block_release(v96);
          v97 = v90[26];
          if (v97 && (v98 = [v97 layer]) != 0)
          {
            v99 = v98;
            v100 = [objc_allocWithZone(CAFilter) initWithType:v215];
            v101 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v100 setValue:v101 forKey:v213];

            sub_10010FC20(&qword_1011BC168);
            v102 = swift_allocObject();
            *(v102 + 16) = xmmword_100EBC6B0;
            *(v102 + 56) = sub_100009F78(0, &qword_1011BC578);
            *(v102 + 32) = v100;
            v103 = v100;
            v104 = Array._bridgeToObjectiveC()().super.isa;

            [v99 setFilters:v104];

            v105 = String._bridgeToObjectiveC()();
            v106 = [objc_opt_self() animationWithKeyPath:v105];

            v107 = v106;
            [v107 setDuration:0.32];
            [v107 setBeginTime:CACurrentMediaTime() + 0.15];
            [v107 setFillMode:kCAFillModeBoth];
            v108 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v107 setFromValue:v108];

            v109 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v107 setToValue:v109];

            [v107 setRemovedOnCompletion:0];
            v110 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v111) = 1051260355;
            LODWORD(v112) = 1059816735;
            LODWORD(v113) = 1.0;
            v114 = [v110 initWithControlPoints:v111 :0.0 :v112 :v113];
            [v107 setTimingFunction:v114];

            v115 = swift_allocObject();
            *(v115 + 16) = v99;
            v116 = v99;
            CAAnimation.completion.setter(sub_100C9E7E4, v115);

            v117 = String._bridgeToObjectiveC()();
            [v116 addAnimation:v107 forKey:v117];
          }

          else
          {
          }

          v77 = 1;
          v80 = v88;
          v81 = v232;
          v76 = v227;
          continue;
        }
      }

LABEL_7:
      sub_10005C9F8();
      v20 = v210;
      v16 = &stru_101148000;
      v17 = v219;
      v19 = v77;
      v21 = v202;
      v18 = v207;
      if (v210 != v204)
      {
        goto LABEL_8;
      }

LABEL_54:
      v220 = v17;
      v224 = *(v205 + 16);
      if (v224)
      {
        v235 = objc_opt_self();
        v118 = *(v205 + 16);

        if (!v118)
        {
          goto LABEL_126;
        }

        v119 = 0;
        v228 = 0;
        v120 = 0;
        v212 = kCAFilterGaussianBlur;
        v211 = kCAFilterInputRadius;
        v233 = v19;
        while (1)
        {
          v121 = *(v205 + 32 + 8 * v119);
          v230 = v119;
          if (*(v121 + 56) == 1)
          {
            if (v19)
            {

              v233 = 1;
            }

            else
            {
              swift_beginAccess();
              v122 = *(v121 + 16);
              if (v122 >> 62)
              {
                v123 = _CocoaArrayWrapper.endIndex.getter();
                if (v123)
                {
LABEL_63:
                  if (v123 < 1)
                  {
                    goto LABEL_129;
                  }

                  v124 = 0;
                  do
                  {
                    if ((v122 & 0xC000000000000001) != 0)
                    {
                      v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v125 = *(v122 + 8 * v124 + 32);
                    }

                    sub_100020438(v120);
                    v126 = swift_allocObject();
                    *(v126 + 16) = sub_100C9DF94;
                    *(v126 + 24) = v125;
                    v242 = sub_10018A020;
                    v243 = v126;
                    aBlock = _NSConcreteStackBlock;
                    v239 = 1107296256;
                    v240 = sub_100029B9C;
                    v241 = &unk_1010F57C0;
                    v127 = _Block_copy(&aBlock);

                    [v235 performWithoutAnimation:v127];
                    _Block_release(v127);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v124;
                    v242 = sub_100C9E750;
                    v243 = v125;
                    aBlock = _NSConcreteStackBlock;
                    v239 = 1107296256;
                    v240 = sub_10002BC98;
                    v241 = &unk_1010F57E8;
                    v129 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v129];
                    _Block_release(v129);

                    v120 = sub_100C9DF94;
                  }

                  while (v123 != v124);

                  v233 = 0;
                  v120 = sub_100C9DF94;
                  v16 = &stru_101148000;
                  goto LABEL_73;
                }
              }

              else
              {
                v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v123)
                {
                  goto LABEL_63;
                }
              }

              v233 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v130 = swift_allocObject();
          *(v130 + 16) = v208;
          *(v130 + 24) = v121;

          sub_100020438(v228);
          v131 = swift_allocObject();
          *(v131 + 16) = sub_100C9DEA0;
          *(v131 + 24) = v130;
          v242 = sub_100029B94;
          v243 = v131;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_100029B9C;
          v241 = &unk_1010F5540;
          v132 = v121;
          v133 = _Block_copy(&aBlock);

          [v235 performWithoutAnimation:v133];
          _Block_release(v133);
          LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

          if (v133)
          {
            goto LABEL_128;
          }

          v119 = v230 + 1;
          v242 = sub_100C9DEAC;
          v243 = v132;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F5568;
          v134 = _Block_copy(&aBlock);

          [isa v16[187].attr];
          _Block_release(v134);
          v242 = sub_100C9DEF0;
          v243 = v132;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F5590;
          v135 = _Block_copy(&aBlock);

          [v222 v16[187].attr];
          _Block_release(v135);
          if ((v233 & 1) == 0)
          {
            goto LABEL_86;
          }

          v136 = v132[14];
          if (!v136)
          {
            goto LABEL_86;
          }

          v137 = [v136 maskView];
          if (v137)
          {
            goto LABEL_77;
          }

          v157 = v132[14];
          if (!v157)
          {
            goto LABEL_86;
          }

          v158 = [v157 subviews];
          sub_100009F78(0, &qword_1011BC570);
          v159 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v159 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_82:
              if ((v159 & 0xC000000000000001) != 0)
              {
                v160 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v160 = *(v159 + 32);
              }

              v137 = v160;

LABEL_77:
              v138 = [v137 layer];

              if (v138)
              {
                v139 = [objc_allocWithZone(CAFilter) initWithType:v212];
                v140 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v139 setValue:v140 forKey:v211];

                sub_10010FC20(&qword_1011BC168);
                v141 = swift_allocObject();
                *(v141 + 16) = xmmword_100EBC6B0;
                *(v141 + 56) = sub_100009F78(0, &qword_1011BC578);
                *(v141 + 32) = v139;
                v142 = v139;
                v143 = Array._bridgeToObjectiveC()().super.isa;

                [v138 setFilters:v143];

                v144 = String._bridgeToObjectiveC()();
                v145 = [objc_opt_self() animationWithKeyPath:v144];

                v146 = v145;
                [v146 setDuration:0.32];
                [v146 setBeginTime:CACurrentMediaTime() + 0.15];
                [v146 setFillMode:kCAFillModeBoth];
                v147 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v146 setFromValue:v147];

                v148 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v146 setToValue:v148];

                [v146 setRemovedOnCompletion:0];
                v149 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v150) = 1051260355;
                LODWORD(v151) = 1059816735;
                LODWORD(v152) = 1.0;
                v153 = [v149 initWithControlPoints:v150 :0.0 :v151 :v152];
                [v146 setTimingFunction:v153];

                v154 = swift_allocObject();
                *(v154 + 16) = v138;
                v155 = v138;
                CAAnimation.completion.setter(sub_100C9E7E4, v154);

                v156 = String._bridgeToObjectiveC()();
                [v155 addAnimation:v146 forKey:v156];

                v119 = v230 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v119 == v224)
          {

            v214 = sub_100C9DEA0;
            goto LABEL_96;
          }

          v228 = sub_100C9DEA0;
          if (v119 >= *(v205 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v120 = 0;
      v214 = 0;
      v233 = v19;
LABEL_96:
      v236 = *(v206 + 16);
      if (!v236)
      {
LABEL_120:
        v195 = swift_allocObject();
        *(v195 + 16) = 0;
        v196 = swift_allocObject();
        v196[2] = v195;
        v196[3] = v200;
        v196[4] = v201;
        v242 = sub_100C9DF48;
        v243 = v196;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = sub_100338AB8;
        v241 = &unk_1010F5680;
        v197 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v197];
        _Block_release(v197);
        [(objc_class *)isa startAnimation];
        v198 = swift_allocObject();
        v198[2] = v195;
        v198[3] = v200;
        v198[4] = v201;
        v242 = sub_100C9E758;
        v243 = v198;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = sub_100338AB8;
        v241 = &unk_1010F56D0;
        v199 = _Block_copy(&aBlock);

        [(objc_class *)v217 addCompletion:v199];
        _Block_release(v199);
        [(objc_class *)v217 startAnimation];
        [v222 startAnimationAfterDelay:0.1];

        sub_100020438(v220);
        sub_100020438(v120);
        sub_100020438(v214);
        return;
      }

      v229 = kCAFilterGaussianBlur;
      v225 = kCAFilterInputRadius;

      v161 = 0;
      while (1)
      {
        if (v161 >= *(v206 + 16))
        {
          goto LABEL_127;
        }

        v162 = *(v206 + 8 * v161 + 32);
        if (v208)
        {
          v242 = sub_100C9DF70;
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F5720;
          v163 = _Block_copy(&aBlock);
          swift_retain_n();

          v164 = isa;
          [isa v16[187].attr];
          _Block_release(v163);
          v242 = sub_100C9DF90;
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_100338AB8;
          v165 = &unk_1010F5748;
        }

        else
        {
          v242 = sub_100C9DF0C;
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_10002BC98;
          v241 = &unk_1010F55B8;
          v166 = _Block_copy(&aBlock);
          swift_retain_n();

          v164 = v217;
          [v217 v16[187].attr];
          _Block_release(v166);
          v242 = sub_100C9E7E0;
          v243 = v162;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_100338AB8;
          v165 = &unk_1010F55E0;
        }

        v241 = v165;
        v167 = _Block_copy(&aBlock);

        [(objc_class *)v164 addCompletion:v167];
        _Block_release(v167);
        v168 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v242 = sub_100C9DF2C;
        v243 = v162;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v240 = sub_10002BC98;
        v241 = &unk_1010F5608;
        v169 = _Block_copy(&aBlock);

        [v168 v16[187].attr];
        _Block_release(v169);
        if (v233)
        {
          v170 = v162[14];
          if (v170)
          {
            v171 = [v170 maskView];
            if (v171)
            {
              goto LABEL_107;
            }

            v191 = v162[14];
            if (v191)
            {
              v192 = [v191 subviews];
              sub_100009F78(0, &qword_1011BC570);
              v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v193 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_112:
                  if ((v193 & 0xC000000000000001) != 0)
                  {
                    v194 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (!*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_130;
                    }

                    v194 = *(v193 + 32);
                  }

                  v171 = v194;

LABEL_107:
                  v172 = [v171 layer];

                  if (v172)
                  {
                    v173 = [objc_allocWithZone(CAFilter) initWithType:v229];
                    v174 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v173 setValue:v174 forKey:v225];

                    sub_10010FC20(&qword_1011BC168);
                    v175 = swift_allocObject();
                    *(v175 + 16) = xmmword_100EBC6B0;
                    *(v175 + 56) = sub_100009F78(0, &qword_1011BC578);
                    *(v175 + 32) = v173;
                    v176 = v173;
                    v177 = Array._bridgeToObjectiveC()().super.isa;

                    [v172 setFilters:v177];

                    v178 = String._bridgeToObjectiveC()();
                    v179 = [objc_opt_self() animationWithKeyPath:v178];

                    v180 = v179;
                    [v180 setDuration:0.23];
                    [v180 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v180 setFillMode:kCAFillModeBoth];
                    v181 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v180 setFromValue:v181];

                    v182 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v180 setToValue:v182];

                    [v180 setRemovedOnCompletion:0];
                    v183 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v184) = 1051260355;
                    LODWORD(v185) = 1059816735;
                    LODWORD(v186) = 1.0;
                    v187 = [v183 initWithControlPoints:v184 :0.0 :v185 :v186];
                    [v180 setTimingFunction:v187];

                    v188 = swift_allocObject();
                    *(v188 + 16) = v172;
                    v189 = v172;
                    CAAnimation.completion.setter(sub_100C9DF68, v188);

                    v190 = String._bridgeToObjectiveC()();
                    [v189 addAnimation:v180 forKey:v190];

                    v16 = &stru_101148000;
                  }

                  goto LABEL_99;
                }
              }

              else if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v161;
        [v168 startAnimation];

        if (v236 == v161)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v86 = v80;
  v87 = v81;
  v88 = v80;
  if (v81)
  {
LABEL_47:
    v89 = (v87 - 1) & v87;
    v90 = *(*(v76 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v87)))));

    if (!v90)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v88 >= v85)
    {
      goto LABEL_7;
    }

    v87 = *&v78[8 * v88];
    ++v86;
    if (v87)
    {
      goto LABEL_47;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_100C89624(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = sub_1006BE788(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void sub_100C89728(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void sub_100C897AC(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id sub_100C8985C(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *sub_100C89950(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

uint64_t sub_100C899B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v6 = swift_beginAccess();
    *(a2 + 16) = 1;
    return a3(v6);
  }

  return result;
}

uint64_t sub_100C89A28(double a1, double a2)
{
  v3 = v2;
  sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin();
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v97 - v7;
  sub_10010FC20(&qword_1011BBA80);
  __chkstk_darwin();
  v9 = &v97 - v8;
  sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin();
  v105 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = (&v97 - v11);
  __chkstk_darwin();
  v13 = &v97 - v12;
  v14 = type metadata accessor for Locale.Language();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v97 - v17;
  __chkstk_darwin();
  v107 = &v97 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v108 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v100 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v100;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v108 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v110 = Int.seconds.getter(0);
    v109[0] = v110;
    CTFontGetLanguageAwareOutsets();
    v34 = v110 + v109[0];
    v35 = v108;
    [v108 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_1000089F8(&v3[v37], v13, &qword_1011BBA48);
  v106 = *(v15 + 48);
  v38 = v106(v13, 1, v14);
  v104 = v37;
  v103 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &qword_1011BBA48;
    v40 = v13;
LABEL_17:
    sub_1000095E8(v40, v39);
    goto LABEL_20;
  }

  v41 = v107;
  (*(v15 + 32))(v107, v13, v14);
  Locale.Language.script.getter();
  v42 = type metadata accessor for Locale.Script();
  if ((*(*(v42 - 8) + 48))(v9, 1, v42) != 1)
  {
    (*(v15 + 8))(v41, v14);
    v39 = &qword_1011BBA80;
    v40 = v9;
    goto LABEL_17;
  }

  sub_1000095E8(v9, &qword_1011BBA80);
  v43 = v102;
  sub_1000089F8(&v3[v37], v102, &qword_1011BBA48);
  if (v106(v43, 1, v14))
  {
    sub_1000095E8(v43, &qword_1011BBA48);
    (*(v15 + 8))(v41, v14);
LABEL_20:
    v48 = v14;
    goto LABEL_21;
  }

  v44 = v97;
  (*(v15 + 16))(v97, v43, v14);
  sub_1000095E8(v43, &qword_1011BBA48);
  v45 = v101;
  Locale.Language.languageCode.getter();
  v46 = *(v15 + 8);
  (v46)(v44, v14);
  v47 = type metadata accessor for Locale.LanguageCode();
  v48 = v14;
  v49 = *(v47 - 8);
  if ((*(v49 + 48))(v45, 1, v47) == 1)
  {
    sub_1000095E8(v45, &qword_1011BBA50);
    v14 = v48;
    (v46)(v41, v48);
    goto LABEL_20;
  }

  v102 = v46;
  Locale.LanguageCode.identifier.getter();
  (*(v49 + 8))(v45, v47);

  (v102)(v41, v48);
LABEL_21:
  v102 = *v31;
  sub_10010FC20(&unk_1011BD910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = NSFontAttributeName;
  v101 = (inited + 32);
  v51 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v51 = 224;
  }

  v52 = *&v20[v51];
  v53 = sub_100009F78(0, &qword_1011BD920);
  *(inited + 40) = v52;
  v107 = v3;
  *(inited + 64) = v53;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v54 = sub_100009F78(0, &qword_1011BC560);
  v55 = v108;
  *(inited + 80) = v108;
  *(inited + 104) = v54;
  *(inited + 112) = NSForegroundColorAttributeName;
  v56 = objc_opt_self();
  v57 = v52;

  v58 = NSFontAttributeName;
  v59 = NSParagraphStyleAttributeName;
  v60 = v107;
  v108 = v55;
  v61 = NSForegroundColorAttributeName;
  v62 = [v56 whiteColor];
  v63 = sub_100009F78(0, &unk_1011BD3E0);
  *(inited + 120) = v62;
  *(inited + 144) = v63;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v64 = v105;
  sub_1000089F8(&v60[v104], v105, &qword_1011BBA48);
  if (v106(v64, 1, v48))
  {
    v65 = NSLanguageIdentifierAttributeName;
    v66 = &qword_1011BBA48;
LABEL_27:
    sub_1000095E8(v64, v66);
    v72 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v72 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_29;
  }

  v67 = v100;
  v68 = v98;
  (*(v100 + 16))(v98, v64, v48);
  v69 = NSLanguageIdentifierAttributeName;
  sub_1000095E8(v64, &qword_1011BBA48);
  v64 = v99;
  Locale.Language.languageCode.getter();
  (*(v67 + 8))(v68, v48);
  v70 = type metadata accessor for Locale.LanguageCode();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v64, 1, v70) == 1)
  {
    v66 = &qword_1011BBA50;
    goto LABEL_27;
  }

  v95 = Locale.LanguageCode.identifier.getter();
  v73 = v96;
  (*(v71 + 8))(v64, v70);
  v72 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v73)
  {
    goto LABEL_28;
  }

  *v72 = v95;
LABEL_29:
  *(inited + 168) = v73;
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080);
  swift_arrayDestroy();
  v74 = objc_allocWithZone(NSAttributedString);
  v75 = String._bridgeToObjectiveC()();

  _s3__C3KeyVMa_2(0);
  sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v77 = [v74 initWithString:v75 attributes:isa];

  v78 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v79 = *&v60[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v79)
  {
    v80 = v79[3];

    v81 = [v80 attributedString];
    if (!v81 || (v82 = v81, sub_100009F78(0, &qword_1011BC568), v83 = v77, v84 = static NSObject.== infix(_:_:)(), v82, v83, v85 = v79, (v84 & 1) == 0))
    {
      v85 = v79;
      (*(*v79 + 176))(v77);
    }
  }

  else
  {
    type metadata accessor for TextKitManager();
    swift_allocObject();
    v85 = TextKitManager.init(text:size:)(v77, a1);
    *&v60[v78] = v85;
    swift_retain_n();
  }

  v86 = *(*v85 + 112);

  v88 = v86(v87);

  [v88 size];
  v90 = v89;

  if (v90 == a1)
  {
  }

  else
  {
    (*(*v85 + 184))(a1, a2);
    v91 = sub_100C76C78(_swiftEmptyArrayStorage);

    v92 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v93 = v107;
    swift_beginAccess();
    *&v93[v92] = v91;
  }

  return v85;
}

uint64_t sub_100C8A7F8(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    v12 = 0;
  }

  v152 = v12;
  v153 = v13;
  v150 = 0;
  v151 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
  v131 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v136[0] = v14[2];
  *(&v136[0] + 1) = v15;
  v139 = 10;
  v140 = 0xE100000000000000;
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_100009988();

  if (StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v21 = sub_100C76C78(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      sub_100CA3998();

      *(v5 + v10) = 0;

      v152 = 0;
      v153 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      sub_100C8E50C(a1 & 1, a3);
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v125 = v20;
  v126 = v13;
  v127 = v12;
  v23 = sub_100C76C78(_swiftEmptyArrayStorage);
  v128 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v128;

  v26 = sub_100C76EF0(_swiftEmptyArrayStorage);
  v27 = sub_100C77014(_swiftEmptyArrayStorage);
  v28 = v128[7];
  v129 = *(v28 + 16);
  if (!v129)
  {
    goto LABEL_47;
  }

  v124 = v5;

  v29 = 0;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v30 = *(v28 + 8 * v29 + 32);
    swift_beginAccess();
    swift_retain_n();

    v32 = sub_100C9C158(v31);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v26;
    v35 = sub_1006BE788(v30);
    v36 = v26[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v26[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v136[0];
        if ((v34 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_100C753E4();
        v26 = *&v136[0];
        if ((v39 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_100C73758(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_1006BE788(v30);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_91;
      }

      v35 = v40;
      v26 = *&v136[0];
      if ((v39 & 1) == 0)
      {
LABEL_31:
        sub_100C746D4(v35, v30, v32, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v35) = v32;

LABEL_35:
    v132 = *(v30 + 80);
    v134 = *(v30 + 96);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v27;
    v43 = sub_1006BE788(v30);
    v45 = v27[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_89;
    }

    v49 = v44;
    if (v27[3] < v48)
    {
      sub_100C734C4(v48, v42);
      v43 = sub_1006BE788(v30);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v136[0];
      if (v49)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v42)
    {
      goto LABEL_40;
    }

    v52 = v43;
    sub_100C7527C();
    v43 = v52;
    v27 = *&v136[0];
    if (v49)
    {
LABEL_41:
      v51 = (v27[7] + 32 * v43);
      *v51 = v132;
      v51[1] = v134;

      goto LABEL_25;
    }

LABEL_24:
    sub_100C74688(v43, v30, v27, *&v132, *(&v132 + 1), *&v134, *(&v134 + 1));
LABEL_25:
    ++v29;

    if (v129 == v29)
    {

      v5 = v124;
      v25 = v128;
LABEL_47:

      v53 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
      v54 = v25[5];
      v135 = v25[4];

      v133 = *(v25 + 5);
      v130 = *(v25 + 4);

      v55 = *(v125 + 48);
      v136[2] = *(v125 + 32);
      v136[3] = v55;
      v56 = *(v125 + 80);
      v136[4] = *(v125 + 64);
      v136[5] = v56;
      v57 = *(v125 + 16);
      v136[0] = *v125;
      v136[1] = v57;
      *v125 = v127;
      *(v125 + 8) = v126;
      *(v125 + 16) = v26;
      *(v125 + 24) = v27;
      *(v125 + 32) = 0;
      *(v125 + 40) = v53;
      *(v125 + 48) = v130;
      *(v125 + 64) = v133;
      *(v125 + 80) = v135;
      *(v125 + 88) = v54;
      sub_1000095E8(v136, &qword_1011BC540);
LABEL_48:
      v149 = 0;
      v147 = Int.seconds.getter(0);
      v148 = v147;
      v145 = 0;
      v146 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        sub_100C8BB34(v58);
        v145 = v59;
        v146 = v60;
      }

      v144 = 0;
      v61 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
      v142 = 0;
      v143 = v61;
      v141 = _swiftEmptyArrayStorage;
      v62 = v5;
      v63 = sub_100C89A28(a3, a4);
      v64 = [v63[2] usageBoundsForTextContainer];
      v66 = v65;
      MaxY = v67;
      v69 = (*(*v63 + 24))(v64);
      v70 = (v69 + 80);
      v71 = -*(v69 + 16);
      v72 = -1;
      while (v71 + v72 != -1)
      {
        if (++v72 >= *(v69 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v73 = *(v70 - 5);
        v74 = *(v70 - 4);
        v75 = *(v70 - 3);
        v76 = *(v70 - 2);
        v77 = *(v70 - 1);
        v78 = *v70;
        v79 = *(v70 - 6);
        v80 = [v79 lineRef];
        if (!v80)
        {
          goto LABEL_90;
        }

        v81 = v80;
        v70 += 7;
        v82 = sub_100C8BD44(v79, v80, v77, v78, 0, &v148, v62, &v152, v73, v74, v75, v76, a3, a4, &v142, &v149, &v141, &v145, &v147, &v144);

        if ((v82 & 1) == 0)
        {

          sub_100B46144(v145, v146);
        }
      }

      v83 = v62;
      v84 = (v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v147 > v66)
        {
          v85 = v147;
        }

        else
        {
          v85 = v66;
        }

        v86 = v131;
        if (*(v62 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v87 = v143;
          v88 = v143[2];
          if (v88)
          {
            v89 = 0;
            v90 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v89 >= v87[2])
              {
                goto LABEL_86;
              }

              v91 = v87[v89 + 4];
              if (*(v91 + 56) == 1)
              {
                v92 = *(v91 + 58) ^ v83[v90];
                v93 = *(v91 + 104);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v92 = 0;
                v93 = *(v91 + 104);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              if (v92)
              {
LABEL_71:
                v94 = *(v91 + 88);
                v96 = *(v91 + 96);
                v97 = v85 - v96;
                v95 = *(v91 + 80);
                goto LABEL_72;
              }

              v95 = *(v91 + 80);
              v94 = *(v91 + 88);
              v96 = *(v91 + 96);
              v97 = v85 - v66 + v95;
LABEL_72:
              *(v91 + 80) = v97;
              v98 = v94;
              v99 = v96;
              v100 = v93;
              if (!CGRectEqualToRect(*(&v93 - 3), *&v95))
              {
                *(v91 + 128) = 0;
              }

              ++v89;
            }

            while (v88 != v89);
          }
        }

        swift_beginAccess();
        v101 = v143[2];
        if (v101)
        {
          v102 = v143[v101 + 3];

          if (v102)
          {
            MaxY = CGRectGetMaxY(*(v102 + 80));

            v66 = v85;
          }
        }

        v103 = *&v83[v131];
        if (v103)
        {
LABEL_78:
          v104 = v103[8];
          v105 = v103[9];
          v106 = v103[10];
          v107 = v103[11];
          v108 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v103[2] = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v103 + 3) = v108;

          v109 = *(v84 + 1);
          v103[4] = *v84;
          *(v103 + 5) = v109;

          swift_beginAccess();
          v110 = v143;
          *(v103 + 6) = v142;
          *(v103 + 7) = v110;

          v103[8] = 0.0;
          v103[9] = 0.0;
          v103[10] = v66;
          v103[11] = MaxY;
          v155.origin.x = 0.0;
          v155.origin.y = 0.0;
          v154.origin.x = v104;
          v154.origin.y = v105;
          v154.size.width = v106;
          v154.size.height = v107;
          v155.size.width = v66;
          v155.size.height = MaxY;
          v111 = CGRectEqualToRect(v154, v155);
          sub_100C8E50C(!v111, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v86 = v131;
        v103 = *(v62 + v131);
        if (v103)
        {
          goto LABEL_78;
        }
      }

      v112 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v113 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v114 = *v84;
      v115 = *(v84 + 1);
      swift_beginAccess();
      v116 = v142;
      v117 = v143;
      _s13TextContainerCMa();
      v118 = swift_allocObject();
      *(v118 + 96) = 0;
      *(v118 + 16) = v112;
      *(v118 + 24) = v113;
      *(v118 + 32) = v114;
      *(v118 + 40) = v115;
      *(v118 + 48) = v116;
      *(v118 + 56) = v117;
      *(v118 + 64) = 0;
      *(v118 + 72) = 0;
      *(v118 + 80) = v66;
      *(v118 + 88) = MaxY;
      *&v83[v86] = v118;

      sub_100C8E50C(1, a3);
LABEL_81:
      v120 = sub_100C8A798();
      if (*(v119 + 8))
      {
        v121 = v119;
        swift_beginAccess();
        v122 = v151;
        *(v121 + 32) = v150;
        *(v121 + 40) = v122;
      }

      (v120)(v136, 0);
      [v83 setNeedsLayout];

      sub_100B46144(v145, v146);
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  _s4LineCMa();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}