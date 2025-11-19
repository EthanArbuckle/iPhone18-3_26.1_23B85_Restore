uint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlF_0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t _sS2SSysWl_1()
{
  result = _sS2SSysWL_1;
  if (!_sS2SSysWL_1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_1);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringVSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_1);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _NSRange.ConversionError and conformance _NSRange.ConversionError()
{
  result = lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError;
  if (!lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError;
  if (!lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError);
  }

  return result;
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v10 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_7;
    }

    v9 += a1 - v10;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    closure #1 in Data.hexRepresentation.getter(v9, a4, a5, &v11);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

unint64_t specialized RomanNumerals.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RomanNumerals.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator()
{
  result = lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator;
  if (!lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RomanNumerals and conformance RomanNumerals()
{
  result = lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals;
  if (!lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge()
{
  result = lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge;
  if (!lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge);
  }

  return result;
}

__n128 __swift_memcpy25_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange.NSRangeIterator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange.NSRangeIterator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t type metadata instantiation function for WeakWrapper()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0F0O_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0D0OGMd);
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

uint64_t MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v14;
  v7[4] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in MPModelObject.humanDescription(including:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_74;
  v9 = _Block_copy(v13);

  v10 = v2;

  [v6 performWithoutEnforcement:v9];
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14[0];

    return v12;
  }

  return result;
}

uint64_t closure #1 in MPModelObject.humanDescription(including:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt1g5(*(a1 + 16), 0);
  v30 = specialized Sequence._copySequenceContents(initializing:)(v32, v6 + 32, v4, a1);

  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  if (v30 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = &_swiftEmptyArrayStorage;
  }

  *&v32[0] = v6;
  specialized MutableCollection<>.sort(by:)(v32);
  v7 = *&v32[0];
  v8 = *(*&v32[0] + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v10 = *&v32[0] + 32;
  while (v9 < *(v7 + 16))
  {
    if (!*(v10 + v9))
    {
      strcpy(v32, " identifiers=");
      HIWORD(v32[0]) = -4864;
      v11 = [a3 identifiers];
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

LABEL_8:
      v18 = *(&v32[0] + 1);
      v17 = *&v32[0];
      goto LABEL_9;
    }

    if (*(v10 + v9) == 1)
    {
      *&v32[0] = 23328;
      *(&v32[0] + 1) = 0xE200000000000000;
      v20 = [a3 shortDescription];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 93;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      goto LABEL_8;
    }

    type metadata accessor for MPModelObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v31, " properties=");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2);
    v28._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v28);

    v17 = v31[0];
    v18 = v31[1];
LABEL_9:
    v19 = v18;
    String.append(_:)(*&v17);

LABEL_10:
    if (v8 == ++v9)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1003FBC98()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent()
{
  result = lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent;
  if (!lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent);
  }

  return result;
}

uint64_t MPModelSong.shortDescription.getter()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 album];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x206D75626C41203BLL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 artist];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x747369747241203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

uint64_t MPModelPlaylist.shortDescription.getter()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004CE1A0;
    v3 = 0xD000000000000011;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t MPModelPlaylistEntry.shortDescription.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for implicit closure #2 in implicit closure #1 in MPModelPlaylistEntry.shortDescription.getter;
  *(v2 + 24) = v1;
  v12 = v2;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MPModelPlaylistEntryTypeVycMd);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 2236475;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6 = [v3 anyObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shortDescription];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_1);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0x203A65707954;
}

uint64_t MPModelTVEpisode.shortDescription.getter()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001004D5C10;
    v4 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 show];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x20776F6853203BLL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 season];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x6E6F73616553203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

id @objc MPModelSong.shortDescription.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t MPModelRadioStation.shortDescription.getter()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004D5BF0;
    v3 = 0xD000000000000010;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_1003FCC00()
{

  return swift_deallocObject();
}

uint64_t sub_1003FCC48()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned MPModelPlaylistEntryType)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MPModelObject()
{
  result = _sSo13MPModelObjectCML_0;
  if (!_sSo13MPModelObjectCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13MPModelObjectCML_0);
  }

  return result;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(result, v10, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSo15UIBarButtonItemC_SayAFGTg5_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  _sSa13_copyContents12initializings16IndexingIteratorVySayxGG_SitSryxG_tFSo15UIBarButtonItemC_Tg5_0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation12URLQueryItemV_SayAGGTg5_0(uint64_t result)
{
  v2 = *(result + 16);
  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = *v1;
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(isUniquelyReferenced_nonNull_native, v12, 1, IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1);
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
  v8 = (*(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + 24) >> 1) - *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + 16);
  result = type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1;
    return result;
  }

  v9 = *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(IsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v78 = a1;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79._countAndFlagsBits = a4;
  v79._object = a5;
  static CharacterSet.newlines.getter();
  v68 = _sS2SSysWl_1();
  v13 = StringProtocol.components(separatedBy:)();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v73 = *(v13 + 16);
  if (v73)
  {
    v16 = 0;
    v71 = a2;
    v72 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v17;
    v18 = &_swiftEmptyArrayStorage;
    v69 = v13;
    v70 = a3;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v72 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v85 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v76 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v75 = v21;
        v24 = v18;
        v25 = String._bridgeToObjectiveC()();
        v26 = [v23 initWithString:v25];

        v84._countAndFlagsBits = specialized getter of leftIndent #1 in closure #1 in String.components(wrappedToLineLength:bullet:)(v71, a3, &v85);
        v84._object = v27;
        static CharacterSet.whitespaces.getter();
        v28 = NSScanner.scanUpToCharacters(from:)();
        v30 = v29;
        v14(v12, v9);
        v74 = v24;
        v77 = v24;
        if (v30)
        {
          v77 = v74;
          while (1)
          {
            v31 = v84;
            v32 = String.count.getter();
            result = String.count.getter();
            v33 = v32 + result;
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v78)
            {
              v79 = v31;
              v82 = 606827356;
              v83 = 0xE400000000000000;
              v80 = 0;
              v81 = 0xE000000000000000;
              v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v67 = v39;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = v77;
              }

              else
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(v77 + 2) + 1, 1, v77);
              }

              v42 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
              v41 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
              if (v42 >= v41 >> 1)
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v41 > 1), v42 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
              }

              *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v42 + 1;
              v43 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v42];
              v44 = v67;
              *(v43 + 4) = v38;
              *(v43 + 5) = v44;
              v77 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
              v85 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
              swift_endAccess();
              if (v66)
              {
                result = String.count.getter();
                v45 = result + 1;
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v46._countAndFlagsBits = 32;
                v46._object = 0xE100000000000000;
                v48 = String.init(repeating:count:)(v46, v45);
                countAndFlagsBits = v48._countAndFlagsBits;
                object = v48._object;
              }

              else
              {
                countAndFlagsBits = 0;
                object = 0xE000000000000000;
              }

              v79._countAndFlagsBits = countAndFlagsBits;
              v79._object = object;

              v50._countAndFlagsBits = v28;
              v50._object = v30;
              String.append(_:)(v50);

              v51._countAndFlagsBits = 32;
              v51._object = 0xE100000000000000;
              String.append(_:)(v51);

              v84 = v79;
            }

            else
            {
              v79._countAndFlagsBits = v28;
              v79._object = v30;

              v36._countAndFlagsBits = 32;
              v36._object = 0xE100000000000000;
              String.append(_:)(v36);

              String.append(_:)(v79);
            }

            static CharacterSet.whitespaces.getter();
            v28 = NSScanner.scanUpToCharacters(from:)();
            v30 = v37;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v52 = (v84._object >> 56) & 0xF;
        if ((v84._object & 0x2000000000000000) == 0)
        {
          v52 = v84._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v79 = v84;
          v82 = 606827356;
          v83 = 0xE400000000000000;
          v80 = 0;
          v81 = 0xE000000000000000;
          v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v55 = v54;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v56 = v77;
          }

          else
          {
            v56 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(v77 + 2) + 1, 1, v77);
          }

          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v57 > 1), v58 + 1, 1, v56);
          }

          *(v56 + 2) = v58 + 1;
          v59 = &v56[16 * v58];
          *(v59 + 4) = v53;
          *(v59 + 5) = v55;
          a3 = v70;
          v18 = v56;
        }

        else
        {

          a3 = v70;
          v18 = v77;
        }
      }

      else
      {
        v60 = *(v18 + 2);
        if (!v60)
        {
          goto LABEL_8;
        }

        v75 = v21;
        v76 = v16;

        v61 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, v60 + 1, 1, v18);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v64 = &v61[16 * v63];
        v65 = v75;
        *(v64 + 4) = v20;
        *(v64 + 5) = v65;
        v18 = v61;
      }

      result = v69;
      v16 = v76;
LABEL_8:
      if (++v16 == v73)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t specialized getter of leftIndent #1 in closure #1 in String.components(wrappedToLineLength:bullet:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = String.count.getter();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return String.init(repeating:count:)(v8, v7)._countAndFlagsBits;
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v45 = *(a1 + 16);
  if (v45)
  {
    v46 = 0;
    v5 = 0;
    v43 = a1 + 32;
    while (1)
    {
      v2 = *(v43 + 8 * v5);
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = v2[2];
      if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v42 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = String.count.getter();
            if (v14 < String.count.getter())
            {

              v3 = v11;
              v4 = v12;
              v5 = v42;
              v15 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 == v13)
            {
              v5 = v42;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = String.count.getter();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v46;
      if (v3 > v46)
      {
        v6 = v3;
      }

      v46 = v6;
      if (v5 == v45)
      {
        goto LABEL_19;
      }
    }
  }

  v46 = 0;
LABEL_19:
  v10 = v46;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = (v46 + 2);
  if (__OFADD__(v46, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v10 > 1), v1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    goto LABEL_40;
  }

  _sS2SSysWl_1();
  v47 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v50 = v16;

  v17._countAndFlagsBits = 11441634;
  v17._object = 0xA300000000000000;
  String.append(_:)(v17);

  v40 = v47;
  v41 = v50;
  v48 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v51 = v18;

  v19._countAndFlagsBits = 10786018;
  v19._object = 0xA300000000000000;
  String.append(_:)(v19);

  if (!v45)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = &_swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v20 = 0;
  v39 = a1 + 32;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = &_swiftEmptyArrayStorage;
  do
  {
    v21 = *(v39 + 8 * v20);
    if (v20)
    {
      v22 = v51;
    }

    else
    {
      v22 = v41;
    }

    if (v20)
    {
      v23 = v48;
    }

    else
    {
      v23 = v40;
    }

    v44 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v25 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v24 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v25 >= v24 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v24 > 1), v25 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v25 + 1;
    v26 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v25];
    *(v26 + 4) = v23;
    *(v26 + 5) = v22;
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = v21 + 40;
      do
      {
        v29._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 8557794;
        v30._object = 0xA300000000000000;
        String.append(_:)(v30);

        v32 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
        v31 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
        if (v32 >= v31 >> 1)
        {
          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v31 > 1), v32 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
        }

        *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v32 + 1;
        v33 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v32];
        *(v33 + 4) = 545428706;
        *(v33 + 5) = 0xA400000000000000;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v20 = v44 + 1;
  }

  while (v44 + 1 != v45);
  v49 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v52 = v34;

  v35._countAndFlagsBits = 11507170;
  v35._object = 0xA300000000000000;
  String.append(_:)(v35);

  v2 = v49;
  v3 = v52;
  v4 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v10 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v1;
  v36 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v4];
  *(v36 + 4) = v2;
  *(v36 + 5) = v3;
LABEL_42:

  return New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  outlined destroy of [String](inited + 32);
  return v3;
}

uint64_t Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  return _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(v5);
}

uint64_t outlined destroy of [String](uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSa13_copyContents12initializings16IndexingIteratorVySayxGG_SitSryxG_tFSo15UIBarButtonItemC_Tg5_0(uint64_t result, uint64_t a2, unint64_t a3)
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
          _sSaySo15UIBarButtonItemCGSayxGSlsWl_0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd_0);
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
        type metadata accessor for UIBarButtonItem();
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

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = _sSo15UIBarButtonItemCML_1;
  if (!_sSo15UIBarButtonItemCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo15UIBarButtonItemCML_1);
  }

  return result;
}

unint64_t _sSaySo15UIBarButtonItemCGSayxGSlsWl_0()
{
  result = _sSaySo15UIBarButtonItemCGSayxGSlsWL_0;
  if (!_sSaySo15UIBarButtonItemCGSayxGSlsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySo15UIBarButtonItemCGSayxGSlsWL_0);
  }

  return result;
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v3 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  if (v4 >= v3 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v3 > 1), v4 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v4 + 1;
  v5 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v7 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v6 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v7 >= v6 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v6 > 1), v7 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v7 + 1;
    v8 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v10 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v9 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v10 >= v9 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v9 > 1), v10 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v10 + 1;
    v11 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  v13 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v12 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  if (v13 >= v12 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v12 > 1), v13 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v13 + 1;
  v14 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v16 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v15 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v16 >= v15 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v15 > 1), v16 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v16 + 1;
    v17 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1);
  _sSaySSGSayxGSKsWl_1();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

unint64_t _sSaySSGSayxGSKsWl_1()
{
  result = _sSaySSGSayxGSKsWL_1;
  if (!_sSaySSGSayxGSKsWL_1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_1);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_1);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v121 = a1;
  v69 = type metadata accessor for UploadedVideo();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UploadedAudio();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TVShow();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVSeason();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TVEpisode();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Station();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Song();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SocialProfile();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RecordLabel();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RadioShow();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicVideo();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v103 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Genre();
  v107 = *(v16 - 8);
  v108 = v16;
  __chkstk_darwin(v16);
  v106 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EditorialItem();
  v110 = *(v18 - 8);
  v111 = v18;
  __chkstk_darwin(v18);
  v109 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Curator();
  v113 = *(v20 - 8);
  v114 = v20;
  __chkstk_darwin(v20);
  v112 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CreditArtist();
  v116 = *(v22 - 8);
  v117 = v22;
  __chkstk_darwin(v22);
  v115 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Composer();
  v118 = *(v24 - 8);
  v119 = v24;
  __chkstk_darwin(v24);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenericMusicItem();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, v120, v35);
  v39 = (*(v36 + 88))(v38, v35);
  if (v39 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v38, v35);
    v40 = *(v32 + 32);
    v40(v34, v38, v31);
    v41 = v121;
    v121[3] = v31;
    v41[4] = &protocol witness table for Album;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    return (v40)(boxed_opaque_existential_1, v34, v31);
  }

  v44 = v121;
  if (v39 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v45 = *(v28 + 32);
    v45(v30, v38, v27);
    v44[3] = v27;
    v44[4] = &protocol witness table for Artist;
    v46 = __swift_allocate_boxed_opaque_existential_1(v44);
    return (v45)(v46, v30, v27);
  }

  if (v39 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v38, v35);
    v47 = v119;
    v48 = *(v118 + 32);
    v48(v26, v38, v119);
    v44[3] = v47;
    v44[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&_s16MusicKitInternal8ComposerVAC0aB00A4ItemAAWL_0, &type metadata accessor for Composer);
    v49 = __swift_allocate_boxed_opaque_existential_1(v44);
    v50 = v26;
    return (v48)(v49, v50, v47);
  }

  if (v39 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v51 = v115;
    v48 = *(v116 + 32);
    v47 = v117;
    v48(v115, v38, v117);
    v44[3] = v47;
    v52 = &lazy protocol witness table cache variable for type CreditArtist and conformance CreditArtist;
    v53 = &type metadata accessor for CreditArtist;
LABEL_9:
    v44[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v52, v53);
    v49 = __swift_allocate_boxed_opaque_existential_1(v44);
    v50 = v51;
    return (v48)(v49, v50, v47);
  }

  v54 = v121;
  if (v39 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v112;
    v56 = *(v113 + 32);
    v57 = v114;
    v56(v112, v38, v114);
    v58 = &protocol witness table for Curator;
LABEL_13:
    v54[3] = v57;
    v54[4] = v58;
LABEL_17:
    v61 = __swift_allocate_boxed_opaque_existential_1(v54);
    return (v56)(v61, v55, v57);
  }

  if (v39 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v109;
    v56 = *(v110 + 32);
    v57 = v111;
    v56(v109, v38, v111);
    v54[3] = v57;
    v59 = &_s16MusicKitInternal13EditorialItemVAC0aB00aE0AAWL_0;
    v60 = &type metadata accessor for EditorialItem;
LABEL_16:
    v54[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v59, v60);
    goto LABEL_17;
  }

  if (v39 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v106;
    v56 = *(v107 + 32);
    v57 = v108;
    v56(v106, v38, v108);
    v58 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v38, v35);
    v55 = v103;
    v56 = *(v104 + 32);
    v57 = v105;
    v56(v103, v38, v105);
    v54[3] = v57;
    v59 = &_s16MusicKitInternal0A5MovieVAC0aB00A4ItemAAWL_0;
    v60 = &type metadata accessor for MusicMovie;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v38, v35);
    v57 = v102;
    v56 = *(v101 + 32);
    v55 = v100;
    v56(v100, v38, v102);
    v58 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v98 + 32);
    v55 = v97;
    v57 = v99;
    v56(v97, v38, v99);
    v58 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v95 + 32);
    v55 = v94;
    v57 = v96;
    v56(v94, v38, v96);
    v58 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v92 + 32);
    v55 = v91;
    v57 = v93;
    v56(v91, v38, v93);
    v58 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v89 + 32);
    v55 = v88;
    v57 = v90;
    v56(v88, v38, v90);
    v54[3] = v57;
    v59 = &_s16MusicKitInternal13SocialProfileVAC0aB00A4ItemAAWL_0;
    v60 = &type metadata accessor for SocialProfile;
    goto LABEL_16;
  }

  if (v39 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v38, v35);
    v56 = *(v86 + 32);
    v55 = v85;
    v57 = v87;
    v56(v85, v38, v87);
    v58 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v39 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v38, v35);
    v62 = *(v83 + 32);
    v63 = v82;
    v64 = v84;
    v62(v82, v38, v84);
    v44[3] = v64;
    v44[4] = &protocol witness table for Station;
    v65 = __swift_allocate_boxed_opaque_existential_1(v44);
    return (v62)(v65, v63, v64);
  }

  else
  {
    if (v39 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v80 + 32);
      v51 = v79;
      v47 = v81;
      v48(v79, v38, v81);
      v44[3] = v47;
      v52 = &_s16MusicKitInternal9TVEpisodeVAC0aB00A4ItemAAWL_0;
      v53 = &type metadata accessor for TVEpisode;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v77 + 32);
      v51 = v76;
      v47 = v78;
      v48(v76, v38, v78);
      v44[3] = v47;
      v52 = &_s16MusicKitInternal8TVSeasonVAC0aB00A4ItemAAWL_0;
      v53 = &type metadata accessor for TVSeason;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v74 + 32);
      v51 = v73;
      v47 = v75;
      v48(v73, v38, v75);
      v44[3] = v47;
      v52 = &_s16MusicKitInternal6TVShowVAC0aB00A4ItemAAWL_0;
      v53 = &type metadata accessor for TVShow;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v71 + 32);
      v51 = v70;
      v47 = v72;
      v48(v70, v38, v72);
      v44[3] = v47;
      v52 = &_s16MusicKitInternal13UploadedAudioVAC0aB00A4ItemAAWL_0;
      v53 = &type metadata accessor for UploadedAudio;
      goto LABEL_9;
    }

    if (v39 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v38, v35);
      v48 = *(v68 + 32);
      v51 = v67;
      v47 = v69;
      v48(v67, v38, v69);
      v44[3] = v47;
      v52 = &_s16MusicKitInternal13UploadedVideoVAC0aB00A4ItemAAWL_0;
      v53 = &type metadata accessor for UploadedVideo;
      goto LABEL_9;
    }

    v66 = (v36 + 8);
    if (v39 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v66)(v38, v35);
      v44[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
    }

    else
    {
      v121[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      return (*v66)(v38, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = type metadata accessor for TVShow();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVSeason();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin(v10);
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicMovie();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artist();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = Artist.catalogID.getter();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = MusicMovie.catalogID.getter();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = MusicVideo.catalogID.getter();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = Playlist.catalogID.getter();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = Song.catalogID.getter();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = TVEpisode.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = TVSeason.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = TVShow.catalogID.getter();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = Album.catalogID.getter();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for MusicMovie();
    a1[3] = v9;
    v10 = &_s16MusicKitInternal0A5MovieVAC0aB00A4ItemAAWL_0;
    v11 = &type metadata accessor for MusicMovie;
LABEL_3:
    v12 = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v10, v11);
LABEL_8:
    a1[4] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, v7, v9);
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for MusicVideo();
    a1[3] = v9;
    v12 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for Song();
    a1[3] = v9;
    v12 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for TVEpisode();
    a1[3] = v9;
    v10 = &_s16MusicKitInternal9TVEpisodeVAC0aB00A4ItemAAWL_0;
    v11 = &type metadata accessor for TVEpisode;
    goto LABEL_3;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for UploadedAudio();
    a1[3] = v9;
    v10 = &_s16MusicKitInternal13UploadedAudioVAC0aB00A4ItemAAWL_0;
    v11 = &type metadata accessor for UploadedAudio;
    goto LABEL_3;
  }

  if (v8 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = type metadata accessor for UploadedVideo();
    a1[3] = v9;
    v10 = &_s16MusicKitInternal13UploadedVideoVAC0aB00A4ItemAAWL_0;
    v11 = &type metadata accessor for UploadedVideo;
    goto LABEL_3;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v16 = 0xD000000000000028;
  v17 = 0x80000001004D5C80;
  lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&_s8MusicKit8PlaylistV5EntryV0aB8InternalE0E4ItemOAHs23CustomStringConvertibleAFWL_0, &type metadata accessor for Playlist.Entry.InternalItem);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = Artist.trackCount.getter();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = Artist.cleanTrackCount.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = Artist.downloadedTrackCount.getter();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = Artist.downloadedCleanTrackCount.getter();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPin.Action();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t _s10Foundation4DateVSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Album.releaseYearString.getter(void (*a1)(__n128))
{
  v43 = type metadata accessor for TimeZone();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = v35 - v14;
  v16 = type metadata accessor for DateComponents();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_1);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v35 - v22;
  a1(v21);
  if (v24)
  {
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
LABEL_6:
    _s10Foundation4DateVSgWOh_0(v23);
    return 0;
  }

  v35[1] = v4;
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Calendar();
  __swift_project_value_buffer(v26, static Calendar.musicDefaultCalendar);
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  (*(v2 + 56))(v12, 1, 1, v43);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  (*(v17 + 8))(v19, v16);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    goto LABEL_6;
  }

  v30 = v36;
  static ParseableFormatStyle<>.dateTime.getter();
  v31 = v37;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v32 = v39;
  Date.FormatStyle.year(_:)();
  (*(v38 + 8))(v31, v40);
  v33 = v42;
  v34 = *(v41 + 8);
  v34(v30, v42);
  Calendar.timeZone.getter();
  Date.FormatStyle.timeZone.setter();
  lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v34(v32, v33);
  (*(v28 + 8))(v23, v27);
  return v44;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, void *, id *)@<X4>, int a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v761) = a6;
  v749 = a5;
  v751 = a4;
  v742 = a3;
  v746 = a2;
  v19 = a14;
  v744 = a13;
  v740 = a11;
  v739 = a10;
  v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd);
  v728 = *(v729 - 8);
  __chkstk_darwin(v729);
  v727 = v656 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v730 = v656 - v22;
  swift_getAssociatedTypeWitness();
  v741 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v757 = type metadata accessor for CollectionDifference.Change();
  *&v692 = *(v757 - 1);
  __chkstk_darwin(v757);
  v766 = (v656 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v756 = (v656 - v27);
  v28 = type metadata accessor for CollectionDifference();
  WitnessTable = swift_getWitnessTable();
  v721 = type metadata accessor for IndexingIterator();
  *&v691 = *(v721 - 8);
  __chkstk_darwin(v721);
  v764 = v656 - v29;
  v711 = *(v28 - 8);
  __chkstk_darwin(v30);
  v725 = v656 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v706 = v656 - v33;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v708 = type metadata accessor for Optional();
  v690 = *(v708 - 8);
  __chkstk_darwin(v708);
  v718 = (v656 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v758 = (v656 - v36);
  v762 = v28;
  v37 = type metadata accessor for Optional();
  __chkstk_darwin(v37 - 8);
  v713 = v656 - v38;
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVySSGGMd);
  __chkstk_darwin(v701);
  v769 = (v656 - v39);
  v765 = AssociatedTypeWitness;
  v702 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v40);
  *&v752 = v656 - v41;
  v42 = a1;
  v712 = swift_checkMetadataState();
  v693 = *(v712 - 8);
  __chkstk_darwin(v712);
  v698 = v656 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v710 = v656 - v45;
  v699 = *(a14 - 1);
  __chkstk_darwin(v46);
  v686 = v656 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v688 = v656 - v49;
  __chkstk_darwin(v50);
  v687 = v656 - v51;
  __chkstk_darwin(v52);
  v697 = v656 - v53;
  __chkstk_darwin(v54);
  v705 = v656 - v55;
  __chkstk_darwin(v56);
  v720 = v656 - v57;
  __chkstk_darwin(v58);
  v750 = (v656 - v59);
  __chkstk_darwin(v60);
  v768 = (v656 - v61);
  v770 = type metadata accessor for IndexPath();
  v753 = *(v770 - 8);
  __chkstk_darwin(v770);
  v709 = v656 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v703 = v656 - v64;
  __chkstk_darwin(v65);
  v696 = v656 - v66;
  __chkstk_darwin(v67);
  v695 = v656 - v68;
  __chkstk_darwin(v69);
  v694 = v656 - v70;
  __chkstk_darwin(v71);
  v707 = v656 - v72;
  __chkstk_darwin(v73);
  v689 = v656 - v74;
  __chkstk_darwin(v75);
  v738 = v656 - v76;
  __chkstk_darwin(v77);
  v726 = v656 - v78;
  __chkstk_darwin(v79);
  v81 = v656 - v80;
  __chkstk_darwin(v82);
  v715 = v656 - v83;
  __chkstk_darwin(v84);
  v735 = v656 - v85;
  __chkstk_darwin(v86);
  *&v733 = v656 - v87;
  __chkstk_darwin(v88);
  v734 = (v656 - v89);
  __chkstk_darwin(v90);
  v714 = v656 - v91;
  __chkstk_darwin(v92);
  v724 = v656 - v93;
  __chkstk_darwin(v94);
  v723 = v656 - v95;
  __chkstk_darwin(v96);
  v716 = v656 - v97;
  __chkstk_darwin(v98);
  v736 = v656 - v99;
  __chkstk_darwin(v100);
  v737 = v656 - v101;
  __chkstk_darwin(v102);
  v759 = v656 - v103;
  __chkstk_darwin(v104);
  v767 = v656 - v105;
  __chkstk_darwin(v106);
  *&v754 = v656 - v107;
  v731 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySSGMd);
  v700 = *(v731 - 8);
  __chkstk_darwin(v731);
  v704 = v656 - v108;
  *a9 = 0;
  v109 = type metadata accessor for AIDiffingUpdate();
  v110 = v109[6];
  IndexSet.init()();
  v748 = v109[7];
  IndexSet.init()();
  v111 = v109[8];
  *(a9 + v111) = _swiftEmptyArrayStorage;
  v112 = (a9 + v109[9]);
  *v112 = 0;
  v112[1] = _swiftEmptyArrayStorage;
  v732 = v112;
  v113 = (a9 + v109[10]);
  *v113 = 0;
  v113[1] = _swiftEmptyArrayStorage;
  v743 = v113;
  v114 = (a9 + v109[11]);
  *v114 = 0;
  v114[1] = _swiftEmptyArrayStorage;
  v745 = v109[12];
  *(a9 + v745) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v763 = a9;
  if (!v42)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a12);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7);

LABEL_14:

    *v763 = 1;
    return result;
  }

  v722 = a12;
  if (!v746)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7);
LABEL_13:

    goto LABEL_14;
  }

  v685 = v111;
  v682 = AssociatedConformanceWitness;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a7);

  v115 = Array.count.getter();
  v116 = v722;
  if (v115 <= 0 || (v669 = v115, v717 = v42, v117 = Array.count.getter(), v117 < 1))
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v116);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v117;
  v673 = v110;
  v678 = v81;
  if (one-time initialization token for aiDiff != -1)
  {
    goto LABEL_365;
  }

  while (1)
  {
    v119 = type metadata accessor for Logger();
    v120 = __swift_project_value_buffer(v119, static Logger.aiDiff);

    v755 = v120;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();

    v123 = os_log_type_enabled(v121, v122);
    v747 = v19;
    v684 = TupleTypeMetadata3;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v774 = swift_slowAlloc();
      *v124 = 136315394;
      v125 = _typeName(_:qualified:)();
      v127 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v125, v126, &v774);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2080;
      v128 = Array.description.getter();
      v130 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v128, v129, &v774);

      *(v124 + 14) = v130;
      v19 = v747;
      _os_log_impl(&_mh_execute_header, v121, v122, "Building update for section with item type %s, visible index paths: %s", v124, 0x16u);
      swift_arrayDestroy();
    }

    v672 = a8;
    v131 = v739;
    v668 = a7;
    if (v739)
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v134 = v740;
      v132[4] = v131;
      v132[5] = v134;
      v135 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.DiffableSection.Items.Sequence.Element, @in_guaranteed A.DiffableSection.Items.Sequence.Element) -> (@unowned Bool);
    }

    else
    {
      v132 = swift_allocObject();
      v133 = v741;
      v132[2] = v19;
      v132[3] = v133;
      v135 = partial apply for closure #1 in implicit closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:);
    }

    v137 = swift_allocObject();
    v137[2] = v19;
    v137[3] = v133;
    v137[4] = v135;
    v137[5] = v132;
    v676 = v137;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v131);
    v782 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v781 = &_swiftEmptySetSingleton;
    v774 = v717;
    __chkstk_darwin(v782);
    v656[-4] = v19;
    v656[-3] = v133;
    v656[-2] = &v781;
    v138 = type metadata accessor for Array();
    v139 = swift_getWitnessTable();
    v675 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:), &v656[-6], v138, &type metadata for String, &type metadata for Never, v139, &protocol witness table for Never, v140);
    v772[0] = v746;
    swift_getWitnessTable();
    v141 = Sequence.enumerated()();
    v772[0] = v774;
    __chkstk_darwin(v141);
    v656[-4] = v142;
    v656[-3] = v133;
    v656[-2] = &v782;
    __chkstk_darwin(v143);
    v656[-4] = v144;
    v656[-3] = v133;
    v656[-2] = partial apply for closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:);
    v656[-1] = v145;
    v146 = type metadata accessor for EnumeratedSequence();
    v780[1] = v139;
    v147 = swift_getWitnessTable();
    v149 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String), &v656[-6], v146, &type metadata for String, &type metadata for Never, v147, &protocol witness table for Never, v148);
    v150 = v675;

    v151 = v781;
    if (v781[2] != *(v150 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v211 = Array.description.getter();
        v213 = v212;

        v214 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v211, v213, &v774);

        *(v209 + 4) = v214;
        v215 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v207, v208, v215, v209, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v210);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
LABEL_68:

        *v763 = 1;
      }

LABEL_67:

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);

      goto LABEL_68;
    }

    if (v149[2] != v684)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v774 = v210;
        *v209 = 136446210;
        v216 = Array.description.getter();
        v218 = v217;

        v219 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v216, v218, &v774);

        *(v209 + 4) = v219;
        v215 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v658 = v149;
    v774 = v149;
    v772[0] = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSaySSGSayxGSKsWL_1, &_sSaySSGMd_1);
    BidirectionalCollection<>.difference<A>(from:)();
    v660 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v780[0] = v660;
    v779 = &_swiftEmptySetSingleton;
    v19 = v747;
    v663 = swift_getAssociatedConformanceWitness();
    v152 = type metadata accessor for OrderedSet();
    swift_getTupleTypeMetadata2();
    v153 = static Array._allocateUninitialized(_:)();
    v154 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v153, &type metadata for Int, v152, &protocol witness table for Int);
    v155 = v152;

    v683 = v154;
    v778 = v154;
    v156 = static Array._allocateUninitialized(_:)();
    v157 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v156, &type metadata for Int, v152, &protocol witness table for Int);

    v777 = v157;
    v774 = v742;

    specialized MutableCollection<>.sort(by:)(&v774);
    v656[1] = 0;
    v659 = v151;
    a8 = v774;
    isa = v774[2].isa;
    v159 = v754;
    v681 = v155;
    v680 = isa;
    if (isa)
    {
      a7 = 0;
      *&v679 = v774 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
      v684 = (v753 + 16);
      v160 = (v753 + 8);
      v670 = v741 + 40;
      v662 = (v702 + 16);
      v667 = v693 + 8;
      v661 = (v702 + 8);
      v664 = (v741 + 32);
      v665 = (v699 + 8);
      TupleTypeMetadata3 = v762;
      v666 = (v753 + 8);
      v674 = v774;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_355;
        }

        v161 = *(v753 + 16);
        v161(v159, v679 + *(v753 + 72) * a7, v770);
        if (IndexPath.section.getter() < v751)
        {
          (*v160)(v159, v770);
        }

        else
        {
          a8 = v765;
          if ((v761 & 1) != 0 || IndexPath.section.getter() <= v749)
          {
            v162 = v759;
            v163 = v770;
            v161(v759, v159, v770);
            v164 = v767;
            v165 = v162;
            v155 = v681;
            specialized Set._Variant.insert(_:)(v767, v165);
            v677 = *v160;
            (v677)(v164, v163);
            v772[0] = IndexPath.section.getter();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            Dictionary.subscript.getter();
            if (v775)
            {
              outlined consume of NoticeDismissal?(v774, v775);
            }

            else
            {
              v166 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v774 = OrderedSet.init(arrayLiteral:)();
              v775 = v167;
              v772[0] = v166;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
              v168 = IndexPath.section.getter();
              v169 = IndexPath.item.getter();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v774 = v780[0];
              v171 = v169;
              TupleTypeMetadata3 = &type metadata for Int;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v171, v168, isUniquelyReferenced_nonNull_native);
              v660 = v774;
              v780[0] = v774;
            }

            v772[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            if (v775)
            {
              outlined consume of NoticeDismissal?(v774, v775);
            }

            else
            {
              v172 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v774 = OrderedSet.init(arrayLiteral:)();
              v775 = v173;
              v772[0] = v172;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
            }

            if (__OFSUB__(IndexPath.section.getter(), v751))
            {
              goto LABEL_363;
            }

            Array.subscript.getter();
            v772[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            v174 = v775;
            if (v775)
            {
              v671 = ContiguousArray.count.getter();
            }

            else
            {
              v671 = 0;
            }

            v776 = IndexPath.section.getter();
            type metadata accessor for Dictionary();
            v175 = Dictionary.subscript.modify();
            if (*(v176 + 8))
            {
              v177 = v710;
              (*(v741 + 40))(v747);
              v773 = IndexPath.item.getter();
              v178 = v712;
              v179 = dispatch thunk of Collection.subscript.read();
              v180 = v752;
              (*v662)(v752);
              v179(v772, 0);
              v181 = v177;
              v155 = v681;
              v182 = v178;
              v183 = v765;
              (*v667)(v181, v182);
              OrderedSet._append(_:)();
              v184 = v180;
              v159 = v754;
              (*v661)(v184, v183);
            }

            v175(&v774, 0);
            v772[0] = IndexPath.section.getter();
            v683 = v778;
            Dictionary.subscript.getter();
            if (v775)
            {
              v185 = ContiguousArray.count.getter();

              v19 = v747;
              if (v174 && v671 == v185)
              {
LABEL_339:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v636 = Logger.logObject.getter();
                v637 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v636, v637))
                {
                  v638 = swift_slowAlloc();
                  *v638 = 0;
                  _os_log_impl(&_mh_execute_header, v636, v637, "Found duplicate in old visible items, falling back to reload data.", v638, 2u);
                }

                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
                (*v665)(v768, v19);
                (v677)(v159, v770);
                (*(v700 + 8))(v704, v731);
                *v763 = 1;

LABEL_347:
              }
            }

            else
            {
              v19 = v747;
              if (!v174)
              {
                goto LABEL_339;
              }
            }

            v186 = (*(v741 + 32))(v19);
            if (*(v782 + 16) && (_ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v186, v187), (v188 & 1) != 0))
            {

              Array.subscript.getter();
              v189 = IndexPath.item.getter();
              v190 = *(v741 + 40);
              v191 = v710;
              v190(v19);
              v192 = v712;
              v193 = dispatch thunk of Collection.count.getter();
              v194 = *v667;
              v195 = v191;
              v155 = v681;
              (*v667)(v195, v192);
              v196 = v189 < v193;
              v197 = v159;
              if (v196)
              {
                v772[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                v671 = v775;
                if (v775)
                {
                  v657 = ContiguousArray.count.getter();
                }

                else
                {
                  v657 = 0;
                }

                v776 = IndexPath.section.getter();
                v198 = Dictionary.subscript.modify();
                if (*(v199 + 8))
                {
                  v200 = v710;
                  v656[0] = v198;
                  (v190)(v747, v741);
                  v773 = IndexPath.item.getter();
                  v201 = v712;
                  v202 = dispatch thunk of Collection.subscript.read();
                  v203 = v752;
                  v204 = v765;
                  (*v662)(v752);
                  v202(v772, 0);
                  v194(v200, v201);
                  v155 = v681;
                  OrderedSet._append(_:)();
                  (*v661)(v203, v204);
                  (v656[0])(&v774, 0);
                }

                else
                {
                  v198(&v774, 0);
                  v155 = v681;
                }

                v772[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                if (v775)
                {
                  v205 = ContiguousArray.count.getter();

                  v197 = v754;
                  if (v671 && v657 == v205)
                  {
LABEL_348:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v651 = Logger.logObject.getter();
                    v652 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v651, v652))
                    {
                      v653 = swift_slowAlloc();
                      *v653 = 0;
                      _os_log_impl(&_mh_execute_header, v651, v652, "Found duplicate in new visible items, falling back to reload data.", v653, 2u);
                    }

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
                    v654 = *v665;
                    v655 = v747;
                    (*v665)(v750, v747);
                    v654(v768, v655);
                    (v677)(v754, v770);
                    (*(v700 + 8))(v704, v731);

                    *v763 = 1;
                  }
                }

                else
                {
                  v197 = v754;
                  if (!v671)
                  {
                    goto LABEL_348;
                  }
                }
              }

              v206 = *v665;
              v19 = v747;
              (*v665)(v750, v747);
              v206(v768, v19);
              v160 = v666;
              (v677)(v197, v770);
              TupleTypeMetadata3 = v762;
              v159 = v197;
            }

            else
            {

              (*v665)(v768, v19);
              v160 = v666;
              (v677)(v159, v770);
              TupleTypeMetadata3 = v762;
            }
          }

          else
          {
            (*v160)(v159, v770);
          }

          a8 = v674;
        }

        if (v680 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v762;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v220 = static Array._allocateUninitialized(_:)();
    v221 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v220, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v683 + 64;
    v222 = *(v683 + 64);
    v776 = v221;
    v223 = 1 << *(v683 + 32);
    v224 = -1;
    if (v223 < 64)
    {
      v224 = ~(-1 << v223);
    }

    a8 = v224 & v222;
    v225 = (v223 + 63) >> 6;
    v750 = (v711 + 56);

    v226 = 0;
    while (1)
    {
      v227 = v731;
      if (!a8)
      {
        break;
      }

      v228 = v155;
      TupleTypeMetadata3 = v226;
LABEL_81:
      v229 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v230 = *(*(v683 + 48) + 8 * v229);
      a8 &= a8 - 1;
      v231 = (*(v683 + 56) + 16 * v229);
      v232 = *v231;
      v233 = v231[1];
      v768 = v230;
      v772[0] = v230;
      v234 = v232;

      v235 = v228;
      v236 = Dictionary.subscript.getter();
      v237 = v775;
      if (v775)
      {
        *&v752 = v656;
        *&v754 = v774;
        v761 = v234;
        v772[0] = v234;
        v772[1] = v233;
        v759 = v233;
        __chkstk_darwin(v236);
        v238 = v741;
        v656[-12] = v747;
        v656[-11] = v238;
        v239 = v676;
        v656[-10] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.DiffableSection.Items.Sequence.Element, @in_guaranteed A.DiffableSection.Items.Sequence.Element) -> (@out Bool);
        v656[-9] = v239;
        v240 = v744;
        v656[-8] = v722;
        v656[-7] = v240;
        v656[-6] = v241;
        v656[-5] = v237;
        v656[-4] = v780;
        v242 = v768;
        v243 = v763;
        v656[-3] = v768;
        v656[-2] = v243;
        swift_getWitnessTable();
        v244 = v713;
        v155 = v681;
        BidirectionalCollection.difference<A>(from:by:)();
        (*v750)(v244, 0, 1, v762);
        v774 = v242;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();

        v19 = v747;

        v226 = TupleTypeMetadata3;
      }

      else
      {

        v226 = TupleTypeMetadata3;
        v19 = v747;
        v155 = v235;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_354;
      }

      if (TupleTypeMetadata3 >= v225)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v226;
      if (a8)
      {
        v228 = v155;
        goto LABEL_81;
      }
    }

    v245 = v769;
    (*(v700 + 16))(v769, v704, v227);
    v246 = *(v701 + 36);
    v247 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type CollectionDifference<String> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVySSGMd);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v245 + v246) != v774)
    {
      *&v248 = 134349056;
      v754 = v248;
      *&v248 = 134349312;
      v752 = v248;
      v759 = v246;
      do
      {
        a7 = v19;
        v19 = v247;
        v424 = dispatch thunk of Collection.subscript.read();
        v426 = *v425;
        v427 = v425[2];
        v428 = v425[3];
        TupleTypeMetadata3 = *(v425 + 32);
        v429 = *(v425 + 33);
        v761 = v425[1];
        v768 = v427;
        MPCPlaybackEngine.Configuration.options.getter();
        v424(&v774, 0);
        v247 = v19;
        dispatch thunk of Collection.formIndex(after:)();
        a8 = v426 + v751;
        v430 = __OFADD__(v426, v751);
        if (v429)
        {
          if (v430)
          {
            goto LABEL_360;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v436 = v426 + v751;
            v437 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_367;
            }

            v438 = Logger.logObject.getter();
            v439 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v438, v439))
            {
              v440 = swift_slowAlloc();
              *v440 = v752;
              *(v440 + 4) = v436;
              *(v440 + 12) = 2050;
              *(v440 + 14) = v437;
              _os_log_impl(&_mh_execute_header, v438, v439, "[Remove] Moving section from %{public}ld to %{public}ld", v440, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v441 + 2) + 1, 1, v441);
            }

            v443 = *(v441 + 2);
            v442 = *(v441 + 3);
            if (v443 >= v442 >> 1)
            {
              v441 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v442 > 1), v443 + 1, 1, v441);
            }

            outlined consume of CollectionDifference<String>.Change();
            *(v441 + 2) = v443 + 1;
            v444 = &v441[16 * v443];
            *(v444 + 4) = v436;
            *(v444 + 5) = v437;
LABEL_224:
            *&v763[v685] = v441;
            v19 = v747;
            goto LABEL_194;
          }

          v19 = a7;
          v431 = Logger.logObject.getter();
          v432 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v431, v432))
          {
            v433 = swift_slowAlloc();
            *v433 = v754;
            *(v433 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v432, "Deleting section %{public}ld", v433, 0xCu);
            v19 = v747;
          }
        }

        else
        {
          if (v430)
          {
            goto LABEL_361;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v445 = v426 + v751;
            v446 = v428 + v751;
            if (__OFADD__(v428, v751))
            {
              goto LABEL_368;
            }

            v447 = Logger.logObject.getter();
            v448 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v447, v448))
            {
              v449 = swift_slowAlloc();
              *v449 = v752;
              *(v449 + 4) = v446;
              *(v449 + 12) = 2050;
              *(v449 + 14) = v445;
              _os_log_impl(&_mh_execute_header, v447, v448, "[Insert] Moving section from %{public}ld to %{public}ld", v449, 0x16u);
            }

            v441 = *&v763[v685];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v441 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v441 + 2) + 1, 1, v441);
            }

            v451 = *(v441 + 2);
            v450 = *(v441 + 3);
            if (v451 >= v450 >> 1)
            {
              v441 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v450 > 1), v451 + 1, 1, v441);
            }

            outlined consume of CollectionDifference<String>.Change();
            *(v441 + 2) = v451 + 1;
            v452 = &v441[16 * v451];
            *(v452 + 4) = v446;
            *(v452 + 5) = v445;
            goto LABEL_224;
          }

          v19 = a7;
          v431 = Logger.logObject.getter();
          v434 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v431, v434))
          {
            v435 = swift_slowAlloc();
            *v435 = v754;
            *(v435 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v431, v434, "Inserting section %{public}ld", v435, 0xCu);
            v19 = v747;
          }
        }

        IndexSet.insert(_:)(a8);
        outlined consume of CollectionDifference<String>.Change();
LABEL_194:
        v423 = v769;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v423 + v759) != v774);
    }

    outlined destroy of IndexingIterator<CollectionDifference<String>>(v769);
    v249 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v251 = (v776 + 64);
    v250 = *(v776 + 64);
    v252 = 1 << *(v776 + 32);
    v253 = -1;
    v773 = v249;
    if (v252 < 64)
    {
      v253 = ~(-1 << v252);
    }

    v685 = v253 & v250;
    v661 = ((v252 + 63) >> 6);
    v254 = TupleTypeMetadata2;
    v666 = (TupleTypeMetadata2 - 8);
    v681 = (v711 + 16);
    v684 = (v711 + 32);
    v665 = (v690 + 32);
    v670 = v741 + 32;
    v750 = (v692 + 16);
    v749 = (v692 + 32);
    v769 = (v753 + 16);
    v768 = (v753 + 8);
    v748 = (v702 + 8);
    v663 = (v691 + 8);
    v671 = (v699 + 8);
    v664 = (v711 + 8);
    v667 = v776;

    v255 = 0;
    *&v256 = 134349312;
    v691 = v256;
    *&v256 = 136446210;
    v692 = v256;
    *&v256 = 136446466;
    v679 = v256;
    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    v662 = v251;
LABEL_88:
    a7 = v718;
    v259 = v685;
    if (v685)
    {
      v680 = v255;
      v260 = v255;
      goto LABEL_98;
    }

    v261 = v661 <= v255 + 1 ? v255 + 1 : v661;
    v262 = v261 - 1;
LABEL_94:
    v260 = v255 + 1;
    if (!__OFADD__(v255, 1))
    {
      break;
    }

LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    swift_once();
  }

  if (v260 >= v661)
  {
    v685 = 0;
    v271 = 1;
    v680 = v262;
    goto LABEL_99;
  }

  v259 = v251[v260];
  ++v255;
  if (!v259)
  {
    goto LABEL_94;
  }

  v680 = v260;
LABEL_98:
  v685 = (v259 - 1) & v259;
  v263 = __clz(__rbit64(v259)) | (v260 << 6);
  v264 = *(*(v667 + 48) + 8 * v263);
  v265 = v711;
  v266 = v706;
  (*(v711 + 16))(v706, *(v667 + 56) + *(v711 + 72) * v263, TupleTypeMetadata3);
  v267 = TupleTypeMetadata2;
  v268 = *(TupleTypeMetadata2 + 48);
  v269 = v718;
  *v718 = v264;
  v270 = *(v265 + 32);
  v254 = v267;
  v270(&v269[v268], v266, TupleTypeMetadata3);
  a7 = v269;
  v271 = 0;
LABEL_99:
  v272 = *(v254 - 8);
  (*(v272 + 56))(a7, v271, 1, v254);
  (*v665)(v258, a7, v708);
  if ((*(v272 + 48))(v258, 1, v254) == 1)
  {

    v453 = 0;
    v736 = (v741 + 40);
    v454 = *(v741 + 32);
    v756 = (v693 + 8);
    v737 = (v699 + 16);
    v745 = v753 + 32;
    *&v455 = 134350594;
    v733 = v455;
    v456 = v669;
    v748 = v454;
    while (1)
    {
      if (v453 >= v456)
      {
        goto LABEL_370;
      }

      v457 = (v453 + 1);
      if (__OFADD__(v453, 1))
      {
        goto LABEL_371;
      }

      v458 = v705;
      Array.subscript.getter();
      v459 = v454(v19, v741);
      v461 = v782;
      if (!*(v782 + 16))
      {
        (*v671)(v458, v19);

        goto LABEL_227;
      }

      v462 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v459, v460);
      v464 = v463;

      if ((v464 & 1) == 0)
      {
        (*v671)(v705, v19);
        goto LABEL_227;
      }

      v749 = (v453 + 1);
      v465 = *(*(v461 + 7) + 8 * v462);
      v466 = v741;
      v467 = *(v741 + 40);
      v467(v19, v741);
      v766 = v465;
      Array.subscript.getter();
      v468 = v710;
      v467(v19, v466);
      v469 = v712;
      v470 = dispatch thunk of Collection.count.getter();
      v471 = *v756;
      (*v756)(v468, v469);
      v472 = dispatch thunk of Collection.count.getter();
      v764 = v470;
      v473 = __OFSUB__(v472, v470);
      v474 = v472 - v470;
      if (v473)
      {
        goto LABEL_372;
      }

      v475 = v687;
      if (v474 < 0)
      {
        v473 = __OFSUB__(0, v474);
        v474 = -v474;
        if (v473)
        {
          goto LABEL_375;
        }
      }

      v762 = v472;
      swift_beginAccess();
      v750 = v773;
      v476 = specialized Dictionary.subscript.getter(v766, v773);
      v478 = v477;
      swift_endAccess();
      if (v478)
      {
        v479 = 0;
      }

      else
      {
        v479 = v476;
      }

      v765 = v474 + v479;
      if (__OFADD__(v474, v479))
      {
        goto LABEL_373;
      }

      v763 = dispatch thunk of Collection.count.getter();
      v480 = *v737;
      v481 = v747;
      (*v737)(v475, v705, v747);
      v482 = v688;
      v734 = v480;
      v480(v688, v697, v481);
      v483 = Logger.logObject.getter();
      v484 = static os_log_type_t.default.getter();
      v485 = os_log_type_enabled(v483, v484);
      *&v754 = v471;
      v735 = v461;
      if (v485)
      {
        v486 = swift_slowAlloc();
        v761 = swift_slowAlloc();
        v771 = v761;
        *v486 = v733;
        *(v486 + 4) = v453;
        *(v486 + 12) = 2082;
        WitnessTable = v483;
        LODWORD(v759) = v484;
        v487 = v748;
        v488 = v748(v481, v741);
        v489 = v475;
        v491 = v490;
        v492 = *v671;
        (*v671)(v489, v481);
        v493 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v488, v491, &v771);

        *(v486 + 14) = v493;
        *(v486 + 22) = 2050;
        *(v486 + 24) = v766;
        *(v486 + 32) = 2080;
        v494 = v688;
        v495 = v487(v481, v741);
        v497 = v496;
        *&v752 = v492;
        v492(v494, v481);
        v498 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v495, v497, &v771);

        *(v486 + 34) = v498;
        *(v486 + 42) = 2050;
        *(v486 + 44) = v474;
        *(v486 + 52) = 2050;
        *(v486 + 54) = v765;
        *(v486 + 62) = 2082;
        v774 = specialized Dictionary.subscript.getter(v766, v750);
        LOBYTE(v775) = v499 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
        v500 = String.init<A>(describing:)();
        v502 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v500, v501, &v771);

        *(v486 + 64) = v502;
        v503 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v759, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v486, 0x48u);
        swift_arrayDestroy();

        v466 = v741;
      }

      else
      {

        v504 = *v671;
        (*v671)(v482, v481);
        *&v752 = v504;
        v504(v475, v481);
      }

      v774 = _swiftEmptyArrayStorage;
      v505 = v764;
      if (v762 > v764)
      {
        v505 = v762;
      }

      v506 = (v505 - 1);
      if (__OFSUB__(v505, 1))
      {
        goto LABEL_374;
      }

      swift_beginAccess();
      v507 = _swiftEmptyArrayStorage[2];
      if (v507 >= v765)
      {
        v591 = _swiftEmptyArrayStorage;
        v557 = v709;
        goto LABEL_304;
      }

      v761 = v453 + v751;
      v508 = __OFADD__(v453, v751);
      LODWORD(v762) = v508;
      v509 = v766;
      if (v763 >= v764)
      {
        v509 = v453;
      }

      v758 = (v509 + v751);
      v510 = __OFADD__(v509, v751);
      LODWORD(v759) = v510;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v757 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v506 < 0)
          {

            v639 = v686;
            v640 = v705;
            v734(v686, v705, v481);
            v641 = Logger.logObject.getter();
            v642 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v641, v642))
            {
              v643 = swift_slowAlloc();
              v644 = swift_slowAlloc();
              v771 = v644;
              *v643 = v692;
              v645 = v748(v481, v466);
              v647 = v646;
              v648 = v752;
              (v752)(v639, v481);
              v649 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v645, v647, &v771);

              *(v643 + 4) = v649;
              _os_log_impl(&_mh_execute_header, v641, v642, "We ran out of items while trying to build index paths for section with identifier %{public}s", v643, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v644);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
              v648(v697, v481);
              (v754)(v698, v712);
              v648(v640, v481);
            }

            else
            {

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
              v650 = v752;
              (v752)(v639, v481);
              v650(v697, v481);
              (v754)(v698, v712);
              v650(v640, v481);
            }

            (*(v700 + 8))(v704, v731);

            goto LABEL_191;
          }

          if (v762)
          {
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);

            __break(1u);
            return result;
          }

          IndexPath.init(item:section:)();
          v511 = v779;
          v512 = *(v779 + 2);
          v766 = v506;
          if (v512)
          {
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v513 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v514 = -1 << v511[32];
            v515 = v513 & ~v514;
            if ((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515))
            {
              v516 = ~v514;
              v517 = *(v753 + 72);
              v518 = *(v753 + 16);
              while (1)
              {
                v519 = v767;
                v518(v767, *(v511 + 6) + v517 * v515, v770);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
                v520 = dispatch thunk of static Equatable.== infix(_:_:)();
                v521 = *v768;
                (*v768)(v519, v770);
                if (v520)
                {
                  break;
                }

                v515 = (v515 + 1) & v516;
                if (((*&v511[((v515 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v515) & 1) == 0)
                {
                  goto LABEL_263;
                }
              }

              v539 = v689;
              v540 = v738;
              v518(v689, v738, v770);
              v541 = Logger.logObject.getter();
              v542 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v541, v542))
              {
                v543 = swift_slowAlloc();
                v544 = swift_slowAlloc();
                v771 = v544;
                *v543 = v692;
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
                v545 = v770;
                v546 = dispatch thunk of CustomStringConvertible.description.getter();
                v548 = v547;
                v521(v539, v545);
                v549 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v546, v548, &v771);

                *(v543 + 4) = v549;
                _os_log_impl(&_mh_execute_header, v541, v542, "%{public}s contained in the visible index paths set, skipping", v543, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v544);

                v521(v540, v545);
              }

              else
              {

                v556 = v770;
                v521(v539, v770);
                v521(v540, v556);
              }

              v481 = v747;
              v557 = v709;
              v523 = v766;
              goto LABEL_294;
            }
          }

LABEL_263:
          if (v759)
          {
            goto LABEL_369;
          }

          v522 = v707;
          v523 = v766;
          IndexPath.init(item:section:)();
          v524 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          if (v763 < v764)
          {
            break;
          }

          v533 = *v743;
          v532 = v743[1];
          v534 = v532 + v524;
          v535 = *(v532 + 16);
          if (*v743)
          {

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v522, v534, v535, (v533 + 16), v533 + 32);
            v537 = v536;

            if (v537)
            {
              goto LABEL_296;
            }

            v538 = *v769;
          }

          else
          {
            if (!v535)
            {
              goto LABEL_296;
            }

            v553 = *(v753 + 72);
            v538 = *(v753 + 16);
            while (1)
            {
              v554 = v767;
              v538(v767, v534, v770);
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
              v555 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v768)(v554, v770);
              if (v555)
              {
                break;
              }

              v534 += v553;
              if (!--v535)
              {
                goto LABEL_296;
              }
            }

            v523 = v766;
          }

          v558 = v695;
          v538(v695, v522, v770);
          v559 = Logger.logObject.getter();
          v573 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v559, v573))
          {
LABEL_292:

            v579 = *v768;
            v580 = v770;
            (*v768)(v558, v770);
            v579(v738, v580);
            v579(v522, v580);
            goto LABEL_293;
          }

          v561 = swift_slowAlloc();
          v574 = v558;
          v563 = swift_slowAlloc();
          v771 = v563;
          *v561 = v692;
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
          v564 = v770;
          v575 = dispatch thunk of CustomStringConvertible.description.getter();
          v577 = v576;
          v568 = *v768;
          (*v768)(v574, v564);
          v578 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v575, v577, &v771);

          *(v561 + 4) = v578;
          v570 = v573;
          v571 = v559;
          v572 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_291:
          _os_log_impl(&_mh_execute_header, v571, v570, v572, v561, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v563);

          v568(v738, v564);
          v568(v707, v564);
          v523 = v766;
LABEL_293:
          v481 = v747;
          v557 = v709;
LABEL_294:
          v506 = v523 - 1;
          v507 = WitnessTable->isa;
          v466 = v741;
          if (WitnessTable->isa >= v765)
          {
            goto LABEL_303;
          }
        }

        v526 = *v732;
        v525 = v732[1];
        v527 = v525 + v524;
        v528 = *(v525 + 16);
        if (*v732)
        {

          specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v522, v527, v528, (v526 + 16), v526 + 32);
          v530 = v529;

          if ((v530 & 1) == 0)
          {
            v531 = *v769;
LABEL_286:
            v558 = v694;
            v531(v694, v522, v770);
            v559 = Logger.logObject.getter();
            v560 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v559, v560))
            {
              goto LABEL_292;
            }

            v561 = swift_slowAlloc();
            v562 = v558;
            v563 = swift_slowAlloc();
            v771 = v563;
            *v561 = v692;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v564 = v770;
            v565 = dispatch thunk of CustomStringConvertible.description.getter();
            v567 = v566;
            v568 = *v768;
            (*v768)(v562, v564);
            v569 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v565, v567, &v771);

            *(v561 + 4) = v569;
            v570 = v560;
            v571 = v559;
            v572 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_291;
          }
        }

        else if (v528)
        {
          v550 = *(v753 + 72);
          v531 = *(v753 + 16);
          while (1)
          {
            v551 = v767;
            v531(v767, v527, v770);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v552 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v768)(v551, v770);
            if (v552)
            {
              break;
            }

            v527 += v550;
            if (!--v528)
            {
              goto LABEL_296;
            }
          }

          v523 = v766;
          goto LABEL_286;
        }

LABEL_296:
        (*v769)(v696, v522, v770);
        v581 = v757;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v581 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v581 + 16) + 1, 1, v581);
        }

        v481 = v747;
        v466 = v741;
        v582 = v738;
        v583 = v766;
        v585 = *(v581 + 16);
        v584 = *(v581 + 24);
        if (v585 >= v584 >> 1)
        {
          v581 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v584 > 1, v585 + 1, 1, v581);
        }

        *(v581 + 16) = v585 + 1;
        v586 = (v581 + 16);
        v587 = v753;
        v588 = v581 + v524 + *(v753 + 72) * v585;
        v589 = v770;
        (*(v753 + 32))(v588, v696, v770);
        v757 = v581;
        v774 = v581;
        v590 = *(v587 + 8);
        v590(v582, v589);
        v590(v707, v589);
        v506 = v583 - 1;
        WitnessTable = (v581 + 16);
        v507 = *(v581 + 16);
      }

      while (*v586 < v765);
      v557 = v709;
LABEL_303:
      v591 = v757;
LABEL_304:
      v757 = v591;

      if (v763 >= v764)
      {
        if (v507)
        {
          v606 = 0;
          v607 = *(v753 + 72);
          v608 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v609 = v757 + v608;
          v610 = *(v753 + 16);
          v766 = (v757 + v608);
          v610(v557, v757 + v608, v770);
          while (1)
          {
            v612 = *v743;
            v611 = v743[1];
            v613 = v611 + v608;
            v614 = *(v611 + 16);
            if (*v743)
            {

              specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v557, v613, v614, (v612 + 16), v612 + 32);
              v616 = v615;

              if (v616)
              {
                v557 = v709;
                goto LABEL_331;
              }

              v557 = v709;
            }

            else
            {
              if (!v614)
              {
                goto LABEL_331;
              }

              do
              {
                v617 = v767;
                v610(v767, v613, v770);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
                v618 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v768)(v617, v770);
                if (v618)
                {
                  v609 = v766;
                  goto LABEL_322;
                }

                v613 += v607;
                --v614;
              }

              while (v614);
              v609 = v766;
LABEL_331:
              specialized OrderedSet._appendNew(_:in:)(v557);
            }

LABEL_322:
            v606 = (v606 + 1);
            (*v768)(v557, v770);
            if (v606 == v507)
            {
              break;
            }

            v610(v557, (v609 + v607 * v606), v770);
          }
        }

        v619 = Logger.logObject.getter();
        v630 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v619, v630))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v631 = Array.description.getter();
          v633 = v632;

          v634 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v631, v633, &v771);

          *(v621 + 4) = v634;
          v627 = v630;
          v628 = v619;
          v629 = "Non visible adjustment: deleting %{public}s";
LABEL_337:
          _os_log_impl(&_mh_execute_header, v628, v627, v629, v621, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v622);
        }
      }

      else
      {
        if (v507)
        {
          v592 = 0;
          v593 = *(v753 + 72);
          v594 = (*(v753 + 80) + 32) & ~*(v753 + 80);
          v595 = v757 + v594;
          v596 = *(v753 + 16);
          v597 = v703;
          v766 = (v757 + v594);
          v596(v703, v757 + v594, v770);
          while (1)
          {
            v599 = *v732;
            v598 = v732[1];
            v600 = v598 + v594;
            v601 = *(v598 + 16);
            if (*v732)
            {

              specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v597, v600, v601, (v599 + 16), v599 + 32);
              v603 = v602;

              if (v603)
              {
                v597 = v703;
                goto LABEL_317;
              }

              v597 = v703;
            }

            else
            {
              if (!v601)
              {
                goto LABEL_317;
              }

              do
              {
                v604 = v767;
                v596(v767, v600, v770);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
                v605 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v768)(v604, v770);
                if (v605)
                {
                  v595 = v766;
                  goto LABEL_308;
                }

                v600 += v593;
                --v601;
              }

              while (v601);
              v595 = v766;
LABEL_317:
              specialized OrderedSet._appendNew(_:in:)(v597);
            }

LABEL_308:
            v592 = (v592 + 1);
            (*v768)(v597, v770);
            if (v592 == v507)
            {
              break;
            }

            v596(v597, (v595 + v593 * v592), v770);
          }
        }

        v619 = Logger.logObject.getter();
        v620 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v619, v620))
        {
          v621 = swift_slowAlloc();
          v622 = swift_slowAlloc();
          v771 = v622;
          *v621 = v692;

          v623 = Array.description.getter();
          v625 = v624;

          v626 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v623, v625, &v771);

          *(v621 + 4) = v626;
          v627 = v620;
          v628 = v619;
          v629 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_337;
        }
      }

      v19 = v747;
      v635 = v752;
      (v752)(v697, v747);
      (v754)(v698, v712);
      v635(v705, v19);

      v454 = v748;
      v457 = v749;
LABEL_227:
      v456 = v669;
      v453 = v457;
      if (v457 == v669)
      {

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);

        (*(v700 + 8))(v704, v731);

        goto LABEL_347;
      }
    }
  }

  v273 = *v258;
  (*v684)(v725, v258 + *(v254 + 48), TupleTypeMetadata3);
  v759 = v273;
  if (__OFSUB__(v273, v751))
  {
    goto LABEL_362;
  }

  Array.subscript.getter();
  v274 = (*(v741 + 32))(v19);
  v276 = *(v782 + 16);
  v690 = v782;
  if (v276 && (v277 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v274, v275), (v278 & 1) != 0))
  {
    v279 = *(*(v690 + 56) + 8 * v277);

    v280 = swift_isUniquelyReferenced_nonNull_native();
    v774 = v773;
    v713 = v279;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v279, v280);
    LODWORD(v752) = 0;
    v773 = v774;
  }

  else
  {

    v713 = 0;
    LODWORD(v752) = 1;
  }

  (*v681)(v257, v725, TupleTypeMetadata3);
  v281 = *(v721 + 36);
  a7 = WitnessTable;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (static CollectionDifference.Index.== infix(_:_:)())
  {
LABEL_87:
    (*v663)(v257, v721);
    (*v671)(v720, v19);
    (*v664)(v725, TupleTypeMetadata3);
    v254 = TupleTypeMetadata2;
    v251 = v662;
    v255 = v680;
    goto LABEL_88;
  }

  v701 = v713 + v751;
  v282 = __OFADD__(v713, v751);
  LODWORD(v702) = v282;
  v761 = v281;
  while (1)
  {
    v286 = dispatch thunk of Collection.subscript.read();
    v287 = v756;
    v288 = v757;
    (*v750)(v756);
    v286(&v774, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v289 = v766;
    (*v749)(v766, v287, v288);
    LODWORD(v286) = swift_getEnumCaseMultiPayload();
    v290 = *v289;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v291 = v289 + *(TupleTypeMetadata3 + 64);
    v292 = *v291;
    a8 = v291[8];
    v293 = v780[0];
    v294 = *(v780[0] + 16);
    if (v286 != 1)
    {
      if (v294)
      {
        v297 = specialized __RawDictionaryStorage.find<A>(_:)(v759);
        if (v298)
        {
          v294 = *(*(v293 + 56) + 8 * v297);
        }

        else
        {
          v294 = 0;
        }
      }

      if (__OFADD__(v290, v294))
      {
        __break(1u);
LABEL_352:
        __break(1u);
        goto LABEL_353;
      }

      a7 = v766 + *(TupleTypeMetadata3 + 48);
      if (v752)
      {
        v311 = Logger.logObject.getter();
        v312 = static os_log_type_t.default.getter();
        v313 = os_log_type_enabled(v311, v312);
        TupleTypeMetadata3 = v762;
        if (v313)
        {
          v314 = swift_slowAlloc();
          *v314 = v691;
          *(v314 + 4) = v759;
          *(v314 + 12) = 2050;
          *(v314 + 14) = v290;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v765;
        v257 = v764;
        v258 = v758;
        goto LABEL_113;
      }

      *&v754 = v766 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v316 = specialized Dictionary.subscript.modify(&v774, v713);
        if (*(v315 + 8))
        {
          (v316)(&v774, 0);
          a7 = v724;
        }

        else
        {
          a7 = v724;
          if (__OFADD__(*v315, 1))
          {
            goto LABEL_364;
          }

          ++*v315;
          (v316)(&v774, 0);
        }

        if (v702)
        {
          goto LABEL_358;
        }

        IndexPath.init(item:section:)();
        v379 = *v732;
        v378 = v732[1];
        v380 = v378 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
        v381 = *(v378 + 16);
        if (*v732)
        {

          specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a7, v380, v381, (v379 + 16), v379 + 32);
          v383 = v382;

          if ((v383 & 1) == 0)
          {
            goto LABEL_183;
          }
        }

        else if (v381)
        {
          v402 = *(v753 + 72);
          v403 = *(v753 + 16);
          do
          {
            v404 = v767;
            v405 = v770;
            v403(v767, v380, v770);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v406 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v768)(v404, v405);
            if (v406)
            {
              goto LABEL_183;
            }

            v380 += v402;
          }

          while (--v381);
        }

        specialized OrderedSet._appendNew(_:in:)(a7);
LABEL_183:
        v407 = v714;
        (*v769)(v714, a7, v770);
        v408 = Logger.logObject.getter();
        v409 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v408, v409))
        {
          v410 = swift_slowAlloc();
          v411 = swift_slowAlloc();
          v774 = v411;
          *v410 = v692;
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
          v412 = v770;
          v413 = dispatch thunk of CustomStringConvertible.description.getter();
          v415 = v414;
          v416 = *v768;
          (*v768)(v407, v412);
          v417 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v413, v415, &v774);

          *(v410 + 4) = v417;
          _os_log_impl(&_mh_execute_header, v408, v409, "Inserting item %{public}s", v410, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v411);
          v19 = v747;

          v416(v724, v412);
        }

        else
        {

          v418 = *v768;
          v419 = v770;
          (*v768)(v407, v770);
          v418(a7, v419);
        }

        a8 = v765;
        TupleTypeMetadata3 = v762;
        v257 = v764;
        v258 = v758;
        goto LABEL_112;
      }

      v318 = v737;
      IndexPath.init(item:section:)();
      if (v702)
      {
        goto LABEL_357;
      }

      v319 = v736;
      IndexPath.init(item:section:)();
      v320 = *v769;
      v321 = v716;
      v322 = v318;
      v323 = v770;
      (*v769)(v716, v322, v770);
      v324 = v723;
      v320(v723, v319, v323);
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        v677 = swift_slowAlloc();
        v774 = v677;
        *v327 = v679;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        v328 = v770;
        v329 = dispatch thunk of CustomStringConvertible.description.getter();
        v330 = v321;
        v332 = v331;
        v333 = *v768;
        (*v768)(v330, v328);
        v334 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v329, v332, &v774);

        *(v327 + 4) = v334;
        *(v327 + 12) = 2082;
        v335 = v723;
        v336 = dispatch thunk of CustomStringConvertible.description.getter();
        v338 = v337;
        v333(v335, v328);
        v339 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v336, v338, &v774);

        *(v327 + 14) = v339;
        _os_log_impl(&_mh_execute_header, v325, v326, "[Insert] Moving item %{public}s to %{public}s", v327, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v333 = *v768;
        v384 = v324;
        v385 = v770;
        (*v768)(v384, v770);
        v333(v321, v385);
      }

      a8 = v765;
      v257 = v764;
      v258 = v758;
      v386 = *(v729 + 48);
      v387 = v730;
      v388 = v770;
      v320(v730, v737, v770);
      v320(&v387[v386], v736, v388);
      v389 = *&v763[v745];
      v390 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v747;
      if ((v390 & 1) == 0)
      {
        v389 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v389 + 16) + 1, 1, v389);
      }

      v392 = *(v389 + 16);
      v391 = *(v389 + 24);
      if (v392 >= v391 >> 1)
      {
        v389 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v391 > 1, v392 + 1, 1, v389);
      }

      v283 = v770;
      v333(v736, v770);
      v333(v737, v283);
      *(v389 + 16) = v392 + 1;
      v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v392;
      v285 = &v758;
      goto LABEL_111;
    }

    if (v294)
    {
      v295 = specialized __RawDictionaryStorage.find<A>(_:)(v759);
      if (v296)
      {
        v294 = *(*(v293 + 56) + 8 * v295);
      }

      else
      {
        v294 = 0;
      }
    }

    if (__OFADD__(v290, v294))
    {
      goto LABEL_352;
    }

    if (v752)
    {
      break;
    }

    v300 = specialized Dictionary.subscript.modify(&v774, v713);
    if (*(v299 + 8) != 1)
    {
      if (__OFSUB__(*v299, 1))
      {
        goto LABEL_356;
      }

      --*v299;
    }

    (v300)(&v774, 0);
    *&v754 = v766 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v733;
    IndexPath.init(item:section:)();
    if (v702)
    {
      goto LABEL_359;
    }

    v340 = v735;
    IndexPath.init(item:section:)();
    v341 = v770;
    v342 = *v769;
    v343 = v715;
    (*v769)(v715, v19, v770);
    v344 = v678;
    v342(v678, v340, v341);
    v345 = Logger.logObject.getter();
    v346 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v345, v346))
    {
      v347 = swift_slowAlloc();
      v677 = swift_slowAlloc();
      v774 = v677;
      *v347 = v679;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v674 = v345;
      v348 = v770;
      v349 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v673) = v346;
      v351 = v350;
      v352 = *v768;
      (*v768)(v343, v348);
      v353 = v349;
      v19 = v733;
      v354 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v353, v351, &v774);

      *(v347 + 4) = v354;
      *(v347 + 12) = 2082;
      v355 = dispatch thunk of CustomStringConvertible.description.getter();
      v357 = v356;
      v352(v344, v348);
      v358 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v355, v357, &v774);

      *(v347 + 14) = v358;
      v359 = v674;
      _os_log_impl(&_mh_execute_header, v674, v673, "[Remove] Moving item %{public}s to %{public}s", v347, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v352 = *v768;
      v393 = v344;
      v394 = v770;
      (*v768)(v393, v770);
      v352(v343, v394);
    }

    v257 = v764;
    v258 = v758;
    v395 = *(v729 + 48);
    v396 = v727;
    v397 = v770;
    v342(v727, v19, v770);
    v342(&v396[v395], v735, v397);
    v389 = *&v763[v745];
    v398 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v747;
    a8 = v765;
    if ((v398 & 1) == 0)
    {
      v389 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v389 + 16) + 1, 1, v389);
    }

    v400 = *(v389 + 16);
    v399 = *(v389 + 24);
    if (v400 >= v399 >> 1)
    {
      v389 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v399 > 1, v400 + 1, 1, v389);
    }

    v401 = v770;
    v352(v735, v770);
    v352(v733, v401);
    *(v389 + 16) = v400 + 1;
    v284 = v389 + ((*(v728 + 80) + 32) & ~*(v728 + 80)) + *(v728 + 72) * v400;
    v285 = &v755;
LABEL_111:
    outlined init with take of (IndexPath, IndexPath)(*(v285 - 32), v284);
    *&v763[v745] = v389;
    TupleTypeMetadata3 = v762;
LABEL_112:
    a7 = v754;
LABEL_113:
    (*v748)(a7, a8);
    a7 = WitnessTable;
    dispatch thunk of Collection.endIndex.getter();
    if (static CollectionDifference.Index.== infix(_:_:)())
    {
      goto LABEL_87;
    }
  }

  a7 = v766 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.default.getter();
    v317 = os_log_type_enabled(v311, v312);
    TupleTypeMetadata3 = v762;
    if (v317)
    {
      v314 = swift_slowAlloc();
      *v314 = v691;
      *(v314 + 4) = v759;
      *(v314 + 12) = 2050;
      *(v314 + 14) = v292;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v311, v312, "Skipping insert for [%{public}ld,%{public}ld]", v314, 0x16u);
    }

    goto LABEL_145;
  }

  *&v754 = v766 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v301 = v734;
  IndexPath.init(item:section:)();
  v302 = specialized Set.contains(_:)(v301, v779);
  v303 = v765;
  v304 = v764;
  if (v302)
  {
    v306 = *v743;
    v305 = v743[1];
    v307 = v305 + ((*(v753 + 80) + 32) & ~*(v753 + 80));
    v308 = *(v305 + 16);
    if (*v743)
    {

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v301, v307, v308, (v306 + 16), v306 + 32);
      v310 = v309;

      if ((v310 & 1) == 0)
      {
        goto LABEL_157;
      }
    }

    else if (v308)
    {
      v360 = *(v753 + 72);
      v361 = *(v753 + 16);
      do
      {
        v362 = v767;
        v363 = v770;
        v361(v767, v307, v770);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        v364 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v768)(v362, v363);
        if (v364)
        {
          goto LABEL_157;
        }

        v307 += v360;
      }

      while (--v308);
    }

    specialized OrderedSet._appendNew(_:in:)(v301);
LABEL_157:
    v365 = v726;
    (*v769)(v726, v301, v770);
    v366 = Logger.logObject.getter();
    v367 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v366, v367))
    {
      v368 = swift_slowAlloc();
      v369 = swift_slowAlloc();
      v774 = v369;
      *v368 = v692;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v370 = v770;
      v371 = dispatch thunk of CustomStringConvertible.description.getter();
      v373 = v372;
      v374 = *v768;
      (*v768)(v365, v370);
      v375 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v371, v373, &v774);

      *(v368 + 4) = v375;
      _os_log_impl(&_mh_execute_header, v366, v367, "Deleting item %{public}s", v368, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v369);
      v19 = v747;

      v374(v734, v370);
    }

    else
    {

      v376 = *v768;
      v377 = v770;
      (*v768)(v365, v770);
      v376(v301, v377);
    }

    a8 = v765;
    TupleTypeMetadata3 = v762;
    v257 = v764;
    v258 = v758;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v420 = Logger.logObject.getter();
  v421 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v420, v421))
  {
    v422 = swift_slowAlloc();
    *v422 = 0;
    _os_log_impl(&_mh_execute_header, v420, v421, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v422, 2u);
    v303 = v765;
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v722);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v739);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v668);
  (*v663)(v304, v721);
  (*v671)(v720, v19);
  (*v664)(v725, v762);
  (*(v700 + 8))(v704, v731);
  (*v768)(v301, v770);
  *v763 = 1;
  (*v748)(v754, v303);

LABEL_191:
}

uint64_t closure #1 in implicit closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t closure #2 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  specialized Set._Variant.insert(_:)(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t closure #4 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v33 = a8;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3(a1, a2, v17);
  if ((v20 & 1) == 0 || !a5)
  {
    return v20 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v31 = v16, v32 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v21 = OrderedSet._find(_:)(), (v22))
  {
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5);
    return v20 & 1;
  }

  v23 = *a9;
  v24 = *(*a9 + 16);
  if (v24)
  {
    v25 = v21;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a10);
    if (v27)
    {
      v24 = *(*(v23 + 56) + 8 * v26);
    }

    else
    {
      v24 = 0;
    }

    v21 = v25;
  }

  v28 = __OFADD__(v21, v24);
  result = v21 + v24;
  if (!v28)
  {
    IndexPath.init(item:section:)();
    type metadata accessor for AIDiffingUpdate();
    specialized OrderedSet._append(_:)(v19);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5);
    (*(v31 + 8))(v19, v15);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, void *, id *)@<X3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a8);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11);
  return AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, void *, id *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v46 = a4;
  v50 = a7;
  v51 = a8;
  v47 = a5;
  v52 = a9;
  v53 = a3;
  v42 = a1;
  v43 = a2;
  v48 = a10;
  v49 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin(a1);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _DiffableSection();
  v54 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *(v11 + 16);
  v21(v13, v42, a11, v18);
  v22 = v20;
  v55 = v20;
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v23 = *(v11 + 32);
  v23(&v22[v14[11]], v13, a11);
  (v21)(v13, v43, a11);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v24 = v16 + v14[11];
  v44 = v16;
  v23(v24, v13, a11);
  type metadata accessor for _ContiguousArrayStorage();
  v25 = v54;
  swift_allocObject();
  v26 = static Array._adoptStorage(_:count:)();
  v27 = *(v25 + 16);
  v27(v28, v55, v14);
  _ss27_finalizeUninitializedArrayySayxGABnlF_0();
  swift_allocObject();
  v29 = static Array._adoptStorage(_:count:)();
  v27(v30, v16, v14);
  _ss27_finalizeUninitializedArrayySayxGABnlF_0();
  v31 = [v45 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v46;
  v33 = v47;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v46);
  v35 = v49;
  v36 = v50;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v49);
  v37 = v51;
  v38 = v48;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v51);
  WitnessTable = swift_getWitnessTable();
  AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v26, v29, v32, v53, v53, 0, v34, v33, v52, v35, v36, v37, v38, v14, WitnessTable);
  v40 = *(v54 + 8);
  v40(v44, v14);
  return v40(v55, v14);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void *, id *), int a5, int a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void), uint64_t a14, void (*a15)(uint64_t), uint64_t a16, void *a17, uint64_t a18)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a14;
  v44 = a13;
  v42 = a15;
  v40 = a4;
  v41 = a16;
  v35 = a18;
  v36 = a17;
  v31 = a9;
  v32 = a2;
  v19 = type metadata accessor for AIDiffingUpdate();
  v37 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v18 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v33;
  v25 = v34;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v33);
  v26 = v31;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v31);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11);
  AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a10, a11, a12, v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMd);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2400;
  outlined init with copy of AIDiffingUpdate(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return outlined destroy of AIDiffingUpdate(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v164 = a4;
  v161 = a3;
  v158 = a2;
  v10 = type metadata accessor for IndexSet();
  v159 = *(v10 - 8);
  __chkstk_darwin(v10);
  v157 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v154 - v17;
  v160 = v6;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.aiDiff);

  v163 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v165 = a6;
  v162 = a5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v21, v22, "applyUpdates called with %ld updates", v24, 0xCu);
  }

  else
  {
  }

  v171 = swift_allocBox();
  v178 = v25;
  IndexSet.init()();
  v167 = swift_allocBox();
  v177 = v26;
  IndexSet.init()();
  v27 = swift_allocObject();
  v166 = v27;
  *(v27 + 16) = _swiftEmptyArrayStorage;
  v176 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v172 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v174 = v29 + 16;
  v173 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v170 = v30;
  *(v30 + 24) = _swiftEmptyArrayStorage;
  v31 = swift_allocObject();
  v169 = v31;
  *(v31 + 16) = _swiftEmptyArrayStorage;
  v32 = (v31 + 16);
  v33 = a1;
  v34 = *(a1 + 16);
  v168 = v33;
  if (v34 == 1)
  {
    outlined init with copy of AIDiffingUpdate(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18);
    if (*v18 == 1)
    {
      specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v33, v185, v161, v164, v162, v165);
      outlined destroy of AIDiffingUpdate(v18);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v148 = 0;
      goto LABEL_40;
    }

    v71 = *(v159 + 24);
    v71(v178, &v18[v12[6]], v10);
    v71(v177, &v18[v12[7]], v10);
    *v176 = *&v18[v12[8]];

    v72 = &v18[v12[9]];
    v73 = *v72;
    v74 = v72[1];
    v75 = v172;
    *(v172 + 16) = v73;
    *(v75 + 24) = v74;

    v76 = &v18[v12[10]];
    v77 = *v76;
    v78 = v76[1];
    v79 = v173;
    *(v173 + 16) = v77;
    *(v79 + 24) = v78;

    v80 = &v18[v12[11]];
    v81 = v80[1];
    v82 = v32;
    v83 = v170;
    *(v170 + 16) = *v80;
    *(v83 + 24) = v81;

    v84 = *&v18[v12[12]];

    outlined destroy of AIDiffingUpdate(v18);
    v156 = v82;
    *v82 = v84;

    v85 = v171;
    v86 = v167;
    v87 = v162;
    v88 = v164;
    v89 = v169;
    v90 = v161;
  }

  else
  {
    if (v34)
    {
      v35 = v15 + 8;
      v36 = v168 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        outlined init with copy of AIDiffingUpdate(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        IndexSet.formUnion(_:)();
        IndexSet.formUnion(_:)();

        specialized Array.append<A>(contentsOf:)(v38);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[9]]);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[10]]);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[11]]);

        specialized Array.append<A>(contentsOf:)(v39);
        outlined destroy of AIDiffingUpdate(v15);
        v36 += v37;
      }

      while (--v34);
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Final update:", v42, 2u);
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v45 = 136315138;
      v46 = v178;
      swift_beginAccess();
      v47 = v159;
      v48 = v157;
      (*(v159 + 16))(v157, v46, v10);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v47 + 8))(v48, v10);
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v49, v51, &aBlock);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, " - Inserted sections: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v155);
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock = v155;
      *v55 = 136315138;
      v56 = v177;
      swift_beginAccess();
      v57 = v159;
      v58 = v157;
      (*(v159 + 16))(v157, v56, v10);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v57 + 8))(v58, v10);
      v62 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v59, v61, &aBlock);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, " - Deleted sections: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v155);
    }

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SitMd);
      v67 = Array.description.getter();
      v69 = v68;

      v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v67, v69, &aBlock);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, " - Section move pairs: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
    }

    else
    {
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock = v94;
      *v93 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v95 = Array.description.getter();
      v97 = v96;

      v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v95, v97, &aBlock);

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v91, v92, " - Inserted index paths: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
    }

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    v101 = os_log_type_enabled(v99, v100);
    v156 = v32;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      aBlock = v103;
      *v102 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v104 = Array.description.getter();
      v106 = v105;

      v107 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v104, v106, &aBlock);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v99, v100, " - Deleted index paths: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
    }

    v89 = v169;

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock = v111;
      *v110 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v112 = Array.description.getter();
      v114 = v113;

      v115 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v112, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, " - Updated index paths: %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
    }

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock = v119;
      *v118 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd);
      v120 = Array.description.getter();
      v122 = v121;

      v123 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v120, v122, &aBlock);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v116, v117, " - Item move pairs: %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v119);
    }

    else
    {
    }

    v86 = v167;
    v90 = v161;
    v88 = v164;
    v83 = v170;
    v85 = v171;
    v87 = v162;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v125 = v160;
  v126 = v168;
  *(isEscapingClosureAtFileLocation + 16) = v160;
  *(isEscapingClosureAtFileLocation + 24) = v126;
  *(isEscapingClosureAtFileLocation + 32) = v86;
  *(isEscapingClosureAtFileLocation + 40) = v85;
  *(isEscapingClosureAtFileLocation + 48) = v166;
  v127 = v173;
  *(isEscapingClosureAtFileLocation + 56) = v172;
  *(isEscapingClosureAtFileLocation + 64) = v127;
  *(isEscapingClosureAtFileLocation + 72) = v89;
  *(isEscapingClosureAtFileLocation + 80) = v90;
  *(isEscapingClosureAtFileLocation + 88) = v88;
  *(isEscapingClosureAtFileLocation + 96) = v83;
  v128 = v165;
  *(isEscapingClosureAtFileLocation + 104) = v87;
  *(isEscapingClosureAtFileLocation + 112) = v128;
  if (v158)
  {

    v129 = v165;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v87);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v90);
    v130 = v90;
    v131 = v125;
    v132 = [v131 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v133 = v88;
    v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v135 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation9IndexPathV_SayAFGTt0g5Tf4g_n(v134);

    v136 = swift_allocObject();
    v136[2] = v168;
    v136[3] = v131;
    v137 = v178;
    v136[4] = v177;
    v136[5] = v137;
    v138 = v175;
    v136[6] = v176;
    v136[7] = v138;
    v139 = v156;
    v136[8] = v174;
    v136[9] = v139;
    v136[10] = v135;
    v136[11] = v130;
    v136[12] = v133;
    v140 = swift_allocObject();
    *(v140 + 16) = partial apply for closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
    *(v140 + 24) = v136;
    v183 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v184 = v140;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v141 = v162;
    v181 = thunk for @escaping @callee_guaranteed () -> ();
    v182 = &block_descriptor_27_0;
    v178 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v130);
    v142 = v131;

    v143 = swift_allocObject();
    v144 = v170;
    *(v143 + 2) = v142;
    *(v143 + 3) = v144;
    *(v143 + 4) = v141;
    *(v143 + 5) = v129;
    v183 = partial apply for closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
    v184 = v143;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v182 = &block_descriptor_33_2;
    v145 = _Block_copy(&aBlock);
    v87 = v184;

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v141);
    v146 = v142;

    v147 = v178;
    [v146 performBatchUpdates:v178 completion:v145];
    _Block_release(v145);
    _Block_release(v147);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v148 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v178 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = partial apply for closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v149 = swift_allocObject();
  v148 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  *(v149 + 16) = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  *(v149 + 24) = v15;
  v183 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v184 = v149;
  aBlock = _NSConcreteStackBlock;
  v180 = 1107296256;
  v181 = thunk for @escaping @callee_guaranteed () -> ();
  v182 = &block_descriptor_75;
  v150 = _Block_copy(&aBlock);
  v177 = v184;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v87);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v161);
  v151 = v160;

  [v178 performWithoutAnimation:v150];
  _Block_release(v150);

  swift_unknownObjectWeakDestroy();
  v152 = swift_isEscapingClosureAtFileLocation();

  if (v152)
  {
    __break(1u);
LABEL_38:
    specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v168, v185, v161, v164, v162, v165);
    swift_unknownObjectWeakDestroy();
    outlined destroy of AIDiffingUpdate(v15);
    goto LABEL_39;
  }

LABEL_40:

  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v148);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void *, id *), int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a13)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a13;
  v16 = type metadata accessor for AIDiffingUpdate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMd);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2400;
  outlined init with copy of AIDiffingUpdate(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return outlined destroy of AIDiffingUpdate(v19);
}

void specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a6;
  v9 = type metadata accessor for AIDiffingUpdate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.aiDiff);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      outlined init with copy of AIDiffingUpdate(v18, v12);
      v20 = *(v12 + 1);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v20);
      v21 = outlined destroy of AIDiffingUpdate(v12);
      if (v20)
      {
        v20(v21);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a5)
  {
    a5(1);
  }
}

uint64_t closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for IndexSet();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation9IndexPathV_SayAFGTt0g5Tf4g_n(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)partial apply;
  *(v27 + 24) = v26;
  v39 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed () -> ();
  v38 = &block_descriptor_52_0;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a9);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v39 = closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)partial apply;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v38 = &block_descriptor_59;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a12);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void (*a10)(void))
{
  v128 = a8;
  v116 = a7;
  v127 = a6;
  v126 = a5;
  v124 = a4;
  v114 = a3;
  v123 = a2;
  v11 = type metadata accessor for IndexPath();
  v121 = *(v11 - 8);
  __chkstk_darwin(v11);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v105 - v14;
  __chkstk_darwin(v16);
  v125 = (&v105 - v17);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd);
  v122 = *(v120 - 8);
  __chkstk_darwin(v120);
  v19 = &v105 - v18;
  v113 = type metadata accessor for IndexSet();
  v20 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AIDiffingUpdate() - 8;
  __chkstk_darwin(v22);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);
    do
    {
      outlined init with copy of AIDiffingUpdate(v27, v25);
      v29 = *(v25 + 1);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v29);
      v30 = outlined destroy of AIDiffingUpdate(v25);
      if (v29)
      {
        v29(v30);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v29);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = v114;
  swift_beginAccess();
  v111 = *(v20 + 16);
  v32 = v112;
  v33 = v113;
  v111(v112, v31, v113);
  IndexSet._bridgeToObjectiveC()(v34);
  v36 = v35;
  v37 = *(v20 + 8);
  v37(v32, v33);
  v38 = v123;
  [v123 deleteSections:v36];

  v39 = v124;
  swift_beginAccess();
  v108 = v20 + 16;
  v111(v32, v39, v33);
  IndexSet._bridgeToObjectiveC()(v40);
  v42 = v41;
  v109 = v20 + 8;
  v107 = v37;
  v37(v32, v33);
  [v38 insertSections:v42];

  v43 = v126;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v44 + 16);
  if (v45)
  {

    v46 = (v44 + 40);
    do
    {
      [v38 moveSection:*(v46 - 1) toSection:*v46];
      v46 += 2;
      --v45;
    }

    while (v45);
  }

  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v38 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v48 = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v38 deleteItemsAtIndexPaths:v48];

  v49 = v128;
  swift_beginAccess();
  v50 = *v49;
  v51 = *(*v49 + 16);
  if (v51)
  {
    v52 = *(v120 + 48);
    v53 = v50 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v128 = *(v122 + 72);
    v54 = (v121 + 8);
    v127 = v50;

    do
    {
      outlined init with copy of (IndexPath, IndexPath)(v53, v19);
      v55 = IndexPath._bridgeToObjectiveC()().super.isa;
      v56 = *v54;
      (*v54)(v19, v11);
      v57 = IndexPath._bridgeToObjectiveC()().super.isa;
      v56(&v19[v52], v11);
      [v123 moveItemAtIndexPath:v55 toIndexPath:v57];

      v53 += v128;
      --v51;
    }

    while (v51);

    v38 = v123;
  }

  v58 = [v38 _indexPathsForPreparedItems];
  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = *(v59 + 16);
  if (v119)
  {
    v60 = v121;
    v120 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v117 = v59 + v120;
    swift_beginAccess();
    swift_beginAccess();
    v61 = 0;
    v127 = a9;
    v128 = (v60 + 16);
    v126 = (a9 + 56);
    v38 = v60 + 8;
    v115 = _swiftEmptyArrayStorage;
    v106 = (v60 + 32);
    v62 = v125;
    v118 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v64 = *(v121 + 72);
      v124 = v61;
      v65 = *(v121 + 16);
      v65(v62, v117 + v64 * v61, v11);
      if (*(v127 + 16))
      {
        v66 = v127;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        v67 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v68 = -1 << *(v66 + 32);
        v69 = v67 & ~v68;
        if ((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
        {
          v70 = ~v68;
          while (1)
          {
            v65(v15, *(v127 + 48) + v69 * v64, v11);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v71 = dispatch thunk of static Equatable.== infix(_:_:)();
            v72 = *v38;
            (*v38)(v15, v11);
            if (v71)
            {
              break;
            }

            v69 = (v69 + 1) & v70;
            if (((*(v126 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v72(v62, v11);
          goto LABEL_17;
        }
      }

LABEL_25:
      v73 = *v116;
      v74 = v116[1];
      v75 = v74 + v120;
      v76 = *(v74 + 16);
      v122 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v73)
      {

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v62, v75, v76, (v73 + 16), v73 + 32);
        v78 = v77;

        if ((v78 & 1) == 0)
        {
          v79 = *v38;
LABEL_40:
          v90 = v125;
          v79(v125, v11);
          v62 = v90;
          goto LABEL_17;
        }
      }

      else
      {

        if (v76)
        {
          while (1)
          {
            v65(v15, v75, v11);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v80 = dispatch thunk of static Equatable.== infix(_:_:)();
            v79 = *v38;
            (*v38)(v15, v11);
            if (v80)
            {
              break;
            }

            v75 += v64;
            --v76;
            v62 = v125;
            if (!v76)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v81 = v112;
      v82 = v113;
      v111(v112, v114, v113);
      v83 = IndexPath.section.getter();
      v84 = IndexSet.contains(_:)(v83);
      v107(v81, v82);
      if (!v84)
      {
        v65(v110, v62, v11);
        v85 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1, v85);
        }

        v115 = v85;
        v88 = *(v85 + 16);
        v87 = *(v85 + 24);
        if (v88 >= v87 >> 1)
        {
          v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v115);
        }

        v89 = v115;
        v115[2] = (v88 + 1);
        (*v106)(v89 + v120 + v88 * v64, v110, v11);
        (*v38)(v62, v11);
        v59 = v118;
        goto LABEL_18;
      }

      (*v38)(v62, v11);
LABEL_17:
      v59 = v118;
      v63 = v124;
LABEL_18:
      v61 = v63 + 1;
      if (v61 == v119)
      {

        v38 = v123;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v62 = a10;
  if (one-time initialization token for aiDiff != -1)
  {
LABEL_52:
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.aiDiff);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v129 = v95;
    *v94 = 136315138;

    v96 = Array.description.getter();
    v98 = v97;

    v99 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v96, v98, &v129);
    v38 = v123;

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Cleaning up prefetched cells by reloading index paths: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
  }

  v100 = Array._bridgeToObjectiveC()().super.isa;

  [v38 reloadItemsAtIndexPaths:v100];

  if (v62)
  {

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Performing alongside updates", v103, 2u);
    }

    v62();
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v62);
  }
}

id closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.aiDiff);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = specialized _arrayDescription<A>(for:)(v11);
    v18 = v10;
    v14 = v13;

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  swift_beginAccess();
  type metadata accessor for IndexPath();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t one-time initialization function for aiDiff()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.aiDiff);
  __swift_project_value_buffer(v0, static Logger.aiDiff);
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for AIDiffingUpdate()
{
  result = type metadata singleton initialization cache for AIDiffingUpdate;
  if (!type metadata singleton initialization cache for AIDiffingUpdate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AIDiffingUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AIDiffingUpdate(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU__1(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10040C310()
{

  return swift_deallocObject();
}

uint64_t sub_10040C348()
{

  return swift_deallocObject();
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_3(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_3(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_3(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_3(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_3(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_3(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_3);
  return v3;
}

id *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_3(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_3(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_3);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_3);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      specialized _NativeDictionary.copy()();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v24 = (v22[6] + 24 * v12);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v25 = v22[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v26;

  return a4;
}

void specialized MutableCollection<>.sort(by:)(size_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = *(v3 + 16);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      v6[2] = 0;

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
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
    }

    v142 = NewAByxGyFSnySiG_Tgq5_1;
    v115 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v115];
        v117 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v115 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v116, *a3 + v9[9] * *&NewAByxGyFSnySiG_Tgq5_1[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v115 - 2 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_120;
        }

        v118 = &NewAByxGyFSnySiG_Tgq5_1[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = NewAByxGyFSnySiG_Tgq5_1;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v115 - 1);
        NewAByxGyFSnySiG_Tgq5_1 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = NewAByxGyFSnySiG_Tgq5_1;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      NewAByxGyFSnySiG_Tgq5_1 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              NewAByxGyFSnySiG_Tgq5_1 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    v54 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v53 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v53 > 1), v54 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v55;
    v56 = &NewAByxGyFSnySiG_Tgq5_1[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v59 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &NewAByxGyFSnySiG_Tgq5_1[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &NewAByxGyFSnySiG_Tgq5_1[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &NewAByxGyFSnySiG_Tgq5_1[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &NewAByxGyFSnySiG_Tgq5_1[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v95 + 32];
        v97 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v96, *a3 + v9[9] * *&NewAByxGyFSnySiG_Tgq5_1[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v95 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_107;
        }

        v98 = &NewAByxGyFSnySiG_Tgq5_1[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = NewAByxGyFSnySiG_Tgq5_1;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v57);
        NewAByxGyFSnySiG_Tgq5_1 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &NewAByxGyFSnySiG_Tgq5_1[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &NewAByxGyFSnySiG_Tgq5_1[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &NewAByxGyFSnySiG_Tgq5_1[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      NewAByxGyFSnySiG_Tgq5_1 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t specialized OrderedSet._append(_:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    v20[1] = v1;
    v15 = 0;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v16 = v18;
    v21 = *(v17 + 56);
    v22 = v11;
    do
    {
      v16(v7, v10, v3, v5);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v7, v3);
      if (v19)
      {
        return 0;
      }

      ++v15;
      v10 += v21;
    }

    while (v22 != v15);
  }

  specialized OrderedSet._appendNew(_:in:)(a1);
  return 1;
}

{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, *v1 + 16, *v1 + 32);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_8:
      specialized OrderedSet._appendNew(_:in:)();
      return 1;
    }

    v6 = 0;
    while (*(v3 + 8 * v6) != a1)
    {
      if (v4 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  v1[1] = v9;
  if (*v1)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v1;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = _HashTable.copy()();

        *v1 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation9IndexPathVG_Tt2g5(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
}

{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation9IndexPathVG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v9 + 16), v9 + 32);
    return v9;
  }

  return result;
}

void specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          _HashTable.BucketIterator.advance()();
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a2;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
  v28[1] = a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = _HashTable.BucketIterator.currentValue.getter();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      specialized _NativeDictionary._delete(at:)(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      outlined destroy of NSUserDefaults._Observer.SuiteAssociation(*(v13 + 48) + 24 * v12);
      specialized _NativeDictionary._delete(at:)(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void specialized OrderedSet.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v26 = *(a1 + 16);
  if (v26)
  {
    v10 = 0;
    v13 = *(v6 + 16);
    v11 = v6 + 16;
    v12 = v13;
    v28 = *(v11 + 56);
    v14 = (v11 - 8);
    v25 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v24 = a1 + v25;
    (v13)(v9, a1 + v25, v2, v7);
    while (1)
    {
      v17 = *v27;
      v16 = v27[1];
      v18 = v16 + v25;
      v19 = *(v16 + 16);
      if (*v27)
      {

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;

        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          specialized OrderedSet._appendNew(_:in:)(v9);
          goto LABEL_4;
        }

        while (1)
        {
          v12(v4, v18, v2);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v14)(v4, v2);
          if (v22)
          {
            break;
          }

          v18 += v28;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_4:
      ++v10;
      (*v14)(v9, v2);
      if (v10 == v26)
      {
        return;
      }

      (v12)(v9, v24 + v28 * v10, v2, v15);
    }
  }
}

uint64_t sub_1004112FC()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004113D4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation9IndexPathV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1004115FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1004116D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for AIDiffingUpdate()
{
  type metadata accessor for (())?(319, &_syycSgML_1, &_syycMd_1, &_syycMR_1, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IndexSet();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for [(Int, Int)], &_sSi_SitMd, &_sSi_SitMR, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OrderedSet<IndexPath>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (())?(319, &lazy cache variable for type metadata for [(IndexPath, IndexPath)], &_s10Foundation9IndexPathV_ACtMd, &_s10Foundation9IndexPathV_ACtMR, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for OrderedSet<IndexPath>()
{
  if (!lazy cache variable for type metadata for OrderedSet<IndexPath>)
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
    v0 = type metadata accessor for OrderedSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrderedSet<IndexPath>);
    }
  }
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata completion function for _DiffableSection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _DiffableSection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for _DiffableSection(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t specialized _arrayDescription<A>(for:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 91;
  v24 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v21, v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_2);
    v10 = swift_allocObject();
    v22 = xmmword_1004F2400;
    *(v10 + 16) = xmmword_1004F2400;
    *(v10 + 56) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
    (v9)(boxed_opaque_existential_1, v6, v2);
    debugPrint<A>(_:separator:terminator:to:)();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v21;
      do
      {
        (v9)(v6, v14, v2);
        v15._countAndFlagsBits = 8236;
        v15._object = 0xE200000000000000;
        String.append(_:)(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_2);
        v16 = swift_allocObject();
        *(v16 + 16) = v22;
        *(v16 + 56) = v2;
        v17 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
        (v9)(v17, v6, v2);
        debugPrint<A>(_:separator:terminator:to:)();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v18._countAndFlagsBits = 93;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v23;
}

uint64_t outlined init with copy of (IndexPath, IndexPath)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_19Tm()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100412248()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t outlined destroy of IndexingIterator<CollectionDifference<String>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVySSGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of (IndexPath, IndexPath)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.DiffableSection.Items.Sequence.Element, @in_guaranteed A.DiffableSection.Items.Sequence.Element) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ApproximatelyEquatable.==~ infix(_:_:) in conformance Double()
{
  lazy protocol witness table accessor for type Double and conformance Double();

  return static ApproximatelyEquatable<>.==~ infix(_:_:)();
}