void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t PseIntentType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C61637472617473;
  v2 = 0x6C61657461657263;
  v3 = 1936744813;
  if (a1 != 3)
  {
    v3 = 0x726F707075736E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6964656D79616C70;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t TrajectoryType.description.getter(unsigned __int8 a1)
{
  v1 = 1919251285;
  v2 = 0xD000000000000014;
  if (a1 != 4)
  {
    v2 = 0xD000000000000012;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000022;
  }

  v3 = 1769105747;
  if (a1 != 1)
  {
    v3 = 0xD000000000000020;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PseIntentType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000061;
  v3 = 0x6C61637472617473;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x6C61657461657263;
  v7 = 0xEB000000006D7261;
  v8 = 0xE400000000000000;
  v9 = 1936744813;
  if (v4 != 3)
  {
    v9 = 0x726F707075736E75;
    v8 = 0xEB00000000646574;
  }

  if (v4 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0x6964656D79616C70;
  if (*a1)
  {
    v11 = 0xE900000000000061;
  }

  else
  {
    v10 = 0x6C61637472617473;
    v11 = 0xE90000000000006CLL;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = 0x6C61657461657263;
  v15 = 0xEB000000006D7261;
  v16 = 0xE400000000000000;
  v17 = 1936744813;
  if (v5 != 3)
  {
    v17 = 0x726F707075736E75;
    v16 = 0xEB00000000646574;
  }

  if (v5 != 2)
  {
    v14 = v17;
    v15 = v16;
  }

  if (*a2)
  {
    v3 = 0x6964656D79616C70;
  }

  else
  {
    v2 = 0xE90000000000006CLL;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v15;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PseIntentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PseIntentType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PseIntentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PseIntentType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PseIntentType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PseIntentType@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0x6C61637472617473;
  v5 = 0xEB000000006D7261;
  v6 = 0x6C61657461657263;
  v7 = 0xE400000000000000;
  v8 = 1936744813;
  result = 0x726F707075736E75;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6964656D79616C70;
    v3 = 0xE900000000000061;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t PSEMetaData.eventTime.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t UserEngagementFeature.__allocating_init(engagements:metaData:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  v5 = *(a2 + 16);
  *(v4 + 120) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a2 + 32);
  *(v4 + 168) = *(a2 + 48);
  return v4;
}

uint64_t UserEngagementFeature.init(engagements:metaData:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  v5 = *(a2 + 16);
  *(v2 + 120) = *a2;
  *(v2 + 136) = v5;
  *(v2 + 152) = *(a2 + 32);
  *(v2 + 168) = *(a2 + 48);
  return v2;
}

Swift::Void __swiftcall UserEngagementFeature.setMetaData(_:)(InferenceExtension::PSEMetaData *a1)
{
  linkID = a1->linkID;
  taskID = a1->taskID;
  v8 = linkID;
  v3 = *(v1 + 136);
  v4 = *(v1 + 152);
  v5 = *&a1->taskID.value._object;
  *(v1 + 136) = *&a1->linkID.value._object;
  *(v1 + 152) = v5;
  *(v1 + 120) = *&a1->intent;
  *(v1 + 168) = a1->eventTime.is_nil;
  outlined init with copy of String?(&v8, v6);
  outlined init with copy of String?(&taskID, v6);
}

Swift::Void __swiftcall UserEngagementFeature.addEngagement(_:for:)(Swift::String _, InferenceExtension::TrajectoryType a2)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  swift_beginAccess();
  v6 = *(v2 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 112) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v2 + 112) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[3 * v9];
  *(v10 + 32) = a2;
  v10[5] = countAndFlagsBits;
  v10[6] = object;
  *(v2 + 112) = v6;
  swift_endAccess();
}

Swift::String_optional __swiftcall UserEngagementFeature.engagement(for:)(InferenceExtension::TrajectoryType a1)
{
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 24;
    v7 = *v4;
    v4 += 24;
    if (v7 == v2)
    {
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);

      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_6:
  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t UserEngagementFeature.engagements(for:)(unsigned __int8 a1)
{
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_2:
  v8 = 24 * v6;
  while (1)
  {
    if (v4 == v6)
    {

      return v7;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 24;
    v10 = *(v3 + v8 + 32);
    v8 += 24;
    if (v10 == v2)
    {
      v12 = *(v3 + v9 + 16);
      v11 = *(v3 + v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserEngagementFeature.addEngagements(_:)(Swift::OpaquePointer a1)
{
  v3 = a1._rawValue + 64;
  v4 = 1 << *(a1._rawValue + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1._rawValue + 8);
  swift_beginAccess();
  v7 = (v4 + 63) >> 6;
  rawValue = a1._rawValue;

  v8 = 0;
  v20 = v1;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      swift_endAccess();

      return;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v6)) | (v8 << 6);
        v11 = *(rawValue[6] + v10);
        v12 = (rawValue[7] + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(v1 + 112);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
          *(v1 + 112) = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        }

        v15[2] = v18 + 1;
        v19 = &v15[3 * v18];
        *(v19 + 32) = v11;
        v6 &= v6 - 1;
        v19[5] = v13;
        v19[6] = v14;
        v1 = v20;
        *(v20 + 112) = v15;
      }

      while (v6);
    }
  }

  __break(1u);
}

Swift::Void __swiftcall UserEngagementFeature.clearAll()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  *(v0 + 112) = _swiftEmptyArrayStorage;
}

void __swiftcall UserEngagementFeature.getMetaData()(InferenceExtension::PSEMetaData *__return_ptr retstr)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 168);
  retstr->intent = *(v1 + 120);
  retstr->linkID.value._countAndFlagsBits = v2;
  v4 = *(v1 + 152);
  *&retstr->linkID.value._object = *(v1 + 136);
  *&retstr->taskID.value._object = v4;
  retstr->eventTime.is_nil = v3;
}

uint64_t UserEngagementFeature.getAllEngagements()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t UserEngagementFeature.formatEngagements()()
{
  *(v1 + 40) = v0;
  return _swift_task_switch(UserEngagementFeature.formatEngagements(), v0, 0);
}

{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v3 = ( + 48);
    do
    {
      v14 = *(v3 - 16);
      v15 = *(v3 - 1);
      v16 = *v3;
      if ((v14 & 0xFE) == 4)
      {
        if (v14 == 5)
        {
          v17 = 0xD000000000000012;
        }

        else
        {
          v17 = 0xD000000000000014;
        }

        if (v14 == 5)
        {
          v18 = "Entity Identifier";
        }

        else
        {
          v18 = "Siri Action Result";
        }

        v19._object = (v18 | 0x8000000000000000);
        v19._countAndFlagsBits = v17;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 2592;
        v20._object = 0xE200000000000000;
        String.append(_:)(v20);
        v21._countAndFlagsBits = 0x202323230ALL;
        v21._object = 0xE500000000000000;
        String.append(_:)(v21);

        v22 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v22 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v22)
        {
          v23._countAndFlagsBits = 0xA0A656E6F6ELL;
          v23._object = 0xE600000000000000;
          String.append(_:)(v23);
        }
      }

      else
      {
        v4 = 0xD000000000000020;
        if (v14 != 2)
        {
          v4 = 0xD000000000000022;
        }

        v5 = 0x8000000100031340;
        if (v14 == 2)
        {
          v5 = 0x8000000100031370;
        }

        v6 = 1919251285;
        if (*(v3 - 16))
        {
          v6 = 1769105747;
        }

        if (*(v3 - 16) <= 1u)
        {
          v7 = v6;
        }

        else
        {
          v7 = v4;
        }

        if (*(v3 - 16) <= 1u)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = v5;
        }

        v9._countAndFlagsBits = v7;
        v9._object = v8;
        String.append(_:)(v9);

        v10._countAndFlagsBits = 8250;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        String.append(_:)(v11);
      }

      v12._countAndFlagsBits = 10;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v15;
      v13._object = v16;
      String.append(_:)(v13);

      v3 += 3;
      --v2;
    }

    while (v2);

    v24 = 0xD00000000000003CLL;
    v25 = 0x80000001000313A0;
  }

  else
  {
    v25 = 0x80000001000313E0;
    v24 = 0xD000000000000018;
  }

  v26 = *(v0 + 8);

  return v26(v24, v25);
}

Swift::String __swiftcall UserEngagementFeature.prettyPrintSimple()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 48);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v17[8] = 0;
      *v17 = *(v3 - 16);

      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = v4;
      v7._object = v5;
      String.append(_:)(v7);

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = *&v17[1];
      v10[5] = 0xE000000000000000;
      v3 += 3;
      --v2;
    }

    while (v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xEE0073746E656D65;
    v11 = 0x6761676E65206F4ELL;
  }

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

void *UserEngagementFeature.deinit()
{
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UserEngagementFeature.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[19];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMd, &_ss23_ContiguousArrayStorageCySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMd, &_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_18InferenceExtension10PSEFeatureVtGMd, "J9");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18InferenceExtension10PSEFeatureVGMd, &_ss23_ContiguousArrayStorageCy18InferenceExtension10PSEFeatureVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t specialized PseIntentType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PseIntentType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TrajectoryType and conformance TrajectoryType()
{
  result = lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType;
  if (!lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PseIntentType and conformance PseIntentType()
{
  result = lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType;
  if (!lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrajectoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrajectoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PseIntentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PseIntentType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PSEMetaData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PSEMetaData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UserEngagementFeature.__allocating_init(engagements:metaData:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(v2 + 152);
  v8[0] = *a2;
  v6 = *(a2 + 24);
  v9 = *(a2 + 8);
  v10 = v6;
  v11 = v3;
  v12 = v4;
  return v5(a1, v8);
}

uint64_t dispatch thunk of UserEngagementFeature.setMetaData(_:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*v1 + 168);
  v7[0] = *a1;
  v5 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v5;
  v10 = v2;
  v11 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of UserEngagementFeature.formatEngagements()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of UserEngagementFeature.formatEngagements();

  return v6();
}

uint64_t dispatch thunk of UserEngagementFeature.formatEngagements()(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 1664) = a7;
  *(v7 + 1656) = a6;
  *(v7 + 1648) = a3;
  *(v7 + 1640) = a2;
  *(v7 + 1632) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMR);
  *(v7 + 1672) = v9;
  v10 = *(v9 - 8);
  *(v7 + 1680) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 1688) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v7 + 1704) = v14;
  *(v7 + 1696) = v12;

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v12, v14);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[214] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching AIMLIS turns for interaction IDs.", v4, 2u);
  }

  v5 = v0[206];
  v6 = v0[205];

  type metadata accessor for EventFilter();
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ORCHSchemaORCHClientEvent, ORCHSchemaORCHClientEvent_ptr);
  v0[215] = static EventFilter.all(of:)();
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRClientEvent, ASRSchemaASRClientEvent_ptr);
  v7 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 7) & 0x1FFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002E0F0;
  *(v10 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRIntermediateUtteranceInfoTier1, ASRSchemaASRIntermediateUtteranceInfoTier1_ptr);
  v0[216] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSClientEvent, TTSSchemaTTSClientEvent_ptr);
  v11 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v12 = *(v11 + 52);
  v13 = (*(v11 + 48) + 7) & 0x1FFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10002E0F0;
  *(v14 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSRequestReceivedTier1, TTSSchemaTTSRequestReceivedTier1_ptr);
  v0[217] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFClientEvent, RFSchemaRFClientEvent_ptr);
  v15 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v16 = *(v15 + 52);
  v17 = (*(v15 + 48) + 7) & 0x1FFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10002E0F0;
  *(v18 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogReportedTier1, RFSchemaRFGradingDialogReportedTier1_ptr);
  v0[218] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaClientEvent, SISchemaClientEvent_ptr);
  v19 = _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 7) & 0x1FFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10002D9B0;
  *(v22 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShownTier1, SISchemaUUFRShownTier1_ptr);
  *(v22 + 40) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShown, SISchemaUUFRShown_ptr);
  *(v22 + 48) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRSaid, SISchemaUUFRSaid_ptr);
  v0[219] = static EventFilter.some(of:types:)();

  v23 = dispatch thunk of EventFilter.combine(_:)();
  v24 = dispatch thunk of EventFilter.combine(_:)();

  v25 = dispatch thunk of EventFilter.combine(_:)();
  v26 = dispatch thunk of EventFilter.combine(_:)();
  v0[220] = v26;

  type metadata accessor for UserEngagementFeature();
  v27 = swift_allocObject();
  v0[221] = v27;
  swift_defaultActor_initialize();
  *(v27 + 112) = &_swiftEmptyArrayStorage;
  *(v27 + 120) = 4;
  *(v27 + 128) = 0u;
  *(v27 + 144) = 0u;
  *(v27 + 153) = 0u;
  type metadata accessor for InstrumentationStreamsFactory();
  v28 = async function pointer to static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)[1];
  v29 = swift_task_alloc();
  v0[222] = v29;
  *v29 = v0;
  v29[1] = ConversationLoader.retrieveConversationFor(ids:);

  return static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(v0 + 167, v26, v6, 0, v5, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1776);
  v4 = *v1;
  *(*v1 + 1784) = v0;

  v5 = *(v2 + 1704);
  v6 = *(v2 + 1696);
  if (v0)
  {
    v7 = ConversationLoader.retrieveConversationFor(ids:);
  }

  else
  {
    v7 = ConversationLoader.retrieveConversationFor(ids:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v1 = v0[211];
  v2 = v0[171];
  __swift_project_boxed_opaque_existential_1(v0 + 167, v0[170]);
  dispatch thunk of InstrumentationStreamsProviderProtocol.siriTurns()();
  v3 = async function pointer to PublisherProtocol.toSequence()[1];
  v4 = swift_task_alloc();
  v0[224] = v4;
  v5 = lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMR);
  *v4 = v0;
  v4[1] = ConversationLoader.retrieveConversationFor(ids:);
  v6 = v0[211];
  v7 = v0[209];

  return PublisherProtocol.toSequence()(v7, v5);
}

{
  v54 = v0;
  v1 = v0[226];
  v2 = v0[225];

  v53[0] = specialized Array._copyToContiguousArray()(v3);
  specialized MutableCollection<>.sort(by:)(v53);
  if (v1)
  {
  }

  v5 = v0[225];
  v6 = v0[214];
  v7 = v0[208];

  v8 = v53[0];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[206];
    v12 = v0[205];
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "Loaded turn stream from startTime: %f, endTime: %f", v13, 0x16u);
  }

  v14 = v0[204];

  v0[227] = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say26AIMLInstrumentationStreams8SiriTurnCGTt1g50108_s18InferenceExtension18ConversationLoaderV08retrieveC3For3idsAA21UserEngagementFeatureCSgSaySSG_tYaKFSSSg26d8Streams8fG7CXEfU0_Tf1nc_nTf4g_n(v8);

  v15 = *(v14 + 16);
  v0[228] = v15;
  if (!v15)
  {
LABEL_29:

    v52 = v0[221];

    return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v52, 0);
  }

  v16 = 0;
  while (1)
  {
    v0[229] = v16;
    v20 = v0[214];
    v21 = v0[204] + 16 * v16;
    v22 = *(v21 + 32);
    v0[230] = v22;
    v23 = *(v21 + 40);
    v0[231] = v23;
    swift_bridgeObjectRetain_n();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v53);
      _os_log_impl(&_mh_execute_header, v24, v25, "Looking for turn with root request ID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    if (!*(v0[227] + 16))
    {
      goto LABEL_17;
    }

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_17;
    }

    v34 = *(*(v0[227] + 56) + 8 * v28);
    if (v34 >> 62)
    {
      break;
    }

    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_20;
    }

LABEL_17:
    v36 = v0[214];

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v53);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v37, v38, "No turn found for RequestID: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
    }

    v16 = v0[229] + 1;
    if (v16 == v0[228])
    {
      v51 = v0[227];
      goto LABEL_29;
    }
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
    goto LABEL_17;
  }

LABEL_20:
  if ((v34 & 0xC000000000000001) != 0)
  {

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_23:
    v0[232] = v39;
    v40 = v0[214];

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v53);
      _os_log_impl(&_mh_execute_header, v41, v42, "Found turn for RequestID: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    v45 = v0[208];
    v46 = v0[207];
    v47 = v0[206];
    v48 = v0[205];
    v49 = swift_task_alloc();
    v0[233] = v49;
    v49[2] = v48;
    v49[3] = v47;
    v49[4] = v46;
    v49[5] = v45;
    v49[6] = v39;
    swift_asyncLet_begin();
    v50 = swift_task_alloc();
    v0[234] = v50;
    v50[2] = v48;
    v50[3] = v47;
    v50[4] = v46;
    v50[5] = v45;
    v50[6] = v39;
    swift_asyncLet_begin();
    v32 = ConversationLoader.retrieveConversationFor(ids:);
    v35 = (v0 + 2);
    v31 = v0 + 199;
    v33 = v0 + 162;
  }

  else
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = *(v34 + 32);
      goto LABEL_23;
    }

    __break(1u);
  }

  return _swift_asyncLet_get(v35, v31, v32, v33);
}

{
  v0[235] = v0[199];
  v0[236] = v0[200];

  return _swift_asyncLet_get(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 172);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{
  v49 = v0;
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[201];
  v0[237] = v3;
  v4 = v0[202];
  v0[238] = v4;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = HIBYTE(v4) & 0xF;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v2 == v0[207] && v1 == v0[208];
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  if (!v8 || v3 == v0[207] && v4 == v0[208] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_16:
    v9 = v0[231];
    v10 = v0[214];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[231];
      v14 = v0[230];
      v47 = v5;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      v17 = v14;
      v6 = HIBYTE(v4) & 0xF;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v13, &v48);
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid utterance or response for RequestID: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);

      v5 = v47;
    }

    if (!v5 || v0[235] == v0[207] && v0[236] == v0[208])
    {
    }

    else
    {
      v39 = v0[236];
      v40 = v0[235];
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v18 = v0[231];
    v19 = v0[214];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[231];
      v23 = v6;
      v24 = v0[230];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = v26;
      *v25 = 136315138;
      v27 = v24;
      v6 = v23;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v22, &v48);
      _os_log_impl(&_mh_execute_header, v20, v21, " Utterance is empty for RequestID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

LABEL_25:
    v28 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v28 = v6;
    }

    if (!v28 || v3 == v0[207] && v4 == v0[208])
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        v43 = v0[231];
        goto LABEL_38;
      }
    }

    v29 = v0[231];
    v30 = v0[214];

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[231];
    if (v33)
    {
      v35 = v0[230];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315138;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v48);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, " Response is empty for RequestID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);

LABEL_39:

      return _swift_asyncLet_finish(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 180);
    }

LABEL_38:

    goto LABEL_39;
  }

  v44 = v0[231];
  v45 = v0[221];

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v45, 0);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v0[221];
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v10 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[236];
  v7 = v0[235];
  v8 = v0[221];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  *(v9 + 32) = 0;
  v9[5] = v7;
  v9[6] = v6;
  *(v8 + 112) = v2;
  swift_endAccess();

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v8, 0);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v0[221];
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v10 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[238];
  v7 = v0[237];
  v8 = v0[221];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  *(v9 + 32) = 1;
  v9[5] = v7;
  v9[6] = v6;
  *(v8 + 112) = v2;
  swift_endAccess();

  return _swift_asyncLet_finish(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 180);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{
  v1 = *(v0 + 1872);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1592, ConversationLoader.retrieveConversationFor(ids:), v0 + 1504);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{
  v41 = v0;
  v1 = *(v0 + 1864);

  v2 = *(v0 + 1832) + 1;
  if (v2 == *(v0 + 1824))
  {
LABEL_2:
    v3 = *(v0 + 1816);

    v4 = *(v0 + 1768);

    return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v4, 0);
  }

  while (1)
  {
    *(v0 + 1832) = v2;
    v8 = *(v0 + 1712);
    v9 = *(v0 + 1632) + 16 * v2;
    v10 = *(v9 + 32);
    *(v0 + 1840) = v10;
    v11 = *(v9 + 40);
    *(v0 + 1848) = v11;
    swift_bridgeObjectRetain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v40);
      _os_log_impl(&_mh_execute_header, v12, v13, "Looking for turn with root request ID: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    if (!*(*(v0 + 1816) + 16))
    {
      goto LABEL_14;
    }

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }

    v22 = *(*(*(v0 + 1816) + 56) + 8 * v16);
    if (v22 >> 62)
    {
      break;
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_14:
    v24 = *(v0 + 1712);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v40 = v6;
      *v5 = 136315138;
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v40);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v25, v26, "No turn found for RequestID: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }

    v2 = *(v0 + 1832) + 1;
    if (v2 == *(v0 + 1824))
    {
      goto LABEL_2;
    }
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v22 & 0xC000000000000001) != 0)
  {

    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_20:
    *(v0 + 1856) = v27;
    v28 = *(v0 + 1712);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v40);
      _os_log_impl(&_mh_execute_header, v29, v30, "Found turn for RequestID: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    v33 = *(v0 + 1664);
    v34 = *(v0 + 1656);
    v35 = *(v0 + 1648);
    v36 = *(v0 + 1640);
    v37 = swift_task_alloc();
    *(v0 + 1864) = v37;
    v37[2] = v36;
    v37[3] = v35;
    v37[4] = v34;
    v37[5] = v33;
    v37[6] = v27;
    swift_asyncLet_begin();
    v38 = swift_task_alloc();
    *(v0 + 1872) = v38;
    v38[2] = v36;
    v38[3] = v35;
    v38[4] = v34;
    v38[5] = v33;
    v38[6] = v27;
    swift_asyncLet_begin();
    v20 = ConversationLoader.retrieveConversationFor(ids:);
    v23 = v0 + 16;
    v19 = v0 + 1592;
    v21 = v0 + 1296;
  }

  else
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v22 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  return _swift_asyncLet_get(v23, v19, v20, v21);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v0[239] = *(*(v1 + 112) + 16);
  v2 = v0[213];
  v3 = v0[212];

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v3, v2);
}

{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1728);
  v6 = *(v0 + 1720);

  v7 = *(v0 + 1768);
  if (!v1)
  {
    v8 = *(v0 + 1768);

    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 1336));
  v9 = *(v0 + 1688);

  v10 = *(v0 + 8);

  return v10(v7);
}

{
  v31 = v0;
  v1 = v0[223];
  v2 = v0[214];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[221];
    v6 = v0[220];
    v25 = v0[219];
    v26 = v0[218];
    v27 = v0[217];
    v28 = v0[216];
    v29 = v0[215];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[177];
    v10 = v0[178];
    v11 = v0[179];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve conversation for AIMLIS: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v15 = v0[221];
    v16 = v0[220];
    v17 = v0[219];
    v18 = v0[218];
    v19 = v0[217];
    v20 = v0[216];
    v21 = v0[215];
  }

  v22 = v0[211];

  v23 = v0[1];

  return v23(0);
}

{
  v31 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 167);
  v1 = v0[226];
  v2 = v0[214];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[221];
    v6 = v0[220];
    v25 = v0[219];
    v26 = v0[218];
    v27 = v0[217];
    v28 = v0[216];
    v29 = v0[215];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[177];
    v10 = v0[178];
    v11 = v0[179];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve conversation for AIMLIS: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v15 = v0[221];
    v16 = v0[220];
    v17 = v0[219];
    v18 = v0[218];
    v19 = v0[217];
    v20 = v0[216];
    v21 = v0[215];
  }

  v22 = v0[211];

  v23 = v0[1];

  return v23(0);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1792);
  v6 = *v2;
  v4[225] = a1;
  v4[226] = v1;

  (*(v3[210] + 8))(v3[211], v3[209]);
  v7 = v3[213];
  v8 = v3[212];
  if (v1)
  {
    v9 = ConversationLoader.retrieveConversationFor(ids:);
  }

  else
  {
    v9 = ConversationLoader.retrieveConversationFor(ids:);
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:);

  return specialized ConversationLoader.parseUtteranceFrom(turn:)(0, 0, a4);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:), 0, 0);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t ConversationLoader.parseUtteranceFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of UserEngagementFeature.formatEngagements();

  return specialized ConversationLoader.parseUtteranceFrom(turn:)(a1, a2, a3);
}

uint64_t implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:);

  return specialized ConversationLoader.parseSiriResponseFrom(turn:)(0, 0, a4);
}

uint64_t implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:), 0, 0);
}

uint64_t ConversationLoader.parseSiriResponseFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = ConversationLoader.parseSiriResponseFrom(turn:);

  return specialized ConversationLoader.parseSiriResponseFrom(turn:)(a1, a2, a3);
}

void closure #2 in ConversationLoader.parseUtteranceFrom(turn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 tokens];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRTokenTier1, ASRSchemaASRTokenTier1_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void closure #1 in ConversationLoader.parseSiriResponseFrom(turn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 requestReceivedTier1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 textToSynthesize];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t ConversationLoader.removeControlSequences(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
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

  return _swift_task_switch(ConversationLoader.removeControlSequences(_:), v5, v7);
}

uint64_t ConversationLoader.removeControlSequences(_:)()
{
  v1 = v0[9];
  v0[2] = v0[8];
  v0[3] = v1;
  v0[4] = 0xD000000000000013;
  v0[5] = 0x8000000100031460;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v3 = v0[1];

  return v3(v2);
}

void closure #1 in ConversationLoader.parseUtteranceFrom(turn:)(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

InferenceExtension::ConversationLoader __swiftcall ConversationLoader.init(collectionWindow:)(InferenceExtension::CollectionWindow collectionWindow)
{
  v1 = 32;
  v2 = 0xE100000000000000;
  result.collectionWindow.endTime = collectionWindow.endTime;
  result.collectionWindow.startTime = collectionWindow.startTime;
  result.token_deliminter._object = v2;
  result.token_deliminter._countAndFlagsBits = v1;
  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30SISchemaInstrumentationMessageCmMd, &_sSo30SISchemaInstrumentationMessageCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo30SISchemaInstrumentationMessageCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo30SISchemaInstrumentationMessageCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_yp5valuet_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26AIMLInstrumentationStreams8SiriTurnC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SiriTurn();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      EventGraph.timestamp.getter();
      v15 = v14;
      EventGraph.timestamp.getter();
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_87:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v99), (*a3 + 8 * *&v8[16 * v98 + 16]), (*a3 + 8 * v100), v6);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v100 < v99)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        specialized Array.remove(at:)(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v106 = v7;
    if (v7 + 1 < v6)
    {
      v103 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      EventGraph.timestamp.getter();
      v18 = v17;
      EventGraph.timestamp.getter();
      v20 = v19;

      v21 = v7 + 2;
      while (v6 != v21)
      {
        v22 = *(v13 - 1);
        v23 = *v13;
        v24 = v22;
        EventGraph.timestamp.getter();
        v26 = v25;
        EventGraph.timestamp.getter();
        v28 = v27;

        ++v21;
        ++v13;
        if (v18 < v20 == v26 >= v28)
        {
          v6 = v21 - 1;
          break;
        }
      }

      v9 = v7;
      if (v18 < v20)
      {
        if (v6 < v7)
        {
          goto LABEL_116;
        }

        if (v7 < v6)
        {
          v29 = 8 * v6 - 8;
          v30 = v6;
          v31 = v7;
          do
          {
            if (v31 != --v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v32 = *(v33 + v5);
              *(v33 + v5) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            ++v31;
            v29 -= 8;
            v5 += 8;
          }

          while (v31 < v30);
        }
      }

      v10 = v6;
      v5 = v103;
    }

    v6 = a3;
    v34 = a3[1];
    if (v10 < v34)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_115;
      }

      if (v10 - v9 < a4)
      {
        v35 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v35 >= v34)
        {
          v35 = a3[1];
        }

        if (v35 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v10 != v35)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v8);
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v106;
    *(v54 + 5) = v10;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    v7 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_56:
          if (v60)
          {
            goto LABEL_103;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_106;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_110;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_70:
        if (v78)
        {
          goto LABEL_105;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_108;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_77:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*v6)
        {
          goto LABEL_121;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v8[16 * v56 + 32]), (*v6 + 8 * v96), v55);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v96 < v95)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        specialized Array.remove(at:)(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_101;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_102;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_104;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_107;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_111;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_87;
    }
  }

  v104 = v5;
  v36 = *a3;
  v37 = *a3 + 8 * v10 - 8;
  v38 = v9 - v10;
  v107 = v35;
LABEL_29:
  v109 = v10;
  v39 = *(v36 + 8 * v10);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    EventGraph.timestamp.getter();
    v46 = v45;
    EventGraph.timestamp.getter();
    v48 = v47;

    if (v46 >= v48)
    {
LABEL_28:
      v10 = v109 + 1;
      v37 += 8;
      --v38;
      if (v109 + 1 != v107)
      {
        goto LABEL_29;
      }

      v10 = v107;
      v5 = v104;
      v6 = a3;
      v9 = v106;
      goto LABEL_36;
    }

    if (!v36)
    {
      break;
    }

    v49 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v49;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4;
      v19 = *v13;
      v20 = v18;
      EventGraph.timestamp.getter();
      v22 = v21;
      EventGraph.timestamp.getter();
      v24 = v23;

      if (v22 < v24)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v25 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v25;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v41 = v4;
LABEL_25:
    v40 = v15;
    v26 = v15 - 1;
    --v5;
    v27 = v14;
    do
    {
      v28 = v5 + 1;
      v29 = *--v27;
      v30 = v26;
      v31 = *v26;
      v32 = v29;
      v33 = v31;
      EventGraph.timestamp.getter();
      v35 = v34;
      EventGraph.timestamp.getter();
      v37 = v36;

      if (v35 < v37)
      {
        v38 = v30;
        if (v28 != v40)
        {
          *v5 = *v30;
        }

        v4 = v41;
        if (v14 <= v41 || (v15 = v38, v38 <= v6))
        {
          v15 = v38;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v28 != v14)
      {
        *v5 = *v27;
      }

      --v5;
      v14 = v27;
      v26 = v30;
    }

    while (v27 > v41);
    v14 = v27;
    v15 = v40;
    v4 = v41;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSay26AIMLInstrumentationStreams8SiriTurnCGGMd, &_ss18_DictionaryStorageCySSSgSay26AIMLInstrumentationStreams8SiriTurnCGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26AIMLInstrumentationStreams8SiriTurnC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
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
          lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type [SiriTurn] and conformance [A], &_sSay26AIMLInstrumentationStreams8SiriTurnCGMd, &_sSay26AIMLInstrumentationStreams8SiriTurnCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AIMLInstrumentationStreams8SiriTurnCGMd, &_sSay26AIMLInstrumentationStreams8SiriTurnCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for SiriTurn();
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

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say26AIMLInstrumentationStreams8SiriTurnCGTt1g50108_s18InferenceExtension18ConversationLoaderV08retrieveC3For3idsAA21UserEngagementFeatureCSgSaySSG_tYaKFSSSg26d8Streams8fG7CXEfU0_Tf1nc_nTf4g_n(unint64_t a1)
{
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v31 = (v2 + 8);
      v8 = &_swiftEmptyDictionarySingleton;
      v30 = xmmword_10002E4A0;
      v33 = v6;
      v34 = a1;
      while (1)
      {
        if (v36)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_24;
          }

          v10 = *(a1 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (EventGraph.orch.getter())
        {
          v13 = dispatch thunk of ComponentGroup.componentIdentifier.getter();

          dispatch thunk of ComponentIdentifier.uuid.getter();

          v14 = UUID.uuidString.getter();
          v2 = v15;
          (*v31)(v5, v32);
        }

        else
        {
          v14 = 0;
          v2 = 0;
        }

        a1 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v2);
        v17 = v8[2];
        v18 = (v16 & 1) == 0;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          goto LABEL_25;
        }

        v20 = v16;
        if (v8[3] < v19)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, 1);
          v8 = v37;
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v2);
          if ((v20 & 1) != (v22 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v21;
        }

        if (v20)
        {

          v9 = (v8[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v23 = swift_allocObject();
          *(v23 + 16) = v30;
          *(v23 + 32) = v11;
          v8[(a1 >> 6) + 8] |= 1 << a1;
          v24 = (v8[6] + 16 * a1);
          *v24 = v14;
          v24[1] = v2;
          *(v8[7] + 8 * a1) = v23;
          v25 = v8[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_26;
          }

          v8[2] = v27;
        }

        a1 = v34;
        ++v7;
        if (v12 == v33)
        {
          return v8;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t partial apply for implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of SELFReporter.report(event:);

  return implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(a1, v6, v7, v8);
}

uint64_t partial apply for implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(a1, v6, v7, v8);
}

uint64_t specialized ConversationLoader.parseUtteranceFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
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

  return _swift_task_switch(specialized ConversationLoader.parseUtteranceFrom(turn:), v4, v6);
}

uint64_t specialized ConversationLoader.parseUtteranceFrom(turn:)()
{
  v38 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.inference);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch User utterance from ASRSchemaASRIntermediateUtteranceInfoTier1", v5, 2u);
  }

  v6 = v0[3];

  v7 = EventGraph.asr.getter();
  if (v7)
  {
    v0[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRIntermediateUtteranceInfoTier1, ASRSchemaASRIntermediateUtteranceInfoTier1_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<ASRSchemaASRClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    v8 = Sequence<>.compactMapInner<A, B>(_:)();

    v9 = v8[2];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = (v8 + 5);
  do
  {
    v11 = *v10;
    v36 = *(v10 - 1);
    v37 = v11;
    swift_bridgeObjectRetain_n();
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);

    v13._countAndFlagsBits = v36;
    v13._object = v11;
    String.append(_:)(v13);

    v10 += 2;
    --v9;
  }

  while (v9);
LABEL_11:

  v14 = v0[3];
  result = EventGraph.asr.getter();
  if (result)
  {
    v0[2] = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRRecognitionResultTier1, ASRSchemaASRRecognitionResultTier1_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22ASRSchemaASRTokenTier1CGMd, &_sSaySo22ASRSchemaASRTokenTier1CGMR);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<ASRSchemaASRClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    v16 = Sequence<>.compactMapInner<A, B>(_:)();

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v16 + 8 * v17 + 24);
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  if (v18 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = result;
    if (!result)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  v35 = v2;
  if (v19 < 1)
  {
    __break(1u);
    return result;
  }

  v20 = 0;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v18 + 8 * v20 + 32);
    }

    v26 = v25;
    v27 = [v25 text];
    if (v27)
    {
      v28 = v27;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v29;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    ++v20;
    v36 = v21;
    v37 = v22;

    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);

    v24._countAndFlagsBits = v21;
    v24._object = v22;
    String.append(_:)(v24);
  }

  while (v19 != v20);
LABEL_28:

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v36);
    _os_log_impl(&_mh_execute_header, v30, v31, "User Utterance: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v34 = v0[1];

  return v34(0, 0xE000000000000000);
}

uint64_t specialized ConversationLoader.parseSiriResponseFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a3;
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

  return _swift_task_switch(specialized ConversationLoader.parseSiriResponseFrom(turn:), v4, v6);
}

uint64_t specialized ConversationLoader.parseSiriResponseFrom(turn:)()
{
  v83 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch SpokenPhrase from TTSSchemaTTSClientEvent", v4, 2u);
  }

  count = v0[8].count;

  v6 = SiriTurn.tts.getter();
  if (v6)
  {
    v0[2].count = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSClientEvent, TTSSchemaTTSClientEvent_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<TTSSchemaTTSClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMR);
    v7 = Sequence<>.compactMapInner<A, B>(_:)();

    v8 = v7[2];
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v14 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_12;
  }

  v7 = _swiftEmptyArrayStorage;
  v8 = _swiftEmptyArrayStorage[2];
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = (v7 + 5);
  do
  {
    v10 = *v9;
    v82._countAndFlagsBits = *(v9 - 1);
    v82._object = v10;
    swift_bridgeObjectRetain_n();
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    v12._countAndFlagsBits = v82._countAndFlagsBits;
    v12._object = v10;
    String.append(_:)(v12);

    v9 += 2;
    --v8;
  }

  while (v8);
  v14 = 0;
  v13 = 0xE000000000000000;
LABEL_12:

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetch Siri Dialog Output from SISchemaUUFRShown", v17, 2u);
  }

  v18 = v0[8].count;

  v19 = EventGraph.uei.getter();
  v80 = v0;
  if (v19)
  {
    v0[2].count = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShown, SISchemaUUFRShown_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    v20 = Sequence<>.compactMapInner<A, B>(_:)();
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];
  if (v21)
  {
    v22 = (v20 + 5);
    do
    {
      v23 = *v22;
      v82._countAndFlagsBits = *(v22 - 1);
      v82._object = v23;
      swift_bridgeObjectRetain_n();
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);

      v25._countAndFlagsBits = v82._countAndFlagsBits;
      v25._object = v23;
      String.append(_:)(v25);

      v22 += 2;
      --v21;
    }

    while (v21);
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetch SpokenPhrase from SISchemaUUFRSaid", v28, 2u);
  }

  v29 = v0[8].count;

  v30 = EventGraph.uei.getter();
  if (v30)
  {
    v0[2].count = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRSaid, SISchemaUUFRSaid_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    v31 = Sequence<>.compactMapInner<A, B>(_:)();
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v32 = v31[2];
  if (v32)
  {
    v33 = (v31 + 5);
    do
    {
      v36 = *(v33 - 1);
      v35 = *v33;
      swift_bridgeObjectRetain_n();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v82._countAndFlagsBits = v40;
        *v39 = 136315138;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v82._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v37, v38, "Siri Response: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
      }

      v82._countAndFlagsBits = v36;
      v82._object = v35;

      v34._countAndFlagsBits = 32;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);

      String.append(_:)(v82);

      v33 += 2;
      --v32;
    }

    while (v32);
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Fetch Siri Dialog Output from SISchemaUUFRShownTier1", v45, 2u);
  }

  v46 = v0[8].count;

  v47 = EventGraph.uei.getter();
  if (v47)
  {
    v0[2].count = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShownTier1, SISchemaUUFRShownTier1_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    v48 = Sequence<>.compactMapInner<A, B>(_:)();

    v49 = v48[2];
    if (!v49)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
    v49 = _swiftEmptyArrayStorage[2];
    if (!v49)
    {
      goto LABEL_47;
    }
  }

  v50 = (v48 + 5);
  do
  {
    v51 = *v50;
    v82._countAndFlagsBits = *(v50 - 1);
    v82._object = v51;
    swift_bridgeObjectRetain_n();
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);

    String.append(_:)(v82);

    v50 += 2;
    --v49;
  }

  while (v49);
  v14 = 0;
  v13 = 0xE000000000000000;
LABEL_47:

  v53 = v0[8].count;
  v0[2].count = dispatch thunk of EventGraph.events()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriInstrumentation12OrderedEventCGMd, "05");
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogReportedTier1, RFSchemaRFGradingDialogReportedTier1_ptr);
  lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type [OrderedEvent] and conformance [A], &_sSay19SiriInstrumentation12OrderedEventCGMd, "05");
  v54 = Sequence<>.compactMapInner<A, B>(_:)();

  if (v54 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v78 = v54;
    v79 = v54 & 0xC000000000000001;
    v75 = v54 + 32;
    v76 = v54 & 0xFFFFFFFFFFFFFF8;
    v77 = i;
    while (1)
    {
      if (v79)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v76 + 16))
        {
          goto LABEL_77;
        }

        v57 = *(v75 + 8 * v13);
      }

      v56 = v57;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v59 = [v57 dialogLines];
      if (!v59)
      {
        goto LABEL_51;
      }

      v60 = v59;
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogLineTier1, RFSchemaRFGradingDialogLineTier1_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v56;
      if (v14 >> 62)
      {
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v0 = &BMBookmark__prots;
        if (v61)
        {
LABEL_60:
          if (v61 < 1)
          {
            goto LABEL_76;
          }

          for (j = 0; j != v61; ++j)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v68 = *(v14 + 8 * j + 32);
            }

            v69 = v68;
            v70 = [v68 v0[265].count];
            if (v70 || (v70 = [v69 spokenDialog]) != 0)
            {
              v63 = v70;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;

              v82._countAndFlagsBits = v64;
              v82._object = v66;

              v67._countAndFlagsBits = 32;
              v67._object = 0xE100000000000000;
              String.append(_:)(v67);

              String.append(_:)(v82);
            }
          }
        }
      }

      else
      {
        v61 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v0 = &BMBookmark__prots;
        if (v61)
        {
          goto LABEL_60;
        }
      }

      v0 = v80;
      v56 = v81;
      i = v77;
      v54 = v78;
LABEL_51:

      if (v13 == i)
      {
        v14 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

LABEL_73:

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v82._countAndFlagsBits = v74;
    *v73 = 136315138;
    *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v82._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v71, v72, "Siri Response: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
  }

  v41 = v0[1].count;

  return v41(v14, v13);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CollectionWindow(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CollectionWindow(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationLoader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ConversationLoader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ORCHSchemaORCHClientEvent(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BiomeStreaming.__allocating_init(userDefaults:streamId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BiomeStreaming.init(userDefaults:streamId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[14] = a4;
  if (a1)
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

  return _swift_task_switch(BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:), v7, v9);
}

uint64_t BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)()
{
  v85 = v0;
  aBlock = v0 + 2;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.inference);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v84[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + 24);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v84);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Start load Biome events from %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = v0[15];
  v13 = *(v0[16] + 24);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = BiomeStreaming.bookmark(for:)(v14, v15);

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = static Array._allocateUninitialized(_:)();
  v19 = BiomeLibrary();
  v0[2] = 0;
  v20 = [v19 streamWithIdentifier:v13 error:aBlock];
  swift_unknownObjectRelease();
  v21 = v0[2];
  if (!v20)
  {
    v46 = v0[16];
    v47 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v84[0] = v51;
      *v50 = 136315138;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v84);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Unable to create stream from BMLibrary identifier:  %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v22 = objc_allocWithZone(BMPublisherOptions);
  v23 = v20;
  v24 = v21;
  v25 = [v22 initWithStartDate:0 endDate:0 maxEvents:100 lastN:100 reversed:0];
  v82 = v23;
  v26 = [v23 publisherWithOptions:v25];

  v27 = v0[16];
  if (!v26)
  {
    v55 = v0[16];

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v84[0] = v59;
      *v58 = 136315138;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v84);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "Unable to create publisher from BMLibrary identifier:  %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
    }

    swift_unknownObjectRelease();
LABEL_21:
    v74 = 0;
    goto LABEL_22;
  }

  v81 = v18;
  v28 = v0[15];
  v78 = (v17 + 16);
  v79 = v0[14];
  v29 = swift_allocObject();
  *(v29 + 16) = v17;
  *(v29 + 24) = v27;
  v0[6] = partial apply for closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v29;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v0[5] = &block_descriptor;
  v77 = _Block_copy(aBlock);
  v30 = v0[7];

  v31 = v26;

  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = v27;
  v32[4] = v81;
  v32[5] = v79;
  v0[6] = partial apply for closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v32;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v0[5] = &block_descriptor_12;
  v33 = _Block_copy(aBlock);
  v34 = v0[7];

  v80 = v31;
  v35 = [v31 drivableSinkWithBookmark:v16 completion:v77 shouldContinue:v33];
  _Block_release(v33);
  _Block_release(v77);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[15];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v84[0] = v40;
    *v39 = 134218242;
    swift_beginAccess();
    v41 = *(v81 + 16);

    v42 = Array.count.getter();

    *(v39 + 4) = v42;

    *(v39 + 12) = 2080;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v84);

    *(v39 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Loaded %ld events from %s Biome stream.", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
  }

  swift_beginAccess();
  v63 = *v78;
  if (*v78)
  {
    swift_unknownObjectRetain_n();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v84[0] = v67;
      *v66 = 136315138;
      v0[8] = v63;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      v68 = String.init<A>(describing:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v84);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "End Bookmark: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
    }

    v71 = v0[16];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    BiomeStreaming.saveBookmark(_:forKey:)(v63, v72, v73);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  swift_beginAccess();
  v74 = *(v81 + 16);

LABEL_22:
  v75 = v0[1];

  return v75(v74);
}

uint64_t BiomeStreaming.bookmark(for:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    outlined destroy of NSObject?(v33, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = Data._bridgeToObjectiveC()().super.isa;
  *&v33[0] = 0;
  v12 = [v8 unarchivedObjectOfClasses:isa fromData:v11 error:v33];

  if (!v12)
  {
    v21 = *&v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.inference);

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v33[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v33);
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error decoding bookmark for %s : %@", v25, 0x16u);
      outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v27);

      outlined consume of Data._Representation(v29, v30);
    }

    else
    {
      outlined consume of Data._Representation(v29, v30);
    }

    return 0;
  }

  v13 = *&v33[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
  if (swift_dynamicCast())
  {
    v14 = v31;
  }

  else
  {
    v14 = 0;
  }

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.inference);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v33[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "Bookmark for %s found", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  outlined consume of Data._Representation(v29, v30);

  return v14;
}

void closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 state];
  if (v8)
  {
    if (v8 == 1)
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.inference);
      v10 = a1;
      oslog = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v41[0] = v13;
        *v12 = 136315138;
        v14 = [v10 error];
        if (v14)
        {
          v15 = v14;
          swift_getErrorValue();
          v16 = Error.localizedDescription.getter();
          v18 = v17;
        }

        else
        {
          v18 = 0xE300000000000000;
          v16 = 7104878;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v41);

        *(v12 + 4) = v38;
        v36 = "Error on stream with %s";
        v37 = v11;
        goto LABEL_22;
      }
    }

    else
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.inference);

      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v31))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v41[0] = v13;
        *v12 = 136315138;
        v32 = *(a4 + 24);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v41);

        *(v12 + 4) = v35;
        v36 = "Unexpected completion state on stream %s";
        v37 = v31;
LABEL_22:
        _os_log_impl(&_mh_execute_header, oslog, v37, v36, v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);

        return;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v19 = *(a3 + 16);
    *(a3 + 16) = a2;
    swift_unknownObjectRelease();
    v20 = one-time initialization token for inference;
    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.inference);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v26 = *(a4 + 24);
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v40);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Read stream %s completed", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 eventBody];
    if (v7)
    {
      v8 = v7;
      v9 = specialized BiomeStreaming.applyFilter(eventBody:)(v8);

      if (v9)
      {
        swift_beginAccess();
        v10 = *(a3 + 16);

        v11 = Array.count.getter();

        if (v11 <= a4)
        {
          swift_beginAccess();
          type metadata accessor for Array();
          v20 = v8;
          Array.append(_:)();
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.inference);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Event missing body data", v19, 2u);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.inference);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Can't get BMStoreEvent out of the stream", v15, 2u);
    }
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

void BiomeStreaming.saveBookmark(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.inference);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "Saving bookmark for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v13 = objc_opt_self();
  v33 = 0;
  v14 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v33];
  v15 = v33;
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v19, v20, "Saved bookmark for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    v23 = *(v4 + 16);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = String._bridgeToObjectiveC()();
    [v23 setValue:isa forKey:v25];

    outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v26 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v32;
      *v30 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error encoding bookmark for %s: %@", v29, 0x16u);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
    }
  }
}

uint64_t BiomeStreaming.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001E430()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E468()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E4A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E500()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id specialized BiomeStreaming.applyFilter(eventBody:)(id a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = one-time initialization token for inference;
    v39 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.inference);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "PSE specific - Apply intent use case filter", v8, 2u);
    }

    v9 = 4;
    v10 = &unk_100039270;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13 = [v3 taskType];
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = String.lowercased()();

        v40 = v15;
        lazy protocol witness table accessor for type String and conformance String();
        LOBYTE(v14) = StringProtocol.contains<A>(_:)();

        if (v14)
        {
          a1 = v39;
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v40._countAndFlagsBits = v19;
            *v18 = 136315138;
            v20 = [v3 taskType];
            if (v20)
            {
              v21 = v20;
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v23;
            }

            else
            {
              v22 = 0x6E776F6E6B6E55;
              v24 = 0xE700000000000000;
            }

            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v40._countAndFlagsBits);

            *(v18 + 4) = v36;
            _os_log_impl(&_mh_execute_header, v16, v17, "Found target intent: %s", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v19);
          }

          else
          {
          }

          goto LABEL_24;
        }
      }

      else
      {
      }

      v10 += 2;
      --v9;
    }

    while (v9);
    v25 = v39;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40._countAndFlagsBits = v29;
      *v28 = 136315138;
      v30 = [v3 taskType];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0x6E776F6E6B6E55;
        v34 = 0xE700000000000000;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v40._countAndFlagsBits);

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unsupported target intent: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
    }

    return 0;
  }

  else
  {
LABEL_24:
    v37 = a1;
  }

  return a1;
}

uint64_t dispatch thunk of ConversationTrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return v17(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservabilityConfig(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ObservabilityConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ObservabilityManager.__allocating_init(config:builder:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ObservabilityManager.init(config:builder:)(a1, a2, a3, a4);
  return v11;
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
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

  v4[7] = v5;
  v4[8] = v7;

  return _swift_task_switch(ObservabilityManager.buildUserJourney(maxRecords:), v5, v7);
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v19 = v0;
  static Task<>.checkCancellation()();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logger.inference);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 32);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Build user engagement journey from %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = ObservabilityManager.buildUserJourney(maxRecords:);
  v13 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];

  return specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)(v16, v15, v13);
}

{
  v37 = v0;
  v1 = v0[11];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v35 = v0[11];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[11];
  v4 = v0[9];
  if (v2)
  {
    v5 = v0[6];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 134218242;
      if (v1 >> 62)
      {
        v18 = v0[11];
        if (v1 < 0)
        {
          v19 = v0[11];
        }

        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v0[11];
      v21 = v0[6];
      *(v8 + 4) = v10;

      *(v8 + 12) = 2080;
      v22 = *(v21 + 32);
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v36);

      *(v8 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v6, v7, "Loaded %ld reference events from %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
      v17 = v0[11];
    }

    v26 = v0[11];
    v27 = v0[6];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    v29 = swift_task_alloc();
    v0[12] = v29;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18InferenceExtension21UserEngagementFeatureCGMd, &_sSay18InferenceExtension21UserEngagementFeatureCGMR);
    v31 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v32 = swift_task_alloc();
    v0[13] = v32;
    *v32 = v0;
    v32[1] = specialized ObservabilityManager.buildUserJourney(maxRecords:);
    v33 = v0[3];
    v34 = v0[4];
    v39 = v30;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v28, v30, v33, v34, &async function pointer to partial apply for closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), v29, v28);
  }

  else
  {
    v11 = v0[11];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No PSE events found from PSE Biome stream, existing inference task", v14, 2u);
    }

    v15 = v0[1];

    return v15(_swiftEmptyArrayStorage);
  }
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);

    return _swift_task_switch(ObservabilityManager.buildUserJourney(maxRecords:), v8, v9);
  }
}

uint64_t _s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
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

  return _swift_task_switch(_s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5TY0_, v5, v7);
}

uint64_t _s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5TY0_()
{
  v85 = v0;
  aBlock = v0 + 2;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.inference);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v84[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + 24);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v84);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Start load Biome events from %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = *(v0[15] + 24);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = BiomeStreaming.bookmark(for:)(v13, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyArrayStorage;
  v18 = (v17 + 16);
  v19 = BiomeLibrary();
  v0[2] = 0;
  v20 = [v19 streamWithIdentifier:v12 error:aBlock];
  swift_unknownObjectRelease();
  v21 = v0[2];
  if (!v20)
  {
    v44 = v0[15];
    v45 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v84[0] = v49;
      *v48 = 136315138;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v84);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create stream from BMLibrary identifier:  %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v80 = (v16 + 16);
  v22 = objc_allocWithZone(BMPublisherOptions);
  v23 = v20;
  v24 = v21;
  v25 = [v22 initWithStartDate:0 endDate:0 maxEvents:100 lastN:100 reversed:0];
  v81 = v23;
  v26 = [v23 publisherWithOptions:v25];

  v27 = v0[15];
  if (!v26)
  {
    v53 = v0[15];

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v84[0] = v57;
      *v56 = 136315138;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v84);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unable to create publisher from BMLibrary identifier:  %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
    }

    swift_unknownObjectRelease();
LABEL_23:
    v73 = 0;
    goto LABEL_24;
  }

  v78 = v0[14];
  v28 = swift_allocObject();
  *(v28 + 16) = v16;
  *(v28 + 24) = v27;
  v0[6] = partial apply for closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v28;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v0[5] = &block_descriptor_0;
  v77 = _Block_copy(aBlock);
  v82 = v15;
  v29 = v0[7];

  v30 = v26;

  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = v17;
  v31[4] = v78;
  v0[6] = partial apply for specialized closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v31;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v0[5] = &block_descriptor_29;
  v32 = _Block_copy(aBlock);
  v33 = v0[7];

  v79 = v30;
  v34 = [v30 drivableSinkWithBookmark:v82 completion:v77 shouldContinue:v32];
  _Block_release(v32);
  _Block_release(v77);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v84[0] = v38;
    *v37 = 134218242;
    swift_beginAccess();
    v39 = *v18;
    if (*v18 >> 62)
    {
      if (v39 < 0)
      {
        v76 = *v18;
      }

      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v40;

    *(v37 + 12) = 2080;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v84);

    *(v37 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Loaded %ld events from %s Biome stream.", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
  }

  swift_beginAccess();
  v61 = *v80;
  if (*v80)
  {
    v62 = *v80;
    swift_unknownObjectRetain_n();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v84[0] = v66;
      *v65 = 136315138;
      v0[8] = v61;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      v67 = String.init<A>(describing:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v84);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "End Bookmark: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
    }

    v70 = v0[15];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    BiomeStreaming.saveBookmark(_:forKey:)(v61, v71, v72);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  swift_beginAccess();
  v73 = *(v17 + 16);

LABEL_24:
  v74 = v0[1];

  return v74(v73);
}

uint64_t specialized closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 eventBody];
    if (v7)
    {
      v8 = v7;
      v9 = specialized BiomeStreaming.applyFilter(eventBody:)(v8);

      if (!v9)
      {
        swift_unknownObjectRelease();

        return 1;
      }

      swift_beginAccess();
      v10 = *(a3 + 16);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v20 = *(a3 + 16);
        }

        if (_CocoaArrayWrapper.endIndex.getter() > a4)
        {
          goto LABEL_9;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
      {
LABEL_9:
        swift_unknownObjectRelease();

        return 1;
      }

      swift_beginAccess();
      v8 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_9;
    }

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.inference);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Event missing body data", v18, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.inference);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Can't get BMStoreEvent out of the stream", v14, 2u);
    }
  }

  return 1;
}

uint64_t ObservabilityManager.config.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v2;
  v5 = v3;
  return v1;
}

char *ObservabilityManager.init(config:builder:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *v4;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  type metadata accessor for BiomeStreaming();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v4 + 5) = v9;
  (*(*(*(v8 + 80) - 8) + 32))(&v4[*(v8 + 112)], a4);
  v10 = a2;
  v11 = a3;
  return v4;
}

uint64_t closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMd, &_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMR);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

{
  v5 = v4[13];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v27 = v4[13];
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v28 = v4[17];
    v29 = v4[12];
    v4[9] = _swiftEmptyArrayStorage;
    v30 = *v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    TaskGroup.makeAsyncIterator()();
    v4[20] = _swiftEmptyArrayStorage;
    v31 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v32 = swift_task_alloc();
    v4[21] = v32;
    *v32 = v4;
    v32[1] = closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    v33 = v4[17];
    a4 = v4[15];
    v6 = (v4 + 10);
    a2 = 0;
    a3 = 0;

    return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v35 = v4[13] + 32;
    v36 = *v4[12];
    v37 = v5 & 0xC000000000000001;
    v38 = v6;
    while (1)
    {
      if (v37)
      {
        v9 = v4[13];
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v35 + 8 * v7);
      }

      v11 = v10;
      v13 = v4[18];
      v12 = v4[19];
      v14 = v4[14];
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v11;
      outlined init with copy of TaskPriority?(v12, v13);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);

      v19 = v11;

      v20 = v4[18];
      if (v12 == 1)
      {
        outlined destroy of TaskPriority?(v4[18]);
        if (!*v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v20, v15);
        if (!*v18)
        {
LABEL_13:
          v22 = 0;
          v24 = 0;
          goto LABEL_14;
        }
      }

      v21 = v17[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_14:
      v25 = swift_allocObject();
      *(v25 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
      *(v25 + 24) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
      v26 = (v24 | v22);
      if (v24 | v22)
      {
        v26 = v4 + 2;
        v4[2] = 0;
        v4[3] = 0;
        v4[4] = v22;
        v4[5] = v24;
      }

      ++v7;
      v8 = v4[19];
      v4[6] = 1;
      v4[7] = v26;
      v4[8] = v36;
      swift_task_create();

      outlined destroy of TaskPriority?(v8);
      if (v38 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
}

uint64_t closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

{
  v1 = v0[10];
  if (v1 == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.inference);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[20];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v13 >> 62)
      {
        v0[20];
        v26 = v14;
        v15 = _CocoaArrayWrapper.endIndex.getter();
        v14 = v26;
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v0[20];
      *(v14 + 4) = v15;
      v17 = v14;

      _os_log_impl(&_mh_execute_header, v10, v11, "Produced User Engagement contexturization for %ld events", v17, 0xCu);
    }

    else
    {
      v18 = v0[20];
    }

    v19 = v0[19];
    v20 = v0[20];
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[11];

    *v23 = v20;

    v24 = v0[1];

    return v24();
  }

  else
  {
    if (v1)
    {
      v2 = v0 + 9;
      v3 = v0[10];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined consume of UserEngagementFeature??(v1);
      v0[20] = v0[9];
    }

    v4 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    v6 = v0[17];
    v7 = v0[15];

    return TaskGroup.Iterator.next(isolation:)(v0 + 10, 0, 0, v7);
  }
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a4;
  return _swift_task_switch(closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(*v3 + 112);
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = swift_dynamicCastUnknownClassUnconditional();
  v8 = v3[2];
  v9 = *(v5 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return (v13)(0, 0, v7, v8, v6, v5);
}

{
  **(v0 + 16) = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t *ObservabilityManager.deinit()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];

  v4 = v0[5];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t ObservabilityManager.__deallocating_deinit()
{
  ObservabilityManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t partial apply for closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, a2, v7, v6);
}

uint64_t type metadata completion function for ObservabilityManager(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100021324()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SELFReporter.report(event:);

  return closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, v4, v5, v7, v6);
}

uint64_t sub_10002142C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002149C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t SupportedUseCases.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D72616C41;
  v2 = 0x736C6C6143;
  v3 = 1936744781;
  if (a1 != 3)
  {
    v3 = 0x6F70707553746F4ELL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x636973754DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SupportedUseCases(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D72616C41;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE500000000000000;
  v6 = 0x736C6C6143;
  v7 = 0xE400000000000000;
  v8 = 1936744781;
  if (v3 != 3)
  {
    v8 = 0x6F70707553746F4ELL;
    v7 = 0xEC00000064657472;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x636973754DLL;
  if (!*a1)
  {
    v9 = 0x6D72616C41;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v5;
  }

  v12 = 0xE500000000000000;
  v13 = 0x736C6C6143;
  v14 = 0xE400000000000000;
  v15 = 1936744781;
  if (v4 != 3)
  {
    v15 = 0x6F70707553746F4ELL;
    v14 = 0xEC00000064657472;
  }

  if (v4 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (*a2)
  {
    v2 = 0x636973754DLL;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = v12;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SupportedUseCases()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SupportedUseCases()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SupportedUseCases()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SupportedUseCases@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SupportedUseCases.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SupportedUseCases(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6D72616C41;
  v5 = 0xE500000000000000;
  v6 = 0x736C6C6143;
  v7 = 0xE400000000000000;
  v8 = 1936744781;
  if (v2 != 3)
  {
    v8 = 0x6F70707553746F4ELL;
    v7 = 0xEC00000064657472;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636973754DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t PSETrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return specialized PSETrajectoryBuilder.build(event:with:)(a1, a2, a3);
}

uint64_t PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
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

  v3[6] = v4;
  v3[7] = v6;

  return _swift_task_switch(PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v4, v6);
}

uint64_t PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[5];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18InferenceExtension10PSEFeatureVGMd, &_sSay18InferenceExtension10PSEFeatureVGMR);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *(v5 + 16) = v2;
    v6 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
    v8 = v0[3];
    v9 = v0[4];

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v4, v8, v9, &async function pointer to partial apply for closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v5, v3);
  }

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.inference);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Empty BMSiriPostSiriEngagementSignal list, unable to create PSEFeature", v14, 2u);
  }

  v15 = v0[1];

  return v15(&_swiftEmptyArrayStorage);
}

{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v5, v4);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v6 = *(v2 - 1);
      *v2;

      v7._countAndFlagsBits = specialized static FeatureUtil.prettyPrintEngagements(engagements:)(v3);
      v7._object = v4;
      v5._countAndFlagsBits = 10;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      String.append(_:)(v7);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_18InferenceExtension10PSEFeatureVt_GMd, &_sScG8IteratorVySi_18InferenceExtension10PSEFeatureVt_GMR);
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

uint64_t closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v32 = v1 & 0xFFFFFFFFFFFFFF8;
    v33 = v1 & 0xC000000000000001;
    v30 = *(v0 + 112) + 32;
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v22 = *(v0 + 112);
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_18;
        }

        v5 = *(v30 + 8 * v3);
      }

      v1 = v5;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = type metadata accessor for TaskPriority();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v1;
      v11[5] = v3;
      outlined init with copy of TaskPriority?(v7, v8);
      LODWORD(v7) = (*(v10 + 48))(v8, 1, v9);
      v13 = v1;
      v14 = *(v0 + 120);
      if (v7 == 1)
      {
        outlined destroy of NSObject?(*(v0 + 120), &_sScPSgMd, &_sScPSgMR);
        if (!*v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v10 + 8))(v14, v9);
        if (!*v12)
        {
LABEL_13:
          v16 = 0;
          v18 = 0;
          goto LABEL_14;
        }
      }

      v15 = v11[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
LABEL_14:
      v19 = **(v0 + 104);
      v20 = swift_allocObject();
      *(v20 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
      *(v20 + 24) = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
      v21 = v18 | v16;
      if (v18 | v16)
      {
        v21 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      v4 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v19;
      v1 = swift_task_create();

      outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
      ++v3;
      if (v6 == v31)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v23 = *(v0 + 152);
  v24 = **(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 160) = _swiftEmptyArrayStorage;
  v25 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v26 = swift_task_alloc();
  *(v0 + 168) = v26;
  *v26 = v0;
  v26[1] = closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
  v27 = *(v0 + 152);
  v28 = *(v0 + 136);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v28);
}

{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

{
  v36 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 160);
  if (v1)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v9 = v7[2];
    v8 = v7[3];
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    v7[2] = v9 + 1;
    v10 = &v7[3 * v9];
    v10[4] = v2;
    v10[5] = v1;
    *(v10 + 48) = v4 & 1;
    *(v0 + 160) = v7;
    v11 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
    v13 = *(v0 + 152);
    v14 = *(v0 + 136);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v14);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v35 = v3;

    specialized MutableCollection<>.sort(by:)(&v35);
    v15 = v35;
    v16 = v35[2];
    if (v16)
    {
      v34 = v0;
      v35 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = 0;
      v18 = v35;
      v19 = v35[2];
      v20 = 2 * v19;
      do
      {
        v21 = v15;
        v22 = v15[v17 + 5];
        v23 = v15[v17 + 6];
        v35 = v18;
        v24 = v18[3];
        v25 = v19 + 1;

        if (v19 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25, 1);
          v18 = v35;
        }

        v18[2] = v25;
        v26 = &v18[v20];
        v26[4] = v22;
        *(v26 + 40) = v23;
        v20 += 2;
        v17 += 3;
        ++v19;
        --v16;
        v15 = v21;
      }

      while (v16);
      v0 = v34;
      v27 = *(v34 + 160);
    }

    else
    {
      v28 = *(v0 + 160);

      v18 = _swiftEmptyArrayStorage;
    }

    v29 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    **(v0 + 96) = v18;

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = [*(v0 + 24) domain];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 4999502;
  }

  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
  v7 = *(v0 + 24);

  return specialized PSETrajectoryBuilder.extractFeatures(from:for:)(0, 0, v7, v3, v5);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 32);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return _swift_task_switch(closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

Swift::String __swiftcall String.titleCase()()
{
  v2 = v1;
  v3 = v0;
  v24 = type metadata accessor for CharacterSet();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v33 = v3;
  v34 = v2;
  v31 = 0x295D5A2D415B28;
  v32 = 0xE700000000000000;
  v29 = 3220512;
  v30 = 0xE300000000000000;
  v27 = v3;
  v28 = v2;
  v25 = v3;
  v26 = v2;
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of NSObject?(v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v34 = v13;
  static CharacterSet.whitespacesAndNewlines.getter();
  v14 = StringProtocol.trimmingCharacters(in:)();
  v16 = v15;
  (*(v4 + 8))(v7, v24);

  v33 = v14;
  v34 = v16;
  v17 = StringProtocol.capitalized.getter();
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder;

  return specialized PSETrajectoryBuilder.build(event:with:)(a1, a2, a3);
}

uint64_t protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v5)
  {
    v7 = v3[2];
    v8 = v3[3];
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[5] = a1;

  return _swift_task_switch(protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder, v9, v11);
}

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  v7 = *(v4 + 8);

  return v7();
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v5 + 88) = v6;
  *(v5 + 96) = v8;

  return _swift_task_switch(specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:), v6, v8);
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)()
{
  v1 = swift_task_alloc();
  *(v0 + 13) = v1;
  *v1 = v0;
  v1[1] = specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:);
  v2 = *(v0 + 10);
  v3 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);

  return ConversationLoader.retrieveConversationFor(ids:)(v6, v3, v4, v5, v2, 32, 0xE100000000000000);
}

{
  v18 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.inference);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve conversation for trajectory building: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);

    return _swift_task_switch(specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:), v7, v8);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t specialized PSETrajectoryBuilder.getPSEMetaData(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  if (a2)
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

  return _swift_task_switch(specialized PSETrajectoryBuilder.getPSEMetaData(event:), v5, v7);
}

uint64_t specialized PSETrajectoryBuilder.getPSEMetaData(event:)()
{
  v1 = [v0[3]._object taskType];
  if (!v1)
  {
    v10 = [v0[3]._object lastRequestId];
    if (v10)
    {
      v11 = v10;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v22 = [v0[3]._object taskID];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v0[3]._object pseEvents];
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
LABEL_77:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_78;
      }

LABEL_19:
      if ((v28 & 0xC000000000000001) == 0)
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_84;
        }

        goto LABEL_21;
      }

LABEL_82:
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_22;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.lowercased()();

  v0[1] = v3;
  v0[2]._countAndFlagsBits = 0x6C61657461657263;
  v0[2]._object = 0xEB000000006D7261;
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    v0[1] = v3;
    v0[2]._countAndFlagsBits = 0x6964656D79616C70;
    v0[2]._object = 0xE900000000000061;
    if (StringProtocol.contains<A>(_:)())
    {
      object = v0[3]._object;

      v14 = [object lastRequestId];
      if (v14)
      {
        v15 = v14;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v16;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v47 = [v0[3]._object taskID];
      if (v47)
      {
        v48 = v47;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v49;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v50 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_87:

          v42 = 1;
          v32 = 0;
          v33 = 1;
          goto LABEL_97;
        }

        goto LABEL_42;
      }

LABEL_86:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_87;
      }

LABEL_42:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_45;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v51 = *(v38 + 32);
LABEL_45:
        v52 = v51;

        [v52 donatedTimestamp];
        v32 = v53;

        v33 = 0;
        v42 = 1;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_90;
    }

    v0[1] = v3;
    v0[2]._countAndFlagsBits = 0x6C61637472617473;
    v0[2]._object = 0xE90000000000006CLL;
    v17 = StringProtocol.contains<A>(_:)();
    v18 = v0[3]._object;
    if (v17)
    {

      v19 = [v18 lastRequestId];
      if (v19)
      {
        v20 = v19;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v21;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v56 = [v0[3]._object taskID];
      if (v56)
      {
        v57 = v56;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v58;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v59 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_91:

          v42 = 0;
          v33 = 1;
          v32 = 0;
          goto LABEL_97;
        }

        goto LABEL_54;
      }

LABEL_90:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_91;
      }

LABEL_54:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *(v38 + 32);
LABEL_57:
        v61 = v60;

        [v61 donatedTimestamp];
        v32 = v62;

        v42 = 0;
        v33 = 0;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_94;
    }

    v0[1] = v3;
    v0[2]._countAndFlagsBits = 1936744813;
    v0[2]._object = 0xE400000000000000;
    v43 = StringProtocol.contains<A>(_:)();

    v44 = [v18 lastRequestId];
    if (v43)
    {
      if (v44)
      {
        v45 = v44;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v46;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v63 = [v0[3]._object taskID];
      if (v63)
      {
        v64 = v63;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v65;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v69 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
LABEL_95:

          v33 = 1;
          v32 = 0;
LABEL_96:
          v42 = 3;
          goto LABEL_97;
        }

LABEL_67:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v71 = *(v38 + 32);
        }

        v72 = v71;

        [v72 donatedTimestamp];
        v32 = v73;

        v33 = 0;
        goto LABEL_96;
      }

LABEL_94:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_95;
      }

      goto LABEL_67;
    }

    if (v44)
    {
      v54 = v44;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v55;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v66 = [v0[3]._object taskID];
    if (v66)
    {
      v67 = v66;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v68;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v74 = [v0[3]._object pseEvents];
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_74:
      if ((v28 & 0xC000000000000001) != 0)
      {
        goto LABEL_82;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v29 = *(v28 + 32);
LABEL_22:
        v30 = v29;

        [v30 donatedTimestamp];
        v32 = v31;

        v33 = 0;
LABEL_79:
        v42 = 4;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_77;
    }

LABEL_78:

    v33 = 1;
    v32 = 0;
    goto LABEL_79;
  }

  v4 = v0[3]._object;

  v5 = [v4 lastRequestId];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v34 = [v0[3]._object taskID];
  if (v34)
  {
    v35 = v34;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v36;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v37 = [v0[3]._object pseEvents];
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_81:

    v33 = 1;
    v32 = 0;
    v42 = 2;
    goto LABEL_97;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_81;
  }

LABEL_29:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_84:
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_32;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_86;
  }

  v39 = *(v38 + 32);
LABEL_32:
  v40 = v39;

  [v40 donatedTimestamp];
  v32 = v41;

  v33 = 0;
  v42 = 2;
LABEL_97:
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  *countAndFlagsBits = v42;
  *(countAndFlagsBits + 8) = v7;
  *(countAndFlagsBits + 16) = v9;
  *(countAndFlagsBits + 24) = v24;
  *(countAndFlagsBits + 32) = v26;
  *(countAndFlagsBits + 40) = v32;
  *(countAndFlagsBits + 48) = v33;
  v76 = v0->_object;

  return v76();
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
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

  v3[30] = v4;
  v3[31] = v6;

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v4, v6);
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Building user engagement feature from conversation and engagement trajectory", v4, 2u);
  }

  v5 = v0[29];

  v6 = [v5 pseEvents];
  v0[33] = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No valid PSE content, skip building conversation trajectory", v23, 2u);
    }

    v24 = v0[1];

    return v24(0);
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  v0[34] = v9;
  v11 = v0[29];

  [v10 donatedTimestamp];
  v13 = v12 + -50.0;
  [v10 donatedTimestamp];
  v15 = v14 + 900.0;
  v16 = [v11 requestIds];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[35] = v17;

  v18 = swift_task_alloc();
  v0[36] = v18;
  *v18 = v0;
  v18[1] = specialized PSETrajectoryBuilder.build(event:with:);
  v20 = v0[27];
  v19 = v0[28];

  return specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(v20, v19, v17, v13, v15);
}

{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 264);
    v2 = [*(v0 + 232) pseEvents];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v44 = v0;
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v0 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v7 pseDelta];
        if (v9 && (v10 = v9, [v9 sinceUIEnd], v12 = v11, v10, v12 > 30.0))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v6 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v5;
        if (v0 == i)
        {
          v0 = v44;
          v13 = _swiftEmptyArrayStorage;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_25:

    v22 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
    if (v22)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (v39 > 0)
      {
        v40 = v39;
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v40 >= 5)
        {
          v24 = 5;
        }

        else
        {
          v24 = v40;
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= v24)
        {
LABEL_34:

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v25 = 0;
            do
            {
              v26 = *(v0 + 264);
              v27 = v25 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v25);
              v25 = v27;
            }

            while (v24 != v27);
          }

          if (v22)
          {
            v28 = _CocoaArrayWrapper.subscript.getter();
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v13 = v28;
            if ((v34 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v32 = 0;
            v30 = &_swiftEmptyArrayStorage[4];
            v34 = (2 * v24) | 1;
            if ((v34 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {
            swift_unknownObjectRelease();
            v37 = _swiftEmptyArrayStorage;
          }

          v38 = v37[2];

          if (__OFSUB__(v34 >> 1, v32))
          {
            __break(1u);
          }

          else if (v38 == (v34 >> 1) - v32)
          {
            v36 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v36)
            {
LABEL_57:
              *(v0 + 304) = v36;
              v41 = swift_task_alloc();
              *(v0 + 312) = v41;
              *v41 = v0;
              v41[1] = specialized PSETrajectoryBuilder.build(event:with:);
              v43 = *(v0 + 216);
              v42 = *(v0 + 224);

              return PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(v43, v42, v36);
            }

            v36 = _swiftEmptyArrayStorage;
LABEL_48:
            swift_unknownObjectRelease();
            goto LABEL_57;
          }

          swift_unknownObjectRelease_n();
LABEL_41:
          specialized _copyCollectionToContiguousArray<A>(_:)(v13, v30, v32, v34);
          v36 = v35;
          goto LABEL_48;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v23 = _swiftEmptyArrayStorage[2];
      if (v23)
      {
        if (v23 >= 5)
        {
          v24 = 5;
        }

        else
        {
          v24 = _swiftEmptyArrayStorage[2];
        }

        if (v23 >= v24)
        {
          goto LABEL_34;
        }

LABEL_55:
        __break(1u);
      }
    }

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v14 = *(v0 + 256);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 272);
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to load conversation for trajectory building, skipping inference", v19, 2u);
  }

  v20 = *(v0 + 8);

  return v20(0);
}

{
  v26 = v0;
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[29];
  swift_bridgeObjectRetain_n();
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[40];
  if (v7)
  {
    v9 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    v12 = [v9 requestIds];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Array.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    v17 = *(v8 + 16);

    *(v10 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v5, v6, "PSE Feature for RequestIDs: %s, count: %ld, features!: \n", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v18 = v0[40];
    swift_bridgeObjectRelease_n();
  }

  v19 = v0[40];
  v0[23] = 0;
  v0[24] = 0xE000000000000000;
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  specialized Sequence.forEach(_:)(v19);

  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 5;
  *(inited + 16) = xmmword_10002E0F0;
  v21 = v0[25];
  v22 = v0[26];
  v0[42] = v22;
  *(inited + 40) = v21;
  *(inited + 48) = v22;
  v0[43] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18InferenceExtension14TrajectoryTypeO_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of NSObject?(inited + 32, &_s18InferenceExtension14TrajectoryTypeO_SStMd, &_s18InferenceExtension14TrajectoryTypeO_SStMR);
  v23 = v0[37];

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v23, 0);
}

{
  rawValue = v0[37]._rawValue;
  UserEngagementFeature.addEngagements(_:)(v0[43]);

  v2 = v0[30]._rawValue;
  v3 = v0[31]._rawValue;

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v2, v3);
}

{
  v1 = v0[41];
  inited = swift_initStackObject();
  *(inited + 32) = 4;
  *(inited + 16) = xmmword_10002E0F0;
  v3 = v0[23];
  v4 = v0[24];
  v0[44] = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  v0[45] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18InferenceExtension14TrajectoryTypeO_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of NSObject?(inited + 32, &_s18InferenceExtension14TrajectoryTypeO_SStMd, &_s18InferenceExtension14TrajectoryTypeO_SStMR);
  v5 = v0[37];

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v5, 0);
}

{
  rawValue = v0[37]._rawValue;
  UserEngagementFeature.addEngagements(_:)(v0[45]);

  v2 = swift_task_alloc();
  v0[46]._rawValue = v2;
  *v2 = v0;
  v2[1] = specialized PSETrajectoryBuilder.build(event:with:);
  v3 = v0[28]._rawValue;
  v4 = v0[29]._rawValue;
  v5 = v0[27]._rawValue;

  return specialized PSETrajectoryBuilder.getPSEMetaData(event:)(&v0[16], v5, v3, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v5 = *v0;

  v3 = *(v1 + 296);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v3, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v1 + 136);
  v3 = *(v1 + 152);
  v5 = *(v0 + 144);
  v4 = *(v0 + 160);
  v6 = *(v0 + 176);
  *(v1 + 120) = *(v0 + 128);
  *(v1 + 168) = v6;
  *(v1 + 152) = v4;
  *(v1 + 136) = v5;

  v7 = *(v0 + 240);
  v8 = *(v0 + 248);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v7, v8);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);

  v3 = *(v0 + 296);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 296) = a1;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 320) = a1;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v6, v5);
}

uint64_t specialized SupportedUseCases.init(from:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D72616C41 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636973754DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C6C6143 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1936744781 && a2 == 0xE400000000000000)
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
      return 5;
    }
  }
}

unint64_t specialized SupportedUseCases.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SupportedUseCases.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SupportedUseCases and conformance SupportedUseCases()
{
  result = lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases;
  if (!lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases);
  }

  return result;
}

uint64_t partial apply for closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(a1, a2, v6);
}

uint64_t sub_1000265FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SELFReporter.report(event:);

  return closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(a1, v4, v5, v7, v6);
}

uint64_t sub_1000266FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SELFReporter.report(event:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5(a1, v5);
}