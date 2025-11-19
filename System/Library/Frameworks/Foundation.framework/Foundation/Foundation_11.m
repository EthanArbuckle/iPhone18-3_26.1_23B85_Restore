_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

id specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{

  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR, partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:), closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:));
}

{

  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo16NSURLResourceKeyaypGMd, &_ss18_DictionaryStorageCySo16NSURLResourceKeyaypGMR, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

{

  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

uint64_t URLResourceValues.isDirectory.getter(void **a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v4 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v5 = [v7 BOOLValue];

  return v5;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(void *a1, uint64_t *a2)
{
  v70 = *MEMORY[0x1E69E9840];

  type metadata accessor for NSURLResourceKey(0);
  if (v4 == MEMORY[0x1E69E6158])
  {
    swift_unknownObjectRetain();
    result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (result)
    {
      goto LABEL_46;
    }

    result = [a1 count];
    if (!result)
    {
LABEL_62:
      v7 = MEMORY[0x1E69E7CC8];
LABEL_63:
      *a2 = v7;
      return result;
    }

    v40 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v41 = *(v7 + 48);
    v42 = *(v7 + 56);

    v43 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v41, v42, a1, v40);
    if (v43 < 0 || v40 < v43)
    {
LABEL_66:
      __break(1u);
    }

    *(v7 + 16) = v43;
    if (!v43)
    {
      goto LABEL_61;
    }

    v44 = v43 - 1;
    v45 = v7 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v45 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44))
        {
          goto LABEL_53;
        }

        v50 = (*(v7 + 48) + 16 * v44);
        v51 = *v50;
        v52 = v50[1];

        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          break;
        }

        v56 = *(v7 + 48) + 16 * v44;

        outlined destroy of String(v56);
        __swift_destroy_boxed_opaque_existential_1(*(v7 + 56) + 32 * v44);
        v57 = *(v7 + 16);
        v58 = __OFSUB__(v57, 1);
        v59 = v57 - 1;
        if (v58)
        {
          goto LABEL_64;
        }

        *(v7 + 16) = v59;

LABEL_53:
        if (--v44 < 0)
        {
          goto LABEL_61;
        }
      }

      *(v45 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (v44 < v53)
      {
        *(*(v7 + 48) + 16 * v53) = *(*(v7 + 48) + 16 * v44);
        v46 = *(v7 + 56);
        v47 = (v46 + 32 * v44);
        v48 = v47[1];
        v49 = (v46 + 32 * v53);
        *v49 = *v47;
        v49[1] = v48;
        goto LABEL_53;
      }

      if (v53 == v44)
      {
        goto LABEL_53;
      }

      v60 = *(v7 + 48);
      v61 = (v60 + 16 * v53);
      v62 = (v60 + 16 * v44);
      v63 = *v61;
      v64 = v61[1];
      v65 = v62[1];
      *v61 = *v62;
      v61[1] = v65;
      *v62 = v63;
      v62[1] = v64;
      v66 = *(v7 + 56);
      v67 = (v66 + 32 * v53);
      v68 = (v66 + 32 * v44);
      outlined init with take of Any(v67, v69);
      outlined init with take of Any(v68, v67);
      outlined init with take of Any(v69, v68);
      if (v44 < 0)
      {
        goto LABEL_61;
      }
    }
  }

  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  swift_unknownObjectRetain();
  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (result)
  {
LABEL_46:
    v7 = result;
    goto LABEL_63;
  }

  result = [a1 count];
  if (!result)
  {
    goto LABEL_62;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16NSURLResourceKeyaypGMd);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);

  v10 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So16NSURLResourceKeya_ypTt3g5Tf4xxnn_n(v8, v9, a1, v6);
  if (v10 < 0 || v6 < v10)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v7 + 16) = v10;
  if (!v10)
  {
    goto LABEL_61;
  }

  v11 = v10 - 1;
  v12 = v7 + 64;
  while (1)
  {
    if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      goto LABEL_9;
    }

    v17 = *(*(v7 + 48) + 8 * v11);
    isTaggedPointer = _objc_isTaggedPointer(v17);
    v19 = v17;
    v20 = v19;
    if (!isTaggedPointer)
    {
      goto LABEL_16;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v19);
    if (TaggedPointerTag)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v25)
    {
      goto LABEL_26;
    }

    [v20 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
LABEL_31:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v26 = Hasher._finalize()();

    v27 = -1 << *(v7 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) != 0)
    {
      v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_41;
    }

    v31 = 0;
    v32 = (63 - v27) >> 6;
    do
    {
      if (++v29 == v32 && (v31 & 1) != 0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v33 = v29 == v32;
      if (v29 == v32)
      {
        v29 = 0;
      }

      v31 |= v33;
      v34 = *(v12 + 8 * v29);
    }

    while (v34 == -1);
    v30 = __clz(__rbit64(~v34)) + (v29 << 6);
LABEL_41:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    if (v11 < v30)
    {
      *(*(v7 + 48) + 8 * v30) = *(*(v7 + 48) + 8 * v11);
      v13 = *(v7 + 56);
      v14 = (v13 + 32 * v11);
      v15 = v14[1];
      v16 = (v13 + 32 * v30);
      *v16 = *v14;
      v16[1] = v15;
LABEL_9:
      if (--v11 < 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v30 == v11)
      {
        goto LABEL_9;
      }

      v35 = *(v7 + 48);
      v36 = *(v35 + 8 * v30);
      *(v35 + 8 * v30) = *(v35 + 8 * v11);
      *(v35 + 8 * v11) = v36;
      v37 = *(v7 + 56);
      v38 = (v37 + 32 * v30);
      v39 = (v37 + 32 * v11);
      outlined init with take of Any(v38, v69);
      outlined init with take of Any(v39, v38);
      outlined init with take of Any(v69, v39);
      if (v11 < 0)
      {
LABEL_61:

        goto LABEL_63;
      }
    }
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_31;
    }

LABEL_16:
    *&v69[0] = 0;
    if (__CFStringIsCF())
    {
      if (!*&v69[0])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = v20;
      String.init(_nativeStorage:)();
      if (v23 || (*&v69[0] = [v22 length]) == 0)
      {

        goto LABEL_31;
      }
    }

    String.init(_cocoaString:)();
    goto LABEL_31;
  }

  result = [v20 UTF8String];
  if (!result)
  {
    goto LABEL_67;
  }

  result = String.init(utf8String:)(result);
  if (v24)
  {
LABEL_26:

    goto LABEL_31;
  }

  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Date()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E695DF00]);

  return [v2 initWithTimeIntervalSinceReferenceDate_];
}

char *specialized static Platform.name(forUID:)(uid_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = sysconf(71);
  if (isStackAllocationSafe == -1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = isStackAllocationSafe;
  }

  v11 = v3;
  if (v3 < 0)
  {
    __break(1u);
  }

  if (v3 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    memset(&v13, 0, sizeof(v13));
    v12 = 0;
    if (getpwuid_r(a1, &v13, &v10 - v4, v5, &v12))
    {
      v6 = 1;
    }

    else
    {
      v6 = v12 == 0;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      result = v13.pw_name;
      if (v13.pw_name)
      {
        return String.init(cString:)();
      }
    }
  }

  else
  {
    v8 = swift_slowAlloc();
    memset(&v13, 0, sizeof(v13));
    v9 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v8, &v13, specialized thunk for @callee_guaranteed (@unowned UInt32, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, a1, &v11, closure #1 in static Platform.name(forUID:));
    MEMORY[0x1865D2690](v8, -1, -1);
    return v9;
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16NSURLResourceKeya_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copyContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<AnyKeyPath>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized URLResourceValues._get<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
  }

  *(a3 + 8) = result ^ 1;
  return result;
}

uint64_t specialized _FileManagerImpl._extendedAttributes(at:followSymlinks:)(const char *a1)
{
  v4 = listxattr(a1, 0, 0, 0);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = swift_slowAlloc();
  if (listxattr(a1, v6, v5, 0) < 1)
  {
    MEMORY[0x1865D2690](v6, -1, -1);
    return 0;
  }

  path = a1;
  v7 = &v6[v5];
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
  v59 = v6;
  v60 = MEMORY[0x1E69E7CC8];
  v9 = v6;
  while (1)
  {
    v11 = String.init(cString:)();
    v12 = v10;
    if ((v11 != 0xD000000000000016 || 0x8000000181481840 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v11 != 0xD000000000000014 || 0x8000000181481860 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v11 != 0x532E6D6574737973 || v12 != 0xEF79746972756365) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = String.UTF8View._foreignCount()();
    }

    else
    {

      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }
    }

LABEL_17:
    v9 += v13 + 1;
    if (v9 >= v7)
    {
      MEMORY[0x1865D2690](v59, -1, -1);
      return isUniquelyReferenced_nonNull_native;
    }
  }

  v57 = v1;
  v14 = _FileManagerImpl._extendedAttribute(_:at:followSymlinks:)(v9, path, 0);
  if (v2)
  {

    if ((v12 & 0x1000000000000000) == 0)
    {
LABEL_60:

      MEMORY[0x1865D2690](v59, -1, -1);
      return isUniquelyReferenced_nonNull_native;
    }

LABEL_63:
    String.UTF8View._foreignCount()();
    goto LABEL_60;
  }

  if (v15 >> 60 == 15)
  {
    v16 = v60;
LABEL_50:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = String.UTF8View._foreignCount()();
    }

    else
    {

      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }
    }

    v60 = v16;
    v1 = v57;
    goto LABEL_17;
  }

  v55 = v14;
  v56 = v15;
  outlined copy of Data._Representation(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v19 = *(v60 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (*(v60 + 24) < v21)
  {
    v52 = v17;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = v60;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    if ((v52 & 1) != (v23 & 1))
    {
      goto LABEL_65;
    }

    v18 = v22;
    if ((v52 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_29:
    v24 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v18);
    v25 = *v24;
    v26 = v24[1];
    *v24 = v55;
    v24[1] = v56;
    outlined consume of Data._Representation(v25, v26);
    outlined consume of Data?(v55, v56);
    v16 = isUniquelyReferenced_nonNull_native;
    goto LABEL_50;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    isUniquelyReferenced_nonNull_native = v60;
    if (v17)
    {
      goto LABEL_29;
    }

LABEL_48:
    *(isUniquelyReferenced_nonNull_native + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v42 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v18);
    *v42 = v11;
    v42[1] = v12;
    v43 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v18);
    v16 = isUniquelyReferenced_nonNull_native;
    *v43 = v55;
    v43[1] = v56;

    outlined consume of Data?(v55, v56);
    v44 = *(isUniquelyReferenced_nonNull_native + 16);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_62;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v46;
    goto LABEL_50;
  }

  v48 = v18;
  v53 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
  v54 = static _DictionaryStorage.copy(original:)();
  if (!*(v60 + 16))
  {
LABEL_47:

    isUniquelyReferenced_nonNull_native = v54;
    v18 = v48;
    if (v53)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

  v27 = (v54 + 64);
  __src = (v60 + 64);
  v28 = ((1 << *(v54 + 32)) + 63) >> 6;
  if (v54 != v60 || v27 >= &__src[8 * v28])
  {
    memmove(v27, __src, 8 * v28);
  }

  v29 = 0;
  *(v54 + 16) = *(v60 + 16);
  v30 = 1 << *(v60 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = (v30 + 63) >> 6;
  v33 = v31 & *(v60 + 64);
  if (v33)
  {
    do
    {
      v34 = __clz(__rbit64(v33));
      v51 = (v33 - 1) & v33;
LABEL_45:
      v37 = 16 * (v34 | (v29 << 6));
      v38 = (*(v60 + 48) + v37);
      v40 = *v38;
      v39 = v38[1];
      v50 = *(*(v60 + 56) + v37);
      v41 = (*(v54 + 48) + v37);
      *v41 = v40;
      v41[1] = v39;
      *(*(v54 + 56) + v37) = v50;

      outlined copy of Data._Representation(v50, *(&v50 + 1));
      v33 = v51;
    }

    while (v51);
  }

  v35 = v29;
  while (1)
  {
    v29 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v29 >= v32)
    {
      goto LABEL_47;
    }

    v36 = *&__src[8 * v29];
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v51 = (v36 - 1) & v36;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__CFString *specialized NSFileProtectionType.init(intValue:)(int a1)
{
  v1 = a1 - 1;
  if (a1 - 1) <= 6 && ((0x4Fu >> v1))
  {
    return *off_1E69F1250[v1];
  }

  else
  {
    return 0;
  }
}

NSFileAttributeType specialized UInt16._fileType.getter(__int16 a1)
{
  v1 = S_IFMT.getter() & a1;
  if (S_IFCHR.getter() == v1)
  {
    v2 = &NSFileTypeCharacterSpecial;
  }

  else if (S_IFDIR.getter() == v1)
  {
    v2 = &NSFileTypeDirectory;
  }

  else if (S_IFBLK.getter() == v1)
  {
    v2 = &NSFileTypeBlockSpecial;
  }

  else if (S_IFREG.getter() == v1)
  {
    v2 = &NSFileTypeRegular;
  }

  else if (S_IFLNK.getter() == v1)
  {
    v2 = &NSFileTypeSymbolicLink;
  }

  else if (S_IFSOCK.getter() == v1)
  {
    v2 = &NSFileTypeSocket;
  }

  else
  {
    v2 = &NSFileTypeUnknown;
  }

  return *v2;
}

void closure #1 in _FileManagerImpl.attributesOfItem(atPath:)(const char *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __CFString *a5@<X8>)
{
  v5 = a3;
  v6 = a2;
  v254 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    URL.init(_fileManagerFailableFileURLWithPath:)(v6, v5, &v253.st_dev);

    v13 = *&v253.st_dev;
    v14 = String._bridgeToObjectiveCImpl()();
    if (v13)
    {
      ObjectType = swift_getObjectType();
      v16 = (*(*(&v13 + 1) + 432))(ObjectType, *(&v13 + 1));
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
    }

    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    goto LABEL_240;
  }

  memset(&v253, 0, sizeof(v253));
  v247 = a3;
  if (lstat(a1, &v253))
  {
    v10 = MEMORY[0x1865CA7A0]();
    LODWORD(i) = v10;
    if (v10 > 26)
    {
      switch(v10)
      {
        case 27:
          v12 = 263;
          goto LABEL_27;
        case 63:
          v12 = 258;
          goto LABEL_27;
        case 102:
          i = 0;
          v243 = 256;
          goto LABEL_231;
      }
    }

    else
    {
      switch(v10)
      {
        case 1:
          goto LABEL_7;
        case 2:
          v12 = 260;
          goto LABEL_27;
        case 13:
LABEL_7:
          v12 = 257;
LABEL_27:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
LABEL_257:
            *&v251 = 0;
            *(&v251 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            *&v251 = 0xD000000000000014;
            *(&v251 + 1) = 0x80000001814813E0;
            LODWORD(v249) = i;
            v221 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v221);

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          i = @"NSPOSIXErrorDomain";
          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v25 = @"NSPOSIXErrorDomain";
          v26 = v25;
          v243 = v12;
          if (!isTaggedPointer)
          {
LABEL_33:
            LOBYTE(v249) = 0;
            *&v251 = 0;
            LOBYTE(v248) = 0;
            if (__CFStringIsCF())
            {
LABEL_34:

              goto LABEL_56;
            }

            v28 = v26;
            String.init(_nativeStorage:)();
            if (!v29 && (*&v251 = [(__CFString *)v28 length], v251))
            {
              String.init(_cocoaString:)();
            }

            else
            {
            }

LABEL_56:
            v39 = POSIXErrorCode.rawValue.getter();
            v40 = objc_allocWithZone(NSError);
            v41 = String._bridgeToObjectiveCImpl()();

            i = [v40 initWithDomain:v41 code:v39 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v42 = [i domain];
            if (!v42)
            {
LABEL_73:
              v48 = 0;
              v50 = 0xE000000000000000;
              goto LABEL_207;
            }

            v43 = v42;
            v44 = _objc_isTaggedPointer(v42);
            v45 = v43;
            v46 = v45;
            if ((v44 & 1) == 0)
            {
              goto LABEL_62;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v45);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v50 = v49;

LABEL_207:
                  v201 = v26;
                  v171 = v201;
                  if (!isTaggedPointer)
                  {
LABEL_212:
                    LOBYTE(v249) = 0;
                    *&v251 = 0;
                    LOBYTE(v248) = 0;
                    if (__CFStringIsCF())
                    {

LABEL_216:
                      v203 = 0;
                      v205 = 0xE000000000000000;
                      goto LABEL_226;
                    }

                    v206 = v171;
                    v207 = String.init(_nativeStorage:)();
                    if (v208)
                    {
                      v203 = v207;
                      v205 = v208;

                      goto LABEL_226;
                    }

                    *&v251 = [(__CFString *)v206 length];
                    if (!v251)
                    {

                      goto LABEL_216;
                    }

                    v203 = String.init(_cocoaString:)();
                    v205 = v212;
LABEL_226:
                    if (v48 == v203 && v50 == v205)
                    {

LABEL_230:
                      v6 = a2;
                      v5 = v247;
LABEL_231:

                      URL.init(_fileManagerFailableFileURLWithPath:)(v6, v5, &v251);

                      v214 = v251;
                      v215 = String._bridgeToObjectiveCImpl()();
                      if (v214)
                      {
                        v216 = swift_getObjectType();
                        v217 = (*(*(&v214 + 1) + 432))(v216, *(&v214 + 1));
                        swift_unknownObjectRelease();
                        if (i)
                        {
LABEL_233:
                          v249 = i;
                          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                          i = i;
                          v218 = _getErrorEmbeddedNSError<A>(_:)();

                          if (v218)
                          {
                          }

                          else
                          {
                            swift_allocError();
                            *v220 = i;
                          }

                          v219 = _swift_stdlib_bridgeErrorToNSError();
                          goto LABEL_239;
                        }
                      }

                      else
                      {
                        v217 = 0;
                        if (i)
                        {
                          goto LABEL_233;
                        }
                      }

                      v219 = 0;
LABEL_239:
                      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                      swift_unknownObjectRelease();

LABEL_240:
                      swift_willThrow();
                      return;
                    }

                    v213 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v213)
                    {
                      goto LABEL_230;
                    }

                    __break(1u);
LABEL_246:
                    swift_once();
LABEL_202:
                    swift_willThrow();
                    swift_unknownObjectRelease();
                    v182 = 0;
                    goto LABEL_187;
                  }

                  v202 = _objc_getTaggedPointerTag(v201);
                  if (!v202)
                  {
                    goto LABEL_220;
                  }

                  if (v202 != 22)
                  {
                    if (v202 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v202);
                      v203 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v205 = v204;

                      goto LABEL_226;
                    }

                    goto LABEL_212;
                  }

                  v209 = [(__CFString *)v171 UTF8String];
                  if (v209)
                  {
                    v210 = String.init(utf8String:)(v209);
                    if (v211)
                    {
                      goto LABEL_221;
                    }

                    __break(1u);
LABEL_220:
                    LOWORD(v248) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v210 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v211)
                    {
                      [(__CFString *)v171 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v203 = v249;
                      v205 = v250;
                      goto LABEL_226;
                    }

LABEL_221:
                    v203 = v210;
                    v205 = v211;

                    goto LABEL_226;
                  }

                  goto LABEL_249;
                }

LABEL_62:
                LOBYTE(v249) = 0;
                *&v251 = 0;
                LOBYTE(v248) = 0;
                if (__CFStringIsCF())
                {
                  v48 = v251;

                  v50 = 0xE000000000000000;
                  goto LABEL_207;
                }

                v51 = v46;
                v52 = String.init(_nativeStorage:)();
                if (v53)
                {
                  v48 = v52;
                  v50 = v53;

                  goto LABEL_207;
                }

                *&v251 = [v51 length];
                if (!v251)
                {

                  goto LABEL_73;
                }

                v48 = String.init(_cocoaString:)();
                v50 = v200;
LABEL_206:

                goto LABEL_207;
              }

              v54 = [v46 UTF8String];
              if (!v54)
              {
LABEL_256:
                __break(1u);
                goto LABEL_257;
              }

              v55 = String.init(utf8String:)(v54);
              if (v56)
              {
LABEL_70:
                v48 = v55;
                v50 = v56;

                goto LABEL_206;
              }

              __break(1u);
            }

            LOWORD(v248) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v55 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v56)
            {
              [v46 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v48 = v249;
              v50 = v250;
              goto LABEL_206;
            }

            goto LABEL_70;
          }

          v27 = _objc_getTaggedPointerTag(v25);
          if (!v27)
          {
LABEL_42:
            LOWORD(v248) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v34)
            {
              goto LABEL_34;
            }

            [(__CFString *)v26 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_56;
          }

          if (v27 != 22)
          {
            if (v27 == 2)
            {
              MEMORY[0x1EEE9AC00](v27);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_56;
            }

            goto LABEL_33;
          }

          v32 = [(__CFString *)v26 UTF8String];
          if (v32)
          {
            String.init(utf8String:)(v32);
            if (v33)
            {
              goto LABEL_34;
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
      }
    }

    v12 = 256;
    goto LABEL_27;
  }

  v224 = a1;
  st_mode = v253.st_mode;
  st_nlink = v253.st_nlink;
  st_dev = v253.st_dev;
  st_ino = v253.st_ino;
  st_uid = v253.st_uid;
  st_gid = v253.st_gid;
  st_mtimespec = v253.st_mtimespec;
  tv_sec = v253.st_ctimespec.tv_sec;
  tv_nsec = v253.st_ctimespec.tv_nsec;
  st_size = v253.st_size;
  st_rdev = v253.st_rdev;
  st_flags = v253.st_flags;
  v20 = specialized UInt16._fileType.getter(v253.st_mode);
  LODWORD(i) = _objc_isTaggedPointer(v20);
  v21 = v20;
  v22 = v21;
  v225 = a5;
  v223 = a4;
  v235 = st_ino;
  if (i)
  {
    v23 = _objc_getTaggedPointerTag(v21);
    switch(v23)
    {
      case 0:
        LOWORD(v248) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v37)
        {
          [(NSString *)v22 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_76;
        }

LABEL_75:

        goto LABEL_76;
      case 0x16:
        v35 = [(NSString *)v22 UTF8String];
        if (!v35)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        String.init(utf8String:)(v35);
        if (!v36)
        {
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        goto LABEL_75;
      case 2:
        MEMORY[0x1EEE9AC00](v23);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_76;
    }
  }

  LOBYTE(v249) = 0;
  *&v251 = 0;
  LOBYTE(v248) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_75;
  }

  v30 = v22;
  String.init(_nativeStorage:)();
  if (!v31)
  {
    *&v251 = [(NSString *)v30 length];
    v38 = tv_sec;
    if (v251)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

    goto LABEL_77;
  }

LABEL_76:
  v38 = tv_sec;
LABEL_77:
  v238 = String._bridgeToObjectiveCImpl()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd);
  v57 = swift_allocObject();
  *(v57 + 32) = @"NSFileSize";
  v58 = objc_allocWithZone(NSNumber);
  v59 = @"NSFileSize";
  v60 = [v58 initWithLongLong_];
  v61 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  *(v57 + 40) = v60;
  *(v57 + 64) = v61;
  *(v57 + 72) = @"NSFileModificationDate";
  *(v57 + 80) = st_mtimespec.tv_sec + -978307200.0 + st_mtimespec.tv_nsec / 1000000000.0;
  *(v57 + 104) = &type metadata for Date;
  *(v57 + 112) = @"NSFileCreationDate";
  *(v57 + 120) = v38 + -978307200.0 + tv_nsec / 1000000000.0;
  *(v57 + 144) = &type metadata for Date;
  *(v57 + 152) = @"NSFilePosixPermissions";
  v62 = objc_allocWithZone(NSNumber);
  v63 = @"NSFileModificationDate";
  v231 = @"NSFileCreationDate";
  v64 = @"NSFilePosixPermissions";
  *(v57 + 160) = [v62 initWithLongLong_];
  *(v57 + 184) = v61;
  *(v57 + 192) = @"NSFileReferenceCount";
  v65 = objc_allocWithZone(NSNumber);
  v66 = @"NSFileReferenceCount";
  *(v57 + 200) = [v65 initWithLongLong_];
  *(v57 + 224) = v61;
  *(v57 + 232) = @"NSFileSystemNumber";
  v67 = objc_allocWithZone(NSNumber);
  v68 = @"NSFileSystemNumber";
  *(v57 + 240) = [v67 initWithLongLong_];
  *(v57 + 264) = v61;
  *(v57 + 272) = @"NSFileSystemFileNumber";
  v69 = objc_allocWithZone(NSNumber);
  v70 = @"NSFileSystemFileNumber";
  v71 = &selRef_initWithUnsignedLongLong_;
  if (v235 >= 0)
  {
    v71 = &selRef_initWithLongLong_;
  }

  v72 = [v69 *v71];
  *(&v252 + 1) = v61;
  *&v251 = v72;
  outlined init with take of Any(&v251, (v57 + 280));
  *(v57 + 312) = @"NSFileType";
  v73 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  *(v57 + 320) = v238;
  v229 = v73;
  *(v57 + 344) = v73;
  *(v57 + 352) = @"NSFileOwnerAccountID";
  v74 = objc_allocWithZone(NSNumber);
  v75 = @"NSFileType";
  swift_unknownObjectRetain();
  v76 = @"NSFileOwnerAccountID";
  *(v57 + 360) = [v74 initWithLongLong_];
  *(v57 + 384) = v61;
  *(v57 + 392) = @"NSFileGroupOwnerAccountID";
  v77 = objc_allocWithZone(NSNumber);
  v78 = @"NSFileGroupOwnerAccountID";
  v79 = [v77 initWithLongLong_];
  v236 = v61;
  *(v57 + 424) = v61;
  *(v57 + 400) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd);
  v80 = static _DictionaryStorage.allocate(capacity:)();

  for (i = 32; i != 432; i += 40)
  {
    outlined init with copy of FloatingPointRoundingRule?(v57 + i, &v251, &_sSo18NSFileAttributeKeya_yptMd);
    v81 = v251;
    v82 = specialized __RawDictionaryStorage.find<A>(_:)(v251);
    if (v83)
    {
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      swift_once();
      goto LABEL_157;
    }

    *(v80 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v82;
    *(v80[6] + 8 * v82) = v81;
    outlined init with take of Any((&v251 + 8), (v80[7] + 32 * v82));
    v84 = v80[2];
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (v85)
    {
      goto LABEL_242;
    }

    v80[2] = v86;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v248 = v80;
  v87 = specialized static Platform.name(forUID:)(st_uid);
  if (v88)
  {
    *(&v252 + 1) = MEMORY[0x1E69E6158];
    *&v251 = v87;
    *(&v251 + 1) = v88;
    specialized Dictionary.subscript.setter(&v251, @"NSFileOwnerAccountName");
  }

  v89 = specialized static Platform.name(forGID:)(st_gid);
  if (v90)
  {
    *(&v252 + 1) = MEMORY[0x1E69E6158];
    *&v251 = v89;
    *(&v251 + 1) = v90;
    specialized Dictionary.subscript.setter(&v251, @"NSFileGroupOwnerAccountName");
  }

  v91 = _objc_isTaggedPointer(v238);
  v92 = v238;
  v93 = v92;
  if (!v91)
  {
    goto LABEL_92;
  }

  v94 = _objc_getTaggedPointerTag(v92);
  switch(v94)
  {
    case 0:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v99)
      {
        goto LABEL_96;
      }

      [v93 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_108;
    case 0x16:
      v97 = [v93 UTF8String];
      if (v97)
      {
        String.init(utf8String:)(v97);
        if (v98)
        {
          goto LABEL_96;
        }

        goto LABEL_255;
      }

      goto LABEL_252;
    case 2:
      MEMORY[0x1EEE9AC00](v94);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      swift_unknownObjectRelease();
      goto LABEL_108;
  }

LABEL_92:
  LOBYTE(v249) = 0;
  *&v251 = 0;
  if (__CFStringIsCF())
  {
    if (v251)
    {
      goto LABEL_107;
    }

LABEL_96:
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = v93;
    String.init(_nativeStorage:)();
    if (v96)
    {
      goto LABEL_96;
    }

    *&v251 = [v95 length];
    if (!v251)
    {
      goto LABEL_96;
    }

LABEL_107:
    String.init(_cocoaString:)();
  }

LABEL_108:
  v100 = String._bridgeToObjectiveCImpl()();

  LODWORD(i) = _objc_isTaggedPointer(@"NSFileTypeBlockSpecial");
  swift_unknownObjectRetain();
  v101 = @"NSFileTypeBlockSpecial";
  v102 = v101;
  if ((i & 1) == 0)
  {
    goto LABEL_113;
  }

  v103 = _objc_getTaggedPointerTag(v101);
  switch(v103)
  {
    case 0:
      goto LABEL_122;
    case 0x16:
      v110 = [(__CFString *)v102 UTF8String];
      if (!v110)
      {
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }

      v111 = String.init(utf8String:)(v110);
      if (v112)
      {
LABEL_123:
        v104 = v111;
        v106 = v112;

        goto LABEL_128;
      }

      __break(1u);
LABEL_122:
      _CFIndirectTaggedPointerStringGetContents();
      v111 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v112)
      {
        [(__CFString *)v102 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v104 = v249;
        v106 = v250;
        goto LABEL_128;
      }

      goto LABEL_123;
    case 2:
      MEMORY[0x1EEE9AC00](v103);
      v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v106 = v105;

      goto LABEL_128;
  }

LABEL_113:
  LOBYTE(v249) = 0;
  *&v251 = 0;
  if (__CFStringIsCF())
  {
    v104 = v251;
    if (v251)
    {
LABEL_127:
      v104 = String.init(_cocoaString:)();
      v106 = v113;
    }

    else
    {

      v106 = 0xE000000000000000;
    }
  }

  else
  {
    v107 = v102;
    v108 = String.init(_nativeStorage:)();
    if (v109)
    {
      v104 = v108;
      v106 = v109;
    }

    else
    {
      *&v251 = [(__CFString *)v107 length];
      if (v251)
      {
        goto LABEL_127;
      }

      v104 = 0;
      v106 = 0xE000000000000000;
    }
  }

LABEL_128:
  LODWORD(i) = _objc_isTaggedPointer(v100);
  v114 = v100;
  v115 = v114;
  if (!i)
  {
    goto LABEL_133;
  }

  v116 = _objc_getTaggedPointerTag(v114);
  if (!v116)
  {
LABEL_142:
    _CFIndirectTaggedPointerStringGetContents();
    v121 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v122)
    {
      [v115 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v117 = v249;
      v119 = v250;
      goto LABEL_149;
    }

    goto LABEL_137;
  }

  if (v116 == 22)
  {
    v123 = [v115 UTF8String];
    if (!v123)
    {
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

    v121 = String.init(utf8String:)(v123);
    if (v122)
    {
      goto LABEL_137;
    }

    __break(1u);
    goto LABEL_142;
  }

  if (v116 != 2)
  {
LABEL_133:
    LOBYTE(v249) = 0;
    *&v251 = 0;
    if (__CFStringIsCF())
    {
      v117 = v251;
      if (!v251)
      {
        swift_unknownObjectRelease();
        v119 = 0xE000000000000000;
        goto LABEL_149;
      }

LABEL_148:
      v117 = String.init(_cocoaString:)();
      v119 = v124;
      goto LABEL_149;
    }

    v120 = v115;
    v121 = String.init(_nativeStorage:)();
    if (!v122)
    {
      *&v251 = [v120 length];
      if (!v251)
      {
        swift_unknownObjectRelease();
        v117 = 0;
        v119 = 0xE000000000000000;
        goto LABEL_149;
      }

      goto LABEL_148;
    }

LABEL_137:
    v117 = v121;
    v119 = v122;
    swift_unknownObjectRelease();
    goto LABEL_149;
  }

  MEMORY[0x1EEE9AC00](v116);
  v117 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v119 = v118;
  swift_unknownObjectRelease();
LABEL_149:
  if (v104 == v117 && v106 == v119)
  {
    swift_unknownObjectRelease_n();

    goto LABEL_154;
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v125)
  {
    swift_unknownObjectRelease();
LABEL_154:
    v126 = v236;
    goto LABEL_155;
  }

  v195 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileTypeCharacterSpecial");
  v197 = v196;
  v126 = v236;
  if (v195 == static String._unconditionallyBridgeFromObjectiveC(_:)(v100) && v197 == v198)
  {
    swift_unknownObjectRelease();

    goto LABEL_155;
  }

  v199 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v199)
  {
LABEL_155:
    v127 = objc_allocWithZone(NSNumber);
    v128 = @"NSFileDeviceIdentifier";
    v129 = [v127 initWithLongLong_];
    *(&v252 + 1) = v126;
    *&v251 = v129;
    specialized Dictionary.subscript.setter(&v251, v128);
  }

  v130 = objc_allocWithZone(NSNumber);
  v131 = @"NSFileImmutable";
  v132 = [v130 initWithBool_];
  *(&v252 + 1) = v126;
  *&v251 = v132;
  specialized Dictionary.subscript.setter(&v251, v131);
  v133 = objc_allocWithZone(NSNumber);
  v134 = @"NSFileAppendOnly";
  v135 = [v133 initWithBool_];
  *(&v252 + 1) = v126;
  *&v251 = v135;
  specialized Dictionary.subscript.setter(&v251, v134);
  swift_unknownObjectRelease();
  v249 = v248;
  v81 = a2;
  if (one-time initialization token for compatibility2 != -1)
  {
    goto LABEL_244;
  }

LABEL_157:
  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v136 = type metadata accessor for _BridgedURL();
    v137 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v136 = type metadata accessor for _SwiftURL();
    v137 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v248) = 0;
  v251 = 0uLL;
  v138 = v137[9];

  v138(v81, v247, &v248, &v251);
  (v137[56])(v136, v137);
  v239 = v139;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
  v140 = swift_allocObject();
  v141 = *MEMORY[0x1E695DB60];
  *(v140 + 32) = *MEMORY[0x1E695DB60];
  v244 = v140 + 32;
  v142 = *MEMORY[0x1E695DAA8];
  *(v140 + 40) = *MEMORY[0x1E695DAA8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
  v143 = static _SetStorage.allocate(capacity:)();
  v144 = v143 + 56;
  v145 = v141;
  v233 = v142;
  v146 = 0;
  v147 = 0;
  do
  {
    v148 = v146;
    v149 = *(v244 + 8 * v147);
    static String._unconditionallyBridgeFromObjectiveC(_:)(v149);
    v81 = v150;
    Hasher.init(_seed:)();
    v247 = v149;
    String.hash(into:)();
    v151 = Hasher._finalize()();

    v152 = -1 << *(v143 + 32);
    v153 = v151 & ~v152;
    v154 = v153 >> 6;
    v155 = *(v144 + 8 * (v153 >> 6));
    v156 = 1 << v153;
    if (((1 << v153) & v155) == 0)
    {
      goto LABEL_174;
    }

    v246 = v148;
    v157 = ~v152;
    do
    {
      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v143 + 48) + 8 * v153));
      v160 = v159;
      if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)(v149) && v160 == v161)
      {

LABEL_163:
        v148 = v246;
        goto LABEL_164;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v81)
      {

        goto LABEL_163;
      }

      v153 = (v153 + 1) & v157;
      v154 = v153 >> 6;
      v155 = *(v144 + 8 * (v153 >> 6));
      v156 = 1 << v153;
    }

    while (((1 << v153) & v155) != 0);
    v148 = v246;
LABEL_174:
    *(v144 + 8 * v154) = v156 | v155;
    *(*(v143 + 48) + 8 * v153) = v247;
    v163 = *(v143 + 16);
    v85 = __OFADD__(v163, 1);
    v164 = v163 + 1;
    if (v85)
    {
      goto LABEL_243;
    }

    *(v143 + 16) = v164;
LABEL_164:
    v146 = 1;
    v147 = 1;
  }

  while ((v148 & 1) == 0);
  swift_setDeallocating();
  type metadata accessor for NSURLResourceKey(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v165 = swift_getObjectType();
  v166 = (*(v239 + 432))(v165);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v167);
  v168 = _ContiguousArrayBuffer._asCocoaArray()();
  *&v251 = 0;
  v169 = [v166 resourceValuesForKeys:v168 error:&v251];

  swift_unknownObjectRelease();
  v170 = v251;
  if (!v169)
  {
    v181 = v251;

    v171 = v225;
    if (v181)
    {
      swift_willThrow();

      swift_unknownObjectRelease();
      v182 = 0;
      i = v224;
      goto LABEL_187;
    }

    i = v224;
    if (one-time initialization token for _nilObjCError == -1)
    {
      goto LABEL_202;
    }

    goto LABEL_246;
  }

  *&v251 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v169, &v251);
  i = v251;
  v171 = v225;
  if (!v251)
  {
    __break(1u);
    goto LABEL_248;
  }

  v172 = v170;

  *&v251 = i;
  *(&v251 + 1) = v143;
  v173 = URLResourceValues.hasHiddenExtension.getter();
  if (v173 != 2)
  {
    v174 = v173;
    v175 = objc_allocWithZone(NSNumber);
    v176 = @"NSFileExtensionHidden";
    v177 = [v175 initWithBool_];
    *(&v252 + 1) = v236;
    *&v251 = v177;
    specialized Dictionary.subscript.setter(&v251, v176);
  }

  v178 = v231;
  specialized URLResourceValues._get<A>(_:)(v233, i, &v251);

  if (BYTE8(v251))
  {
    v179 = 0;
    *(&v251 + 1) = 0;
    *&v252 = 0;
    v180 = 0;
  }

  else
  {
    v180 = v251;
    v179 = &type metadata for Date;
  }

  i = v224;
  *&v251 = v180;
  *(&v252 + 1) = v179;
  specialized Dictionary.subscript.setter(&v251, v178);
  swift_unknownObjectRelease();
  v182 = v241;
LABEL_187:
  v183 = specialized _FileManagerImpl._extendedAttributes(at:followSymlinks:)(i);
  if (v182)
  {
  }

  else if (v183)
  {
    v184 = v183;
    v185 = String._bridgeToObjectiveCImpl()();
    *(&v252 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd);
    *&v251 = v184;
    specialized Dictionary.subscript.setter(&v251, v185);
  }

  v186 = v253.st_mode;
  v187 = S_IFMT.getter() & v186;
  if (v187 == S_IFREG.getter() || (v188 = v253.st_mode, v189 = S_IFMT.getter() & v188, v189 == S_IFDIR.getter()))
  {
    v190 = specialized static _FileManagerImpl._fileProtectionValueForPath(_:)(i);
    if ((v190 & 0x100000000) != 0 || (v191 = specialized NSFileProtectionType.init(intValue:)(v190)) == 0)
    {
      v251 = 0u;
      v252 = 0u;
      specialized Dictionary.subscript.setter(&v251, @"NSFileProtectionKey");
    }

    else
    {
      v192 = v191;
      static String._unconditionallyBridgeFromObjectiveC(_:)(v191);
      v193 = String._bridgeToObjectiveCImpl()();
      v194 = @"NSFileProtectionKey";

      *(&v252 + 1) = v229;
      *&v251 = v193;
      specialized Dictionary.subscript.setter(&v251, v194);
    }
  }

  v171->isa = v249;
}

uint64_t closure #1 in static Platform.name(forUID:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

char *specialized static Platform.name(forGID:)(gid_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = sysconf(70);
  if (isStackAllocationSafe == -1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = isStackAllocationSafe;
  }

  v11 = v3;
  if (v3 < 0)
  {
    __break(1u);
  }

  if (v3 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13.gr_mem = 0;
    memset(&v13, 0, 20);
    v12 = 0;
    if (getgrgid_r(a1, &v13, &v10 - v4, v5, &v12))
    {
      v6 = 1;
    }

    else
    {
      v6 = v12 == 0;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      result = v13.gr_name;
      if (v13.gr_name)
      {
        return String.init(cString:)();
      }
    }
  }

  else
  {
    v8 = swift_slowAlloc();
    v9 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v8, 0, 0, 0, 0, specialized thunk for @callee_guaranteed (@unowned UInt32, @unowned UnsafeMutablePointer<group>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<group>?>?) -> (@unowned Int32), 0, a1, &v11, closure #1 in static Platform.name(forUID:));
    MEMORY[0x1865D2690](v8, -1, -1);
    return v9;
  }

  return result;
}

void *specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int (*a6)(int *, __int128 *, uint64_t, void, uint64_t *), uint64_t a7, int a8, void *a9, void *(*a10)(void *__return_ptr, __int128 *))
{
  v21[2] = *MEMORY[0x1E69E9840];
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19 = a4;
  v20 = a5;
  v13 = a8;
  v17 = 0;
  if (!a1)
  {
    __break(1u);
  }

  if (a6(&v13, &v18, a1, *a9, &v17))
  {
    v11 = 1;
  }

  else
  {
    v11 = v17 == 0;
  }

  if (v11)
  {
    return 0;
  }

  v14 = v18;
  v15 = v19;
  v16 = v20;
  result = a10(v21, &v14);
  if (!v10)
  {
    return v21[0];
  }

  return result;
}

uint64_t specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(uint64_t a1, unint64_t a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v6 = v4;
  v20 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    return specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    v12 = [v6 getFileSystemRepresentation:v19 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    a3(v13);
    if (v5)
    {
      return swift_willThrow();
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v15 = swift_slowAlloc();
    v16 = [v6 getFileSystemRepresentation:v15 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    a3(v17);
    if (v5)
    {
      return MEMORY[0x1865D2690](v15, -1, -1);
    }

    else
    {
      MEMORY[0x1865D2690](v15, -1, -1);
      return v18;
    }
  }
}

{
  v6 = v5;
  v7 = v4;
  v22 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    v15 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2);
    if (!v5)
    {
      v6 = v15;
    }
  }

  else if (swift_stdlib_isStackAllocationSafe())
  {
    v13 = [v7 getFileSystemRepresentation:v21 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    a3(v14);
    if (v5)
    {
      swift_willThrow();
    }

    else
    {
      v6 = v20;
    }
  }

  else
  {
    v16 = swift_slowAlloc();
    v17 = [v7 getFileSystemRepresentation:v16 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    a3(v18);
    if (!v5)
    {
      v6 = v20;
    }

    MEMORY[0x1865D2690](v16, -1, -1);
  }

  return v6 & 1;
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = a4;
    v16 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v16;
    a4 = v15;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < -1)
  {
    __break(1u);
    return v22[0];
  }

  a2 = v7 + 1;
  if (v7 >= 1024)
  {
LABEL_17:
    v17 = a2;
    v18 = a4;
    v19 = a3;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v20 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v20, v17, v19, v18, a1, v22);
    result = MEMORY[0x1865D2690](v20, -1, -1);
    if (v4)
    {
      return result;
    }

    return v22[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v9 = v21 - v8;
  if (String._fileSystemRepresentation(into:)(v21 - v8, v10, v11, v12))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  a1(v13);
  if (v4)
  {
    return swift_willThrow();
  }

  else
  {
    return v21[1];
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v16 = a4;
    v17 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v17;
    a4 = v16;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < -1)
  {
    __break(1u);
    goto LABEL_21;
  }

  a2 = v7 + 1;
  if (v7 >= 1024)
  {
LABEL_17:
    v18 = a2;
    v19 = a4;
    v20 = a3;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v21 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v21, v18, v20, v19, a1, &v23);
    MEMORY[0x1865D2690](v21, -1, -1);
    if (v4)
    {
      return v14 & 1;
    }

LABEL_21:
    v14 = v23;
    return v14 & 1;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v9 = &v22[-v8];
  if (String._fileSystemRepresentation(into:)(&v22[-v8], v10, v11, v12))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  a1(v13);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v14 = v22[6];
  }

  return v14 & 1;
}

void _NSKeyValueRemoveObservationInfoForObject(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  if (NSKeyValueObservationInfoPerObject)
  {
    Value = CFDictionaryGetValue(NSKeyValueObservationInfoPerObject, ~a1);
    Mutable = NSKeyValueObservationInfoPerObject;
    if (NSKeyValueObservationInfoPerObject)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Value = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  NSKeyValueObservationInfoPerObject = Mutable;
LABEL_6:
  CFDictionaryRemoveValue(Mutable, ~a1);
  if (NSKeyValueSharedObservationInfoPerObject)
  {
    CFDictionaryRemoveValue(NSKeyValueSharedObservationInfoPerObject, ~a1);
  }

  os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
}

void _POSIXDirectoryContentsSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    st_ino = 0;
    d_type = 0;
    goto LABEL_20;
  }

  v4 = readdir(*(v1 + 16));
  if (!v4)
  {
LABEL_19:
    closedir(v3);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    st_ino = 0;
    d_type = 0;
    *(v1 + 16) = 0;
    goto LABEL_20;
  }

  while (1)
  {
    if (!v4->d_namlen || !v4->d_ino)
    {
      goto LABEL_7;
    }

    v10 = v4;
    v5 = String.init(cString:)();
    v6 = v11;
    if ((v5 != 46 || v11 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v5 != 11822 || v6 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v5 != 24366 || v6 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

LABEL_7:
    v4 = readdir(v3);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (*(v1 + 56) != 1)
  {
    goto LABEL_29;
  }

  if (v10->d_type == 4)
  {
    goto LABEL_28;
  }

  if (v10->d_type)
  {
    goto LABEL_29;
  }

  memset(&v20, 0, sizeof(v20));
  v12 = v1;

  MEMORY[0x1865CB0E0](47, 0xE100000000000000);

  MEMORY[0x1865CB0E0](v5, v6);

  v13 = String.utf8CString.getter();

  v14 = stat((v13 + 32), &v20);

  if (v14)
  {
    v1 = v12;
    goto LABEL_29;
  }

  st_mode = v20.st_mode;
  v16 = S_IFMT.getter() & st_mode;
  v17 = v16 == S_IFDIR.getter();
  v1 = v12;
  if (v17)
  {
LABEL_28:
    v18 = *(v1 + 48);
    *&v20.st_dev = *(v1 + 40);
    v20.st_ino = v18;

    MEMORY[0x1865CB0E0](v5, v6);

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  else
  {
LABEL_29:
    v19 = *(v1 + 48);
    *&v20.st_dev = *(v1 + 40);
    v20.st_ino = v19;

    MEMORY[0x1865CB0E0](v5, v6);
  }

  v7 = *&v20.st_dev;
  st_ino = v20.st_ino;
  d_type = v10->d_type;
LABEL_20:
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = st_ino;
  *(a1 + 32) = d_type;
}

uint64_t _FileManagerImpl.contentsOfDirectory(atPath:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v131 = *MEMORY[0x1E69E9840];
  type metadata accessor for _POSIXDirectoryContentsSequence.Iterator();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 64) = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v9 < -1)
    {
      __break(1u);
      goto LABEL_168;
    }

    v6 = v9 + 1;
    if (v9 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v104 = v6;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v11 = &v112 - v10;
    if (String._fileSystemRepresentation(into:)(&v112 - v10, v12, a1, a2))
    {
      v13 = opendir(v11);
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v105 = v104;
  v106 = swift_slowAlloc();
  specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v106, v105, a1, a2, &v123);
  v107 = v106;
  v108 = -1;
  v109 = -1;
  if (!v2)
  {
    MEMORY[0x1865D2690](v106, -1, -1);
    v13 = v123;
    if (v123)
    {
LABEL_10:
      *(v7 + 24) = a1;
      *(v7 + 32) = a2;
      *(v7 + 16) = v13;
      *(v7 + 56) = 0;

      v123 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v14 = BidirectionalCollection<>.joined(separator:)();
      i = v15;

      *(v7 + 40) = v14;
      *(v7 + 48) = i;
      v17 = *(v7 + 64);
      if (v17)
      {
LABEL_11:
        swift_willThrow();
        v17;

        return i;
      }

LABEL_153:
      _POSIXDirectoryContentsSequence.Iterator.next()(&v125);
      v100 = v125;
      v99 = v126;
      v129 = v127;
      v130 = v128;
      for (i = MEMORY[0x1E69E7CC0]; v126; v130 = v128)
      {
        v119 = v129;
        v120 = v130;
        *&v121 = v100;
        *(&v121 + 1) = v99;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 16) + 1, 1, i);
        }

        v102 = *(i + 16);
        v101 = *(i + 24);
        if (v102 >= v101 >> 1)
        {
          i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, i);
        }

        *(i + 16) = v102 + 1;
        *(i + 16 * v102 + 32) = v121;
        outlined destroy of String(&v121);
        v122 = v119;
        outlined destroy of String(&v122);
        _POSIXDirectoryContentsSequence.Iterator.next()(&v125);
        v100 = v125;
        v99 = v126;
        v129 = v127;
      }

      return i;
    }

LABEL_13:
    *(v7 + 24) = 0;
    *(v7 + 32) = 0xE000000000000000;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0xE000000000000000;
    *(v7 + 56) = 0;
    v18 = MEMORY[0x1865CA7A0](v13);
    LODWORD(v19) = v18;
    if (v18 > 26)
    {
      if (v18 == 27)
      {
        v20 = 263;
        goto LABEL_26;
      }

      if (v18 != 63)
      {
        if (v18 == 102)
        {
          v19 = 0;
          v113 = 256;
          goto LABEL_138;
        }

LABEL_23:
        v20 = 256;
        goto LABEL_26;
      }

      v20 = 258;
    }

    else
    {
      if (v18 == 1)
      {
LABEL_17:
        v20 = 257;
        goto LABEL_26;
      }

      if (v18 != 2)
      {
        if (v18 == 13)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      v20 = 260;
    }

LABEL_26:
    v113 = v20;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
LABEL_172:
      v123 = 0;
      v124 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v123 = 0xD000000000000014;
      v124 = 0x80000001814813E0;
      LODWORD(v115) = v19;
      v110 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v111;
      MEMORY[0x1865CB0E0](v110);

      v107 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_173;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v22 = @"NSPOSIXErrorDomain";
    v23 = v22;
    LODWORD(v112) = isTaggedPointer;
    if (!isTaggedPointer)
    {
      goto LABEL_32;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v22);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v114 = v2;

          goto LABEL_60;
        }

LABEL_32:
        LOBYTE(v115) = 0;
        v123 = 0;
        LOBYTE(v117) = 0;
        v118 = 0;
        IsCF = __CFStringIsCF();
        v114 = v2;
        if (IsCF)
        {
          if (!v123)
          {
LABEL_57:

            goto LABEL_60;
          }

          if (v118 == 1)
          {
            if (v115)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_60:
            v34 = POSIXErrorCode.rawValue.getter();
            v35 = objc_allocWithZone(NSError);
            v36 = String._bridgeToObjectiveCImpl()();

            v19 = [v35 initWithDomain:v36 code:v34 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v37 = [(DIR *)v19 domain];
            if (!v37)
            {
              goto LABEL_74;
            }

            v38 = v37;
            v39 = _objc_isTaggedPointer(v37);
            v40 = v38;
            v41 = v40;
            v3 = v114;
            if ((v39 & 1) == 0)
            {
LABEL_66:
              LOBYTE(v115) = 0;
              v123 = 0;
              LOBYTE(v117) = 0;
              v118 = 0;
              v47 = __CFStringIsCF();
              if (v47)
              {
                if (v123)
                {
                  if (v118 == 1)
                  {
                    if (v115)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v54 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_96;
                  }

                  if (v117)
                  {
                    if (v115 != 1)
                    {
                      v47 = [v41 lengthOfBytesUsingEncoding_];
                    }

                    MEMORY[0x1EEE9AC00](v47);
                    v56 = v3;
                    v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v3 = v58;
                    v114 = v56;
                    v59 = HIBYTE(v58) & 0xF;
                    if ((v58 & 0x2000000000000000) == 0)
                    {
                      v59 = v57 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v59)
                    {
                      v46 = v57;
                      goto LABEL_80;
                    }
                  }

LABEL_95:
                  v54 = String.init(_cocoaString:)();
LABEL_96:
                  v46 = v54;
                  v3 = v55;
                  goto LABEL_97;
                }
              }

              else
              {
                v48 = v41;
                v49 = String.init(_nativeStorage:)();
                if (v50)
                {
                  v46 = v49;
                  v3 = v50;

                  goto LABEL_98;
                }

                v123 = [v48 length];
                if (v123)
                {
                  goto LABEL_95;
                }
              }

LABEL_74:
              v46 = 0;
              v3 = 0xE000000000000000;
              goto LABEL_98;
            }

            v42 = _objc_getTaggedPointerTag(v40);
            if (v42)
            {
              if (v42 != 22)
              {
                if (v42 == 2)
                {
                  MEMORY[0x1EEE9AC00](v42);
                  v43 = v3;
                  v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v3 = v45;
                  v114 = v43;

                  v46 = v44;
LABEL_98:
                  v60 = v23;
                  v61 = v60;
                  if (!v112)
                  {
                    goto LABEL_103;
                  }

                  v62 = _objc_getTaggedPointerTag(v60);
                  if (!v62)
                  {
                    goto LABEL_115;
                  }

                  if (v62 != 22)
                  {
                    if (v62 == 2)
                    {
                      v112 = v3;
                      v63 = v19;
                      v64 = v46;
                      MEMORY[0x1EEE9AC00](v62);
                      v65 = v114;
                      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v68 = v67;
                      v114 = v65;

LABEL_110:
                      v46 = v64;
                      v19 = v63;
                      v3 = v112;
                      goto LABEL_134;
                    }

LABEL_103:
                    LOBYTE(v115) = 0;
                    v123 = 0;
                    LOBYTE(v117) = 0;
                    v118 = 0;
                    v69 = __CFStringIsCF();
                    if (v69)
                    {
                      v66 = v123;
                      if (!v123)
                      {

                        v68 = 0xE000000000000000;
                        goto LABEL_134;
                      }

                      if (v118 == 1)
                      {
                        if (v115)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v76 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_133;
                      }

                      if (v117)
                      {
                        v112 = v46;
                        if (v115 != 1)
                        {
                          v69 = [(__CFString *)v61 lengthOfBytesUsingEncoding:4];
                        }

                        MEMORY[0x1EEE9AC00](v69);
                        v78 = v114;
                        v79 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v68 = v80;
                        v114 = v78;
                        v81 = HIBYTE(v80) & 0xF;
                        if ((v80 & 0x2000000000000000) == 0)
                        {
                          v81 = v79 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v81)
                        {
                          v66 = v79;

                          v46 = v112;
                          goto LABEL_134;
                        }

                        v46 = v112;
                      }
                    }

                    else
                    {
                      v112 = v3;
                      v63 = v19;
                      v64 = v46;
                      v70 = v61;
                      v71 = String.init(_nativeStorage:)();
                      if (v72)
                      {
                        v66 = v71;
                        v68 = v72;

                        goto LABEL_110;
                      }

                      v123 = [(__CFString *)v70 length];
                      if (!v123)
                      {

                        v66 = 0;
                        v68 = 0xE000000000000000;
                        goto LABEL_110;
                      }

                      v46 = v64;
                      v19 = v63;
                      v3 = v112;
                    }

                    v76 = String.init(_cocoaString:)();
LABEL_133:
                    v66 = v76;
                    v68 = v77;
LABEL_134:
                    if (v46 == v66 && v3 == v68)
                    {

                      goto LABEL_138;
                    }

                    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v82)
                    {
LABEL_138:

                      if (_foundation_swift_url_feature_enabled())
                      {

                        v83 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
                        v85 = v84;

                        LOBYTE(v115) = 3;
                        type metadata accessor for _SwiftURL();
                        v123 = 0;
                        v124 = 0;
                        swift_allocObject();
                        _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v83, v85, 0, &v115, &v123);
                        v86 = _SwiftURL.convertingFileReference()();
                        v88 = v87;
                      }

                      else
                      {
                        v89 = (specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) == 47;
                        objc_allocWithZone(type metadata accessor for _BridgedURL());

                        v90 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a1, a2, v89);
                        if (!v90)
                        {

                          i = String._bridgeToObjectiveCImpl()();
                          if (v19)
                          {
                            goto LABEL_146;
                          }

                          goto LABEL_151;
                        }

                        v86 = _BridgedURL.convertingFileReference()();
                        v88 = v91;
                      }

                      i = String._bridgeToObjectiveCImpl()();
                      if (v86)
                      {
                        ObjectType = swift_getObjectType();
                        v90 = (*(v88 + 432))(ObjectType, v88);
                        swift_unknownObjectRelease();
                        if (!v19)
                        {
                          goto LABEL_151;
                        }

LABEL_146:
                        v123 = v19;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v19 = v19;
                        v93 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v93)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v94 = v19;
                        }

                        v95 = _swift_stdlib_bridgeErrorToNSError();
LABEL_152:
                        v96 = objc_opt_self();
                        v97 = [v96 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                        swift_unknownObjectRelease();

                        swift_unknownObjectRelease();
                        v98 = *(v7 + 64);
                        *(v7 + 64) = v97;

                        v17 = *(v7 + 64);
                        if (v17)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_153;
                      }

                      v90 = 0;
                      if (v19)
                      {
                        goto LABEL_146;
                      }

LABEL_151:
                      v95 = 0;
                      goto LABEL_152;
                    }

LABEL_168:
                    __break(1u);
                  }

                  v73 = [(__CFString *)v61 UTF8String];
                  if (v73)
                  {
                    v74 = String.init(utf8String:)(v73);
                    if (v75)
                    {
                      goto LABEL_116;
                    }

                    __break(1u);
LABEL_115:
                    v117 = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v74 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v75)
                    {
                      [(__CFString *)v61 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v66 = v115;
                      v68 = v116;
                      goto LABEL_134;
                    }

LABEL_116:
                    v66 = v74;
                    v68 = v75;

                    goto LABEL_134;
                  }

                  goto LABEL_170;
                }

                goto LABEL_66;
              }

              v51 = [v41 UTF8String];
              if (!v51)
              {
LABEL_171:
                __break(1u);
                goto LABEL_172;
              }

              v52 = String.init(utf8String:)(v51);
              if (v53)
              {
LABEL_79:
                v46 = v52;
                v3 = v53;
LABEL_80:

LABEL_97:
                goto LABEL_98;
              }

              __break(1u);
            }

            v117 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v53)
            {
              [v41 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v46 = v115;
              v3 = v116;
              goto LABEL_97;
            }

            goto LABEL_79;
          }

          if (v117)
          {
            if (v115 != 1)
            {
              IsCF = [(__CFString *)v23 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v33 = HIBYTE(v32) & 0xF;
            if ((v32 & 0x2000000000000000) == 0)
            {
              v33 = v31 & 0xFFFFFFFFFFFFLL;
            }

            v114 = v2;
            if (v33)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          v26 = v23;
          String.init(_nativeStorage:)();
          if (v27 || (v123 = [(__CFString *)v26 length]) == 0)
          {

            goto LABEL_60;
          }
        }

        String.init(_cocoaString:)();
        goto LABEL_60;
      }

      v114 = v2;
      v28 = [(__CFString *)v23 UTF8String];
      if (!v28)
      {
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      String.init(utf8String:)(v28);
      if (v29)
      {
        goto LABEL_57;
      }

      __break(1u);
    }

    v114 = v2;
    v117 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v30)
    {
      [(__CFString *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_60;
    }

    goto LABEL_57;
  }

LABEL_173:
  MEMORY[0x1865D2690](v107, v108, v109);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t _POSIXDirectoryContentsSequence.Iterator.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    closedir(v1);
  }

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in static Set._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  outlined init with copy of Any(v9, v11);
  swift_dynamicCast();
  type metadata accessor for Set._Variant();
  Set._Variant.insert(_:)();
  return (*(v5 + 8))(v8, a4);
}

NSCompoundPredicate *buildORPredicate(void *a1, void *a2)
{
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 compoundPredicateType] == 2)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
      [v5 addObject:a2];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, a2, 0}];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  }

  v5 = v4;
  v6 = [a2 subpredicates];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
  }

LABEL_13:
  v7 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v5];

  return v7;
}

uint64_t NSKeyValuePushPendingNotificationLocal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = [*(a7 + 48) containsObject:*(a3 + 8)];
  if ((result & 1) == 0)
  {
    v14 = *(a7 + 24);
    if (v14 == *a7)
    {
      v15 = 2 * v14;
      if (*(a7 + 8) == 1)
      {
        v16 = 160 * v14;
        v17 = malloc_default_zone();
        v18 = malloc_type_zone_calloc(v17, 1uLL, v16, 0x2C221C3EuLL);
        memmove(v18, *(a7 + 16), 80 * *a7);
        *(a7 + 16) = v18;
        *(a7 + 8) = 0;
      }

      else
      {
        v18 = NSReallocateScannedUncollectable(*(a7 + 16), 160 * v14);
        *(a7 + 16) = v18;
      }

      *a7 = v15;
      v14 = *(a7 + 24);
    }

    else
    {
      v18 = *(a7 + 16);
    }

    *(a7 + 24) = v14 + 1;
    v19 = &v18[80 * v14];
    *v19 = a3;
    v20 = *(a4 + 32);
    v21 = *(a4 + 16);
    *(v19 + 8) = *a4;
    *(v19 + 5) = v20;
    *(v19 + 24) = v21;
    v22 = *(v19 + 2);
    *(v19 + 6) = a5;
    *(v19 + 7) = a6;
    v23 = a5;
    *(v19 + 8) = *(a7 + 32);
    *(v19 + 9) = a2;
    v24 = *(*v19 + 8);

    return v24;
  }

  return result;
}

uint64_t NSKeyValuePopPendingNotificationLocal(void *a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, void *a6, uint64_t *a7)
{
  v13 = a7[1];
  if (v13 < 1)
  {
    return 0;
  }

  while (1)
  {
    v14 = *a7;
    v15 = v13 - 1;
    a7[1] = v15;
    v16 = v14 + 80 * v15;
    if (!*(v16 + 64) || _NSKeyValueCheckObservationInfoForPendingNotification(a1, *v16, a7[5]))
    {
      break;
    }

    v13 = a7[1];
    if (v13 <= 0)
    {
      return 0;
    }
  }

  *a3 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 24);
  *(a4 + 32) = *(v16 + 40);
  *a4 = v18;
  *(a4 + 16) = v19;
  *a5 = *(v16 + 48);
  *a6 = *(v16 + 72);
  v20 = *(v16 + 16);
  a7[2] = *(*v16 + 8);
  a7[3] = v20;
  a7[4] = *(v16 + 48);
  return 1;
}

uint64_t _decodeInt32(void *a1, const void *a2, _DWORD *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  result = _decodeInt64(a1, a2, v8);
  v7 = v8[0];
  if (result)
  {
    if (v8[0] == SLODWORD(v8[0]))
    {
      result = 1;
    }

    else
    {
      [a1 __failWithExceptionName:*MEMORY[0x1E695DA20] errorCode:4864 format:{@"%@: value (%lld) for key (%@) too large to fit in a 32-bit integer", _NSMethodExceptionProem(a1, sel_decodeInt32ForKey_), v8[0], a2}];
      result = 0;
    }
  }

  *a3 = v7;
  return result;
}

NSString *NSTemporaryDirectory(void)
{
  v0 = _NSSwiftTemporaryDirectory();
  if ([(NSString *)v0 hasSuffix:@"/"])
  {
    return v0;
  }

  return [(NSString *)v0 stringByAppendingString:@"/"];
}

uint64_t static String.temporaryDirectoryPath.getter()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = confstr(65537, 0, 0);
  if (v0 >= 1)
  {
    if (v0 <= 0x400 || (v8 = v0, isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v0 = v8, isStackAllocationSafe))
    {
      MEMORY[0x1EEE9AC00](v0);
      v2 = &v13[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
      v3 = v1;
      bzero(v2, v1);
      confstr(65537, v2, v3);
      return String.init(cString:)();
    }

    v10 = v8;
    v11 = swift_slowAlloc();
    closure #1 in static String.temporaryDirectoryPath.getter(v11, v10, v13);
    MEMORY[0x1865D2690](v11, -1, -1);
    return v13[0];
  }

  if (!issetugid() && getenv("TMPDIR"))
  {
    v5 = String.init(cString:)();
    v7 = v6;
    if ((specialized BidirectionalCollection.last.getter(v5, v6) & 0x1FF) == 0x2F)
    {
      return v5;
    }

    v13[0] = v5;
    v13[1] = v7;

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);

    return v13[0];
  }

  return 0x2F706D742FLL;
}

id _NSSwiftTemporaryDirectory()
{
  static String.temporaryDirectoryPath.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

uint64_t _fromNSCalendarUnit(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 2047)
  {
    if (result <= 63)
    {
      if (result <= 7)
      {
        if (result == 2)
        {
          *a2 = 0;
          return result;
        }

        if (result == 4)
        {
          *a2 = 1;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 8:
            *a2 = 2;
            return result;
          case 16:
            *a2 = 3;
            return result;
          case 32:
            *a2 = 4;
            return result;
        }
      }

      goto LABEL_47;
    }

    if (result <= 255)
    {
      if (result == 64)
      {
        *a2 = 5;
        return result;
      }

      if (result == 128)
      {
        *a2 = 6;
        return result;
      }

      goto LABEL_47;
    }

    if (result != 256)
    {
      if (result == 512)
      {
        *a2 = 7;
        return result;
      }

      if (result == 1024)
      {
        *a2 = 8;
        return result;
      }

      goto LABEL_47;
    }

LABEL_36:
    *a2 = 11;
    return result;
  }

  if (result >= 0x10000)
  {
    if (result < 0x200000)
    {
      if (result == 0x10000)
      {
        *a2 = 18;
        return result;
      }

      if (result == 0x100000)
      {
        *a2 = 14;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 0x200000:
          *a2 = 15;
          return result;
        case 0x40000000:
          *a2 = 16;
          return result;
        case 0x80000000:
          *a2 = 17;
          return result;
      }
    }
  }

  else
  {
    if (result < 0x2000)
    {
      if (result == 2048)
      {
        *a2 = 9;
        return result;
      }

      if (result == 4096)
      {
        *a2 = 10;
        return result;
      }

      goto LABEL_47;
    }

    switch(result)
    {
      case 0x2000:
        goto LABEL_36;
      case 0x4000:
        *a2 = 12;
        return result;
      case 0x8000:
        *a2 = 13;
        return result;
    }
  }

LABEL_47:
  *a2 = 19;
  return result;
}

Swift::Void __swiftcall DateComponents.setValue(_:for:)(Swift::Int_optional _, Foundation::Calendar::Component a2)
{
  v3 = 40;
  v4 = 32;
  switch(*a2)
  {
    case 1:
      v3 = 56;
      v4 = 48;
      goto LABEL_16;
    case 2:
      v3 = 72;
      v4 = 64;
      goto LABEL_16;
    case 3:
      v3 = 88;
      v4 = 80;
      goto LABEL_16;
    case 4:
      v3 = 120;
      v4 = 112;
      goto LABEL_16;
    case 5:
      v3 = 136;
      v4 = 128;
      goto LABEL_16;
    case 6:
      v3 = 152;
      v4 = 144;
      goto LABEL_16;
    case 7:
      v3 = 184;
      v4 = 176;
      goto LABEL_16;
    case 8:
      v3 = 200;
      v4 = 192;
      goto LABEL_16;
    case 9:
      v3 = 216;
      v4 = 208;
      goto LABEL_16;
    case 0xA:
      v3 = 248;
      v4 = 240;
      goto LABEL_16;
    case 0xB:
      v3 = 264;
      v4 = 256;
      goto LABEL_16;
    case 0xC:
      v3 = 280;
      v4 = 272;
      goto LABEL_16;
    case 0xD:
      v3 = 168;
      v4 = 160;
      goto LABEL_16;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
      return;
    case 0x12:
      v3 = 104;
      v4 = 96;
      goto LABEL_16;
    default:
LABEL_16:
      if (_.value == 0x7FFFFFFFFFFFFFFFLL)
      {
        value = 0;
      }

      else
      {
        value = _.value;
      }

      if (_.is_nil)
      {
        value = _.value;
      }

      *(v2 + v4) = value;
      *(v2 + v3) = _.is_nil || _.value == 0x7FFFFFFFFFFFFFFFLL;
      return;
  }
}

void specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v12 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 3 * v12;
  if ((v12 * 3) >> 64 == (3 * v12) >> 63)
  {
    if (v13 < -1)
    {
      __break(1u);
    }

    v6 = v13 + 1;
    v20 = a5;

    if (v13 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v18 = swift_slowAlloc();

    v17 = v20;
    v19 = v20;
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v18, v6, a1, a2, a3, a4, a5);
    MEMORY[0x1865D2690](v18, -1, -1);

    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v16 = &v18 - v15;
  if (String._fileSystemRepresentation(into:)(&v18 - v15, v6, a1, a2))
  {
    specialized static _FileOperations._removeFile(_:_:with:)(v16, a3, a4, a5);
  }

  else
  {
    closure #1 in static _FileOperations.removeFile(_:with:)(0, a3, a4, a5);
  }

  if (v5)
  {
    swift_willThrow();

    v17 = v20;

LABEL_13:

    return;
  }

  swift_bridgeObjectRelease_n();
  v17 = v20;

LABEL_15:
}

_removefile_state *specialized static _FileOperations._removeFile(_:_:with:)(const char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  result = removefile_state_alloc();
  if (result)
  {
    v10 = result;
    if (!a4)
    {
      specialized static _FileOperations._removeFile(_:_:state:)(a1, a2, a3, result);
      return removefile_state_free(v10);
    }

    *v20 = a3;
    type metadata accessor for _FileOperations._FileRemoveContext();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = a4;
    v12 = a4;
    v13 = [v12 _safeDelegate];
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector_])
      {
        v15 = 1;
      }

      else
      {
        v15 = [v14 respondsToSelector_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    v16 = [v12 _safeDelegate];
    if (v16)
    {
      v17 = v16;
      if ([v16 respondsToSelector_])
      {
        swift_unknownObjectRelease();
        if (v15)
        {
          LOBYTE(v18) = 1;
LABEL_17:
          a3 = *v20;
LABEL_18:
          removefile_state_set(v10, 2u, v11);
          removefile_state_set(v10, 1u, @objc closure #1 in closure #1 in static _FileOperations._removeFile(_:_:with:));
          if ((v18 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        a3 = *v20;
LABEL_22:
        removefile_state_set(v10, 4u, v11);
        removefile_state_set(v10, 3u, @objc closure #2 in closure #1 in static _FileOperations._removeFile(_:_:with:));
        goto LABEL_23;
      }

      v18 = [v17 respondsToSelector_];
      swift_unknownObjectRelease();
      if (v15)
      {
        goto LABEL_17;
      }

      a3 = *v20;
      if (v18)
      {
        goto LABEL_22;
      }
    }

    else if (v15)
    {
      LOBYTE(v18) = 0;
      goto LABEL_18;
    }

LABEL_23:
    specialized static _FileOperations._removeFile(_:_:state:)(a1, a2, a3, v10);
    if (!v4)
    {
      v19 = v11[2];
      if (!v19)
      {

        return removefile_state_free(v10);
      }

      swift_willThrow();
      v19;
    }

    return removefile_state_free(v10);
  }

  __break(1u);
  return result;
}

uint64_t specialized static _FileOperations._removeFile(_:_:state:)(const char *a1, unint64_t a2, unint64_t a3, removefile_state_t state)
{
  v5 = state;
  v156 = *MEMORY[0x1E69E9840];
  result = removefile(a1, state, 1u);
  if ((result & 0x80000000) != 0)
  {
    if (MEMORY[0x1865CA7A0]())
    {
      v9 = MEMORY[0x1865CA7A0]();
      LODWORD(v5) = v9;
      if (v9 <= 29)
      {
        if (v9 <= 12)
        {
          if (v9 != 1)
          {
            if (v9 == 2)
            {
              v20 = 4;
              goto LABEL_55;
            }

            goto LABEL_54;
          }
        }

        else if (v9 != 13)
        {
          if (v9 == 17)
          {
            v20 = 516;
            goto LABEL_55;
          }

          if (v9 != 28)
          {
LABEL_54:
            v20 = 512;
LABEL_55:
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v22 = POSIXErrorCode.rawValue.getter();
              v23 = objc_allocWithZone(NSError);
              v24 = String._bridgeToObjectiveCImpl()();

              v21 = [v23 initWithDomain:v24 code:v22 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v25 = [(_removefile_state *)v21 domain];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)(v25);
              v28 = v27;

              if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v28 == v29)
              {

                goto LABEL_60;
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_60;
              }

              __break(1u);
              goto LABEL_256;
            }

LABEL_265:
            dst = 0;
            v155 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            dst = 0xD000000000000014;
            v155 = 0x80000001814813E0;
            for (LODWORD(v150) = v5; ; LODWORD(v150) = v4)
            {
              v147 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1865CB0E0](v147);

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_267:
              dst = 0;
              v155 = 0xE000000000000000;
              _StringGuts.grow(_:)(22);

              dst = 0xD000000000000014;
              v155 = 0x80000001814813E0;
            }
          }

LABEL_42:
          v20 = 640;
          goto LABEL_55;
        }

        v20 = 513;
        goto LABEL_55;
      }

      if (v9 <= 65)
      {
        if (v9 == 30)
        {
          v20 = 642;
          goto LABEL_55;
        }

        if (v9 == 63)
        {
          v20 = 514;
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (v9 == 102)
      {
        v21 = 0;
        v20 = 512;
LABEL_60:

        URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &dst);

        v31 = dst;
        v32 = v155;
        v33 = String._bridgeToObjectiveCImpl()();
        if (v31)
        {
          ObjectType = swift_getObjectType();
          v35 = (*(v32 + 432))(ObjectType, v32);
          swift_unknownObjectRelease();
          if (v21)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v35 = 0;
          if (v21)
          {
LABEL_62:
            v150 = v21;
            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
            v21 = v21;
            v36 = _getErrorEmbeddedNSError<A>(_:)();

            if (v36)
            {
              goto LABEL_81;
            }

            goto LABEL_84;
          }
        }

        v37 = 0;
LABEL_86:
        v52 = objc_opt_self();
        [v52 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
        swift_unknownObjectRelease();

LABEL_87:
        swift_unknownObjectRelease();

        return swift_willThrow();
      }

      if (v9 == 69)
      {
        goto LABEL_42;
      }

      if (v9 != 66)
      {
        goto LABEL_54;
      }

      LODWORD(v4) = 1;
      v10 = POSIXErrorCode.init(rawValue:)();
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_267;
      }

      LODWORD(v5) = v10;
      v4 = @"NSPOSIXErrorDomain";
      isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v12 = @"NSPOSIXErrorDomain";
      v13 = v12;
      v149 = isTaggedPointer;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v12);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_116;
            }

            goto LABEL_67;
          }

          v57 = [(__CFString *)v13 UTF8String];
          if (!v57)
          {
            __break(1u);
LABEL_260:
            __break(1u);
            goto LABEL_261;
          }

          String.init(utf8String:)(v57);
          if (v58)
          {
            goto LABEL_68;
          }

          __break(1u);
        }

        v152 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v59)
        {
          goto LABEL_68;
        }

        [(__CFString *)v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_116;
      }

LABEL_67:
      LOBYTE(v150) = 0;
      dst = 0;
      LOBYTE(v152) = 0;
      v153 = 0;
      if (__CFStringIsCF())
      {
LABEL_68:

        goto LABEL_116;
      }

      v53 = v13;
      String.init(_nativeStorage:)();
      if (!v54 && (dst = [(__CFString *)v53 length]) != 0)
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

LABEL_116:
      v63 = POSIXErrorCode.rawValue.getter();
      v4 = objc_allocWithZone(NSError);
      v64 = String._bridgeToObjectiveCImpl()();

      v5 = [(__CFString *)v4 initWithDomain:v64 code:v63 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v65 = [(_removefile_state *)v5 domain];
      if (!v65)
      {
LABEL_126:
        v70 = 0;
        v72 = 0xE000000000000000;
        goto LABEL_138;
      }

      v4 = v65;
      v66 = _objc_isTaggedPointer(v65);
      v67 = v4;
      v68 = v67;
      if ((v66 & 1) == 0)
      {
        goto LABEL_122;
      }

      v69 = _objc_getTaggedPointerTag(v67);
      if (v69)
      {
        if (v69 != 22)
        {
          if (v69 == 2)
          {
            v4 = v148;
            MEMORY[0x1EEE9AC00](v69);
            v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v72 = v71;

LABEL_138:
            v79 = v13;
            v80 = v79;
            if (!v149)
            {
              goto LABEL_143;
            }

            v81 = _objc_getTaggedPointerTag(v79);
            if (!v81)
            {
              goto LABEL_154;
            }

            if (v81 != 22)
            {
              if (v81 == 2)
              {
                MEMORY[0x1EEE9AC00](v81);
                v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v84 = v83;

LABEL_172:
                if (v70 == v82 && v72 == v84)
                {
                }

                else
                {
                  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v97 & 1) == 0)
                  {
LABEL_257:
                    __break(1u);
LABEL_258:
                    __break(1u);
                  }
                }

                URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &dst);

                v98 = dst;
                v99 = v155;
                v100 = String._bridgeToObjectiveCImpl()();
                if (v98)
                {
                  v101 = swift_getObjectType();
                  v102 = (*(v99 + 432))(v101, v99);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v102 = 0;
                }

                v150 = v5;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v21 = v5;
                v103 = _getErrorEmbeddedNSError<A>(_:)();

                if (!v103)
                {
                  goto LABEL_253;
                }

                goto LABEL_252;
              }

LABEL_143:
              LOBYTE(v150) = 0;
              dst = 0;
              LOBYTE(v152) = 0;
              v153 = 0;
              IsCF = __CFStringIsCF();
              if (IsCF)
              {
                v82 = dst;
                if (!dst)
                {

                  v84 = 0xE000000000000000;
                  goto LABEL_172;
                }

                if (v153 == 1)
                {
                  if (v150)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v92 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_171;
                }

                if (v152)
                {
                  if (v150 != 1)
                  {
                    IsCF = [(__CFString *)v80 lengthOfBytesUsingEncoding:4];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v94 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v84 = v95;
                  v96 = HIBYTE(v95) & 0xF;
                  if ((v95 & 0x2000000000000000) == 0)
                  {
                    v96 = v94 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v96)
                  {
                    v82 = v94;

                    goto LABEL_172;
                  }
                }
              }

              else
              {
                v86 = v80;
                v87 = String.init(_nativeStorage:)();
                if (v88)
                {
                  v82 = v87;
                  v84 = v88;

                  goto LABEL_172;
                }

                dst = [(__CFString *)v86 length];
                if (!dst)
                {

                  v82 = 0;
                  v84 = 0xE000000000000000;
                  goto LABEL_172;
                }
              }

              v92 = String.init(_cocoaString:)();
LABEL_171:
              v82 = v92;
              v84 = v93;
              goto LABEL_172;
            }

            v89 = [(__CFString *)v80 UTF8String];
            if (v89)
            {
              v90 = String.init(utf8String:)(v89);
              if (v91)
              {
LABEL_155:
                v82 = v90;
                v84 = v91;

                goto LABEL_172;
              }

              __break(1u);
LABEL_154:
              v152 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v91)
              {
                [(__CFString *)v80 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v82 = v150;
                v84 = v151;
                goto LABEL_172;
              }

              goto LABEL_155;
            }

            goto LABEL_260;
          }

LABEL_122:
          LOBYTE(v150) = 0;
          dst = 0;
          LOBYTE(v152) = 0;
          v153 = 0;
          if (__CFStringIsCF())
          {

            goto LABEL_126;
          }

          v4 = v68;
          v73 = String.init(_nativeStorage:)();
          if (v74)
          {
            v70 = v73;
            v72 = v74;

            goto LABEL_138;
          }

          dst = [(__CFString *)v4 length];
          if (!dst)
          {

            goto LABEL_126;
          }

          v70 = String.init(_cocoaString:)();
          v72 = v78;
LABEL_137:

          goto LABEL_138;
        }

        v75 = [(__CFString *)v68 UTF8String];
        if (!v75)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v76 = String.init(utf8String:)(v75);
        if (v77)
        {
LABEL_131:
          v70 = v76;
          v72 = v77;

          goto LABEL_137;
        }

        __break(1u);
      }

      v152 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v77)
      {
        LODWORD(v4) = [(__CFString *)v68 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v70 = v150;
        v72 = v151;
        goto LABEL_137;
      }

      goto LABEL_131;
    }

    LODWORD(dst) = 0;
    removefile_state_get(v5, 5u, &dst);
    LODWORD(v5) = dst;
    if (dst <= 29)
    {
      if (dst > 12)
      {
        if (dst != 13)
        {
          if (dst == 17)
          {
            v20 = 516;
            goto LABEL_73;
          }

          if (dst != 28)
          {
            goto LABEL_72;
          }

          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (dst == 1)
      {
LABEL_49:
        v20 = 513;
        goto LABEL_73;
      }

      if (dst == 2)
      {
        v20 = 4;
LABEL_73:
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
        {
          goto LABEL_265;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v38 = POSIXErrorCode.rawValue.getter();
        v39 = objc_allocWithZone(NSError);
        v40 = String._bridgeToObjectiveCImpl()();

        v21 = [v39 initWithDomain:v40 code:v38 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v41 = [(_removefile_state *)v21 domain];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)(v41);
        v44 = v43;

        if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v44 == v45)
        {
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v46 & 1) == 0)
          {
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }
        }

LABEL_78:

        URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &dst);

        v47 = dst;
        v48 = v155;
        v33 = String._bridgeToObjectiveCImpl()();
        if (v47)
        {
          v49 = swift_getObjectType();
          v35 = (*(v48 + 432))(v49, v48);
          swift_unknownObjectRelease();
          if (v21)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v35 = 0;
          if (v21)
          {
LABEL_80:
            v150 = v21;
            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
            v21 = v21;
            v50 = _getErrorEmbeddedNSError<A>(_:)();

            if (v50)
            {
LABEL_81:

LABEL_85:
              v37 = _swift_stdlib_bridgeErrorToNSError();
              goto LABEL_86;
            }

LABEL_84:
            swift_allocError();
            *v51 = v21;
            goto LABEL_85;
          }
        }

        v37 = 0;
        goto LABEL_86;
      }

      goto LABEL_72;
    }

    if (dst <= 65)
    {
      if (dst == 30)
      {
        v20 = 642;
        goto LABEL_73;
      }

      if (dst == 63)
      {
        v20 = 514;
        goto LABEL_73;
      }

LABEL_72:
      v20 = 512;
      goto LABEL_73;
    }

    if (dst == 102)
    {
      v21 = 0;
      v20 = 512;
      goto LABEL_78;
    }

    if (dst == 69)
    {
LABEL_50:
      v20 = 640;
      goto LABEL_73;
    }

    if (dst != 66)
    {
      goto LABEL_72;
    }

    LODWORD(v4) = 1;
    v15 = POSIXErrorCode.init(rawValue:)();
    if ((v15 & 0x100000000) != 0)
    {
      goto LABEL_267;
    }

    LODWORD(v5) = v15;
    v4 = @"NSPOSIXErrorDomain";
    v16 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v17 = @"NSPOSIXErrorDomain";
    v18 = v17;
    if (v16)
    {
      v19 = _objc_getTaggedPointerTag(v17);
      if (v19)
      {
        if (v19 != 22)
        {
          if (v19 == 2)
          {
            MEMORY[0x1EEE9AC00](v19);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_182;
          }

          goto LABEL_89;
        }

        v60 = [(__CFString *)v18 UTF8String];
        if (!v60)
        {
LABEL_262:
          __break(1u);
          goto LABEL_263;
        }

        String.init(utf8String:)(v60);
        if (v61)
        {
          goto LABEL_135;
        }

        __break(1u);
      }

      v152 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v62)
      {
        [(__CFString *)v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_182;
      }

      goto LABEL_135;
    }

LABEL_89:
    LOBYTE(v150) = 0;
    dst = 0;
    LOBYTE(v152) = 0;
    v153 = 0;
    if (!__CFStringIsCF())
    {
      v55 = v18;
      String.init(_nativeStorage:)();
      if (v56 || (dst = [(__CFString *)v55 length]) == 0)
      {

        goto LABEL_182;
      }

      goto LABEL_181;
    }

    if (dst)
    {
      if (v153 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_182;
      }

LABEL_181:
      String.init(_cocoaString:)();
LABEL_182:
      v104 = POSIXErrorCode.rawValue.getter();
      v4 = objc_allocWithZone(NSError);
      v105 = String._bridgeToObjectiveCImpl()();

      v5 = [(__CFString *)v4 initWithDomain:v105 code:v104 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v106 = [(_removefile_state *)v5 domain];
      if (!v106)
      {
        v111 = 0;
        v113 = 0xE000000000000000;
        goto LABEL_210;
      }

      v149 = v16;
      v4 = v106;
      v107 = _objc_isTaggedPointer(v106);
      v108 = v4;
      v109 = v108;
      if ((v107 & 1) == 0)
      {
        goto LABEL_188;
      }

      v110 = _objc_getTaggedPointerTag(v108);
      if (v110)
      {
        if (v110 != 22)
        {
          if (v110 == 2)
          {
            v4 = v148;
            MEMORY[0x1EEE9AC00](v110);
            v111 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v113 = v112;

LABEL_209:
            v16 = v149;
LABEL_210:
            v121 = v18;
            v122 = v121;
            if (!v16)
            {
              goto LABEL_215;
            }

            v123 = _objc_getTaggedPointerTag(v121);
            if (v123)
            {
              if (v123 != 22)
              {
                if (v123 == 2)
                {
                  MEMORY[0x1EEE9AC00](v123);
                  v124 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v126 = v125;

LABEL_244:
                  if (v111 == v124 && v113 == v126)
                  {
                  }

                  else
                  {
                    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v139 & 1) == 0)
                    {
                      goto LABEL_258;
                    }
                  }

                  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &dst);

                  v140 = dst;
                  v141 = v155;
                  v100 = String._bridgeToObjectiveCImpl()();
                  if (v140)
                  {
                    v142 = swift_getObjectType();
                    v102 = (*(v141 + 432))(v142, v141);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v150 = v5;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v21 = v5;
                  v143 = _getErrorEmbeddedNSError<A>(_:)();

                  if (!v143)
                  {
LABEL_253:
                    swift_allocError();
                    *v144 = v21;
                    goto LABEL_254;
                  }

LABEL_252:

LABEL_254:
                  v145 = objc_opt_self();
                  v146 = _swift_stdlib_bridgeErrorToNSError();
                  [v145 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  goto LABEL_87;
                }

LABEL_215:
                LOBYTE(v150) = 0;
                dst = 0;
                LOBYTE(v152) = 0;
                v153 = 0;
                v127 = __CFStringIsCF();
                if (v127)
                {
                  v124 = dst;
                  if (!dst)
                  {

                    v126 = 0xE000000000000000;
                    goto LABEL_244;
                  }

                  if (v153 == 1)
                  {
                    if (v150)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v134 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_243;
                  }

                  if (v152)
                  {
                    if (v150 != 1)
                    {
                      v127 = [(__CFString *)v122 lengthOfBytesUsingEncoding:4];
                    }

                    MEMORY[0x1EEE9AC00](v127);
                    v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v126 = v137;
                    v138 = HIBYTE(v137) & 0xF;
                    if ((v137 & 0x2000000000000000) == 0)
                    {
                      v138 = v136 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v138)
                    {
                      v124 = v136;

                      goto LABEL_244;
                    }
                  }
                }

                else
                {
                  v128 = v122;
                  v129 = String.init(_nativeStorage:)();
                  if (v130)
                  {
                    v124 = v129;
                    v126 = v130;

                    goto LABEL_244;
                  }

                  dst = [(__CFString *)v128 length];
                  if (!dst)
                  {

                    v124 = 0;
                    v126 = 0xE000000000000000;
                    goto LABEL_244;
                  }
                }

                v134 = String.init(_cocoaString:)();
LABEL_243:
                v124 = v134;
                v126 = v135;
                goto LABEL_244;
              }

              v131 = [(__CFString *)v122 UTF8String];
              if (!v131)
              {
LABEL_263:
                __break(1u);
                goto LABEL_264;
              }

              v132 = String.init(utf8String:)(v131);
              if (v133)
              {
LABEL_227:
                v124 = v132;
                v126 = v133;

                goto LABEL_244;
              }

              __break(1u);
            }

            v152 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v132 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v133)
            {
              [(__CFString *)v122 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v124 = v150;
              v126 = v151;
              goto LABEL_244;
            }

            goto LABEL_227;
          }

LABEL_188:
          LOBYTE(v150) = 0;
          dst = 0;
          LOBYTE(v152) = 0;
          v153 = 0;
          if (__CFStringIsCF())
          {
            if (dst)
            {
              if (v153 == 1)
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                v119 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_207:
                v111 = v119;
                v113 = v120;
                goto LABEL_208;
              }

LABEL_206:
              v119 = String.init(_cocoaString:)();
              goto LABEL_207;
            }
          }

          else
          {
            v4 = v109;
            v114 = String.init(_nativeStorage:)();
            if (v115)
            {
              v111 = v114;
              v113 = v115;

              goto LABEL_209;
            }

            dst = [(__CFString *)v4 length];
            if (dst)
            {
              goto LABEL_206;
            }
          }

          v111 = 0;
          v113 = 0xE000000000000000;
          goto LABEL_209;
        }

        v116 = [(__CFString *)v109 UTF8String];
        if (!v116)
        {
LABEL_264:
          __break(1u);
          goto LABEL_265;
        }

        v117 = String.init(utf8String:)(v116);
        if (v118)
        {
          goto LABEL_201;
        }

        __break(1u);
      }

      v152 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v118)
      {
        LODWORD(v4) = [(__CFString *)v109 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v111 = v150;
        v113 = v151;
        goto LABEL_208;
      }

LABEL_201:
      v111 = v117;
      v113 = v118;

LABEL_208:
      goto LABEL_209;
    }

LABEL_135:

    goto LABEL_182;
  }

  return result;
}

uint64_t _FileOperations._FileRemoveContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *_NSXPCSerializationAddRawData(uint64_t a1, const void *a2, unint64_t a3)
{
  if (a3 < 0xF)
  {
    v6 = a3 | 0x40;
    _reserveSpace(a1, 1);
    *(*(a1 + 8216) + (*(a1 + 8200))++) = v6;
  }

  else
  {
    _reserveSpace(a1, 1);
    *(*(a1 + 8216) + (*(a1 + 8200))++) = 79;
    _NSXPCSerializationAddInteger(a1, a3);
  }

  _reserveSpace(a1, a3);
  result = memmove((*(a1 + 8216) + *(a1 + 8200)), a2, a3);
  *(a1 + 8200) += a3;
  return result;
}

_BYTE *_xpc_walkDataStructure(_BYTE *result, uint64_t a2, uint64_t *a3, char *typePtr, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12)
{
  v14 = a5;
  v16 = result;
  sizep[1] = *MEMORY[0x1E69E9840];
  alignp = 0;
  sizep[0] = 0;
  v17 = *typePtr;
  if (v17 == 123)
  {
    v27 = typePtr + 1;
    for (i = typePtr + 2; ; ++i)
    {
      v29 = *(i - 1);
      if (v29 > 0x3C)
      {
        if (v29 == 125)
        {
          goto LABEL_25;
        }

        if (v29 == 61)
        {
          v27 = i;
LABEL_25:
          v30 = *v27;
          if (!*v27)
          {
LABEL_40:
            v36 = @"decodeDataAt:ofObjCType:";
            if (a8)
            {
              v36 = @"encodeDataAt:ofObjCType:";
            }

            v37 = [NSString stringWithFormat:@"%@ badly formed structure description (%s)", v36, v14];
            goto LABEL_43;
          }

          v31 = 0;
          v32 = 1;
          while (2)
          {
            if (v30 == 125)
            {
              return result;
            }

            if (!v30)
            {
              goto LABEL_40;
            }

            v33 = NSGetSizeAndAlignment(v27, sizep, &alignp);
            if (alignp)
            {
              v34 = (v31 + alignp - 1) / alignp * alignp;
              if (a8)
              {
                goto LABEL_31;
              }

LABEL_33:
              if (!v32)
              {
                _getLastByteOfValueIncludingMarker(a3, *a12, a12);
                v35 = (*a12)++ == -1;
                if (v35 << 63 >> 63 != v35)
                {
                  v39 = MEMORY[0x1E695DF30];
                  v40 = @"NSInvalidUnarchiveOperationException";
                  v38 = @"Unexpected EoF while decoding struct";
                  goto LABEL_46;
                }
              }

              result = _NSXPCSerializationDecodeTypedObjCValuesFromArray(v16, a3, v27, (a6 + v34), a7 - v34, 0, a11, a12, a9, a10);
              v32 = 0;
            }

            else
            {
              v34 = 0;
              if (!a8)
              {
                goto LABEL_33;
              }

LABEL_31:
              result = _NSXPCSerializationAddTypedObjCValuesToArray(v16, a2, v27, a6 + v34, 0);
            }

            v31 = sizep[0] + v34;
            v30 = *v33;
            v27 = v33;
            continue;
          }
        }
      }

      else if (!*(i - 1) || v29 == 41)
      {
        goto LABEL_25;
      }
    }
  }

  if (v17 == 91)
  {
    v19 = typePtr + 1;
    v18 = typePtr[1];
    if (v18 - 48 > 9)
    {
      result = NSGetSizeAndAlignment(typePtr + 1, sizep, &alignp);
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = v20;
        v22 = v18;
        v20 = 10 * v20 + v18 - 48;
        v23 = *++v19;
        v18 = v23;
      }

      while (v23 - 48 < 0xA);
      result = NSGetSizeAndAlignment(v19, sizep, &alignp);
      if (v20)
      {
        v42 = result;
        v24 = 0;
        v25 = 10 * v21 + v22 - 48;
        v14 = a5;
        do
        {
          if (a8)
          {
            _NSXPCSerializationAddTypedObjCValuesToArray(v16, a2, v19, a6 + sizep[0] * v24, 0);
          }

          else
          {
            if (v24)
            {
              _getLastByteOfValueIncludingMarker(a3, *a12, a12);
              v26 = (*a12)++ == -1;
              if (v26 << 63 >> 63 != v26)
              {
                v39 = MEMORY[0x1E695DF30];
                v40 = @"NSInvalidUnarchiveOperationException";
                v38 = @"Unexpected EoF while decoding array";
LABEL_46:
                objc_exception_throw([v39 exceptionWithName:v40 reason:v38 userInfo:0]);
              }
            }

            _NSXPCSerializationDecodeTypedObjCValuesFromArray(v16, a3, v19, (a6 + sizep[0] * v24), a7 - sizep[0] * v24, 0, a11, a12, a9, a10);
          }

          ++v24;
        }

        while (v25 != v24);
        result = v42;
      }

      else
      {
        v14 = a5;
      }
    }

    if (*result != 93)
    {
      v41 = @"decodeDataAt:ofObjCType:";
      if (a8)
      {
        v41 = @"encodeDataAt:ofObjCType:";
      }

      v37 = [NSString stringWithFormat:@"%@ badly formed array description (%s)", v41, v14];
LABEL_43:
      v38 = v37;
      v39 = MEMORY[0x1E695DF30];
      v40 = *MEMORY[0x1E695D920];
      goto LABEL_46;
    }
  }

  return result;
}

uint64_t _decodeDouble(uint64_t a1, const void *a2, double *a3)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 16));
  if (v3 != *(a1 + 136))
  {
    __NSPoisoned();
  }

  v7 = atomic_load((a1 + 16));
  atomic_store(v7 | 8, (a1 + 16));
  v8 = atomic_load((a1 + 16));
  *(a1 + 136) = v8;
  valuePtr[0] = 0;
  v9 = *(a1 + 80);
  if (!v9)
  {
    v14 = 0.0;
    if (!__CFBinaryPlistGetOffsetForValueFromDictionary3())
    {
LABEL_22:
      result = 0;
      goto LABEL_23;
    }

    v15 = *(a1 + 104);
    v16 = &v15[*(a1 + 112) - 1];
    v17 = *v15;
    if (v17 == 35)
    {
      v18 = 9;
      if (v15 < 0xFFFFFFFFFFFFFFF7 && v16 >= (v15 + 9))
      {
        v14 = COERCE_DOUBLE(bswap64(*(v15 + 1)));
        goto LABEL_19;
      }
    }

    else
    {
      if (v17 != 34)
      {
LABEL_21:
        [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: value for key (%@) is not a 64-bit float", _NSMethodExceptionProem(a1, sel_decodeDoubleForKey_), a2}];
        goto LABEL_22;
      }

      v18 = 5;
      if (v15 < 0xFFFFFFFFFFFFFFFBLL && v16 >= (v15 + 5))
      {
        v14 = COERCE_FLOAT(bswap32(*(v15 + 1)));
LABEL_19:
        result = 1;
        goto LABEL_23;
      }
    }

    [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{@"overflow while attempting to read %lu bytes (float)", v18}];
    goto LABEL_21;
  }

  Count = CFArrayGetCount(v9);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v13 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
  }

  else
  {
    Value = CFDictionaryGetValue(ValueAtIndex, a2);
    v19 = Value;
  }

  v14 = 0.0;
  if (!Value)
  {
    goto LABEL_22;
  }

  if (CFGetTypeID(Value) != 22 || !CFNumberIsFloatType(Value))
  {
    goto LABEL_21;
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, valuePtr);
  result = 1;
  v14 = *valuePtr;
LABEL_23:
  *a3 = v14;
  return result;
}

unint64_t specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5, char a6, unsigned __int8 a7)
{
  v7 = a1;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v11 = 0;
  v12 = 0;
  v48 = v8;
  v45 = 4 * v8;
  v13 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v41 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v42 = a4 & 0xFFFFFFFFFFFFFFLL;
  v15 = 15;
  do
  {
    v16 = v15 & 0xC;
    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
    }

    v18 = result >> 16;
    if (result >> 16 >= v48)
    {
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
LABEL_118:
      __break(1u);
      return result;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v20 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v46 = a3;
      v47 = v42;
      v20 = *(&v46 + v18);
    }

    else
    {
      v19 = v41;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v19 = _StringObject.sharedUTF8.getter();
      }

      v20 = *(v19 + v18);
    }

    result = UInt8.allowedURLComponents.getter(v20);
    if ((result & a5) != 0)
    {
      *(v7 + v12) = v20;
      v21 = __OFADD__(v12++, 1);
      if (v21)
      {
        goto LABEL_105;
      }

      goto LABEL_66;
    }

    if ((a6 & 1) == 0 || v20 != a7)
    {
      goto LABEL_58;
    }

    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_30:
        result = MEMORY[0x1865CB180](result, 1, a3, a4);
        goto LABEL_31;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (v48 <= result >> 16)
    {
      goto LABEL_110;
    }

    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_31:
    if (v45 == result >> 14)
    {
      goto LABEL_58;
    }

    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_37:
        result = MEMORY[0x1865CB180](result, 1, a3, a4);
        goto LABEL_38;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if (v48 <= result >> 16)
    {
      goto LABEL_112;
    }

    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_38:
    if ((result & 0xC) == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    }

    v22 = result >> 16;
    if (result >> 16 >= v48)
    {
      goto LABEL_111;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v46 = a3;
      v47 = v42;
      result = *(&v46 + v22);
    }

    else
    {
      v23 = v41;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v23 = _StringObject.sharedUTF8.getter();
      }

      result = *(v23 + v22);
    }

    v7 = a1;
    if ((result - 58) <= 0xF5u && (result - 65 > 0x25 || ((1 << (result - 65)) & 0x3F0000003FLL) == 0))
    {
LABEL_58:
      if (__OFADD__(v12, 2))
      {
        goto LABEL_107;
      }

      if (v12 + 2 < v12)
      {
        goto LABEL_108;
      }

      v25 = v20 & 0xF;
      if ((v20 & 0xFu) >= 7)
      {
        v26 = a789abcdef[v25 - 7];
      }

      else
      {
        v26 = v25 | 0x30;
      }

      v27 = byte_1812DB9F0[v20 >> 4];
      v28 = (v12 + v7);
      if (!v7)
      {
        v28 = 0;
      }

      *v28 = a7;
      v28[1] = v27;
      v28[2] = v26;
      v21 = __OFADD__(v12, 3);
      v12 += 3;
      if (v21)
      {
        goto LABEL_109;
      }

LABEL_66:
      if (v16 != v14)
      {
        goto LABEL_67;
      }

      goto LABEL_99;
    }

    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_56:
        result = MEMORY[0x1865CB180](result, 2, a3, a4);
        goto LABEL_57;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_56;
    }

    v24 = (result >> 16) + 2;
    if (v48 < v24)
    {
      goto LABEL_113;
    }

    result = v24 << 16;
LABEL_57:
    if (v45 == result >> 14)
    {
      goto LABEL_58;
    }

    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_75:
        result = MEMORY[0x1865CB180](result, 2, a3, a4);
        goto LABEL_76;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_75;
    }

    v29 = (result >> 16) + 2;
    if (v48 < v29)
    {
      goto LABEL_117;
    }

    result = (v29 << 16) | 4;
LABEL_76:
    if ((result & 0xC) == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    }

    v30 = result >> 16;
    if (result >> 16 >= v48)
    {
      goto LABEL_114;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v46 = a3;
      v47 = v42;
      result = *(&v46 + v30);
    }

    else
    {
      v31 = v41;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v31 = _StringObject.sharedUTF8.getter();
      }

      result = *(v31 + v30);
    }

    v7 = a1;
    if ((result - 58) <= 0xF5u && (result - 65 > 0x25 || ((1 << (result - 65)) & 0x3F0000003FLL) == 0))
    {
      goto LABEL_58;
    }

    result = v15;
    if (v16 == v14)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_94:
        result = MEMORY[0x1865CB180](result, 2, a3, a4);
        v33 = result;
        goto LABEL_95;
      }
    }

    else if ((a4 & 0x1000000000000000) != 0)
    {
      goto LABEL_94;
    }

    v32 = (result >> 16) + 2;
    if (v48 < v32)
    {
      goto LABEL_118;
    }

    v33 = (v32 << 16) | 4;
LABEL_95:
    if (__OFADD__(v12, 2))
    {
      goto LABEL_115;
    }

    if (v12 + 2 < v12 || v33 >> 14 < v11)
    {
      goto LABEL_116;
    }

    v34 = specialized ClosedRange.relative<A>(to:)(a3, a4, v15, v33);
    v36 = _StringGuts.validateSubscalarRange(_:)(v34, v35, a3, a4);
    v38 = v37;

    v12 = specialized Slice.initialize<A, B>(fromContentsOf:)(v36, v38, a3, a4, v12, v12 + 3, a1);

    v15 = v33;
    if ((v33 & 0xC) != v14)
    {
LABEL_67:
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_68;
    }

LABEL_99:
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
    v15 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_7:
      v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_8;
    }

LABEL_68:
    if (v48 <= v15 >> 16)
    {
      goto LABEL_106;
    }

    v15 = String.UTF8View._foreignIndex(after:)();
LABEL_8:
    v11 = v15 >> 14;
  }

  while (v15 >> 14 != v45);
  if (v12 < 0)
  {
    __break(1u);
  }

  return static String._fromUTF8Repairing(_:)();
}

unint64_t UInt8.allowedURLComponents.getter(char a1)
{
  if (a1 - 33) < 0xFu && ((0x7FE9u >> (a1 - 33)))
  {
    return byte_1812DC39A[(a1 - 33)];
  }

  v2 = a1 - 58;
  v3 = (a1 - 58);
  if (v3 > 0xF5)
  {
    return 255;
  }

  if (v3 < 7 && ((0x6Bu >> v2) & 1) != 0)
  {
    return 0xF0C0D276D2F6D2uLL >> (8 * (v2 & 0x1Fu));
  }

  if (a1 == 126)
  {
    v4 = -2;
  }

  else
  {
    v4 = 0;
  }

  if ((a1 - 123) <= 0xE5u)
  {
    v5 = v4;
  }

  else
  {
    v5 = 255;
  }

  if (a1 == 95)
  {
    v6 = 254;
  }

  else
  {
    v6 = v5;
  }

  if ((a1 - 91) <= 0xE5u)
  {
    return v6;
  }

  else
  {
    return 255;
  }
}

unint64_t _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(unint64_t a1, unint64_t a2, unsigned __int8 a3, char a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = a4;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a4 = v13;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v8 < 0)
    {
      __break(1u);
    }

    if (v8 < 1025)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = 3 * isStackAllocationSafe;
  v15 = a4;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v16 = v15;
  if ((isStackAllocationSafe & 1) == 0)
  {
    v17 = v14;
    v18 = v16;
    v19 = swift_slowAlloc();
    v20 = specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(v19, v17, a1, a2, a3, v18 & 1, 0x25u);
    MEMORY[0x1865D2690](v19, -1, -1);
    return v20;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  return specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(v21 - v9, v11, a1, a2, a3, v10 & 1, 0x25u);
}

id @objc static NSCalendar._current.getter()
{
  static Calendar.current.getter(&v6);
  v0 = type metadata accessor for _NSSwiftCalendar();
  v1 = objc_allocWithZone(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 16) = v6;
  *&v1[OBJC_IVAR____NSSwiftCalendar__lock] = v2;
  v3 = *MEMORY[0x1E695D850];
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_initWithCheckedCalendarIdentifier_, v3);
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int _CalendarGregorian.date(byAdding:to:wrappingComponents:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  a5.n128_u64[0] = *a2;
  v8 = *a2;
  if (a3)
  {
    result = _s10Foundation18_CalendarGregorianC4date19byAddingAndWrapping2toAA4DateVAA0J10ComponentsV_AHtAA0cB5ErrorOYKF(a1, &v8, v7, &v9);
  }

  else
  {
    result = _s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKF(a1, &v8, v7, &v9, a5);
  }

  *a4 = v9;
  *(a4 + 8) = 0;
  return result;
}

uint64_t _s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, __n128 a5@<Q0>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v236 = *(a1 + 96);
  v237 = *(a1 + 80);
  v229 = *(a1 + 104);
  v230 = *(a1 + 88);
  v224 = *(a1 + 112);
  v222 = *(a1 + 128);
  v225 = *(a1 + 136);
  v220 = *(a1 + 144);
  v223 = *(a1 + 152);
  v218 = *(a1 + 160);
  v221 = *(a1 + 168);
  v226 = *(a1 + 176);
  v227 = *(a1 + 120);
  v228 = *(a1 + 184);
  v238 = *(a1 + 192);
  v231 = *(a1 + 232);
  v232 = *(a1 + 200);
  v234 = *(a1 + 240);
  v235 = *(a1 + 224);
  v233 = *(a1 + 248);
  a5.n128_u64[0] = *a2;
  v240 = *(a1 + 256);
  v239 = *(a1 + 264);
  v11 = *(a1 + 272);
  v12 = *(a1 + 280);
  if (*(a1 + 16))
  {
    v13 = *(a1 + 24);
    v242 = *(a1 + 16);
    if (*(a1 + 56))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(v5 + 120);
    v242 = *(v5 + 112);
    v245 = a5;
    swift_unknownObjectRetain();
    a5 = v245;
    if (v8)
    {
LABEL_3:
      v244 = a5;
      swift_unknownObjectRetain();
      v15 = v244;
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v255[0]) = 1;
  v256[0] = a5.n128_u64[0];
  *&__src[0] = v242;
  *(&__src[0] + 1) = v13;
  swift_unknownObjectRetain();
  _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v7, __src, __dst, v257, v17, v18);
  if (v6)
  {
    goto LABEL_288;
  }

  v15.i64[0] = *&v257[0];
  if (v12)
  {
LABEL_4:
    v16 = v243;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_9:
  LOBYTE(v255[0]) = 12;
  v256[0] = v15.i64[0];
  *&__src[0] = v242;
  *(&__src[0] + 1) = v13;
  v19 = v11;
  v16 = v243;
  _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v19, __src, __dst, v257, v14, v15);
  if (v6)
  {
    goto LABEL_288;
  }

  v15.i64[0] = *&v257[0];
  if ((v10 & 1) == 0)
  {
LABEL_11:
    LOBYTE(v255[0]) = 2;
    v256[0] = v15.i64[0];
    *&__src[0] = v242;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v9, __src, __dst, v257, v14, v15);
    if (v6)
    {
      goto LABEL_288;
    }

    v15.i64[0] = *&v257[0];
  }

LABEL_14:
  v20 = v239;
  if (!v240)
  {
    v20 = 1;
  }

  v21 = v234;
  if (v20)
  {
    v22 = v242;
    goto LABEL_60;
  }

  *v14.i64 = *v15.i64 - trunc(*v15.i64);
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v14.i64[0] = vbslq_s8(vnegq_f64(v23), v14, v15).i64[0];
  if (*v14.i64 >= 0.0)
  {
    v24 = *v14.i64;
  }

  else
  {
    v24 = *v14.i64 + 1.0;
  }

  if (*v14.i64 >= 0.0)
  {
    v25 = *v15.i64 - *v14.i64;
  }

  else
  {
    v25 = *v15.i64 - *v14.i64 + -1.0;
  }

  *&v257[0] = 112;
  v246 = v15.i64[0];
  v256[0] = v15.i64[0];
  __dst[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
  swift_unknownObjectRelease();
  result = memcpy(__dst, __src, 0x11BuLL);
  if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
  {
    goto LABEL_373;
  }

  v27 = *&__dst[7];
  v28 = *&__dst[8];
  v29 = *&__dst[9];
  result = outlined destroy of DateComponents(__dst);
  v30 = 3600 * v27;
  if ((v27 * 3600) >> 64 != (3600 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_296;
  }

  v31 = 60 * v28;
  if ((v28 * 60) >> 64 != (60 * v28) >> 63)
  {
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  v34 = v33 + v29;
  if (__OFADD__(v33, v29))
  {
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v35 = v240 * 604800.0 + v25;
  v256[0] = 112;
  v255[0] = v35;
  __src[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, __src, v257);
  swift_unknownObjectRelease();
  result = memcpy(__src, v257, 0x11BuLL);
  if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
  {
    goto LABEL_374;
  }

  v36 = *&__src[7];
  v37 = *&__src[8];
  v38 = *&__src[9];
  result = outlined destroy of DateComponents(__src);
  v39 = 3600 * v36;
  if ((v36 * 3600) >> 64 != (3600 * v36) >> 63)
  {
    goto LABEL_299;
  }

  v40 = 60 * v37;
  if ((v37 * 60) >> 64 != (60 * v37) >> 63)
  {
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v32 = __OFADD__(v39, v40);
  v41 = v39 + v40;
  if (v32)
  {
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
    goto LABEL_305;
  }

  v32 = __OFADD__(v41, v38);
  v42 = v41 + v38;
  if (v32)
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  if (v34 == v42)
  {
    v43 = v35;
  }

  else
  {
    ObjectType = swift_getObjectType();
    *v257 = v35;
    v45 = *(v13 + 40);
    v46 = v45(v257, ObjectType, v13);
    *&v257[0] = v246;
    result = v45(v257, ObjectType, v13);
    if (v46 == result)
    {
      v43 = v35;
    }

    else
    {
      v47 = result;
      if (__OFSUB__(result, v46))
      {
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
        goto LABEL_345;
      }

      v43 = v35 + (result - v46);
      _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv_r, &v253);
      v260 = v43;
      *v255 = *(v243 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v253, &v260, v255, v256);
      swift_unknownObjectRelease();
      result = memcpy(v257, v256, 0x11BuLL);
      if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
      {
        goto LABEL_385;
      }

      v48 = *&v257[7];
      v49 = *&v257[8];
      v50 = *&v257[9];
      result = outlined destroy of DateComponents(v257);
      v51 = 3600 * v48;
      if ((v48 * 3600) >> 64 != (3600 * v48) >> 63)
      {
        goto LABEL_344;
      }

      v52 = 60 * v49;
      if ((v49 * 60) >> 64 != (60 * v49) >> 63)
      {
LABEL_345:
        __break(1u);
        goto LABEL_346;
      }

      v32 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v32)
      {
LABEL_346:
        __break(1u);
        goto LABEL_347;
      }

      v32 = __OFADD__(v53, v50);
      v54 = v53 + v50;
      if (v32)
      {
LABEL_347:
        __break(1u);
        goto LABEL_348;
      }

      if (v54 != v34 && v47 < v46)
      {
        v43 = v35;
      }
    }

    v16 = v243;
    v21 = v234;
  }

  if (v240 < 1)
  {
    v22 = v242;
  }

  else
  {
    v255[0] = v43;
    v22 = v242;
    v256[0] = v242;
    v256[1] = v13;
    _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v255, v256, v257);
    if ((v257[1] & 1) == 0)
    {
      v43 = v43 - *(v257 + 1);
    }
  }

  *v14.i64 = v24 + v43;
  *v15.i64 = v24 + v43 + 0.0;
LABEL_60:
  v55 = v233;
  if (!v21)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    *v14.i64 = *v15.i64 - trunc(*v15.i64);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v14.i64[0] = vbslq_s8(vnegq_f64(v56), v14, v15).i64[0];
    if (*v14.i64 >= 0.0)
    {
      v57 = *v14.i64;
    }

    else
    {
      v57 = *v14.i64 + 1.0;
    }

    if (*v14.i64 >= 0.0)
    {
      v58 = *v15.i64 - *v14.i64;
    }

    else
    {
      v58 = *v15.i64 - *v14.i64 + -1.0;
    }

    *&v257[0] = 112;
    v247 = v15.i64[0];
    v256[0] = v15.i64[0];
    __dst[0] = *(v16 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
    swift_unknownObjectRelease();
    result = memcpy(__dst, __src, 0x11BuLL);
    if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
    {
      goto LABEL_375;
    }

    v59 = *&__dst[7];
    v60 = *&__dst[8];
    v61 = *&__dst[9];
    result = outlined destroy of DateComponents(__dst);
    v62 = 3600 * v59;
    if ((v59 * 3600) >> 64 == (3600 * v59) >> 63)
    {
      v63 = 60 * v60;
      if ((v60 * 60) >> 64 == (60 * v60) >> 63)
      {
        v32 = __OFADD__(v62, v63);
        v64 = v62 + v63;
        if (!v32)
        {
          v32 = __OFADD__(v64, v61);
          v65 = v64 + v61;
          if (!v32)
          {
            v66 = v21 * 604800.0 + v58;
            v67 = unk_1EEECD708;
            if ((unk_1EEECD708 & ~qword_1EEECD700) == 0)
            {
              v67 = 0;
            }

            v68 = qword_1EEECD710;
            if ((qword_1EEECD710 & ~(v67 | qword_1EEECD700)) == 0)
            {
              v68 = 0;
            }

            v256[0] = v68 | v67 | qword_1EEECD700;
            v255[0] = v66;
            v257[0] = *(v16 + 112);
            swift_unknownObjectRetain();
            _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, v257, __src);
            swift_unknownObjectRelease();
            result = memcpy(v257, __src, 0x11BuLL);
            if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
            {
              goto LABEL_376;
            }

            v69 = *&v257[7];
            v70 = *&v257[8];
            v71 = *&v257[9];
            result = outlined destroy of DateComponents(v257);
            v72 = 3600 * v69;
            if ((v69 * 3600) >> 64 == (3600 * v69) >> 63)
            {
              v73 = 60 * v70;
              if ((v70 * 60) >> 64 != (60 * v70) >> 63)
              {
LABEL_309:
                __break(1u);
                goto LABEL_310;
              }

              v32 = __OFADD__(v72, v73);
              v74 = v72 + v73;
              if (v32)
              {
LABEL_311:
                __break(1u);
                goto LABEL_312;
              }

              v32 = __OFADD__(v74, v71);
              v75 = v74 + v71;
              if (v32)
              {
LABEL_313:
                __break(1u);
                goto LABEL_314;
              }

              v76 = v65;
              if (v65 == v75)
              {
                v77 = v66;
                if (v21 < 1)
                {
LABEL_106:
                  *v14.i64 = v57 + v77;
                  *v15.i64 = v57 + v77 + 0.0;
                  goto LABEL_107;
                }
              }

              else
              {
                v78 = swift_getObjectType();
                *v256 = v66;
                v79 = *(v13 + 40);
                v80 = v79(v256, v78, v13);
                v256[0] = v247;
                result = v79(v256, v78, v13);
                if (v80 == result)
                {
                  v77 = v66;
                }

                else
                {
                  v81 = result;
                  if (__OFSUB__(result, v80))
                  {
LABEL_348:
                    __break(1u);
LABEL_349:
                    __break(1u);
                    goto LABEL_350;
                  }

                  v77 = v66 + (result - v80);
                  _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv1_r, &v260);
                  v254 = v77;
                  v253 = *(v243 + 112);
                  swift_unknownObjectRetain();
                  _CalendarGregorian.dateComponents(_:from:in:)(&v260, &v254, &v253, v255);
                  swift_unknownObjectRelease();
                  result = memcpy(v256, v255, 0x11BuLL);
                  if (v256[15] & 1) != 0 || (v256[17] & 1) != 0 || (v256[19])
                  {
                    goto LABEL_386;
                  }

                  v82 = v256[14];
                  v83 = v256[16];
                  v84 = v256[18];
                  result = outlined destroy of DateComponents(v256);
                  v85 = 3600 * v82;
                  if ((v82 * 3600) >> 64 != (3600 * v82) >> 63)
                  {
                    goto LABEL_349;
                  }

                  v86 = 60 * v83;
                  if ((v83 * 60) >> 64 != (60 * v83) >> 63)
                  {
LABEL_350:
                    __break(1u);
                    goto LABEL_351;
                  }

                  v32 = __OFADD__(v85, v86);
                  v87 = v85 + v86;
                  if (v32)
                  {
LABEL_351:
                    __break(1u);
                    goto LABEL_352;
                  }

                  v32 = __OFADD__(v87, v84);
                  v88 = v87 + v84;
                  if (v32)
                  {
LABEL_352:
                    __break(1u);
                    goto LABEL_353;
                  }

                  if (v88 != v76 && v81 < v80)
                  {
                    v77 = v66;
                  }
                }

                v16 = v243;
                if (v234 < 1)
                {
                  goto LABEL_106;
                }
              }

              *&v253 = v77;
              *&v255[0] = v22;
              *&v255[1] = v13;
              _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v253, v255, v256);
              if ((v256[2] & 1) == 0)
              {
                v77 = v77 - *&v256[1];
              }

              goto LABEL_106;
            }

LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

LABEL_306:
          __break(1u);
          goto LABEL_307;
        }

        goto LABEL_304;
      }

      goto LABEL_302;
    }

    goto LABEL_300;
  }

LABEL_107:
  v89 = v232;
  if (!v238)
  {
    v89 = 1;
  }

  if (v89)
  {
    goto LABEL_150;
  }

  *v14.i64 = *v15.i64 - trunc(*v15.i64);
  v90.f64[0] = NAN;
  v90.f64[1] = NAN;
  v14.i64[0] = vbslq_s8(vnegq_f64(v90), v14, v15).i64[0];
  if (*v14.i64 >= 0.0)
  {
    v91 = *v14.i64;
  }

  else
  {
    v91 = *v14.i64 + 1.0;
  }

  if (*v14.i64 >= 0.0)
  {
    v92 = *v15.i64 - *v14.i64;
  }

  else
  {
    v92 = *v15.i64 - *v14.i64 + -1.0;
  }

  *&v257[0] = 112;
  v248 = v15.i64[0];
  v256[0] = v15.i64[0];
  __dst[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
  swift_unknownObjectRelease();
  result = memcpy(__dst, __src, 0x11BuLL);
  if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
  {
    goto LABEL_377;
  }

  v93 = *&__dst[7];
  v94 = *&__dst[8];
  v95 = *&__dst[9];
  result = outlined destroy of DateComponents(__dst);
  v96 = 3600 * v93;
  if ((v93 * 3600) >> 64 != (3600 * v93) >> 63)
  {
    goto LABEL_308;
  }

  v97 = 60 * v94;
  if ((v94 * 60) >> 64 != (60 * v94) >> 63)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  v32 = __OFADD__(v96, v97);
  v98 = v96 + v97;
  if (v32)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v32 = __OFADD__(v98, v95);
  v99 = v98 + v95;
  if (v32)
  {
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v100 = v238 * 604800.0 + v92;
  v256[0] = 112;
  v255[0] = v100;
  __src[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, __src, v257);
  swift_unknownObjectRelease();
  result = memcpy(__src, v257, 0x11BuLL);
  if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
  {
    goto LABEL_378;
  }

  v101 = *&__src[7];
  v102 = *&__src[8];
  v103 = *&__src[9];
  result = outlined destroy of DateComponents(__src);
  v104 = 3600 * v101;
  if ((v101 * 3600) >> 64 != (3600 * v101) >> 63)
  {
    goto LABEL_315;
  }

  v105 = 60 * v102;
  if ((v102 * 60) >> 64 != (60 * v102) >> 63)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v32 = __OFADD__(v104, v105);
  v106 = v104 + v105;
  if (v32)
  {
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v32 = __OFADD__(v106, v103);
  v107 = v106 + v103;
  if (v32)
  {
LABEL_321:
    __break(1u);
    goto LABEL_322;
  }

  v108 = v99;
  if (v99 == v107)
  {
    v109 = v100;
  }

  else
  {
    v110 = swift_getObjectType();
    *v257 = v100;
    v111 = *(v13 + 40);
    v112 = v111(v257, v110, v13);
    *&v257[0] = v248;
    result = v111(v257, v110, v13);
    if (v112 == result)
    {
      v109 = v100;
    }

    else
    {
      v113 = result;
      if (__OFSUB__(result, v112))
      {
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
        goto LABEL_355;
      }

      v109 = v100 + (result - v112);
      _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv2_r, &v253);
      v260 = v109;
      *v255 = *(v243 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v253, &v260, v255, v256);
      swift_unknownObjectRelease();
      result = memcpy(v257, v256, 0x11BuLL);
      if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
      {
        goto LABEL_387;
      }

      v114 = *&v257[7];
      v115 = *&v257[8];
      v116 = *&v257[9];
      result = outlined destroy of DateComponents(v257);
      v117 = 3600 * v114;
      if ((v114 * 3600) >> 64 != (3600 * v114) >> 63)
      {
        goto LABEL_354;
      }

      v118 = 60 * v115;
      if ((v115 * 60) >> 64 != (60 * v115) >> 63)
      {
LABEL_355:
        __break(1u);
        goto LABEL_356;
      }

      v32 = __OFADD__(v117, v118);
      v119 = v117 + v118;
      if (v32)
      {
LABEL_356:
        __break(1u);
        goto LABEL_357;
      }

      v32 = __OFADD__(v119, v116);
      v120 = v119 + v116;
      if (v32)
      {
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      if (v120 != v108 && v113 < v112)
      {
        v109 = v100;
      }
    }

    v16 = v243;
  }

  if (v238 >= 1)
  {
    v255[0] = v109;
    v256[0] = v22;
    v256[1] = v13;
    _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v255, v256, v257);
    if ((v257[1] & 1) == 0)
    {
      v109 = v109 - *(v257 + 1);
    }
  }

  *v14.i64 = v91 + v109;
  *v15.i64 = v91 + v109 + 0.0;
LABEL_150:
  if (((v231 ^ 1) & v239) != 1 || !v235)
  {
    goto LABEL_192;
  }

  *v14.i64 = *v15.i64 - trunc(*v15.i64);
  v121.f64[0] = NAN;
  v121.f64[1] = NAN;
  v14.i64[0] = vbslq_s8(vnegq_f64(v121), v14, v15).i64[0];
  if (*v14.i64 >= 0.0)
  {
    v122 = *v14.i64;
  }

  else
  {
    v122 = *v14.i64 + 1.0;
  }

  if (*v14.i64 >= 0.0)
  {
    v123 = *v15.i64 - *v14.i64;
  }

  else
  {
    v123 = *v15.i64 - *v14.i64 + -1.0;
  }

  *&v257[0] = 112;
  v249 = v15.i64[0];
  v256[0] = v15.i64[0];
  __dst[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
  swift_unknownObjectRelease();
  result = memcpy(__dst, __src, 0x11BuLL);
  if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
  {
    goto LABEL_379;
  }

  v124 = *&__dst[7];
  v125 = *&__dst[8];
  v126 = *&__dst[9];
  result = outlined destroy of DateComponents(__dst);
  v127 = 3600 * v124;
  if ((v124 * 3600) >> 64 != (3600 * v124) >> 63)
  {
    goto LABEL_316;
  }

  v128 = 60 * v125;
  if ((v125 * 60) >> 64 != (60 * v125) >> 63)
  {
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v32 = __OFADD__(v127, v128);
  v129 = v127 + v128;
  if (v32)
  {
LABEL_320:
    __break(1u);
    goto LABEL_321;
  }

  v32 = __OFADD__(v129, v126);
  v130 = v129 + v126;
  if (v32)
  {
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
    goto LABEL_325;
  }

  v131 = v235 * 604800.0 + v123;
  _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv3_r, v256);
  v255[0] = v131;
  __src[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, __src, v257);
  swift_unknownObjectRelease();
  result = memcpy(__src, v257, 0x11BuLL);
  if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
  {
    goto LABEL_380;
  }

  v132 = *&__src[7];
  v133 = *&__src[8];
  v134 = *&__src[9];
  result = outlined destroy of DateComponents(__src);
  v135 = 3600 * v132;
  if ((v132 * 3600) >> 64 != (3600 * v132) >> 63)
  {
    goto LABEL_323;
  }

  v136 = 60 * v133;
  if ((v133 * 60) >> 64 != (60 * v133) >> 63)
  {
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v32 = __OFADD__(v135, v136);
  v137 = v135 + v136;
  if (v32)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v32 = __OFADD__(v137, v134);
  v138 = v137 + v134;
  if (v32)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  v139 = v130;
  if (v130 == v138)
  {
    v140 = v131;
  }

  else
  {
    v141 = swift_getObjectType();
    *v257 = v131;
    v142 = *(v13 + 40);
    v143 = v142(v257, v141, v13);
    *&v257[0] = v249;
    result = v142(v257, v141, v13);
    if (v143 == result)
    {
      v140 = v131;
    }

    else
    {
      v144 = result;
      if (__OFSUB__(result, v143))
      {
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v140 = v131 + (result - v143);
      _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv4_r, &v253);
      v260 = v140;
      *v255 = *(v243 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v253, &v260, v255, v256);
      swift_unknownObjectRelease();
      result = memcpy(v257, v256, 0x11BuLL);
      if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
      {
        goto LABEL_388;
      }

      v145 = *&v257[7];
      v146 = *&v257[8];
      v147 = *&v257[9];
      result = outlined destroy of DateComponents(v257);
      v148 = 3600 * v145;
      if ((v145 * 3600) >> 64 != (3600 * v145) >> 63)
      {
        goto LABEL_359;
      }

      v149 = 60 * v146;
      if ((v146 * 60) >> 64 != (60 * v146) >> 63)
      {
LABEL_360:
        __break(1u);
        goto LABEL_361;
      }

      v32 = __OFADD__(v148, v149);
      v150 = v148 + v149;
      if (v32)
      {
LABEL_361:
        __break(1u);
        goto LABEL_362;
      }

      v32 = __OFADD__(v150, v147);
      v151 = v150 + v147;
      if (v32)
      {
LABEL_362:
        __break(1u);
        goto LABEL_363;
      }

      if (v151 != v139 && v144 < v143)
      {
        v140 = v131;
      }
    }

    v16 = v243;
  }

  if (v235 >= 1)
  {
    v255[0] = v140;
    v256[0] = v22;
    v256[1] = v13;
    _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v255, v256, v257);
    if ((v257[1] & 1) == 0)
    {
      v140 = v140 - *(v257 + 1);
    }
  }

  *v14.i64 = v122 + v140;
  *v15.i64 = v122 + v140 + 0.0;
LABEL_192:
  v152 = v230;
  if (!v237)
  {
    v152 = 1;
  }

  if (v152)
  {
    goto LABEL_235;
  }

  *v14.i64 = *v15.i64 - trunc(*v15.i64);
  v153.f64[0] = NAN;
  v153.f64[1] = NAN;
  v14.i64[0] = vbslq_s8(vnegq_f64(v153), v14, v15).i64[0];
  if (*v14.i64 >= 0.0)
  {
    v154 = *v14.i64;
  }

  else
  {
    v154 = *v14.i64 + 1.0;
  }

  if (*v14.i64 >= 0.0)
  {
    v155 = *v15.i64 - *v14.i64;
  }

  else
  {
    v155 = *v15.i64 - *v14.i64 + -1.0;
  }

  *&v257[0] = 112;
  v250 = v15.i64[0];
  v256[0] = v15.i64[0];
  __dst[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
  swift_unknownObjectRelease();
  result = memcpy(__dst, __src, 0x11BuLL);
  if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
  {
    goto LABEL_381;
  }

  v156 = *&__dst[7];
  v157 = *&__dst[8];
  v158 = *&__dst[9];
  result = outlined destroy of DateComponents(__dst);
  v159 = 3600 * v156;
  if ((v156 * 3600) >> 64 != (3600 * v156) >> 63)
  {
    goto LABEL_324;
  }

  v160 = 60 * v157;
  if ((v157 * 60) >> 64 != (60 * v157) >> 63)
  {
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v32 = __OFADD__(v159, v160);
  v161 = v159 + v160;
  if (v32)
  {
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  v32 = __OFADD__(v161, v158);
  v162 = v161 + v158;
  if (v32)
  {
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  v163 = v237 * 86400.0 + v155;
  _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv5_r, v256);
  v255[0] = v163;
  __src[0] = *(v16 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, __src, v257);
  swift_unknownObjectRelease();
  result = memcpy(__src, v257, 0x11BuLL);
  if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
  {
    goto LABEL_382;
  }

  v164 = *&__src[7];
  v165 = *&__src[8];
  v166 = *&__src[9];
  result = outlined destroy of DateComponents(__src);
  v167 = 3600 * v164;
  if ((v164 * 3600) >> 64 != (3600 * v164) >> 63)
  {
    goto LABEL_331;
  }

  v168 = 60 * v165;
  if ((v165 * 60) >> 64 != (60 * v165) >> 63)
  {
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
    goto LABEL_335;
  }

  v32 = __OFADD__(v167, v168);
  v169 = v167 + v168;
  if (v32)
  {
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  v32 = __OFADD__(v169, v166);
  v170 = v169 + v166;
  if (v32)
  {
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v171 = v162;
  if (v162 == v170)
  {
    v172 = v163;
  }

  else
  {
    v173 = swift_getObjectType();
    *v257 = v163;
    v174 = *(v13 + 40);
    v175 = v174(v257, v173, v13);
    *&v257[0] = v250;
    result = v174(v257, v173, v13);
    if (v175 == result)
    {
      v172 = v163;
    }

    else
    {
      v176 = result;
      if (__OFSUB__(result, v175))
      {
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }

      v172 = v163 + (result - v175);
      _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv6_r, &v253);
      v260 = v172;
      *v255 = *(v243 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v253, &v260, v255, v256);
      swift_unknownObjectRelease();
      result = memcpy(v257, v256, 0x11BuLL);
      if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
      {
        goto LABEL_389;
      }

      v177 = *&v257[7];
      v178 = *&v257[8];
      v179 = *&v257[9];
      result = outlined destroy of DateComponents(v257);
      v180 = 3600 * v177;
      if ((v177 * 3600) >> 64 != (3600 * v177) >> 63)
      {
        goto LABEL_364;
      }

      v181 = 60 * v178;
      if ((v178 * 60) >> 64 != (60 * v178) >> 63)
      {
LABEL_365:
        __break(1u);
        goto LABEL_366;
      }

      v32 = __OFADD__(v180, v181);
      v182 = v180 + v181;
      if (v32)
      {
LABEL_366:
        __break(1u);
        goto LABEL_367;
      }

      v32 = __OFADD__(v182, v179);
      v183 = v182 + v179;
      if (v32)
      {
LABEL_367:
        __break(1u);
        goto LABEL_368;
      }

      if (v183 != v171 && v176 < v175)
      {
        v172 = v163;
      }
    }

    v16 = v243;
  }

  if (v237 >= 1)
  {
    v255[0] = v172;
    v256[0] = v22;
    v256[1] = v13;
    _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v255, v256, v257);
    if ((v257[1] & 1) == 0)
    {
      v172 = v172 - *(v257 + 1);
    }
  }

  *v14.i64 = v154 + v172;
  *v15.i64 = v154 + v172 + 0.0;
LABEL_235:
  v184 = v229;
  if (!v236)
  {
    v184 = 1;
  }

  if ((v184 & 1) == 0)
  {
    *v14.i64 = *v15.i64 - trunc(*v15.i64);
    v185.f64[0] = NAN;
    v185.f64[1] = NAN;
    v14.i64[0] = vbslq_s8(vnegq_f64(v185), v14, v15).i64[0];
    if (*v14.i64 >= 0.0)
    {
      v186 = *v14.i64;
    }

    else
    {
      v186 = *v14.i64 + 1.0;
    }

    if (*v14.i64 >= 0.0)
    {
      v187 = *v15.i64 - *v14.i64;
    }

    else
    {
      v187 = *v15.i64 - *v14.i64 + -1.0;
    }

    *&v257[0] = 112;
    v251 = v15.i64[0];
    v256[0] = v15.i64[0];
    __dst[0] = *(v16 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v257, v256, __dst, __src);
    swift_unknownObjectRelease();
    result = memcpy(__dst, __src, 0x11BuLL);
    if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
    {
      goto LABEL_383;
    }

    v188 = *&__dst[7];
    v189 = *&__dst[8];
    v190 = *&__dst[9];
    result = outlined destroy of DateComponents(__dst);
    v191 = 3600 * v188;
    if ((v188 * 3600) >> 64 == (3600 * v188) >> 63)
    {
      v192 = 60 * v189;
      if ((v189 * 60) >> 64 == (60 * v189) >> 63)
      {
        v32 = __OFADD__(v191, v192);
        v193 = v191 + v192;
        if (!v32)
        {
          v32 = __OFADD__(v193, v190);
          v194 = v193 + v190;
          if (!v32)
          {
            v195 = v236 * 86400.0 + v187;
            _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv7_r, v256);
            v255[0] = v195;
            __src[0] = *(v16 + 112);
            swift_unknownObjectRetain();
            _CalendarGregorian.dateComponents(_:from:in:)(v256, v255, __src, v257);
            swift_unknownObjectRelease();
            result = memcpy(__src, v257, 0x11BuLL);
            if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
            {
              goto LABEL_384;
            }

            v196 = *&__src[7];
            v197 = *&__src[8];
            v198 = *&__src[9];
            result = outlined destroy of DateComponents(__src);
            v199 = 3600 * v196;
            if ((v196 * 3600) >> 64 == (3600 * v196) >> 63)
            {
              v200 = 60 * v197;
              if ((v197 * 60) >> 64 == (60 * v197) >> 63)
              {
                v32 = __OFADD__(v199, v200);
                v201 = v199 + v200;
                if (!v32)
                {
                  v32 = __OFADD__(v201, v198);
                  v202 = v201 + v198;
                  if (!v32)
                  {
                    v203 = v194;
                    if (v194 == v202)
                    {
                      v204 = v195;
LABEL_273:
                      if (v236 >= 1)
                      {
                        v255[0] = v204;
                        v256[0] = v22;
                        v256[1] = v13;
                        _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v255, v256, v257);
                        if ((v257[1] & 1) == 0)
                        {
                          v204 = v204 - *(v257 + 1);
                        }
                      }

                      *v14.i64 = v186 + v204;
                      *v15.i64 = v186 + v204 + 0.0;
                      goto LABEL_277;
                    }

                    v205 = swift_getObjectType();
                    *v257 = v195;
                    v206 = *(v13 + 40);
                    v207 = v206(v257, v205, v13);
                    *&v257[0] = v251;
                    result = v206(v257, v205, v13);
                    if (v207 == result)
                    {
                      v204 = v195;
                      goto LABEL_273;
                    }

                    v208 = result;
                    if (!__OFSUB__(result, v207))
                    {
                      v204 = v195 + (result - v207);
                      _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC4date33byAddingAndCarryingOverComponents2toAA4DateVAA0lJ0V_AHtAA0cB5ErrorOYKFTv8_r, &v253);
                      v260 = v204;
                      *v255 = *(v243 + 112);
                      swift_unknownObjectRetain();
                      _CalendarGregorian.dateComponents(_:from:in:)(&v253, &v260, v255, v256);
                      swift_unknownObjectRelease();
                      result = memcpy(v257, v256, 0x11BuLL);
                      if (BYTE8(v257[7]) & 1) != 0 || (BYTE8(v257[8]) & 1) != 0 || (BYTE8(v257[9]))
                      {
                        goto LABEL_390;
                      }

                      v209 = *&v257[7];
                      v210 = *&v257[8];
                      v211 = *&v257[9];
                      result = outlined destroy of DateComponents(v257);
                      v212 = 3600 * v209;
                      if ((v209 * 3600) >> 64 == (3600 * v209) >> 63)
                      {
                        v213 = 60 * v210;
                        if ((v210 * 60) >> 64 == (60 * v210) >> 63)
                        {
                          v32 = __OFADD__(v212, v213);
                          v214 = v212 + v213;
                          if (!v32)
                          {
                            v32 = __OFADD__(v214, v211);
                            v215 = v214 + v211;
                            if (!v32)
                            {
                              if (v215 != v203 && v208 < v207)
                              {
                                v204 = v195;
                              }

                              goto LABEL_273;
                            }

                            goto LABEL_372;
                          }

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
LABEL_376:
                          __break(1u);
LABEL_377:
                          __break(1u);
LABEL_378:
                          __break(1u);
LABEL_379:
                          __break(1u);
LABEL_380:
                          __break(1u);
LABEL_381:
                          __break(1u);
LABEL_382:
                          __break(1u);
LABEL_383:
                          __break(1u);
LABEL_384:
                          __break(1u);
LABEL_385:
                          __break(1u);
LABEL_386:
                          __break(1u);
LABEL_387:
                          __break(1u);
LABEL_388:
                          __break(1u);
LABEL_389:
                          __break(1u);
LABEL_390:
                          __break(1u);
                          return result;
                        }

LABEL_370:
                        __break(1u);
                        goto LABEL_371;
                      }

LABEL_369:
                      __break(1u);
                      goto LABEL_370;
                    }

LABEL_368:
                    __break(1u);
                    goto LABEL_369;
                  }

                  goto LABEL_342;
                }

LABEL_341:
                __break(1u);
LABEL_342:
                __break(1u);
                goto LABEL_343;
              }

LABEL_340:
              __break(1u);
              goto LABEL_341;
            }

LABEL_339:
            __break(1u);
            goto LABEL_340;
          }

LABEL_338:
          __break(1u);
          goto LABEL_339;
        }

        goto LABEL_336;
      }

      goto LABEL_334;
    }

    goto LABEL_332;
  }

LABEL_277:
  if ((v228 & 1) == 0)
  {
    LOBYTE(v255[0]) = 7;
    v256[0] = v15.i64[0];
    *&__src[0] = v22;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v226, __src, __dst, v257, v14, v15);
    if (v6)
    {
      goto LABEL_288;
    }

    v15.i64[0] = *&v257[0];
  }

  if ((v227 & 1) == 0)
  {
    LOBYTE(v255[0]) = 4;
    v256[0] = v15.i64[0];
    *&__src[0] = v22;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v224, __src, __dst, v257, v14, v15);
    if (v6)
    {
      goto LABEL_288;
    }

    v15.i64[0] = *&v257[0];
  }

  if ((v225 & 1) == 0)
  {
    LOBYTE(v255[0]) = 5;
    v256[0] = v15.i64[0];
    *&__src[0] = v22;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v222, __src, __dst, v257, v14, v15);
    if (!v6)
    {
      v15.i64[0] = *&v257[0];
      goto LABEL_286;
    }

LABEL_288:
    result = swift_unknownObjectRelease();
LABEL_289:
    v216 = __dst[2];
    v217 = __dst[1];
    *a3 = __dst[0];
    *(a3 + 16) = v217;
    *(a3 + 32) = v216;
    return result;
  }

LABEL_286:
  if ((v223 & 1) == 0)
  {
    LOBYTE(v255[0]) = 6;
    v256[0] = v15.i64[0];
    *&__src[0] = v22;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v220, __src, __dst, v257, v14, v15);
    if (v6)
    {
      goto LABEL_288;
    }

    v15.i64[0] = *&v257[0];
  }

  if (v221)
  {
    v252 = v15.i64[0];
    result = swift_unknownObjectRelease();
    *a4 = v252;
  }

  else
  {
    LOBYTE(v255[0]) = 13;
    v256[0] = v15.i64[0];
    *&__src[0] = v22;
    *(&__src[0] + 1) = v13;
    _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v255, v256, v218, __src, __dst, v257, v14, v15);
    result = swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_289;
    }

    *a4 = *&v257[0];
  }

  return result;
}

uint64_t _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
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

uint64_t storeEnumTagSinglePayload for ICURelativeDateFormatter.Signature(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id String.init<A>(bytes:encoding:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UTF32EndianAdaptor();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71 - v7;
  v9 = type metadata accessor for UTF16EndianAdaptor();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  if (*a2 <= 2348810495)
  {
    if (v17 > 6)
    {
      if (v17 != 7)
      {
        v71 = v12;
        if (v17 != 10)
        {
          goto LABEL_22;
        }

        v18 = 2;
        goto LABEL_43;
      }
    }

    else if (v17 != 1)
    {
      v71 = v12;
      if (v17 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
        if (v76 == 1)
        {
          (*(v71 + 16))(v16, a1, a3);
          v19 = dispatch thunk of Sequence._copyToContiguousArray()();
          v20 = (v19 + 32);
          v21 = *(v19 + 16);
          if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of String.init<A>(bytes:encoding:), v19 + 32, v21))
          {
            v22 = v21 >= 3;
            v21 -= 3;
            if (!v22)
            {
              __break(1u);
            }

            v20 = (v19 + 35);
          }

          v23 = static String._tryFromUTF8(_:)();
          if (v24)
          {
            v25 = v23;

            return v25;
          }

          v54 = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v20, v21);
          v56 = v55;

          result = v54;
          if (!v56)
          {
            return 0;
          }
        }

        else
        {
          result = v75;
          if (!v76)
          {
            return 0;
          }
        }

        return result;
      }

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
    if (v76 == 1)
    {
      v36 = v12;
      v37 = *(v12 + 16);
      v38 = a1;
      v37(v16, a1, a3);
      v39 = dispatch thunk of Sequence._copyToContiguousArray()();
      v40 = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5((v39 + 32), *(v39 + 16));
      v42 = v41;

      result = v40;
      if (v42)
      {
        return result;
      }
    }

    else
    {
      v36 = v12;
      v38 = a1;
      result = v75;
      if (v76)
      {
        return result;
      }
    }

    if (one-time initialization token for compatibility1 != -1)
    {
      swift_once();
    }

    if (static String.compatibility1 != 1)
    {
      return 0;
    }

    (*(v36 + 16))(v16, v38, a3);
    v43 = dispatch thunk of Sequence._copyToContiguousArray()();
    v44 = [objc_allocWithZone(NSString) initWithBytes:v43 + 32 length:*(v43 + 16) encoding:v17];
    if (!v44)
    {
LABEL_55:

      return 0;
    }

    v45 = v44;
    isTaggedPointer = _objc_isTaggedPointer(v44);
    v47 = v45;
    v34 = v47;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v47);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
LABEL_41:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            *(&v71 - 2) = v34;
            v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_102:

            return v48;
          }

          goto LABEL_64;
        }

        result = [v34 UTF8String];
        if (!result)
        {
          goto LABEL_105;
        }

        v61 = String.init(utf8String:)(result);
        if (v65)
        {
          goto LABEL_97;
        }

        __break(1u);
      }

      LOWORD(v72) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v66)
      {
        [v34 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v64 = v77;
        goto LABEL_89;
      }

LABEL_97:
      v48 = v61;

LABEL_101:
      goto LABEL_102;
    }

LABEL_64:
    LOBYTE(v77) = 0;
    v75 = 0;
    LOBYTE(v72) = 0;
    LOBYTE(v73) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v53 = v75;
      if (v75)
      {
        if (v73 == 1)
        {
          if (v77)
          {
            goto LABEL_61;
          }

          goto LABEL_68;
        }

        if ((v72 & 1) == 0)
        {
          goto LABEL_99;
        }

        if (v77 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_70:
    v58 = v34;
    v59 = String.init(_nativeStorage:)();
    if (v60)
    {
      v48 = v59;

      goto LABEL_102;
    }

    v75 = [v58 length];
    if (v75)
    {
      goto LABEL_99;
    }

LABEL_73:
    v48 = 0;
    goto LABEL_102;
  }

  v71 = v12;
  v18 = 1;
  if (v17 <= 2483028223)
  {
    if (v17 == 2348810496)
    {
      v18 = 2;
LABEL_47:
      MEMORY[0x1EEE9AC00](v14);
      *(&v71 - 16) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
      if (v76 < 2)
      {
        (*(v71 + 16))(v8, a1, a3);
        v8[*(v6 + 36)] = v18;
        swift_getWitnessTable();
        result = specialized String.init<A, B>(_validating:as:)(v8, v6);
        if (!v51)
        {
          return 0;
        }

        return result;
      }

      return v75;
    }

    if (v17 != 2415919360)
    {
LABEL_22:
      MEMORY[0x1EEE9AC00](v14);
      *(&v71 - 2) = v17;
      MEMORY[0x1EEE9AC00](v27);
      *(&v71 - 2) = partial apply for makeNSString #1 <A>(bytes:) in String.init<A>(bytes:encoding:);
      *(&v71 - 1) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
      if (v78 != 1)
      {
        if (v78)
        {
          return v77;
        }

        return 0;
      }

      (*(v71 + 16))(v16, a1, a3);
      v29 = dispatch thunk of Sequence._copyToContiguousArray()();
      v30 = [objc_allocWithZone(NSString) initWithBytes:v29 + 32 length:*(v29 + 16) encoding:v17];
      if (v30)
      {
        v31 = v30;
        v32 = _objc_isTaggedPointer(v30);
        v33 = v31;
        v34 = v33;
        if (!v32)
        {
          goto LABEL_57;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v33);
        if (!TaggedPointerTag)
        {
LABEL_79:
          v73 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v63)
          {
            [v34 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v64 = v72;
LABEL_89:

            return v64;
          }

          goto LABEL_97;
        }

        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            goto LABEL_41;
          }

LABEL_57:
          LOBYTE(v72) = 0;
          v75 = 0;
          LOBYTE(v73) = 0;
          v74 = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v53 = v75;
            if (v75)
            {
              if (v74 == 1)
              {
                if (v72)
                {
LABEL_61:
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
LABEL_69:
                  v57 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_100:
                  v48 = v57;
                  goto LABEL_101;
                }

LABEL_68:
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                goto LABEL_69;
              }

              if ((v73 & 1) == 0)
              {
                goto LABEL_99;
              }

              if (v72 == 1)
              {
LABEL_92:
                MEMORY[0x1EEE9AC00](IsCF);
                *(&v71 - 4) = v34;
                *(&v71 - 3) = &v75;
                *(&v71 - 4) = 1536;
                *(&v71 - 1) = v53;
LABEL_94:
                v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v70 = HIBYTE(v69) & 0xF;
                if ((v69 & 0x2000000000000000) == 0)
                {
                  v70 = v61 & 0xFFFFFFFFFFFFLL;
                }

                if (v70)
                {
                  goto LABEL_97;
                }

LABEL_99:
                v57 = String.init(_cocoaString:)();
                goto LABEL_100;
              }

LABEL_93:
              v67 = [v34 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v67);
              *(&v71 - 4) = v34;
              *(&v71 - 3) = &v75;
              *(&v71 - 4) = 134217984;
              *(&v71 - 1) = v68;
              goto LABEL_94;
            }

LABEL_72:

            goto LABEL_73;
          }

          goto LABEL_70;
        }

        result = [v34 UTF8String];
        if (result)
        {
          v61 = String.init(utf8String:)(result);
          if (v62)
          {
            goto LABEL_97;
          }

          __break(1u);
          goto LABEL_79;
        }

        __break(1u);
LABEL_105:
        __break(1u);
        return result;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (v17 != 2483028224)
    {
      if (v17 == 2550137088)
      {
        goto LABEL_47;
      }

      if (v17 == 2617245952)
      {
        v18 = 0;
        goto LABEL_47;
      }

      goto LABEL_22;
    }

    v18 = 0;
  }

LABEL_43:
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  *(&v71 - 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v76 >= 2)
  {
    return v75;
  }

  (*(v71 + 16))(v11, a1, a3);
  v11[*(v49 + 36)] = v18;
  swift_getWitnessTable();
  result = specialized String.init<A, B>(_validating:as:)(v11, v49);
  if (!v50)
  {
    return 0;
  }

  return result;
}

void type metadata completion function for UTF16EndianAdaptor()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Endianness?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Endianness?()
{
  if (!lazy cache variable for type metadata for Endianness?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Endianness?);
    }
  }
}

uint64_t specialized thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@owned String?, @error @owned Error)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  result = specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), a1, a2);
  if (result)
  {
    v7 = v3 < 3;
    v3 -= 3;
    if (v7)
    {
      __break(1u);
      return result;
    }

    if (v4)
    {
      v4 += 3;
    }

    else
    {
      v4 = 0;
    }
  }

  result = static String._tryFromUTF8(_:)();
  if (!v8)
  {
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v4, v3);
  }

  *a3 = result;
  a3[1] = v8;
  return result;
}

void _BridgedURL.appending<A>(path:directoryHint:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  (*(v8 + 16))(&v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v9, v4);
  v10 = String.init<A>(_:)();
  v12 = specialized BidirectionalCollection.last.getter(v10, v11) & 0x1FF;
  v13 = v12 == 47;
  if (v7 <= 1)
  {
    v14 = v7 == 0;
    v13 = v7 == 0;
    goto LABEL_8;
  }

  if (v7 != 2 || (v15 = *(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url), ([v15 isFileURL] & 1) == 0))
  {
    v14 = v12 == 47;
LABEL_8:
    v15 = *(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
    v16 = [v15 URLByAppendingPathComponent:String._bridgeToObjectiveCImpl()() isDirectory:v13];
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v16 = [v15 URLByAppendingPathComponent_];
  swift_unknownObjectRelease();
  if (v16)
  {
LABEL_9:
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v16, &v106);

    *a2 = v106;
    return;
  }

  v14 = 2;
LABEL_10:
  v17 = [v15 absoluteString];
  v80 = v14;
  if (!v17)
  {
    v26 = 0xE000000000000000;
    goto LABEL_47;
  }

  v18 = v17;
  isTaggedPointer = _objc_isTaggedPointer(v17);
  v20 = v18;
  v21 = v20;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v20);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag == 22)
    {
      v34 = [v21 UTF8String];
      if (v34)
      {
        v35 = String.init(utf8String:)(v34);
        if (v36)
        {
          v37 = v35;
          v38 = v36;

          v17 = v37;
          v26 = v38;
          goto LABEL_47;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_99;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *&v79[-16] = v21;
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;

      v26 = v25;
      v17 = v23;
      goto LABEL_47;
    }

LABEL_16:
    LOBYTE(v104[0]) = 0;
    *&v106 = 0;
    LOBYTE(v94[0]) = 0;
    LOBYTE(v92[0]) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v28 = v106;
      if (v106)
      {
        if (LOBYTE(v92[0]) == 1)
        {
          if (v104[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v43 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_45;
        }

        if (v94[0])
        {
          if (LOBYTE(v104[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *&v79[-32] = v21;
            *&v79[-24] = &v106;
            *&v79[-16] = 1536;
            *&v79[-8] = v28;
          }

          else
          {
            v45 = [v21 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v45);
            *&v79[-32] = v21;
            *&v79[-24] = &v106;
            *&v79[-16] = 134217984;
            *&v79[-8] = v46;
          }

          v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v47 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v47 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v47)
          {
            goto LABEL_42;
          }
        }

LABEL_44:
        v43 = String.init(_cocoaString:)();
LABEL_45:
        v41 = v43;
        v42 = v44;
        goto LABEL_46;
      }
    }

    else
    {
      v29 = v21;
      v30 = String.init(_nativeStorage:)();
      if (v31)
      {
        v32 = v30;
        v33 = v31;

        v26 = v33;
        v17 = v32;
        goto LABEL_47;
      }

      *&v106 = [v29 length];
      if (v106)
      {
        goto LABEL_44;
      }
    }

    v17 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_47;
  }

  LOWORD(v94[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v40)
  {
LABEL_42:
    v41 = v39;
    v42 = v40;

    goto LABEL_46;
  }

  [v21 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v42 = *(&v104[0] + 1);
  v41 = *&v104[0];
LABEL_46:

  v26 = v42;
  v17 = v41;
LABEL_47:
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v17, v26, 1, v104);
  v112 = v104[6];
  v113[0] = v104[7];
  v113[1] = v105[0];
  *(&v113[1] + 10) = *(v105 + 10);
  v108 = v104[2];
  v109 = v104[3];
  v110 = v104[4];
  v111 = v104[5];
  v106 = v104[0];
  v107 = v104[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v106) == 1)
  {

    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v100 = v110;
  v101 = v111;
  v102 = v112;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  WORD4(v103[2]) = WORD4(v113[2]);
  *(&v103[1] + 8) = *(&v113[1] + 8);
  *(v103 + 8) = *(v113 + 8);
  *&v103[0] = *&v113[0];
  URLComponents.path.getter();
  v48 = String._bridgeToObjectiveCImpl()();

  v49 = String._bridgeToObjectiveCImpl()();

  v50 = [v48 stringByAppendingPathComponent_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v50)
  {
    goto LABEL_63;
  }

  v51 = _objc_isTaggedPointer(v50);
  v52 = v50;
  v53 = v52;
  if (!v51)
  {
LABEL_55:
    LOBYTE(v92[0]) = 0;
    *&v94[0] = 0;
    LOBYTE(v83) = 0;
    LOBYTE(v81) = 0;
    v58 = __CFStringIsCF();
    if (v58)
    {
      v59 = *&v94[0];
      if (*&v94[0])
      {
        if (v81 == 1)
        {
          if (v92[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v66 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_85;
        }

        if (v83)
        {
          if (LOBYTE(v92[0]) == 1)
          {
            MEMORY[0x1EEE9AC00](v58);
            *&v79[-32] = v53;
            *&v79[-24] = v94;
            *&v79[-16] = 1536;
            *&v79[-8] = v59;
          }

          else
          {
            v68 = [v53 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v68);
            *&v79[-32] = v53;
            *&v79[-24] = v94;
            *&v79[-16] = 134217984;
            *&v79[-8] = v69;
          }

          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v57 = v71;
          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            v55 = v70;
            goto LABEL_69;
          }
        }

LABEL_84:
        v66 = String.init(_cocoaString:)();
LABEL_85:
        v55 = v66;
        v57 = v67;
        goto LABEL_86;
      }
    }

    else
    {
      v60 = v53;
      v61 = String.init(_nativeStorage:)();
      if (v62)
      {
        v55 = v61;
        v57 = v62;

        goto LABEL_87;
      }

      *&v94[0] = [v60 length];
      if (*&v94[0])
      {
        goto LABEL_84;
      }
    }

LABEL_63:
    v55 = 0;
    v57 = 0xE000000000000000;
    goto LABEL_87;
  }

  v54 = _objc_getTaggedPointerTag(v52);
  if (!v54)
  {
    goto LABEL_67;
  }

  if (v54 != 22)
  {
    if (v54 == 2)
    {
      MEMORY[0x1EEE9AC00](v54);
      *&v79[-16] = v53;
      v55 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v57 = v56;

      goto LABEL_87;
    }

    goto LABEL_55;
  }

  v63 = [v53 UTF8String];
  if (!v63)
  {
LABEL_99:
    __break(1u);
    return;
  }

  v64 = String.init(utf8String:)(v63);
  if (!v65)
  {
    __break(1u);
LABEL_67:
    LOWORD(v83) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v65)
    {
      [v53 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v57 = *(&v92[0] + 1);
      v55 = *&v92[0];
      goto LABEL_86;
    }
  }

  v55 = v64;
  v57 = v65;
LABEL_69:

LABEL_86:
LABEL_87:
  v81 = v55;
  v82 = v57;
  if (v80 != 2 && (v80 & 1) != 0 && (specialized BidirectionalCollection.last.getter(v55, v57) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  v73 = v81;
  v74 = v82;
  BYTE8(v96) = 0;
  BYTE14(v96) = 0;
  v75 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v75 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v75)
  {

    v76 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v73, v74, 0);
    v78 = v77;
  }

  else
  {

    v76 = 0;
    v78 = 0xE000000000000000;
  }

  *(&v102 + 1) = v76;
  *&v103[0] = v78;
  v93[0] = v103[1];
  *(v93 + 10) = *(&v103[1] + 10);
  v92[2] = v98;
  v92[3] = v99;
  v92[4] = v100;
  v92[5] = v101;
  v92[0] = v96;
  v92[1] = v97;
  v92[6] = v102;
  v92[7] = v103[0];
  v88 = v101;
  v89 = v102;
  v90 = v103[0];
  v91[0] = v103[1];
  *(v91 + 10) = *(&v103[1] + 10);
  v85 = v98;
  v86 = v99;
  v87 = v100;
  v83 = v96;
  v84 = v97;
  outlined init with copy of URLComponents(v92, v94);
  URLComponents.url.getter(a2);
  v94[6] = v102;
  v94[7] = v103[0];
  v95[0] = v103[1];
  *(v95 + 10) = *(&v103[1] + 10);
  v94[2] = v98;
  v94[3] = v99;
  v94[4] = v100;
  v94[5] = v101;
  v94[0] = v96;
  v94[1] = v97;
  outlined destroy of URLComponents(v94);
  outlined destroy of URLComponents(v92);
}

uint64_t type metadata completion function for JSONDecoder()
{
  result = type metadata accessor for CodingUserInfoKey();
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

uint64_t type metadata instantiation function for JSONDecoderImpl.KeyedContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ICURelativeDateFormatter.Signature(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

void *URL.appending<A>(path:directoryHint:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a2;
  v12 = *v5;
  v11 = v5[1];
  ObjectType = swift_getObjectType();
  v16 = v10;
  result = (*(v11 + 352))(v17, a1, &v16, a3, a4, ObjectType, v11);
  v15 = v17[0];
  if (v17[0])
  {
    v11 = v17[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v15 = v12;
  }

  *a5 = v15;
  a5[1] = v11;
  return result;
}

uint64_t cleanupTemporaryDirectory(at:)(uint64_t result, unint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = result & 0xFFFFFFFFFFFFLL;
  }

  v5 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v5 < -1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      return swift_willThrow();
    }

    a2 = v5 + 1;
    if (v5 < 1024)
    {
LABEL_9:
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v7 = &v16[-v6];
      v9 = String._fileSystemRepresentation(into:)(&v16[-v6], v8, v3, v2);
      if (v9)
      {
        result = rmdir(v7);
      }

      else
      {
        result = 0;
      }

      if ((v9 ^ 1))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = a2;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_9;
  }

  v15 = swift_slowAlloc();
  specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v15, v14, v3, v2, v17);
  MEMORY[0x1865D2690](v15, -1, -1);
  result = LODWORD(v17[0]);
  if ((v17[0] & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (!result)
  {
    return result;
  }

LABEL_14:
  v10 = [objc_opt_self() defaultManager];
  v11 = String._bridgeToObjectiveCImpl()();
  v17[0] = 0;
  v12 = [v10 removeItemAtPath:v11 error:v17];

  swift_unknownObjectRelease();
  v13 = v17[0];
  if (!v12)
  {
    if (v17[0] || one-time initialization token for _nilObjCError == -1)
    {
      return swift_willThrow();
    }

    goto LABEL_28;
  }

  return v13;
}

uint64_t outlined init with take of Equatable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t type metadata completion function for Predicate(uint64_t a1)
{
  result = type metadata accessor for any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>();
  if (v3 <= 0x3F)
  {
    v12[14] = 0;
    v13 = result;
    v4 = *(a1 + 16);
    if (v4 == 1)
    {
      result = type metadata accessor for PredicateExpressions.Variable();
      if (v5 > 0x3F)
      {
        return result;
      }

      result = swift_checkMetadataState();
      if (v6 > 0x3F)
      {
        return result;
      }

LABEL_10:
      v12[15] = 0;
      v14 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }

    MEMORY[0x1EEE9AC00](result);
    if (v4)
    {
      v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v10 = v4;
      do
      {
        v8 += 8;
        *v9++ = type metadata accessor for PredicateExpressions.Variable();
        --v10;
      }

      while (v10);
    }

    result = swift_getTupleTypeMetadata();
    if (v11 <= 0x3F)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t type metadata accessor for any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>()
{
  result = lazy cache variable for type metadata for any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>;
  if (!lazy cache variable for type metadata for any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for any StandardPredicateExpression<Self.PredicateExpression.Output == Bool>);
  }

  return result;
}