__n128 sub_100013E50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100013EAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 sub_100013F18(uint64_t a1, uint64_t a2)
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

uint64_t sub_100013F34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_100013F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExchangeFallbackMatch.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExchangeFallbackMatch.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100014148()
{
  result = qword_100021538;
  if (!qword_100021538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021538);
  }

  return result;
}

unint64_t sub_1000141A0()
{
  result = qword_100021540;
  if (!qword_100021540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021540);
  }

  return result;
}

unint64_t sub_1000141F8()
{
  result = qword_100021548;
  if (!qword_100021548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021548);
  }

  return result;
}

void sub_10001424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    sub_100015624();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v5 = v4;
  v8 = objc_opt_self();

  v9 = [v8 entityName];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v9];

  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  sub_1000025B0(&qword_1000215B8, &qword_100019250);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000189B0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100015678();
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  sub_100008CA8(0, &qword_1000215C8, CNContactExternalDetailsManagedObject_ptr);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {

    return;
  }

  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_21:

    return;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v15 >= 1)
  {
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

      v18 = v17;
      sub_1000025B0(&qword_1000215D0, &qword_100019258);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100018AB0;
      *(inited + 32) = [v18 poster];
      v20 = [v18 image];
      *(inited + 40) = v20;
      v21 = *(inited + 32);
      if (v21)
      {
        v22 = v21;
        v23 = String._bridgeToObjectiveC()();
        [v22 setContactIdentifier:v23];
      }

      v24 = v20;

      if (v24)
      {
        v25 = v20;
        v26 = String._bridgeToObjectiveC()();
        [v25 setContactIdentifier:v26];
      }
    }

    goto LABEL_21;
  }

  __break(1u);
}

unint64_t sub_1000145D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    sub_100015624();
    swift_allocError();
    return swift_willThrow();
  }

  v8 = v7;
  sub_10000E070();
  inited = swift_initStackObject();
  *(inited + 32) = sub_100008CA8(0, &qword_1000215D8, CNContactImageManagedObject_ptr);
  v33 = inited + 32;
  *(inited + 40) = sub_100008CA8(0, &qword_1000215E0, CNContactPosterManagedObject_ptr);
  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  v10 = 0;
  for (i = 0; ; i = 1)
  {
    v12 = v10;
    v13 = *(v33 + 8 * i);
    v14 = [swift_getObjCClassFromMetadata() entityName];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v14];

    sub_1000025B0(&qword_1000215B8, &qword_100019250);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000189B0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100015678();
    *(v16 + 32) = a5;
    *(v16 + 40) = a6;

    v17 = NSPredicate.init(format:_:)();
    [v15 setPredicate:v17];

    sub_100008CA8(0, &qword_1000215E8, CNContactPosterDataManagedItem_ptr);
    result = NSManagedObjectContext.fetch<A>(_:)();
    if (v8)
    {

      return swift_setDeallocating();
    }

    v19 = result;
    v37 = v12;
    v36 = v15;
    if (result >> 62)
    {
      break;
    }

    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_9;
    }

LABEL_3:

    v10 = 1;
    v8 = 0;
    if (v37)
    {
      return swift_setDeallocating();
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = result;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_9:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 pairedItem];
      if (v25 && (v26 = v25, v27 = [v25 externalDetails], v26, v27))
      {
        v22 = v27;
        [v24 setExternalDetails:v22];
      }

      else
      {
        v28 = [objc_opt_self() entityName];
        if (!v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = String._bridgeToObjectiveC()();
        }

        v29 = [objc_opt_self() insertNewObjectForEntityForName:v28 inManagedObjectContext:a7];

        objc_opt_self();
        v30 = swift_dynamicCastObjCClassUnconditional();
        v31 = String._bridgeToObjectiveC()();
        [v30 setExternalUUID:v31];

        isa = 0;
        if (a4 >> 60 != 15)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        [v30 setFallbackDetailsForExchange:isa];

        v22 = v29;
        [v24 setExternalDetails:v30];
      }

      ++v21;
    }

    while (v20 != v21);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014A48(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10000ED70(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void *sub_100014AB8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_29:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = [v5 image];
    if (v8 && (v9 = v8, v10 = [v8 isCurrent], v9, (v10 & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v12 = [v6 poster];
      if (v12)
      {
        v13 = v12;
        v11 = [v12 isCurrent];
      }

      else
      {
        v11 = 0;
      }
    }

    v14 = sub_10000E238(v11);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_27;
    }

    v20 = v15;
    if (_swiftEmptyDictionarySingleton[3] < v19)
    {
      sub_10000EAE0(v19, 1);
      v14 = sub_10000E238(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        break;
      }
    }

    if (v20)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v14);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v22 = v14;
      sub_1000025B0(&qword_100021600, &unk_100019270);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100018A90;
      *(v23 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v22 >> 6) + 8] |= 1 << v22;
      *(_swiftEmptyDictionarySingleton[6] + v22) = v11;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v22) = v23;
      v24 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_28;
      }

      _swiftEmptyDictionarySingleton[2] = v25;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100014D7C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = &_swiftEmptyArrayStorage;
  v19 = *(result + 16);
  v17 = result + 56;
  do
  {
    v18 = v4;
    v5 = (v3 + 32 * v2);
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      v20 = v6 + 1;
      v8 = *(v5 - 1);
      v7 = *v5;
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);

      sub_100008874(v8, v7);

      sub_100008874(v8, v7);
      v11 = sub_10000EEC0(v21, v10, v9, v8, v7);
      v12 = v22;
      v13 = v23;

      sub_100008970(v12, v13);
      if (v11)
      {
        break;
      }

      result = sub_100008970(v8, v7);
      ++v6;
      v5 += 4;
      v1 = v19;
      if (v20 == v19)
      {
        return v18;
      }
    }

    v4 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v18;
    if ((result & 1) == 0)
    {
      result = sub_1000105D0(0, v18[2] + 1, 1);
      v4 = v24;
    }

    v3 = v17;
    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_1000105D0((v14 > 1), v15 + 1, 1);
      v4 = v24;
    }

    v4[2] = v15 + 1;
    v16 = &v4[4 * v15];
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v8;
    v16[7] = v7;
    v1 = v19;
    v2 = v20;
  }

  while (v20 != v19);
  return v4;
}

uint64_t sub_100014F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 predicateForContainerOfContactWithIdentifier:v5];

  v18 = 0;
  v7 = [a3 containersMatchingPredicate:v6 error:&v18];
  v8 = v18;
  if (!v7)
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v9 = v7;
  sub_100008CA8(0, &qword_100021638, CNContainer_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 identifier];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

id sub_100015140(void *a1, uint64_t a2, void *a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = [a1 externalIdentifier];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = [a1 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100014F4C(v10, v12, a3);
    v15 = v14;

    if (v15 && (v19[0] = v13, v19[1] = v15, __chkstk_darwin(v16), v18[2] = v19, v17 = sub_10000825C(sub_1000159C8, v18, a2), , (v17 & 1) != 0))
    {
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001529C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100019960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001545C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100015474()
{
  result = qword_100021560;
  if (!qword_100021560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021560);
  }

  return result;
}

uint64_t sub_1000154C8()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_100008984(v0[4], v2);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000025B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100015624()
{
  result = qword_1000215A8;
  if (!qword_1000215A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000215A8);
  }

  return result;
}

unint64_t sub_100015678()
{
  result = qword_1000215C0;
  if (!qword_1000215C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000215C0);
  }

  return result;
}

uint64_t sub_1000156CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015704()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015770()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000157E0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100015838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000099D8();
}

uint64_t getEnumTagSinglePayload for CleanupError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CleanupError(_WORD *result, int a2, int a3)
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

unint64_t sub_100015968()
{
  result = qword_100021660;
  if (!qword_100021660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021660);
  }

  return result;
}

void sub_100015A6C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to enter sandbox: %{public}s", &v3, 0xCu);
}

void sub_100015AE8()
{
  v0 = *__error();
  sub_100001868();
  sub_100001848(&_mh_execute_header, v1, v2, "failed to resolve cache directory: %{darwin.errno}d", v3, v4, v5, v6, v7);
}

void sub_100015B64()
{
  v0 = *__error();
  sub_100001868();
  sub_100001848(&_mh_execute_header, v1, v2, "failed to initialize cache directory: %{darwin.errno}d", v3, v4, v5, v6, v7);
}

void sub_100015BE0()
{
  v0 = *__error();
  sub_100001868();
  sub_100001848(&_mh_execute_header, v1, v2, "failed to resolve temporary directory: %{darwin.errno}d", v3, v4, v5, v6, v7);
}

void sub_100015C5C()
{
  v0 = *__error();
  sub_100001868();
  sub_100001848(&_mh_execute_header, v1, v2, "failed to initialize temporary directory: %{darwin.errno}d", v3, v4, v5, v6, v7);
}

void sub_100015CD8()
{
  v0 = *__error();
  sub_100001868();
  sub_100001848(&_mh_execute_header, v1, v2, "failed to resolve user's home directory: %{darwin.errno}d", v3, v4, v5, v6, v7);
}