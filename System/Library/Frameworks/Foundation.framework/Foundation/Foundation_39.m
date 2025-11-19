uint64_t IntegerFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v109[5] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = &v88 - v5;
  v105 = v3;
  v97 = *(*(v3 + 24) + 16);
  v96 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v88 - v6;
  v107 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - v10;
  v11 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v13 = v12;
  v14 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 472))(ObjectType, v14);
  v18 = v17;
  if (one-time initialization token for cache != -1)
  {
    v39 = v16;
    swift_once();
    v16 = v39;
  }

  v20 = static ICUNumberFormatter.cache;
  v19 = *algn_1EA7B1D98;
  v108[0] = v11;
  v108[1] = v13;
  v106 = v16;
  v108[2] = v16;
  v108[3] = v18;
  MEMORY[0x1EEE9AC00](v16);
  *(&v88 - 2) = v108;
  os_unfair_lock_lock((v19 + 24));
  v21 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v19 + 16, v109);
  v102 = 0;
  os_unfair_lock_unlock((v19 + 24));
  v22 = v109[0];
  if (v109[0] != 1)
  {
LABEL_46:

    if (!v22)
    {
      (*(v107 + 16))(v103, v104, v4);
      return String.init<A>(_:radix:uppercase:)();
    }

    v61 = v101;
    v62 = v104;
    v106 = *(v107 + 16);
    v106(v101, v104, v4);
    v63 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v64 = v103;
    if ((v63 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v109[0] = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
LABEL_60:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_61;
        }
      }

      else
      {
        v65 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v66 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v65 & 1) == 0)
        {
          if (v66 >= 64)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        if (v66 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v69 = dispatch thunk of static Comparable.< infix(_:_:)();
          v68 = *(v107 + 8);
          v68(v64, v4);
          if (v69)
          {
            goto LABEL_65;
          }

          goto LABEL_60;
        }
      }

      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v67 = dispatch thunk of static Comparable.< infix(_:_:)();
      v68 = *(v107 + 8);
      v68(v64, v4);
      if (v67)
      {
        goto LABEL_65;
      }
    }

LABEL_61:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_73:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v107 + 8))(v61, v4);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v82 = v102;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      if (v82)
      {
        goto LABEL_74;
      }

      goto LABEL_66;
    }

    v109[0] = 0x7FFFFFFFFFFFFFFFLL;
    v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v70)
    {
      if (v71 > 64)
      {
        goto LABEL_64;
      }
    }

    else if (v71 > 63)
    {
LABEL_64:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v72 = dispatch thunk of static Comparable.< infix(_:_:)();
      v68 = *(v107 + 8);
      v68(v64, v4);
      if ((v72 & 1) == 0)
      {
        goto LABEL_73;
      }

LABEL_65:
      v68(v61, v4);
      v73 = v98;
      dispatch thunk of BinaryInteger.words.getter();
      v74 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v75 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v77 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v73, v74 & 1, v75, *(*(AssociatedConformanceWitness + 8) + 8));
      v79 = v78;
      (*(v99 + 8))(v73, v75);
      v80 = v22[2];
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v81 = v80;
      v82 = v102;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v81, v77, v79);
      if (v82)
      {
LABEL_74:

        v83 = v106;
LABEL_75:
        v83(v64, v62, v4);
        return String.init<A>(_:radix:uppercase:)();
      }

LABEL_66:
      v83 = v106;

      v84 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v86 = v85;

      if (v86)
      {
        return v84;
      }

      goto LABEL_75;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_73;
  }

  type metadata accessor for ICUNumberFormatter();
  v22 = swift_allocObject();
  v22[3] = v11;
  v22[4] = v13;
  swift_bridgeObjectRetain_n();
  v23 = MEMORY[0x1865CB200](v11, v13);
  if (v23)
  {
    v24 = v23;
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v23, 0);

    v21 = specialized Sequence._copySequenceContents(initializing:)(v109, (v25 + 4), v24, v11, v13);

    if (v21 != v24)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v109[0]) = 0;
  if (v25[2] >> 31)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  String.utf8CString.getter();
  v27 = unumf_openForSkeletonAndLocale();

  if (!v27)
  {
    goto LABEL_12;
  }

  if (SLODWORD(v109[0]) >= 1)
  {
    unumf_close();
LABEL_12:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v22 = 0;
    goto LABEL_14;
  }

  v22[2] = v27;
LABEL_14:
  os_unfair_lock_lock((v19 + 24));
  v28 = *(*(v19 + 16) + 16);
  v94 = *(v19 + 16);
  if (v20 < v28)
  {
    *(v19 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = *(v19 + 16);
  v21 = v109[0];
  *(v19 + 16) = 0x8000000000000000;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13, v106, v18);
  v31 = *(v21 + 16);
  v32 = (v30 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    goto LABEL_26;
  }

  LOBYTE(v20) = v30;
  if (*(v21 + 24) >= v33)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v21;
      v35 = v106;
LABEL_23:
      if (v20)
      {
LABEL_24:
        v38 = v26;

        *(*(v34 + 56) + 8 * v38) = v22;

LABEL_45:
        *(v19 + 16) = v34;

        os_unfair_lock_unlock((v19 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_46;
      }

LABEL_44:
      specialized _NativeDictionary._insert(at:key:value:)(v26, v11, v13, v35, v18, v22, v34);
      goto LABEL_45;
    }

LABEL_28:
    v88 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v40 = static _DictionaryStorage.copy(original:)();
    v34 = v40;
    if (*(v21 + 16))
    {
      v41 = (v40 + 64);
      v42 = 1 << *(v34 + 32);
      v89 = (v21 + 64);
      v43 = (v42 + 63) >> 6;
      if (v34 != v21 || v41 >= &v89[8 * v43])
      {
        memmove(v41, v89, 8 * v43);
      }

      v44 = 0;
      *(v34 + 16) = *(v21 + 16);
      v45 = 1 << *(v21 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v21 + 64);
      v48 = (v45 + 63) >> 6;
      v90 = v48;
      if (v47)
      {
        do
        {
          v49 = __clz(__rbit64(v47));
          v93 = (v47 - 1) & v47;
LABEL_41:
          v52 = v49 | (v44 << 6);
          v53 = *(v21 + 56);
          v54 = (*(v21 + 48) + 32 * v52);
          v55 = *v54;
          v91 = v54[1];
          v56 = v91;
          v57 = v54[2];
          v92 = v54[3];
          v58 = v92;
          v59 = *(v53 + 8 * v52);
          v60 = (*(v34 + 48) + 32 * v52);
          *v60 = v55;
          v60[1] = v56;
          v60[2] = v57;
          v60[3] = v58;
          *(*(v34 + 56) + 8 * v52) = v59;

          v48 = v90;
          v47 = v93;
        }

        while (v93);
      }

      v50 = v44;
      while (1)
      {
        v44 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
        }

        if (v44 >= v48)
        {
          break;
        }

        v51 = *&v89[8 * v44];
        ++v50;
        if (v51)
        {
          v49 = __clz(__rbit64(v51));
          v93 = (v51 - 1) & v51;
          goto LABEL_41;
        }
      }
    }

    v35 = v106;
    v26 = v88;
    if (v20)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
  v34 = v109[0];
  v35 = v106;
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13, v106, v18);
  if ((v20 & 1) == (v37 & 1))
  {
    v26 = v36;
    goto LABEL_23;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v1 = type metadata accessor for IntegerFormatStyle();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v18 - v3);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v6 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
  v7 = v4 + *(v1 + 36);
  *v7 = 0;
  v7[8] = 1;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0x1FFFFFFFELL;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(v7 + 6) = 0;
  *(v7 + 18) = 131584;
  *(v7 + 38) = 512;
  v8 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v9 = v8[9];
  v10 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  v11 = &v7[v8[10]];
  *v11 = 0;
  v11[8] = -1;
  v7[v8[11]] = 3;
  *v4 = inited;
  v4[1] = v6;
  v12 = IntegerFormatStyle.format(_:)(v0, v1);
  v14 = v13;
  (*(v2 + 8))(v4, v1);
  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating()
{
  result = lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating;
  if (!lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating)
  {
    type metadata accessor for _LocaleAutoupdating();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating);
  }

  return result;
}

uint64_t ICUNumberFormatterBase.FormatResult.init(formatter:value:)()
{
  v1 = unumf_openResult();
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + 16) = v1;
  unumf_formatInt();
  return v0;
}

{
  v1 = unumf_openResult();
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + 16) = v1;
  unumf_formatDouble();
  return v0;
}

Foundation::Date_optional __swiftcall _NSSwiftCalendar.date(bySettingHour:minute:second:of:options:)(Swift::Int bySettingHour, Swift::Int minute, Swift::Int second, Foundation::Date of, NSCalendarOptions options)
{
  v10 = *options;
  if ((v5 & 2) != 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  if ((v5 & 0x100) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if ((v5 & 0x200) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((v5 & 0x400) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v5 & 0x3000) == 0x2000;
  v16 = *(v6 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v16 + 32));
  *&ofa[0]._time = *(v16 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v16 + 32));
  v23 = *&ofa[0]._time;
  v22 = v10;
  v21 = v14;
  v20 = v15;
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)(bySettingHour, minute, second, ofa[0], &v22, &v21, &v20);

  v17 = swift_unknownObjectRelease();
  result.value = *&v18;
  result.is_nil = v17;
  return result;
}

uint64_t _loadDefaultAttributes()(uint64_t a1)
{
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v1 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v1 + 10);
    partial apply for closure #1 in _loadDefaultAttributes()(&v67);
    os_unfair_lock_unlock(v1 + 10);
    v2 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v67 = v2;
    specialized Array.append<A>(contentsOf:)(inited);
    v4 = v67;
    v5 = *(v67 + 16);
    if (v5)
    {
      v67 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v67;
      v7 = v4 + 40;
      do
      {
        v8 = static AttributeScope.scopeDescription.getter(*(v7 - 8));

        v67 = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v67;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v7 += 16;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v63 = *(v6 + 16);
    if (!v63)
    {
      v12 = MEMORY[0x1E69E7CC8];
LABEL_51:

      return v12;
    }

    v11 = 0;
    v62 = v6 + 32;
    v12 = MEMORY[0x1E69E7CC8];
    v61 = v6;
LABEL_12:
    if (v11 < *(v6 + 16))
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    a1 = swift_once();
  }

  v13 = *(v62 + 8 * v11);
  v64 = v11 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v12;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  v65 = v13;

  v20 = 0;
  while (1)
  {
    if (!v18)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v22 >= v19)
        {
          break;
        }

        v18 = *(v15 + 8 * v22);
        ++v20;
        if (v18)
        {
          goto LABEL_24;
        }
      }

      v11 = v64;
      v6 = v61;
      if (v64 == v63)
      {
        goto LABEL_51;
      }

      goto LABEL_12;
    }

    v22 = v20;
LABEL_24:
    v23 = (v22 << 10) | (16 * __clz(__rbit64(v18)));
    v24 = (*(v65 + 48) + v23);
    v26 = *v24;
    v25 = v24[1];
    v66 = *(*(v65 + 56) + v23);

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
    v29 = *(v12 + 16);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v33 = v28;
    if (*(v12 + 24) >= v32)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native & 1);
    v34 = v67;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
    if ((v33 & 1) != (v35 & 1))
    {
      goto LABEL_58;
    }

LABEL_30:
    v18 &= v18 - 1;
    if (v33)
    {
      v21 = v27;

      *(*(v34 + 56) + 16 * v21) = v66;
    }

    else
    {
      *(v34 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v36 = (*(v34 + 48) + 16 * v27);
      *v36 = v26;
      v36[1] = v25;
      *(*(v34 + 56) + 16 * v27) = v66;
      v37 = *(v34 + 16);
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_54;
      }

      *(v34 + 16) = v38;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v20 = v22;
    v12 = v34;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v34 = v12;
    goto LABEL_30;
  }

  v58 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v39 = static _DictionaryStorage.copy(original:)();
  v34 = v39;
  if (!*(v12 + 16))
  {
LABEL_49:

    v67 = v34;
    v27 = v58;
    goto LABEL_30;
  }

  v40 = (v39 + 64);
  v41 = (v12 + 64);
  v42 = ((1 << *(v34 + 32)) + 63) >> 6;
  if (v34 != v12 || v40 >= &v41[8 * v42])
  {
    memmove(v40, v41, 8 * v42);
  }

  v43 = 0;
  *(v34 + 16) = *(v12 + 16);
  v44 = 1 << *(v12 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v12 + 64);
  v47 = (v44 + 63) >> 6;
  v59 = v47;
  if (v46)
  {
    do
    {
      v48 = __clz(__rbit64(v46));
      v60 = (v46 - 1) & v46;
LABEL_47:
      v51 = 16 * (v48 | (v43 << 6));
      v52 = (*(v12 + 48) + v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = *(*(v12 + 56) + v51);
      v56 = (*(v34 + 48) + v51);
      *v56 = v54;
      v56[1] = v53;
      *(*(v34 + 56) + v51) = v55;

      v47 = v59;
      v46 = v60;
    }

    while (v60);
  }

  v49 = v43;
  while (1)
  {
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v43 >= v47)
    {
      goto LABEL_49;
    }

    v50 = *(v12 + 64 + 8 * v43);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v60 = (v50 - 1) & v50;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributedString.init(from:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v92 = a3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMd);
  v6 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v8 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88[-v10];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV10CodingKeys33_628C17579E40660980A9932CDA4C6A74LLOGMd);
  MEMORY[0x1EEE9AC00](v104);
  v126 = &v88[-v11];
  v102 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v3)
  {
    outlined init with take of Equatable(v108, &v110);
    __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v118, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v108);
    v61 = *&v108[0];
    v62 = &v110;
LABEL_63:
    __swift_destroy_boxed_opaque_existential_1(v62);
    *v92 = v61;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v109 = 0;
  memset(v108, 0, sizeof(v108));
  outlined destroy of TermOfAddress?(v108, &_ss28SingleValueDecodingContainer_pSgMd);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  dispatch thunk of Decoder.unkeyedContainer()();
  v97 = a1;
  v103 = v8;
  v100 = v6;
  v12 = 0;
  outlined init with take of Equatable(v108, &v110);
  outlined init with take of Equatable(&v110, v116);
  v93 = 0;
  BigString.init(stringLiteral:)();
  *&v110 = 0;
  MEMORY[0x1865D26B0](&v110, 8);
  v99 = v110;
  v115 = 0;
  v113 = 0;
  v114 = 0;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
  {
LABEL_5:

    v13 = v113;
    if (!v113 || !*(v113 + 16))
    {
      __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v64 = type metadata accessor for DecodingError();
      swift_allocError();
      v66 = v65;
      dispatch thunk of Decoder.codingPath.getter();
      a1 = v97;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6B00], v64);
      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_72:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v116);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v14 = v114;
    v15 = v115;
    v123 = v105;
    v124 = v106;
    v125 = v107;
    type metadata accessor for AttributedString.Guts();
    v61 = swift_allocObject();
    v16 = BigString.isEmpty.getter();
    swift_unknownObjectRetain();
    outlined init with copy of BigString(&v123, &v110);
    specialized Rope._endPath.getter(v13);
    if ((((v15 == 0) ^ v16) & 1) == 0)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_9:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v124;
        *(v61 + 24) = v123;
        *(v61 + 16) = add_explicit;
        *(v61 + 40) = v18;
        *(v61 + 56) = v125;
        *(v61 + 72) = v13;
        *(v61 + 80) = v14;
        v19 = v99;
        *(v61 + 88) = v15;
        *(v61 + 96) = v19;
        *(v61 + 104) = MEMORY[0x1E69E7CC0];

        AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();

        outlined destroy of BigString(&v123);
        swift_unknownObjectRelease();
        v62 = v116;
        goto LABEL_63;
      }

LABEL_77:
      swift_once();
      goto LABEL_9;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v89 = 0;
  v90 = v93 + 32;
  v91 = v100 + 8;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
    v20 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v95 = v21;
    if (v12)
    {

      goto LABEL_71;
    }

    v94 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
    v22 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (!v93)
    {

      __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v81 = type metadata accessor for DecodingError();
      swift_allocError();
      v83 = v82;
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69E6B00], v81);
LABEL_69:
      swift_willThrow();
LABEL_71:
      swift_unknownObjectRelease();
      goto LABEL_72;
    }

    if ((v22 & 0x8000000000000000) != 0 || v22 >= *(v93 + 16))
    {
      v67 = v22;

      __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      *&v110 = 0;
      *(&v110 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      MEMORY[0x1865CB0E0](0xD000000000000016, 0x8000000181480800);
      *&v108[0] = v67;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v68);

      MEMORY[0x1865CB0E0](0xD000000000000036, 0x8000000181480820);
      v69 = *(v93 + 16);

      *&v108[0] = v69 - 1;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v70);

      MEMORY[0x1865CB0E0](93, 0xE100000000000000);
      v71 = type metadata accessor for DecodingError();
      swift_allocError();
      v73 = v72;
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v74 = *(*(v71 - 8) + 104);
      v75 = v71;
      a1 = v97;
      v74(v73, *MEMORY[0x1E69E6B00], v75);
      goto LABEL_69;
    }

    v98 = 0;
    v23 = (v90 + 16 * v22);
    v13 = *v23;
    v15 = v23[1];

    v24 = v95;
    v25 = v94;
    if ((v95 & 0x2000000000000000) != 0)
    {
      v61 = HIBYTE(v95) & 0xF;
    }

    else
    {
      v61 = v94 & 0xFFFFFFFFFFFFLL;
    }

    if (!v61)
    {
      if (v113)
      {
        v26 = *(v113 + 18);
        v27 = ((-15 << ((4 * v26 + 8) & 0x3C)) - 1) & v26 | (*(v113 + 16) << ((4 * v26 + 8) & 0x3C));
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      if (specialized BidirectionalCollection._distance(from:to:)(v99, v26, 0, v99, v27, 0, v113, v114, v115, v99) > 0 || (__swift_project_boxed_opaque_existential_1(v116, v117), a1 = v97, (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0))
      {

        __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
        v126 = "contain attributes";
        v76 = type metadata accessor for DecodingError();
        swift_allocError();
        v78 = v77;
        dispatch thunk of Decoder.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v79 = *(*(v76 - 8) + 104);
        v80 = v76;
        a1 = v97;
        v79(v78, *MEMORY[0x1E69E6B00], v80);
        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      v24 = v95;
      v25 = v94;
      if (*(v13 + 16))
      {

        __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
        v84 = type metadata accessor for DecodingError();
        swift_allocError();
        v86 = v85;
        dispatch thunk of Decoder.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        v87 = v86;
        a1 = v97;
        (*(*(v84 - 8) + 104))(v87, *MEMORY[0x1E69E6B00], v84);
        swift_willThrow();

        goto LABEL_71;
      }
    }

    MEMORY[0x1865CA4B0](v25, v24);
    v28 = v113;
    specialized BidirectionalCollection.last.getter(v113, v114, v115, v99);
    if (!v29)
    {
      goto LABEL_43;
    }

    v31 = v29;
    v32 = v30;

    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v31, v13) & 1) == 0)
    {
      break;
    }

    v33 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v32, v15);

    if ((v33 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v28)
    {
      goto LABEL_84;
    }

    v14 = ((-15 << ((4 * *(v28 + 18) + 8) & 0x3C)) - 1) & *(v28 + 18) | (*(v28 + 16) << ((4 * *(v28 + 18) + 8) & 0x3C));
    swift_unknownObjectRetain();
    *&v110 = v99;
    *(&v110 + 1) = v14;
    *&v111 = 0;
    v34 = *(v28 + 18);
    if (v14 <= v34)
    {
      goto LABEL_84;
    }

    a1 = (4 * v34 + 8) & 0x3C;
    v35 = (v14 >> a1) & 0xF;
    *&v108[0] = v35;
    if (v34)
    {
      swift_unknownObjectRetain();
      v36 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v28 + 16), v28 + 24, v108, &v110, v34);
      swift_unknownObjectRelease_n();
      if ((v36 & 1) == 0)
      {
        goto LABEL_73;
      }

      v38 = *(&v110 + 1);
      v37 = v110;
    }

    else
    {
      swift_unknownObjectRelease();
      if (!v35)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_76;
      }

      v38 = ((v35 - 1) << a1) | v14 & 0xFFFFFFFFFFFFF0FFLL;
      v37 = v99;
    }

    v14 = v95;
    a1 = v97;
    if ((v95 & 0x1000000000000000) != 0)
    {
      v61 = String.UTF8View._foreignCount()();
    }

    if (v37 != v99)
    {
      goto LABEL_74;
    }

    specialized Rope._Node._prepareModify(at:)(v38, &v119);
    *&v110 = v119;
    v111 = v121;
    v112 = v122;
    if (__OFADD__(v120, v61))
    {
      goto LABEL_75;
    }

    *(&v110 + 1) = v120 + v61;
    specialized Rope._Node._finalizeModify(_:)(v108, &v110);

    ++v99;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v39 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v12 = v98;
LABEL_40:
    if (v39)
    {
      goto LABEL_5;
    }
  }

LABEL_43:
  if ((v95 & 0x1000000000000000) != 0)
  {
    v61 = String.UTF8View._foreignCount()();
  }

  if (!v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 18) = 0;

    if (swift_isUniquelyReferenced_nonNull())
    {
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v56 = specialized Rope._Node.copy()(v52);
      v55 = v57;
      v54 = v58;
      swift_unknownObjectRelease();
      v52 = v56;
    }

    v49 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_81;
    }

    v51 = v54 + v61;
    a1 = v97;
    if (__OFADD__(v54, v61))
    {
      goto LABEL_82;
    }

    v59 = *(v52 + 16);
    v60 = (v52 + 24 * *(v52 + 16));
    v60[3] = v61;
    v60[4] = v13;
    v60[5] = v15;
    if (v59 == 0xFFFF)
    {
      goto LABEL_83;
    }

    *(v52 + 16) = v59 + 1;
LABEL_58:
    v113 = v52;
    v114 = v49;
    v115 = v51;
LABEL_59:
    if (v89)
    {
      v89 = 1;
    }

    else
    {
      v89 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v13);
    }

    v12 = v98;
    ++v99;

    __swift_project_boxed_opaque_existential_1(v116, v117);
    v39 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    goto LABEL_40;
  }

  v40 = specialized Rope._Node.append(_:)(v61, v13, v15);
  a1 = v97;
  if (!v40)
  {
    goto LABEL_59;
  }

  v126 = v42;
  v104 = v40;
  v43 = v113;
  v44 = *(v113 + 18) + 1;
  if (((v44 >> 8) & 1) == 0)
  {
    v45 = v41;
    v46 = v114;
    v47 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
    v48 = swift_allocObject();
    *(v48 + 18) = v44;
    v49 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_79;
    }

    v50 = v126;
    v51 = &v126[v47];
    if (__OFADD__(v47, v126))
    {
      goto LABEL_80;
    }

    v52 = v48;
    *(v48 + 24) = v43;
    *(v48 + 32) = v46;
    v53 = v104;
    *(v48 + 40) = v47;
    *(v48 + 48) = v53;
    *(v48 + 56) = v45;
    *(v48 + 64) = v50;
    *(v48 + 16) = 2;
    a1 = v97;
    goto LABEL_58;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_84:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t JSONDecoderImpl.KeyedContainer.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = JSONDecoderImpl.KeyedContainer.decoderForKeyNoThrow<A>(_:)(a1, a2, a3, a4, a5, a5, a6, a6);
  a7[3] = type metadata accessor for JSONDecoderImpl();
  result = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
  a7[4] = result;
  *a7 = v8;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t JSONDecoderImpl.UnkeyedContainer.nestedContainer<A>(keyedBy:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v45 = a1;
  v5 = type metadata accessor for KeyedDecodingContainer();
  v6 = v1 + 3;
  v7 = *(v1 + 40);
  if (v7 < 0xFE)
  {
    v41 = v1[3];
    v40 = v1[4];
  }

  else
  {
    v8 = v5;
    v9 = v1[1];
    v10 = JSONMap.loadValue(at:)(v9);
    if (v12 > 0xFDu)
    {
      if (v8 == __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd))
      {
      }

      v6 = _CodingPathNode.path.getter(v1[9]);
      v13 = v1[8];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }

    LOBYTE(v7) = v12;
    v21 = v10;
    v22 = v11;
    v1[1] = JSONMap.offset(after:)(v9);
    v41 = v21;
    v1[3] = v21;
    v1[4] = v22;
    v40 = v22;
    *(v1 + 40) = v7;
  }

  v23 = *v1;
  v25 = *(v4 + 8);
  v24 = *(v4 + 9);
  v8 = swift_allocObject();
  *(v8 + 16) = v25;
  *(v8 + 24) = v24;
  if (v24 >> 62)
  {
    if (v24 >> 62 != 1)
    {
      v28 = 1;
LABEL_16:
      *(v8 + 32) = v28;
      v38 = *(v23 + 160);
      v39 = v3;
      *(v23 + 160) = v8 | 0x4000000000000000;
      v3 = *(v23 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 16) = v3;
      v37 = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

    v26 = ((v24 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v26 = (v24 + 64);
  }

  v27 = *v26;

  v28 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_31:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  *(v23 + 16) = v3;
LABEL_17:
  v31 = *(v3 + 2);
  v30 = *(v3 + 3);
  v32 = v41;
  if (v31 >= v30 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v3);
    v32 = v41;
  }

  *(v3 + 2) = v31 + 1;
  v33 = &v3[24 * v31];
  *(v33 + 4) = v32;
  *(v33 + 5) = v40;
  v33[48] = v7;
  *(v23 + 16) = v3;

  JSONDecoderImpl.container<A>(keyedBy:)();
  v13 = v39;
  if (v39)
  {

    v34 = v38;
    *(v23 + 160) = v38;

    v4 = *(v23 + 16);
    if (*(v4 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = *(v4 + 2);
        if (v35)
        {
LABEL_23:
          *(v4 + 2) = v35 - 1;
          *(v23 + 16) = v4;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v35 = *(v4 + 2);
    if (v35)
    {
      goto LABEL_23;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v23 + 160) = v38;

  v34 = *(v23 + 16);
  if (!*(v34 + 2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_36:
    v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
  }

  v36 = *(v34 + 2);
  if (v36)
  {
    *(v34 + 2) = v36 - 1;
    *(v23 + 16) = v34;

    if (!__OFADD__(v37, 1))
    {
      *(v4 + 8) = v37 + 1;
      *v6 = 0;
      v6[1] = 0;
      v4[40] = -2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_39:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_6:
  v15 = v6[2];
  v14 = v6[3];
  if (v15 >= v14 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
  }

  v43 = &type metadata for _CodingKey;
  v44 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v16 = swift_allocObject();
  *&v42 = v16;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v13;
  *(v16 + 40) = 2;
  v6[2] = v15 + 1;
  outlined init with take of Equatable(&v42, &v6[5 * v15 + 4]);
  v17 = type metadata accessor for DecodingError();
  swift_allocError();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v19 = v8;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
  return swift_willThrow();
}

uint64_t sub_1809BAA28()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.AttributeKey()
{
  v1 = *v0;

  return v1;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if (!*(result + 16))
    {
      return 0;
    }

    result = specialized Rope._endPath.getter(result);
    v7 = a4;
    v8 = result;
    v9 = 0;
    if (result <= *(v4 + 18))
    {
      __break(1u);
    }

    else
    {
      result = specialized Rope._Node.formPredecessor(of:)(&v7, v4);
      if (result)
      {
        if (v7 == a4)
        {
          if (!v9)
          {
            return specialized Rope._Node.subscript.getter(v8, v4);
          }

          v6 = *(v9 + 24 * ((v8 >> ((4 * *(v9 + 18) + 8) & 0x3C)) & 0xF) + 24);

          return v6;
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized Rope._Node.formPredecessor(of:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 18);
  v5 = *(a1 + 8);
  v6 = (4 * v4 + 8) & 0x3C;
  v7 = (v5 >> v6) & 0xF;
  v10 = v7;
  if (v4)
  {
    swift_unknownObjectRetain();
    v8 = specialized closure #1 in Rope._Node.formPredecessor(of:)((a2 + 16), a2 + 24, &v10, a1, v4);
    swift_unknownObjectRelease();
  }

  else if (v7)
  {
    *(a1 + 8) = ((v7 - 1) << v6) | v5 & 0xFFFFFFFFFFFFF0FFLL;
    *(a1 + 16) = a2;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

Swift::Void __swiftcall AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()()
{
  v1 = v0;
  v162 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 40);
  v159 = *(v0 + 24);
  v160 = v2;
  v161 = *(v0 + 56);
  v3 = BigString.startIndex.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = BigString.endIndex.getter();
  if (v10 >> 10 < v3 >> 10)
  {
    goto LABEL_101;
  }

  v151 = v3;
  v152 = v5;
  v153 = v7;
  v154 = v9;
  v155 = v10;
  v156 = v11;
  v157 = v12;
  v158 = v13;
  AttributedString.Guts.fixScalarConstrainedAttributes(in:)();
  v14 = *(v0 + 40);
  v148 = *(v0 + 24);
  v149 = v14;
  v150 = *(v0 + 56);
  v15 = *(v0 + 24);
  v127 = *(v0 + 40);
  v128 = v15;
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = BigString.startIndex.getter();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if (v18 >> 10 >= BigString.endIndex.getter() >> 10)
  {
    return;
  }

  v115 = 0;
  v117 = v0;
  while (2)
  {
    v144 = v128;
    v145 = v127;
    v146 = v16;
    v147 = v17;
    v143[0] = v18;
    v143[1] = v20;
    v143[2] = v22;
    v143[3] = v24;
    v143[4] = v18;
    v143[5] = v20;
    v143[6] = v22;
    v143[7] = v24;
    swift_unknownObjectRetain();
    specialized BidirectionalCollection<>._getBlock(for:in:)(2, v143, &v135);
    swift_unknownObjectRelease();
    if (*(&v138 + 1) == 2)
    {
      goto LABEL_104;
    }

    v25 = v18 >> 11;
    v26 = *(v1 + 72);
    v27 = *(v1 + 88);
    if (v26)
    {
      v28 = *(v1 + 88);
    }

    else
    {
      v28 = 0;
    }

    if (v28 < v25)
    {
      goto LABEL_99;
    }

    v123 = v25;
    v124 = v137;
    v29 = *(v1 + 80);
    *&v128 = *(v1 + 96);
    v122 = v138;
    v121 = *(&v137 + 1);
    if (!v26 || v25 >= v27 || (v31 = (v26 + 16), v30 = *(v26 + 16), !*(v26 + 16)))
    {
      v41 = swift_unknownObjectRetain();
      v42 = specialized Rope._endPath.getter(v41);
      v36 = 0;
      v43 = 0;
      if (v26)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    *&v127 = v29;
    v32 = *(v26 + 18);
    swift_unknownObjectRetain_n();
    if (!v32)
    {
      v33 = 0;
      v36 = v26;
LABEL_79:
      v1 = v117;
      v108 = 0;
      v107 = v30;
      v109 = 24;
      while (1)
      {
        v110 = *(v36 + v109);
        v77 = __OFSUB__(v25, v110);
        v25 -= v110;
        if (v77)
        {
          goto LABEL_96;
        }

        if (__OFADD__(v25, 1))
        {
          goto LABEL_97;
        }

        if (v25 + 1 < 1)
        {
          goto LABEL_85;
        }

        ++v108;
        v109 += 24;
        if (v30 == v108)
        {
          goto LABEL_84;
        }
      }
    }

    v33 = v32;
    v34 = v26;
    do
    {
      v35 = *v31;
      if (*v31)
      {
        v37 = 0;
        v38 = (v34 + 40);
        while (1)
        {
          v39 = *v38;
          v38 += 3;
          v40 = v25 - v39;
          if (__OFSUB__(v25, v39))
          {
            break;
          }

          if (__OFADD__(v40, 1))
          {
            goto LABEL_92;
          }

          if (v40 + 1 < 1)
          {
            v35 = v37;
            goto LABEL_15;
          }

          ++v37;
          v25 = v40;
          if (v35 == v37)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
      }

      v40 = v25;
LABEL_24:
      if (v40)
      {
        goto LABEL_98;
      }

      v25 = 0;
LABEL_15:
      v33 = (v35 << ((4 * v32 + 8) & 0x3C)) | ((-15 << ((4 * v32 + 8) & 0x3C)) - 1) & v33;
      v36 = *(v34 + 24 + 24 * v35);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v31 = (v36 + 16);
      LOBYTE(v32) = *(v36 + 18);
      v34 = v36;
    }

    while (v32);
    v30 = *v31;
    if (*v31)
    {
      goto LABEL_79;
    }

    v107 = 0;
    v1 = v117;
LABEL_84:
    v108 = v107;
    if (v25)
    {
      goto LABEL_102;
    }

LABEL_85:
    swift_unknownObjectRelease();
    v42 = v33 & 0xFFFFFFFFFFFFF0FFLL | (v108 << 8);
    v29 = v127;
LABEL_27:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v128, v42, v36, v26, v29);
    swift_unknownObjectRelease();
    v43 = v36;
LABEL_28:
    v45 = *(v1 + 72);
    v44 = *(v1 + 80);
    v46 = *(v1 + 88);
    v47 = *(v1 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v128, v42, v43, v45, v44, v46, v47);
    v49 = v48;
    v119 = v50;
    v51 = swift_unknownObjectRelease();
    v120 = &v114;
    MEMORY[0x1EEE9AC00](v51);
    MEMORY[0x1EEE9AC00](v52);
    *(v54 - 16) = 0;
    *(v54 - 8) = 0;
    *(&v114 - 2) = closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)partial apply;
    *(&v114 - 1) = v55;
    LOBYTE(v54) = *(v49 + 32);
    v116 = ((1 << v54) + 63) >> 6;
    v56 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
    v57 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
    if ((v54 & 0x3Fu) <= 0xD)
    {
LABEL_29:
      v118 = &v114;
      MEMORY[0x1EEE9AC00](v53);
      v125 = (&v114 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v125, v58);
      *&v127 = 0;
      v59 = 0;
      v60 = v49 + 64;
      v61 = 1 << *(v49 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & *(v49 + 64);
      v64 = (v61 + 63) >> 6;
      *&v128 = v49;
LABEL_34:
      if (v63)
      {
        v65 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        goto LABEL_41;
      }

      v66 = v59;
      while (1)
      {
        v59 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_93;
        }

        if (v59 >= v64)
        {
          break;
        }

        v67 = *(v60 + 8 * v59);
        ++v66;
        if (v67)
        {
          v65 = __clz(__rbit64(v67));
          v63 = (v67 - 1) & v67;
LABEL_41:
          v68 = v65 | (v59 << 6);
          v69 = *(v49 + 56);
          v70 = (*(v49 + 48) + 16 * v68);
          v72 = *v70;
          v71 = v70[1];
          v126 = v68;
          outlined init with copy of AttributedString._AttributeValue(v69 + 72 * v68, v134);
          *&v135 = v72;
          *(&v135 + 1) = v71;
          outlined init with copy of AttributedString._AttributeValue(v134, &v136);
          outlined init with copy of FloatingPointRoundingRule?(&v135, &v129, v56);
          swift_bridgeObjectRetain_n();

          v73 = v57;
          v74 = v56;
          v76 = *(&v132 + 1);
          v75 = v133;
          outlined copy of AttributedString.AttributeRunBoundaries?(*(&v132 + 1), v133);
          outlined destroy of AttributedString._AttributeValue(&v130);
          if (v75 == 1)
          {
            outlined destroy of TermOfAddress?(&v135, v74);
            outlined consume of AttributedString.AttributeRunBoundaries?(v76, 1);
            outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
            outlined destroy of AttributedString._AttributeValue(v134);

            v56 = v74;
            v57 = v73;
            v49 = v128;
            goto LABEL_34;
          }

          if (v75)
          {

            v57 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
            outlined destroy of TermOfAddress?(&v135, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
          }

          else
          {
            v57 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
            outlined destroy of TermOfAddress?(&v135, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
            swift_bridgeObjectRelease_n();
          }

          v49 = v128;
          outlined consume of AttributedString.AttributeRunBoundaries?(v76, v75);
          outlined destroy of AttributedString._AttributeValue(v134);

          v56 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
          if (!v75)
          {
            *(v125 + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v126;
            v77 = __OFADD__(v127, 1);
            *&v127 = v127 + 1;
            if (v77)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_34;
        }
      }

      v78 = v127;
      if (v127)
      {
        if (v127 == *(v49 + 16))
        {

          v79 = v49;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v79 = static _DictionaryStorage.allocate(capacity:)();
          v84 = 0;
          v85 = v125;
          v86 = *v125;
          v87 = v79 + 64;
          v88 = v116;
          do
          {
            if (v86)
            {
              *&v127 = v78;
              v92 = __clz(__rbit64(v86));
              v86 &= v86 - 1;
            }

            else
            {
              v93 = v84;
              do
              {
                v84 = v93 + 1;
                if (__OFADD__(v93, 1))
                {
                  goto LABEL_94;
                }

                if (v84 >= v88)
                {
                  goto LABEL_53;
                }

                v94 = v85[v84];
                ++v93;
              }

              while (!v94);
              *&v127 = v78;
              v92 = __clz(__rbit64(v94));
              v86 = (v94 - 1) & v94;
            }

            v95 = v92 | (v84 << 6);
            v96 = (*(v49 + 48) + 16 * v95);
            v98 = *v96;
            v97 = v96[1];
            outlined init with copy of AttributedString._AttributeValue(*(v49 + 56) + 72 * v95, &v135);
            v131 = v137;
            v132 = v138;
            v133 = v139;
            v129 = v135;
            v130 = v136;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v99 = Hasher._finalize()();
            v100 = -1 << *(v79 + 32);
            v101 = v99 & ~v100;
            v102 = v101 >> 6;
            if (((-1 << v101) & ~*(v87 + 8 * (v101 >> 6))) != 0)
            {
              v89 = __clz(__rbit64((-1 << v101) & ~*(v87 + 8 * (v101 >> 6)))) | v101 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v103 = 0;
              v104 = (63 - v100) >> 6;
              do
              {
                if (++v102 == v104 && (v103 & 1) != 0)
                {
                  goto LABEL_95;
                }

                v105 = v102 == v104;
                if (v102 == v104)
                {
                  v102 = 0;
                }

                v103 |= v105;
                v106 = *(v87 + 8 * v102);
              }

              while (v106 == -1);
              v89 = __clz(__rbit64(~v106)) + (v102 << 6);
            }

            *(v87 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
            v90 = (*(v79 + 48) + 16 * v89);
            *v90 = v98;
            v90[1] = v97;
            v91 = *(v79 + 56) + 72 * v89;
            *(v91 + 16) = v130;
            *(v91 + 32) = v131;
            *(v91 + 48) = v132;
            *(v91 + 64) = v133;
            *v91 = v129;
            ++*(v79 + 16);
            v78 = v127 - 1;
            v85 = v125;
          }

          while (v127 != 1);
        }
      }

      else
      {
        v79 = MEMORY[0x1E69E7CC8];
      }

LABEL_53:
      v1 = v117;
      v80 = v123;

LABEL_54:
      v18 = v124;
      if (v124 >> 11 < v80)
      {
        goto LABEL_100;
      }

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v1, v80, v18 >> 11, v79);
      swift_bridgeObjectRelease_n();

      v81 = *(v1 + 40);
      v140 = *(v1 + 24);
      v141 = v81;
      v142 = *(v1 + 56);
      v82 = *(v1 + 24);
      v127 = *(v1 + 40);
      v128 = v82;
      v16 = *(v1 + 56);
      v17 = *(v1 + 64);
      v83 = BigString.endIndex.getter();
      v24 = *(&v122 + 1);
      v22 = v122;
      v20 = v121;
      if (v18 >> 10 >= v83 >> 10)
      {
        return;
      }

      continue;
    }

    break;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_29;
  }

  v111 = swift_slowAlloc();

  v112 = v115;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v111, v116, v49, thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply);
  if (!v112)
  {
    v79 = v113;
    v115 = 0;

    MEMORY[0x1865D2690](v111, -1, -1);

    v80 = v123;
    goto LABEL_54;
  }

  MEMORY[0x1865D2690](v111, -1, -1);
  __break(1u);
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedString.Runs@<Q0>(uint64_t a1@<X8>)
{
  outlined init with copy of AttributedString.Runs(v1, a1);
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd) + 36));
  v9 = *(v1 + 72);
  *v10 = *(v1 + 88);
  *&v10[10] = *(v1 + 98);
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  outlined destroy of AttributedString.Runs(v1);
  v3[4] = v9;
  v3[5] = *v10;
  *(v3 + 90) = *&v10[10];
  *v3 = v5;
  v3[1] = v6;
  result = v8;
  v3[2] = v7;
  v3[3] = v8;
  return result;
}

uint64_t DateInterval.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation12DateIntervalV10CodingKeys33_2953BBFB9A23C5C66489CFB1510AFDBELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13[15] = 0;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v14;
    v13[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DateInterval.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval()
{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateInterval and conformance DateInterval;
  if (!lazy protocol witness table cache variable for type DateInterval and conformance DateInterval)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  }

  return result;
}

uint64_t DateInterval.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1865CD090](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1865CD090](*&v3);
}

uint64_t Calendar.enumerateDates(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:using:)(double *a1, const void *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t (*a6)(void, void, void))
{
  v11 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v12 = *a3;
  v24 = *a4;
  v13 = *a5;
  v15 = *v6;
  v14 = v6[1];
  memcpy(v36, a2, 0x11BuLL);
  v33 = v15;
  v34 = v14;
  result = DateComponents._validate(for:)(&v33);
  if (result)
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      goto LABEL_16;
    }

    while (v11 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v11)
    {
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v21 = v11;
      do
      {
        v27[0] = v15;
        v27[1] = v14;
        v32 = *&v11;
        memcpy(v36, a2, 0x11BuLL);
        v31 = v12;
        v30 = v24;
        v29 = v13;
        v28 = v21;
        v25 = v19;
        LOBYTE(v26) = v20 & 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v32, v36, &v31, &v30, &v29, &v28, &v25, &v33);
        v21 = v35;
        if (v34 == 2)
        {
          if (v18 > 0x63)
          {
            *v27 = v11;
            v33 = v15;
            v34 = v14;
            memcpy(v36, __dst, 0x11BuLL);
            LOBYTE(v25) = v13;
            LOBYTE(v32) = v12;
            LOBYTE(v28) = v24;
            return _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v27, &v33, v36, &v25, &v32, &v28);
          }
        }

        else
        {
          v19 = v33;
          LOBYTE(v33) = 0;
          v36[0] = v19;
          LOBYTE(v36[1]) = 0;
          result = a6(v36, v34 & 1, &v33);
          v20 = 0;
          if (v33)
          {
            return result;
          }
        }
      }

      while (!__OFADD__(v18++, 1));
      __break(1u);
LABEL_16:
      result = swift_once();
    }
  }

  return result;
}

Foundation::DateInterval_optional __swiftcall Calendar.dateInterval(of:for:)(Foundation::Calendar::Component of, Foundation::Date a2)
{
  v4 = *v2;
  v5 = *(v3 + 8);
  v13 = *of;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v6 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v4)
  {
    v6 = v4;
  }

  if (*&static Date.validCalendarRange >= v6)
  {
    v7 = *&static Date.validCalendarRange;
  }

  else
  {
    v7 = v6;
  }

  ObjectType = swift_getObjectType();
  v12 = v7;
  v9 = (*(v5 + 160))(&v13, &v12, ObjectType, v5);
  result.value.duration = v11;
  result.value.start._time = v10;
  result.is_nil = v9;
  return result;
}

Foundation::DateInterval_optional __swiftcall _CalendarAutoupdating.dateInterval(of:for:)(Foundation::Calendar::Component of, Foundation::Date a2)
{
  v4 = v3;
  LODWORD(v5) = *of;
  v6 = *v2;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  if (!v8)
  {
    v35 = v5;
    v36 = v4;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v34 = *(&static LocaleCache.cache + 8);
    v10 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v10 + 32));
    if (!v12)
    {
      LocaleCache.preferences()(&v47);
      v14 = v13;
      type metadata accessor for _LocaleICU();
      v11 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v45 = v53;
      v46[0] = v54[0];
      *(v46 + 12) = *(v54 + 12);
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v40[0] = v47;
      v40[1] = v48;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v47, v39);
      v15 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v40, 0);
      if (v14)
      {
        MEMORY[0x1EEE9AC00](v15);
        os_unfair_lock_lock((v10 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v10 + 16), v40);
        os_unfair_lock_unlock((v10 + 32));
        outlined destroy of LocalePreferences(&v47);

        v11 = *(&v40[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v47);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v11 + 200))(&v47, ObjectType, v11);
    swift_unknownObjectRelease();
    v17 = v47;
    if (v47 && v47 != 7)
    {
      *&v34 = type metadata accessor for _CalendarICU();
      v18 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v19 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v34 = type metadata accessor for _CalendarGregorian();
      v18 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v19 = type metadata accessor for _CalendarGregorian;
    }

    v5 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v18, 255, v19);
    v38 = v17;
    v37[0] = 0;
    v37[1] = 0;
    v20 = static LocaleCache.cache;
    v33 = *(&static LocaleCache.cache + 8);
    v21 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v21 + 32));
    if (!v23)
    {
      v32[1] = 0;
      *&v40[0] = v20;
      *(v40 + 8) = v33;
      LocaleCache.preferences()(&v47);
      v25 = v24;
      type metadata accessor for _LocaleICU();
      v22 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v45 = v53;
      v46[0] = v54[0];
      *(v46 + 12) = *(v54 + 12);
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v40[0] = v47;
      v40[1] = v48;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v47, v39);
      v26 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v40, 0);
      v23 = v26;
      if (v25)
      {
        *&v33 = v32;
        MEMORY[0x1EEE9AC00](v26);
        os_unfair_lock_lock((v21 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v21 + 16), v40);
        os_unfair_lock_unlock((v21 + 32));
        outlined destroy of LocalePreferences(&v47);

        v22 = *(&v40[0] + 1);
        v23 = *&v40[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v47);
      }
    }

    *&v47 = v23;
    *(&v47 + 1) = v22;
    *&v40[0] = 0;
    BYTE8(v40[0]) = 1;
    v27 = (*(v5 + 16))(&v38, v37, &v47, 0, 1, 0, 1, v40, v34, v5);
    MEMORY[0x1EEE9AC00](v27);
    os_unfair_lock_lock((v7 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v7 + 16), &v47);
    os_unfair_lock_unlock((v7 + 32));
    swift_unknownObjectRelease();
    v9 = *(&v47 + 1);
    LOBYTE(v5) = v35;
  }

  v28 = swift_getObjectType();
  LOBYTE(v40[0]) = v5;
  *&v47 = v6;
  (*(v9 + 160))(v40, &v47, v28, v9);
  v29 = swift_unknownObjectRelease();
  result.value.duration = v31;
  result.value.start._time = v30;
  result.is_nil = v29;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AttributedString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Default = _loadDefaultAttributes()(a1);
  outlined init with copy of Hashable & Sendable(a1, v8);
  v7 = Default;
  AttributedString.init(from:configuration:)(v8, &v7, &v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys);
  }

  return result;
}

uint64_t _s10Foundation15JSONDecoderImpl33_D9EE12013FCAF298EFDC142C520A6908LLC16UnkeyedContainerV21decoderForNextElement6ofTypeADxm_tKlFs7Decoder_p_Ttg5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v17 = *(v0 + 24);
    v18 = *(v0 + 32);
    goto LABEL_10;
  }

  v4 = v2;
  v5 = *(v0 + 8);
  v6 = JSONMap.loadValue(at:)(v5);
  if (v8 <= 0xFDu)
  {
    v17 = v6;
    v18 = v7;
    LOBYTE(v3) = v8;
    *(v0 + 8) = JSONMap.offset(after:)(v5);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = v3;
LABEL_10:
    v19 = *v0;
    v21 = *(*v0 + 24);
    v20 = *(*v0 + 32);
    v24 = v1 + 64;
    v22 = *(v1 + 64);
    v23 = *(v24 + 8);
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    if (v23 >> 62)
    {
      if (v23 >> 62 != 1)
      {
        v28 = 1;
        goto LABEL_15;
      }

      v26 = ((v23 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = (v23 + 64);
    }

    v1 = *v26;

    v28 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

LABEL_15:
    *(v25 + 32) = v28;
    v29 = *(v19 + 120);
    v38 = *(v19 + 104);
    v39 = v29;
    v40 = *(v19 + 136);
    v41 = *(v19 + 152);
    v34 = *(v19 + 40);
    v30 = *(v19 + 72);
    v35 = *(v19 + 56);
    v36 = v30;
    v37 = *(v19 + 88);
    type metadata accessor for JSONDecoderImpl();
    v1 = swift_allocObject();
    *(v1 + 160) = v25 | 0x4000000000000000;
    *(v1 + 24) = v21;
    *(v1 + 32) = v20;
    *(v1 + 104) = *(v19 + 104);
    *(v1 + 120) = *(v19 + 120);
    *(v1 + 136) = *(v19 + 136);
    *(v1 + 152) = *(v19 + 152);
    *(v1 + 40) = *(v19 + 40);
    *(v1 + 56) = *(v19 + 56);
    *(v1 + 72) = *(v19 + 72);
    *(v1 + 88) = *(v19 + 88);

    outlined init with copy of JSONDecoder._Options(&v34, v33);
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v27 + 2);
    v28 = *(v27 + 3);
    v20 = v21 + 1;
    if (v21 < v28 >> 1)
    {
LABEL_16:
      *(v27 + 2) = v20;
      v31 = &v27[24 * v21];
      *(v31 + 4) = v17;
      *(v31 + 5) = v18;
      v31[48] = v3;
      *(v1 + 16) = v27;
      return v1;
    }

LABEL_20:
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v20, 1, v27);
    goto LABEL_16;
  }

  v9 = _CodingPathNode.path.getter(*(v0 + 72));
  v10 = *(v1 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  *(&v35 + 1) = &type metadata for _CodingKey;
  *&v36 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v13 = swift_allocObject();
  *&v34 = v13;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = v10;
  *(v13 + 40) = 2;
  v9[2] = v12 + 1;
  outlined init with take of Equatable(&v34, &v9[5 * v12 + 4]);
  v14 = type metadata accessor for DecodingError();
  swift_allocError();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v16 = v4;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
  swift_willThrow();
  return v1;
}

uint64_t protocol witness for UnkeyedDecodingContainer.superDecoder() in conformance JSONDecoderImpl.UnkeyedContainer@<X0>(uint64_t *a1@<X8>)
{
  result = _s10Foundation15JSONDecoderImpl33_D9EE12013FCAF298EFDC142C520A6908LLC16UnkeyedContainerV21decoderForNextElement6ofTypeADxm_tKlFs7Decoder_p_Ttg5();
  if (!v2)
  {
    v5 = *(v1 + 64);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 64) = v7;
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
      *(v1 + 40) = -2;
      v8 = result;
      a1[3] = type metadata accessor for JSONDecoderImpl();
      result = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
      a1[4] = result;
      *a1 = v8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.AttributeKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.AttributeKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t JSONDecoderImpl.KeyedContainer.decoderForKeyNoThrow<A>(_:)(uint64_t a1, int64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a3;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Optional();
  v15 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v74 = a8;
  v20 = dispatch thunk of CodingKey.stringValue.getter();
  v22 = *(a4 + 16);
  v72 = v15;
  v70 = v19;
  if (v22)
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v25 = v24;

    if (v25)
    {
      v26 = *(a4 + 56) + 24 * v23;
      v27 = *v26;
      v68 = *(v26 + 8);
      LODWORD(v67) = *(v26 + 16);
      v28 = *(v13 + 16);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v68 = type metadata accessor for DecodingError();
  v69 = swift_allocError();
  v30 = v29;
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
  v31 = v13;
  v32 = v74;
  v30[3] = a6;
  v30[4] = v32;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  v34 = *(v31 + 16);
  v34(boxed_opaque_existential_0, a1, a6);
  v65 = _CodingPathNode.path.getter(v75);
  *&v77[0] = 0;
  *(&v77[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  *&v77[0] = 0xD00000000000001DLL;
  *(&v77[0] + 1) = 0x8000000181482300;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v35);

  MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
  v13 = v31;
  v36 = dispatch thunk of CodingKey.stringValue.getter();
  MEMORY[0x1865CB0E0](v36);

  MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v68 - 8) + 104))(v30, *MEMORY[0x1E69E6AF0]);
  v37 = v69;
  swift_willThrow();

  v27 = 0;
  v68 = 0;
  LODWORD(v67) = 160;
  v28 = v34;
LABEL_6:
  v38 = *(a2 + 32);
  v69 = *(a2 + 24);
  v39 = v70;
  v28(v70, a1, a6);
  (*(v13 + 56))(v39, 0, 1, a6);
  v40 = v72;
  v41 = v71;
  v42 = v73;
  (*(v72 + 16))(v71, v39, v73);
  if ((*(v13 + 48))(v41, 1, a6) == 1)
  {
    v43 = *(v40 + 8);
    v44 = v69;

    v43(v39, v42);
    v43(v41, v42);
    v45 = v75;

    goto LABEL_14;
  }

  v65 = v27;
  v46 = *(v13 + 32);
  v47 = v41;
  v48 = v66;
  v46(v66, v47, a6);
  v49 = swift_allocObject();
  v50 = v74;
  *(v49 + 40) = a6;
  *(v49 + 48) = v50;
  v51 = __swift_allocate_boxed_opaque_existential_0((v49 + 16));
  v46(v51, v48, a6);
  v52 = *(v40 + 8);
  v44 = v69;

  v52(v39, v42);
  v53 = v75;
  *(v49 + 56) = v75;
  if (!(v53 >> 62))
  {
    v54 = (v53 + 64);
LABEL_12:
    v27 = v65;
    v55 = *v54;

    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v53 >> 62 == 1)
  {
    v54 = ((v53 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_12;
  }

  v27 = v65;
  v57 = 1;
LABEL_13:
  *(v49 + 64) = v57;
  v45 = v49;
LABEL_14:
  v58 = *(a2 + 104);
  v59 = *(a2 + 136);
  v77[5] = *(a2 + 120);
  v77[6] = v59;
  v78 = *(a2 + 152);
  v77[0] = *(a2 + 40);
  v60 = *(a2 + 72);
  v77[1] = *(a2 + 56);
  v77[2] = v60;
  v77[3] = *(a2 + 88);
  v77[4] = v58;
  type metadata accessor for JSONDecoderImpl();
  v49 = swift_allocObject();
  *(v49 + 160) = v45;
  *(v49 + 24) = v44;
  *(v49 + 32) = v38;
  *(v49 + 104) = *(a2 + 104);
  *(v49 + 120) = *(a2 + 120);
  *(v49 + 136) = *(a2 + 136);
  *(v49 + 152) = *(a2 + 152);
  *(v49 + 40) = *(a2 + 40);
  *(v49 + 56) = *(a2 + 56);
  *(v49 + 72) = *(a2 + 72);
  *(v49 + 88) = *(a2 + 88);
  outlined init with copy of JSONDecoder._Options(v77, v76);
  v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v48 = *(v56 + 2);
  v57 = *(v56 + 3);
  a2 = v48 + 1;
  if (v48 >= v57 >> 1)
  {
LABEL_18:
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), a2, 1, v56);
  }

  v61 = v68;
  v62 = v67;
  *(v56 + 2) = a2;
  v63 = &v56[24 * v48];
  *(v63 + 4) = v27;
  *(v63 + 5) = v61;
  v63[48] = v62;
  *(v49 + 16) = v56;
  return v49;
}

uint64_t storeEnumTagSinglePayload for AttributedString.AttributeKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = BigString.UTF8View.subscript.getter();
  if (result != 10)
  {
    if (result == 13)
    {
      v14 = BigString.UTF8View.index(after:)();
      v16 = v15;
      if (v14 >> 10 < BigString.UTF8View.endIndex.getter() >> 10 && BigString.UTF8View.subscript.getter() == 10)
      {
        result = BigString.UTF8View.index(after:)();
        if (result >> 10 < a2 >> 10)
        {
          __break(1u);
          goto LABEL_7;
        }
      }

      else
      {
        result = BigString.UTF8View.index(after:)();
        if (result >> 10 < a2 >> 10)
        {
          __break(1u);
          goto LABEL_16;
        }
      }

LABEL_17:
      *a7 = a2;
      *(a7 + 8) = a3;
      goto LABEL_18;
    }

    if (a6)
    {
      if ((result + 86) < 0xDBu)
      {
LABEL_13:
        *a7 = 0;
        *(a7 + 8) = 0;
        *(a7 + 16) = 0;
        *(a7 + 24) = 2;
        *(a7 + 32) = 0u;
        *(a7 + 48) = 0u;
        return result;
      }
    }

    else if ((result + 29) < 0xDFu)
    {
      goto LABEL_13;
    }

    v55 = a4;
    v50 = a7;
    v51 = *(a1 + 16);
    if (!v51)
    {
LABEL_44:
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      *(v50 + 24) = 2;
      *(v50 + 32) = 0u;
      *(v50 + 48) = 0u;
      return result;
    }

    v30 = 0;
    v52 = a1 + 32;
    v53 = a5;
    v56 = a2;
    v58 = a3;
    while (1)
    {
      v31 = *(v52 + 8 * v30);
      v54 = v30;
      if (a6)
      {
        v32 = *(v31 + 16);
        v33 = v32 - 1;
        BigString.UTF8View.startIndex.getter();

        v59 = 0;
        v34 = -1;
      }

      else
      {
        BigString.UTF8View.endIndex.getter();

        result = BigString.UTF8View.index(before:)();
        v33 = 0;
        v32 = *(v31 + 16);
        v59 = v32 - 1;
        v34 = 1;
      }

      if (v33 >= v32)
      {
        break;
      }

      v35 = *(v31 + 32 + v33);
      result = BigString.UTF8View.subscript.getter();
      if (v35 == result)
      {
        v37 = v56;
        v36 = v58;
        v38 = v55;
        v39 = v53;
        while (1)
        {
          v40 = v59 - v33;
          if (__OFSUB__(v59, v33))
          {
            break;
          }

          if (a6)
          {
            if (v40 <= 0 && v34 < v40)
            {

              if (v56 >> 10 < v37 >> 10)
              {
                __break(1u);
LABEL_47:

                v46 = v37 >> 10;
                result = v37;
                v36 = v58;
                v37 = v56;
                v38 = v55;
                v39 = v53;
                if (v46 < v56 >> 10)
                {
                  goto LABEL_57;
                }
              }

              result = BigString.UTF8View.index(after:)();
              *v50 = v37;
              *(v50 + 8) = v36;
              *(v50 + 16) = v38;
              *(v50 + 24) = v39;
              *(v50 + 32) = result;
              *(v50 + 40) = v47;
              *(v50 + 48) = v48;
              *(v50 + 56) = v49;
              return result;
            }
          }

          else if (!v40)
          {
            goto LABEL_47;
          }

          v41 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_50;
          }

          result = BigString.UTF8View.index(_:offsetBy:limitedBy:)();
          if (v44 == 2)
          {
            goto LABEL_23;
          }

          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v41 >= *(v31 + 16))
          {
            goto LABEL_52;
          }

          v37 = result;
          v36 = v42;
          v38 = v43;
          v39 = v44;
          v45 = *(v31 + 32 + v41);
          result = BigString.UTF8View.subscript.getter();
          v33 += v34;
          if (v45 != result)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

LABEL_23:
      v30 = v54 + 1;

      if (v54 + 1 == v51)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_7:
  v16 = a2 >> 10;
  if (a2 >> 10 > BigString.UTF8View.startIndex.getter() >> 10)
  {
    v20 = BigString.UTF8View.index(before:)();
    v22 = v21;
    v24 = v23;
    v61 = v25;
    v26 = BigString.UTF8View.subscript.getter();
    v27 = a3;
    v28 = v26;
    v57 = v27;
    result = BigString.UTF8View.index(after:)();
    v29 = result >> 10;
    if (v28 == 13)
    {
      if (v29 >= v20 >> 10)
      {
        *a7 = v20;
        *(a7 + 8) = v61;
        *(a7 + 16) = v22;
        *(a7 + 24) = v24;
LABEL_19:
        *(a7 + 32) = result;
        *(a7 + 40) = v17;
        *(a7 + 48) = v18;
        *(a7 + 56) = v19;
        return result;
      }

      goto LABEL_55;
    }

    if (v29 < v16)
    {
      goto LABEL_56;
    }

    *a7 = a2;
    *(a7 + 8) = v57;
LABEL_18:
    *(a7 + 16) = a4;
    *(a7 + 24) = a5;
    goto LABEL_19;
  }

LABEL_16:
  result = BigString.UTF8View.index(after:)();
  if (v16 <= result >> 10)
  {
    goto LABEL_17;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

{
  result = BigSubstring.UTF8View.subscript.getter();
  if (result != 10)
  {
    if (result == 13)
    {
      if (BigSubstring.UTF8View.index(after:)() >> 10 < *(v7 + 80) >> 10 && (v8 = v16, BigSubstring.UTF8View.subscript.getter() == 10))
      {
        result = BigSubstring.UTF8View.index(after:)();
        if (result >> 10 < a2 >> 10)
        {
          __break(1u);
          goto LABEL_7;
        }
      }

      else
      {
        result = BigSubstring.UTF8View.index(after:)();
        if (result >> 10 < a2 >> 10)
        {
          __break(1u);
          goto LABEL_16;
        }
      }

LABEL_17:
      *a7 = a2;
      *(a7 + 8) = a3;
      goto LABEL_18;
    }

    if (a6)
    {
      if ((result + 86) < 0xDBu)
      {
LABEL_13:
        *a7 = 0;
        *(a7 + 8) = 0;
        *(a7 + 16) = 0;
        *(a7 + 24) = 2;
        *(a7 + 32) = 0u;
        *(a7 + 48) = 0u;
        return result;
      }
    }

    else if ((result + 29) < 0xDFu)
    {
      goto LABEL_13;
    }

    v55 = a4;
    v50 = a7;
    v51 = *(a1 + 16);
    if (!v51)
    {
LABEL_44:
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      *(v50 + 24) = 2;
      *(v50 + 32) = 0u;
      *(v50 + 48) = 0u;
      return result;
    }

    v30 = 0;
    v52 = a1 + 32;
    v53 = a5;
    v56 = a2;
    v58 = a3;
    while (1)
    {
      v31 = *(v52 + 8 * v30);
      v54 = v30;
      if (a6)
      {
        v32 = *(v31 + 16);
        v33 = v32 - 1;

        v59 = 0;
        v34 = -1;
      }

      else
      {

        result = BigSubstring.UTF8View.index(before:)();
        v33 = 0;
        v32 = *(v31 + 16);
        v59 = v32 - 1;
        v34 = 1;
      }

      if (v33 >= v32)
      {
        break;
      }

      v35 = *(v31 + 32 + v33);
      result = BigSubstring.UTF8View.subscript.getter();
      if (v35 == result)
      {
        v37 = v56;
        v36 = v58;
        v38 = v55;
        v39 = v53;
        while (1)
        {
          v40 = v59 - v33;
          if (__OFSUB__(v59, v33))
          {
            break;
          }

          if (a6)
          {
            if (v40 <= 0 && v34 < v40)
            {

              if (v56 >> 10 < v37 >> 10)
              {
                __break(1u);
LABEL_47:

                v46 = v37 >> 10;
                result = v37;
                v36 = v58;
                v37 = v56;
                v38 = v55;
                v39 = v53;
                if (v46 < v56 >> 10)
                {
                  goto LABEL_57;
                }
              }

              result = BigSubstring.UTF8View.index(after:)();
              *v50 = v37;
              *(v50 + 8) = v36;
              *(v50 + 16) = v38;
              *(v50 + 24) = v39;
              *(v50 + 32) = result;
              *(v50 + 40) = v47;
              *(v50 + 48) = v48;
              *(v50 + 56) = v49;
              return result;
            }
          }

          else if (!v40)
          {
            goto LABEL_47;
          }

          v41 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_50;
          }

          result = BigSubstring.UTF8View.index(_:offsetBy:limitedBy:)();
          if (v44 == 2)
          {
            goto LABEL_23;
          }

          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v41 >= *(v31 + 16))
          {
            goto LABEL_52;
          }

          v37 = result;
          v36 = v42;
          v38 = v43;
          v39 = v44;
          v45 = *(v31 + 32 + v41);
          result = BigSubstring.UTF8View.subscript.getter();
          v33 += v34;
          if (v45 != result)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

LABEL_23:
      v30 = v54 + 1;

      if (v54 + 1 == v51)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_7:
  v8 = a2 >> 10;
  if (a2 >> 10 > *(v7 + 48) >> 10)
  {
    v20 = BigSubstring.UTF8View.index(before:)();
    v22 = v21;
    v24 = v23;
    v61 = v25;
    v26 = BigSubstring.UTF8View.subscript.getter();
    v27 = a3;
    v28 = v26;
    v57 = v27;
    result = BigSubstring.UTF8View.index(after:)();
    v29 = result >> 10;
    if (v28 == 13)
    {
      if (v29 >= v20 >> 10)
      {
        *a7 = v20;
        *(a7 + 8) = v61;
        *(a7 + 16) = v22;
        *(a7 + 24) = v24;
LABEL_19:
        *(a7 + 32) = result;
        *(a7 + 40) = v17;
        *(a7 + 48) = v18;
        *(a7 + 56) = v19;
        return result;
      }

      goto LABEL_55;
    }

    if (v29 < v8)
    {
      goto LABEL_56;
    }

    *a7 = a2;
    *(a7 + 8) = v57;
LABEL_18:
    *(a7 + 16) = a4;
    *(a7 + 24) = a5;
    goto LABEL_19;
  }

LABEL_16:
  result = BigSubstring.UTF8View.index(after:)();
  if (v8 <= result >> 10)
  {
    goto LABEL_17;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t specialized AttributedString._InternalRunsSlice.updateEach(with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 72);
  if (v4)
  {
    v5 = *(result + 88);
  }

  else
  {
    v5 = 0;
  }

  if (a2 < 0 || v5 < a2)
  {
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v6 = a3;
  v181 = result;
  v7 = *(result + 80);
  v183 = (result + 72);
  v184 = *(result + 96);
  if (!v4 || ((v8 = (v4 + 16), v9 = *(v4 + 16), *(v4 + 16)) ? (v10 = *(result + 88) <= a2) : (v10 = 1), v10))
  {
    v12 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v12);
    v13 = a2;
    v14 = result;
    v15 = 0;
    v16 = 0;
    if (!v4)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v185 = *(result + 80);
  v19 = a2;
  v20 = *(v4 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v20)
  {
    v28 = v6;
    v21 = 0;
    v15 = v4;
    goto LABEL_31;
  }

  v21 = v20;
  v22 = v4;
  do
  {
    v23 = *v8;
    if (*v8)
    {
      v24 = 0;
      v25 = (v22 + 40);
      while (1)
      {
        v26 = *v25;
        v25 += 3;
        v27 = v19 - v26;
        if (__OFSUB__(v19, v26))
        {
          goto LABEL_270;
        }

        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v27 + 1 < 1)
        {
          v23 = v24;
          goto LABEL_17;
        }

        ++v24;
        v19 = v27;
        if (v23 == v24)
        {
          goto LABEL_26;
        }
      }

LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v27 = v19;
LABEL_26:
    if (v27)
    {
      goto LABEL_296;
    }

    v19 = 0;
LABEL_17:
    v21 = (v23 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v21;
    v15 = *(v22 + 24 + 24 * v23);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v8 = (v15 + 16);
    LOBYTE(v20) = *(v15 + 18);
    v22 = v15;
  }

  while (v20);
  v9 = *v8;
  if (*v8)
  {
    v28 = a3;
LABEL_31:
    v29 = 0;
    v30 = 24;
    v16 = v19;
    v31 = v9;
    while (1)
    {
      v32 = *(v15 + v30);
      v33 = v16 - v32;
      if (__OFSUB__(v16, v32))
      {
        goto LABEL_294;
      }

      if (__OFADD__(v33, 1))
      {
        goto LABEL_295;
      }

      if (v33 + 1 < 1)
      {
        break;
      }

      ++v29;
      v30 += 24;
      v16 -= v32;
      if (v9 == v29)
      {
        if (!v33)
        {
          goto LABEL_37;
        }

LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }
    }

    v31 = v29;
  }

  else
  {
LABEL_268:
    v31 = 0;
    v28 = a3;
    if (v19)
    {
      goto LABEL_269;
    }

LABEL_37:
    v16 = 0;
  }

  result = swift_unknownObjectRelease();
  v14 = v21 & 0xFFFFFFFFFFFFF0FFLL | (v31 << 8);
  v13 = a2;
  v6 = v28;
  v7 = v185;
  if (v4)
  {
LABEL_13:
    v17 = v13;
    v18 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v184, v14, v15, v4, v7);
    result = swift_unknownObjectRelease();
    v13 = v17;
    goto LABEL_41;
  }

LABEL_40:
  v18 = 0;
LABEL_41:
  v34 = v181;
  v35 = v13 - v16;
  if (!__OFSUB__(v13, v16))
  {
    v21 = v15;
    v36 = v184;
    while (1)
    {
      v4 = *v183;
      v184 = v36;
      v185 = v35;
      v15 = v21;
      if (v13 == v6)
      {
        if (v4)
        {
          v38 = v34[11];
          if (v38 < v13)
          {
            goto LABEL_293;
          }

          v19 = v6;
          v174 = v34[12];
          v175 = v34[10];
          v40 = (v4 + 16);
          v39 = *(v4 + 16);
          v41 = *(v4 + 18);
          if (*(v4 + 16))
          {
            v42 = v38 <= v13;
          }

          else
          {
            v42 = 1;
          }

          if (!v42)
          {
            v173 = v14;
            v177 = v18;
            result = swift_unknownObjectRetain_n();
            if (!v41)
            {
              v47 = 0;
              v46 = a2;
              v21 = v4;
LABEL_76:
              v54 = 0;
              v55 = 24;
              v44 = v46;
              v56 = v39;
              v34 = v181;
              while (1)
              {
                v57 = *(v21 + v55);
                v46 = v44 - v57;
                if (__OFSUB__(v44, v57))
                {
                  goto LABEL_272;
                }

                if (__OFADD__(v46, 1))
                {
                  goto LABEL_273;
                }

                if (v46 + 1 < 1)
                {
                  goto LABEL_84;
                }

                ++v54;
                v55 += 24;
                v44 -= v57;
                if (v56 == v54)
                {
                  v54 = v56;
                  goto LABEL_82;
                }
              }
            }

            v46 = a2;
            v47 = v41;
            v48 = v4;
            do
            {
              v49 = *v40;
              if (*v40)
              {
                v50 = 0;
                v51 = (v48 + 40);
                while (1)
                {
                  v52 = *v51;
                  v51 += 3;
                  v53 = v46 - v52;
                  if (__OFSUB__(v46, v52))
                  {
                    break;
                  }

                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_263;
                  }

                  if (v53 + 1 < 1)
                  {
                    v49 = v50;
                    goto LABEL_62;
                  }

                  ++v50;
                  v46 = v53;
                  if (v49 == v50)
                  {
                    goto LABEL_71;
                  }
                }

                __break(1u);
LABEL_263:
                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
                goto LABEL_268;
              }

              v53 = v46;
LABEL_71:
              if (v53)
              {
                goto LABEL_274;
              }

              v46 = 0;
LABEL_62:
              v47 = (v49 << ((4 * v41 + 8) & 0x3C)) | ((-15 << ((4 * v41 + 8) & 0x3C)) - 1) & v47;
              v21 = *(v48 + 24 + 24 * v49);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v40 = (v21 + 16);
              LOBYTE(v41) = *(v21 + 18);
              v48 = v21;
            }

            while (v41);
            LODWORD(v39) = *v40;
            if (*v40)
            {
              goto LABEL_76;
            }

            v54 = 0;
            v34 = v181;
LABEL_82:
            if (!v46)
            {
              v44 = 0;
LABEL_84:
              swift_unknownObjectRelease();
              v43 = v47 & 0xFFFFFFFFFFFFF0FFLL | (v54 << 8);
              v18 = v177;
              v6 = a3;
              v14 = v173;
              goto LABEL_85;
            }

            goto LABEL_310;
          }

          v43 = ((-15 << ((4 * v41 + 8) & 0x3C)) - 1) & v41 | (v39 << ((4 * v41 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v44 = 0;
          v21 = 0;
          v34 = v181;
          v6 = v19;
LABEL_85:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v174, v43, v21, v4, v175);
          result = swift_unknownObjectRelease();
          v35 = v185;
          v13 = a2;
        }

        else
        {
          if (v13 > 0)
          {
            goto LABEL_305;
          }

          v44 = 0;
        }

        v45 = v13 - v44;
        if (__OFSUB__(v13, v44))
        {
          goto LABEL_288;
        }

        v36 = v184;
      }

      else if (v4)
      {
        v45 = v34[11];
      }

      else
      {
        v45 = 0;
      }

      if (v35 >= v45)
      {
        return result;
      }

      if (v36 != v34[12])
      {
        goto LABEL_275;
      }

      if (v15)
      {
        v58 = v18;
        v59 = v34;
        v60 = v13;
        v61 = v6;
        v62 = (v15 + 24 * ((v14 >> ((4 * *(v15 + 18) + 8) & 0x3C)) & 0xF));
        v64 = v62[4];
        v63 = v62[5];
        v65 = v62[3];
        v66 = v35 + v65;
        v67 = __OFADD__(v35, v65);
        v178 = v67;
        v68 = v35;

        if (v178)
        {
          goto LABEL_286;
        }

        *&v193 = v64;
        *(&v193 + 1) = v63;
        v69 = v60;
        v70 = v60;
        v10 = v68 < v60;
        v71 = v68;
        v72 = v61;
        v34 = v59;
        v18 = v58;
        if (!v10)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v91 = v34[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v14, v91);
        v93 = v92;
        v95 = v94;
        result = swift_unknownObjectRelease();
        if (v36 != v34[12])
        {
          goto LABEL_290;
        }

        v96 = v34[9];
        swift_unknownObjectRetain();
        v97 = specialized Rope._Node.subscript.getter(v14, v96);
        swift_unknownObjectRelease();

        v71 = v185;
        v66 = v185 + v97;
        if (__OFADD__(v185, v97))
        {
          goto LABEL_291;
        }

        *&v193 = v93;
        *(&v193 + 1) = v95;
        v69 = a2;
        v70 = a2;
        v72 = a3;
        if (v185 >= a2)
        {
LABEL_96:
          if (v71 >= v72)
          {
            v70 = v72;
          }

          else
          {
            v70 = v71;
          }
        }
      }

      if (v66 <= v69)
      {
        v73 = v69;
      }

      else
      {
        v73 = v66;
      }

      if (v66 <= v72)
      {
        v74 = v73;
      }

      else
      {
        v74 = v72;
      }

      if (v70 == v74)
      {
        goto LABEL_276;
      }

      if (v70 != v71 || v74 != v66)
      {
        v190 = 0uLL;
        result = specialized AttributedString._AttributeStorage.matchStyle(of:for:)(a4, &v190);
        if (result)
        {
          if (__OFSUB__(v74, v70))
          {
            goto LABEL_297;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v70, v74, v74 - v70, v193, *(&v193 + 1));
          v81 = v34[9];
          v4 = v34[11];
          if (v81)
          {
            v82 = v34[11];
          }

          else
          {
            v82 = 0;
          }

          v83 = v185;
          if (v185 < 0 || v82 < v185)
          {
            goto LABEL_298;
          }

          v84 = v34[12];
          if (v81)
          {
            v85 = v34[10];
            v86 = (v81 + 16);
            v21 = *(v81 + 16);
            v87 = *(v81 + 18);
            if (*(v81 + 16) && v185 < v4)
            {
              v19 = v85;
              v184 = v84;
              result = swift_unknownObjectRetain_n();
              if (!v87)
              {
                v89 = 0;
                v88 = v185;
                v15 = v81;
LABEL_170:
                v34 = v181;
                v114 = 0;
                v115 = 24;
                v104 = v88;
                while (1)
                {
                  v116 = *(v15 + v115);
                  v88 = v104 - v116;
                  if (__OFSUB__(v104, v116))
                  {
                    goto LABEL_280;
                  }

                  if (__OFADD__(v88, 1))
                  {
                    goto LABEL_281;
                  }

                  if (v88 + 1 < 1)
                  {
                    goto LABEL_178;
                  }

                  ++v114;
                  v115 += 24;
                  v104 -= v116;
                  if (v21 == v114)
                  {
                    v114 = v21;
                    goto LABEL_176;
                  }
                }
              }

              v88 = v185;
              v89 = v87;
              v90 = v81;
              do
              {
                v98 = *v86;
                if (*v86)
                {
                  v99 = 0;
                  v100 = (v90 + 40);
                  while (1)
                  {
                    v101 = *v100;
                    v100 += 3;
                    v102 = v88 - v101;
                    if (__OFSUB__(v88, v101))
                    {
                      goto LABEL_264;
                    }

                    if (__OFADD__(v102, 1))
                    {
                      goto LABEL_265;
                    }

                    if (v102 + 1 < 1)
                    {
                      v98 = v99;
                      goto LABEL_136;
                    }

                    ++v99;
                    v88 = v102;
                    if (v98 == v99)
                    {
                      goto LABEL_145;
                    }
                  }
                }

                v102 = v88;
LABEL_145:
                if (v102)
                {
                  goto LABEL_284;
                }

                v88 = 0;
LABEL_136:
                v89 = (v98 << ((4 * v87 + 8) & 0x3C)) | ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v89;
                v15 = *(v90 + 24 + 24 * v98);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v86 = (v15 + 16);
                LOBYTE(v87) = *(v15 + 18);
                v90 = v15;
              }

              while (v87);
              LODWORD(v21) = *v86;
              if (*v86)
              {
                goto LABEL_170;
              }

              v114 = 0;
              v34 = v181;
LABEL_176:
              if (!v88)
              {
                v104 = 0;
LABEL_178:
                swift_unknownObjectRelease();
                v111 = v89 & 0xFFFFFFFFFFFFF0FFLL | (v114 << 8);
                v84 = v184;
                v85 = v19;
                goto LABEL_179;
              }

              goto LABEL_312;
            }

            v111 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v21 << ((4 * v87 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v104 = 0;
            v15 = 0;
            v34 = v181;
LABEL_179:
            v105 = v111;
            v18 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v84, v111, v15, v81, v85);
            result = swift_unknownObjectRelease();
            v83 = v185;
          }

          else
          {
            v104 = 0;
            v15 = 0;
            v105 = 0;
            v18 = 0;
          }

          v117 = __OFSUB__(v83, v104);
          v118 = v83 - v104;
          if (v117)
          {
            goto LABEL_303;
          }

          v185 = v118;
          v14 = v105;
        }

        else
        {
          v84 = v184;
        }

        goto LABEL_210;
      }

      if (v184 != v34[12])
      {
        goto LABEL_289;
      }

      if (!*v183)
      {
        goto LABEL_320;
      }

      specialized Rope._Node._prepareModify(at:)(v14, &v194);
      v209[0] = v195;
      v190 = v194;
      v191 = v195;
      v192 = v196;
      outlined destroy of TermOfAddress?(v209, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(v209 + 8, &_sShySSGMd);
      v191 = MEMORY[0x1E69E7CC8];
      v75 = v184 + 1;
      v34[12] = v184 + 1;
      if (!v34[9])
      {
        goto LABEL_321;
      }

      specialized Rope._Node._finalizeModify(_:)(&v187, &v190);

      v190 = 0uLL;
      result = specialized AttributedString._AttributeStorage.matchStyle(of:for:)(a4, &v190);
      if ((result & 1) == 0)
      {
        if (v75 != v34[12])
        {
          goto LABEL_299;
        }

        if (!*v183)
        {
          goto LABEL_325;
        }

        specialized Rope._Node._prepareModify(at:)(v14, &v203);
        v208 = v204;
        v190 = v203;
        v191 = v204;
        v192 = v205;
        v103 = v193;

        outlined destroy of TermOfAddress?(&v208, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v208 + 8, &_sShySSGMd);
        v191 = v103;
        v34[12] = v184 + 2;
        if (!v34[9])
        {
          goto LABEL_322;
        }

        v15 = specialized Rope._Node._finalizeModify(_:)(&v187, &v190);

        v84 = v184 + 2;
        goto LABEL_210;
      }

      if (v75 != v34[12])
      {
        goto LABEL_300;
      }

      v179 = v18;
      if (!*v183)
      {
        goto LABEL_323;
      }

      specialized Rope._Node._prepareModify(at:)(v14, &v197);
      v206 = v198;
      v207 = v199;
      outlined destroy of TermOfAddress?(&v206, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(&v207, &_sShySSGMd);
      v190 = v197;
      v192 = v200;
      v76 = v193;
      v191 = v193;
      v77 = v184 + 2;
      v34[12] = v184 + 2;
      if (!v34[9])
      {
        goto LABEL_324;
      }

      v15 = specialized Rope._Node._finalizeModify(_:)(v186, &v190);

      v78 = v34[9];
      v79 = v34[12];
      *&v190 = v184 + 2;
      *(&v190 + 1) = v14;
      *&v191 = v15;
      if (v77 != v79)
      {
        goto LABEL_301;
      }

      if (!v78)
      {
        goto LABEL_302;
      }

      v80 = ((-15 << ((4 * *(v78 + 18) + 8) & 0x3C)) - 1) & *(v78 + 18) | (*(v78 + 16) << ((4 * *(v78 + 18) + 8) & 0x3C));
      result = swift_unknownObjectRetain();
      if (v14 >= v80)
      {
        goto LABEL_302;
      }

      v106 = (4 * *(v15 + 18) + 8) & 0x3C;
      v107 = ((v14 >> v106) & 0xF) + 1;
      if (v107 >= *(v15 + 16))
      {
        v84 = v184 + 2;
        if (specialized Rope._Node.formSuccessor(of:)(&v190, v78))
        {
          result = swift_unknownObjectRelease();
          v108 = *(&v190 + 1);
          v110 = v191;
          v109 = v190;
        }

        else
        {
          v108 = specialized Rope._endPath.getter(v78);
          result = swift_unknownObjectRelease();
          v110 = 0;
          *&v190 = v184 + 2;
          v109 = v184 + 2;
        }
      }

      else
      {
        v108 = (v107 << v106) | ((-15 << v106) - 1) & v14;
        result = swift_unknownObjectRelease();
        v84 = v184 + 2;
        v109 = v184 + 2;
        v110 = v15;
      }

      v112 = *v183;
      if (*v183)
      {
        if (v108 < (((-15 << ((4 * *(v112 + 18) + 8) & 0x3C)) - 1) & *(v112 + 18) | (*(v112 + 16) << ((4 * *(v112 + 18) + 8) & 0x3C))))
        {
          if (v109 != v34[12])
          {
            goto LABEL_311;
          }

          if (v110)
          {
            v113 = *(v110 + 24 * ((v108 >> ((4 * *(v110 + 18) + 8) & 0x3C)) & 0xF) + 40);
          }

          else
          {
            specialized Rope._Node.subscript.getter(v108, v112);
            v113 = v119;
          }

          if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*(&v76 + 1), v76) & 1) == 0)
          {

            goto LABEL_193;
          }

          v120 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v113, *(&v76 + 1));

          if (v120)
          {
            v14 = specialized Rope._remove(at:)(&v190, v77, v14);
            v121 = v34[12];
            if (v14 < specialized Rope._endPath.getter(v34[9]))
            {
              specialized Rope._Node.unmanagedLeaf(at:)(v14, v34[9]);
            }

            v122 = v190;

            if (v121 != v34[12])
            {
              goto LABEL_318;
            }

            if (!*v183)
            {
              goto LABEL_329;
            }

            result = specialized Rope._Node._prepareModify(at:)(v14, v201);
            v190 = v201[0];
            v191 = v201[1];
            v192 = v201[2];
            if (__OFADD__(*(&v201[0] + 1), v122))
            {
              goto LABEL_319;
            }

            *(&v190 + 1) = *(&v201[0] + 1) + v122;
            v77 = v121 + 1;
            v34[12] = v121 + 1;
            if (!v34[9])
            {
              goto LABEL_328;
            }

            v15 = specialized Rope._Node._finalizeModify(_:)(v186, &v190);

LABEL_193:
          }
        }

        v123 = *v183;
        if (*v183)
        {
          v123 = *(v123 + 18);
        }

        v84 = v77;
        if (v123 >= v14)
        {
LABEL_166:
          v18 = v179;
          goto LABEL_210;
        }

        goto LABEL_197;
      }

      if (!v14)
      {
        goto LABEL_166;
      }

LABEL_197:
      v124 = v34[9];
      v125 = v34[10];
      v126 = v84;
      v127 = v34[11];
      v128 = v34[12];
      v129 = v126;
      *&v190 = v126;
      *(&v190 + 1) = v14;
      *&v191 = v15;
      swift_unknownObjectRetain();
      specialized Rope.formIndex(before:)(&v190, v124, v125, v127, v128);
      swift_unknownObjectRelease();
      specialized Rope.subscript.getter(v190, *(&v190 + 1), v191, v34[9], v34[10], v34[11], v34[12]);
      v131 = v130;
      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v132, v76))
      {
        v133 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v131, *(&v76 + 1));

        if (v133)
        {
          v134 = specialized Rope._remove(at:)(&v190, v129, v14);
          v135 = v34[12];
          if (v134 >= specialized Rope._endPath.getter(v34[9]))
          {
            v136 = 0;
          }

          else
          {
            v136 = specialized Rope._Node.unmanagedLeaf(at:)(v134, v34[9]);
          }

          v187 = v135;
          v188 = v134;
          v189 = v136;
          v137 = v190;

          v138 = v34[9];
          v139 = v34[10];
          v140 = v34[11];
          v141 = v34[12];
          swift_unknownObjectRetain();
          specialized Rope.formIndex(before:)(&v187, v138, v139, v140, v141);
          result = swift_unknownObjectRelease();
          v142 = v187;
          if (v187 != v34[12])
          {
            goto LABEL_314;
          }

          if (!*v183)
          {
            goto LABEL_326;
          }

          v14 = v188;
          result = specialized Rope._Node._prepareModify(at:)(v188, v202);
          v190 = v202[0];
          v191 = v202[1];
          v192 = v202[2];
          if (__OFSUB__(v185, *(&v202[0] + 1)))
          {
            goto LABEL_315;
          }

          if (__OFADD__(*(&v202[0] + 1), v137))
          {
            goto LABEL_316;
          }

          v185 -= *(&v202[0] + 1);
          *(&v190 + 1) = *(&v202[0] + 1) + v137;
          v84 = v142 + 1;
          v34[12] = v142 + 1;
          if (!v34[9])
          {
            goto LABEL_327;
          }

          v15 = specialized Rope._Node._finalizeModify(_:)(v186, &v190);

          v18 = v179 - 1;
          if (__OFSUB__(v179, 1))
          {
            goto LABEL_317;
          }

          goto LABEL_210;
        }
      }

      else
      {
      }

      v84 = v129;
      v18 = v179;
LABEL_210:

      v143 = v34[9];
      v144 = v34[12];
      *&v190 = v84;
      *(&v190 + 1) = v14;
      *&v191 = v15;
      v117 = __OFADD__(v18, 1);
      v145 = v18 + 1;
      if (v117)
      {
        goto LABEL_278;
      }

      if (v84 != v144)
      {
        goto LABEL_279;
      }

      if (v15)
      {
        v146 = *(v15 + 24 * ((v14 >> ((4 * *(v15 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v147 = v185 + v146;
        if (__OFADD__(v185, v146))
        {
          goto LABEL_287;
        }

        if (!v143)
        {
          goto LABEL_277;
        }

        v148 = v145;
        v149 = v84;
        result = swift_unknownObjectRetain();
      }

      else
      {
        v148 = v145;
        v149 = v84;
        swift_unknownObjectRetain();
        v150 = specialized Rope._Node.subscript.getter(v14, v143);

        v147 = v185 + v150;
        if (__OFADD__(v185, v150))
        {
          goto LABEL_292;
        }

        if (!v143)
        {
          goto LABEL_277;
        }
      }

      if (v14 >= (((-15 << ((4 * *(v143 + 18) + 8) & 0x3C)) - 1) & *(v143 + 18) | (*(v143 + 16) << ((4 * *(v143 + 18) + 8) & 0x3C))))
      {
        goto LABEL_277;
      }

      if (v15 && (v151 = (4 * *(v15 + 18) + 8) & 0x3C, v152 = ((v14 >> v151) & 0xF) + 1, v152 < *(v15 + 16)))
      {
        result = swift_unknownObjectRelease();
        v14 = (v152 << v151) | ((-15 << v151) - 1) & v14;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v190, v143))
      {
        result = swift_unknownObjectRelease();
        v14 = *(&v190 + 1);
      }

      else
      {
        v153 = *(v143 + 18);
        v154 = *(v143 + 16);
        result = swift_unknownObjectRelease();
        *&v190 = v149;
        *(&v190 + 1) = ((-15 << ((4 * v153 + 8) & 0x3C)) - 1) & v153 | (v154 << ((4 * v153 + 8) & 0x3C));
        v14 = *(&v190 + 1);
        *&v191 = 0;
      }

      v36 = v190;
      v21 = v191;
      v35 = v147;
      v6 = a3;
      v34 = v181;
      v18 = v148;
      v13 = a2;
      if (v35 >= a3)
      {
        v155 = *v183;
        if (a2 == a3)
        {
          v36 = v181[12];
          if (v155)
          {
            v21 = v181[11];
            if (v21 < a2)
            {
              goto LABEL_306;
            }

            v4 = v181[10];
            v156 = (v155 + 16);
            v157 = *(v155 + 16);
            v19 = *(v155 + 18);
            v185 = v181[11];
            if (*(v155 + 16) && v21 > a2)
            {
              v184 = v181[12];
              result = swift_unknownObjectRetain_n();
              if (!v19)
              {
                v159 = 0;
                v158 = a2;
                v15 = v155;
LABEL_252:
                v34 = v181;
                v170 = 0;
                v171 = 24;
                v37 = v158;
                while (1)
                {
                  v172 = *(v15 + v171);
                  v158 = v37 - v172;
                  if (__OFSUB__(v37, v172))
                  {
                    goto LABEL_282;
                  }

                  if (__OFADD__(v158, 1))
                  {
                    goto LABEL_283;
                  }

                  if (v158 + 1 < 1)
                  {
                    goto LABEL_260;
                  }

                  ++v170;
                  v171 += 24;
                  v37 -= v172;
                  if (v157 == v170)
                  {
                    v170 = v157;
                    goto LABEL_258;
                  }
                }
              }

              v158 = a2;
              v159 = v19;
              v160 = v155;
              do
              {
                v161 = *v156;
                if (*v156)
                {
                  v162 = 0;
                  v163 = (v160 + 40);
                  while (1)
                  {
                    v164 = *v163;
                    v163 += 3;
                    v165 = v158 - v164;
                    if (__OFSUB__(v158, v164))
                    {
                      goto LABEL_266;
                    }

                    if (__OFADD__(v165, 1))
                    {
                      goto LABEL_267;
                    }

                    if (v165 + 1 < 1)
                    {
                      v161 = v162;
                      goto LABEL_234;
                    }

                    ++v162;
                    v158 = v165;
                    if (v161 == v162)
                    {
                      goto LABEL_243;
                    }
                  }
                }

                v165 = v158;
LABEL_243:
                if (v165)
                {
                  goto LABEL_285;
                }

                v158 = 0;
LABEL_234:
                v159 = (v161 << ((4 * v19 + 8) & 0x3C)) | ((-15 << ((4 * v19 + 8) & 0x3C)) - 1) & v159;
                v15 = *(v160 + 24 + 24 * v161);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v156 = (v15 + 16);
                v19 = *(v15 + 18);
                v160 = v15;
              }

              while (*(v15 + 18));
              LODWORD(v157) = *v156;
              if (*v156)
              {
                goto LABEL_252;
              }

              v170 = 0;
              v34 = v181;
LABEL_258:
              if (!v158)
              {
                v37 = 0;
LABEL_260:
                swift_unknownObjectRelease();
                v14 = v159 & 0xFFFFFFFFFFFFF0FFLL | (v170 << 8);
                v6 = a3;
                v36 = v184;
                goto LABEL_44;
              }

              goto LABEL_313;
            }

            v14 = ((-15 << ((4 * v19 + 8) & 0x3C)) - 1) & v19 | (v157 << ((4 * v19 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v37 = 0;
            v15 = 0;
            v34 = v181;
LABEL_44:
            v21 = v15;
            v18 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v36, v14, v15, v155, v4);
            result = swift_unknownObjectRelease();
            v13 = a2;
            v35 = a2 - v37;
            if (__OFSUB__(a2, v37))
            {
              goto LABEL_304;
            }
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_308;
            }

            v21 = 0;
            v14 = 0;
            v18 = 0;
            v35 = a2;
          }
        }

        else
        {
          v35 = 0;
          v18 = 0;
          v21 = 0;
          v14 = 0;
          v36 = v181[12];
          if (v155)
          {
            v21 = 0;
            v18 = v181[10];
            v166 = *(v155 + 18);
            v167 = (4 * v166 + 8) & 0x3C;
            v168 = ((-15 << v167) - 1) & v166;
            v169 = *(v155 + 16) << v167;
            v35 = v181[11];
            v14 = v168 | v169;
          }
        }
      }
    }
  }

LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString._AttributeStorage.matchStyle(of:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v225 = a2[1];
  v4 = *v2 + 64;
  v5 = 1 << *(*v2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v2 + 64);
  v8 = (v5 + 63) >> 6;
  v218 = *v2;

  v210 = 0;
  v9 = 0;
  v215 = v3;
  v216 = v2;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(v218 + 48) + ((v9 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = *v2;
    v221 = *v12;
    if (!*(*v2 + 16))
    {
      v246 = 0;
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;

      goto LABEL_17;
    }

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    if ((v17 & 1) == 0)
    {
      v246 = 0;
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      goto LABEL_17;
    }

    outlined init with copy of AttributedString._AttributeValue(*(v15 + 56) + 72 * v16, &v242);
    if (*(&v243 + 1))
    {
      outlined init with copy of AttributedString._AttributeValue(&v242, &v237);
      outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v18 = *(&v239 + 1);
      v19 = v240;
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v239 + 1), v240);
      outlined destroy of AttributedString._AttributeValue(&v237);
      if (v19 == 1)
      {
        v3 = v215;
        goto LABEL_18;
      }

      v20 = v225;
      if (v225 == 1)
      {
        goto LABEL_23;
      }

      if (v19)
      {
        if (!v225)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(v18, v19);

          goto LABEL_34;
        }

        if (v18 == v215 && v19 == v225)
        {

          outlined copy of AttributedString.AttributeRunBoundaries?(v215, v225);

LABEL_32:

          v21 = a1;
          goto LABEL_36;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of AttributedString.AttributeRunBoundaries?(v18, v19);

        v21 = a1;
        if (v26)
        {
LABEL_36:
          outlined consume of AttributedString.AttributeRunBoundaries?(v18, v19);
          v3 = v215;
          if (*(v21 + 16))
          {
            goto LABEL_20;
          }

LABEL_37:
          v246 = 0;
          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v246 = 0;
          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          outlined init with copy of FloatingPointRoundingRule?(&v242, &v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (*(&v238 + 1))
          {
            v234 = v239;
            v235 = v240;
            v236 = v241;
            v232 = v237;
            v233 = v238;
            outlined init with copy of AttributedString._AttributeValue(&v232, &v227);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = *v216;
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v14);
            v31 = *(v28 + 16);
            v32 = (v30 & 1) == 0;
            v33 = __OFADD__(v31, v32);
            v34 = v31 + v32;
            if (v33)
            {
              goto LABEL_180;
            }

            v35 = v30;
            if (*(v28 + 24) >= v34)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v36 = v28;
              }

              else
              {
                v191 = v29;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v65 = static _DictionaryStorage.copy(original:)();
                v36 = v65;
                if (*(v28 + 16))
                {
                  v66 = (v65 + 64);
                  __src = (v28 + 64);
                  v67 = ((1 << *(v36 + 32)) + 63) >> 6;
                  if (v36 != v28 || v66 >= &__src[8 * v67])
                  {
                    memmove(v66, __src, 8 * v67);
                  }

                  v68 = 0;
                  *(v36 + 16) = *(v28 + 16);
                  v69 = 1 << *(v28 + 32);
                  if (v69 < 64)
                  {
                    v70 = ~(-1 << v69);
                  }

                  else
                  {
                    v70 = -1;
                  }

                  v211 = v70 & *(v28 + 64);
                  v190 = (v69 + 63) >> 6;
                  while (v211)
                  {
                    v71 = __clz(__rbit64(v211));
                    v211 &= v211 - 1;
LABEL_71:
                    v74 = v71 | (v68 << 6);
                    v198 = (16 * v74);
                    v75 = (*(v28 + 48) + 16 * v74);
                    v202 = v75[1];
                    v206 = *v75;
                    v76 = 72 * v74;
                    outlined init with copy of AttributedString._AttributeValue(*(v28 + 56) + 72 * v74, &v237);
                    v77 = &v198[*(v36 + 48)];
                    *v77 = v206;
                    *(v77 + 1) = v202;
                    v78 = *(v36 + 56) + v76;
                    *v78 = v237;
                    v79 = v238;
                    v80 = v239;
                    v81 = v240;
                    *(v78 + 64) = v241;
                    *(v78 + 32) = v80;
                    *(v78 + 48) = v81;
                    *(v78 + 16) = v79;
                  }

                  v72 = v68;
                  while (1)
                  {
                    v68 = v72 + 1;
                    if (__OFADD__(v72, 1))
                    {
                      goto LABEL_184;
                    }

                    if (v68 >= v190)
                    {
                      break;
                    }

                    v73 = *&__src[8 * v68];
                    ++v72;
                    if (v73)
                    {
                      v71 = __clz(__rbit64(v73));
                      v211 = (v73 - 1) & v73;
                      goto LABEL_71;
                    }
                  }
                }

                v29 = v191;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
              v36 = v28;
              v29 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v14);
              if ((v35 & 1) != (v37 & 1))
              {
                goto LABEL_188;
              }
            }

            v3 = v215;
            if (v35)
            {
              v49 = *(v36 + 56) + 72 * v29;
              v51 = *(v49 + 16);
              v50 = *(v49 + 32);
              v52 = *(v49 + 48);
              v241 = *(v49 + 64);
              v240 = v52;
              v237 = *v49;
              v238 = v51;
              v239 = v50;
              v53 = *(v36 + 56) + 72 * v29;
              v54 = v228;
              v55 = v229;
              v56 = v230;
              *(v53 + 64) = v231;
              *(v53 + 32) = v55;
              *(v53 + 48) = v56;
              *(v53 + 16) = v54;
              *v53 = v227;
              outlined destroy of AttributedString._AttributeValue(&v232);
            }

            else
            {
              *(v36 + 8 * (v29 >> 6) + 64) |= 1 << v29;
              v57 = (*(v36 + 48) + 16 * v29);
              *v57 = v221;
              v57[1] = v14;
              v58 = *(v36 + 56) + 72 * v29;
              *v58 = v227;
              v59 = v228;
              v60 = v229;
              v61 = v230;
              *(v58 + 64) = v231;
              *(v58 + 32) = v60;
              *(v58 + 48) = v61;
              *(v58 + 16) = v59;
              v62 = *(v36 + 16);
              v33 = __OFADD__(v62, 1);
              v63 = v62 + 1;
              if (v33)
              {
                goto LABEL_182;
              }

              *(v36 + 16) = v63;

              outlined destroy of AttributedString._AttributeValue(&v232);
              v237 = 0u;
              v238 = 0u;
              v239 = 0u;
              v240 = 0u;
              v241 = 0;
            }

            v48 = v216;
            *v216 = v36;
            goto LABEL_53;
          }

          outlined destroy of TermOfAddress?(&v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v14);
          if (v39)
          {
            v40 = v38;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v42 = *v216;
            if (v41)
            {
              v43 = *v216;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v82 = static _DictionaryStorage.copy(original:)();
              v43 = v82;
              if (*(v42 + 16))
              {
                v83 = (v82 + 64);
                __srca = (v42 + 64);
                v84 = ((1 << *(v43 + 32)) + 63) >> 6;
                if (v43 != v42 || v83 >= &__srca[8 * v84])
                {
                  memmove(v83, __srca, 8 * v84);
                }

                v85 = 0;
                *(v43 + 16) = *(v42 + 16);
                v86 = 1 << *(v42 + 32);
                if (v86 < 64)
                {
                  v87 = ~(-1 << v86);
                }

                else
                {
                  v87 = -1;
                }

                v212 = v87 & *(v42 + 64);
                v192 = (v86 + 63) >> 6;
                while (v212)
                {
                  v88 = __clz(__rbit64(v212));
                  v212 &= v212 - 1;
LABEL_88:
                  v91 = v88 | (v85 << 6);
                  v199 = (16 * v91);
                  v92 = (*(v42 + 48) + 16 * v91);
                  v203 = v92[1];
                  v207 = *v92;
                  v93 = 72 * v91;
                  outlined init with copy of AttributedString._AttributeValue(*(v42 + 56) + 72 * v91, &v237);
                  v94 = &v199[*(v43 + 48)];
                  *v94 = v207;
                  *(v94 + 1) = v203;
                  v95 = *(v43 + 56) + v93;
                  *v95 = v237;
                  v96 = v238;
                  v97 = v239;
                  v98 = v240;
                  *(v95 + 64) = v241;
                  *(v95 + 32) = v97;
                  *(v95 + 48) = v98;
                  *(v95 + 16) = v96;
                }

                v89 = v85;
                while (1)
                {
                  v85 = v89 + 1;
                  if (__OFADD__(v89, 1))
                  {
                    goto LABEL_186;
                  }

                  if (v85 >= v192)
                  {
                    break;
                  }

                  v90 = *&__srca[8 * v85];
                  ++v89;
                  if (v90)
                  {
                    v88 = __clz(__rbit64(v90));
                    v212 = (v90 - 1) & v90;
                    goto LABEL_88;
                  }
                }
              }

              v3 = v215;
            }

            v44 = *(v43 + 56) + 72 * v40;
            v237 = *v44;
            v46 = *(v44 + 32);
            v45 = *(v44 + 48);
            v47 = *(v44 + 64);
            v238 = *(v44 + 16);
            v239 = v46;
            v241 = v47;
            v240 = v45;
            specialized _NativeDictionary._delete(at:)(v40, v43);
            v48 = v216;
            *v216 = v43;
LABEL_53:
            v64 = v221;
            goto LABEL_54;
          }

          v241 = 0;
          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v64 = v221;
          v48 = v216;
LABEL_54:
          v2 = v48;
          AttributedString._AttributeStorage._attributeModified(_:old:new:)(v64, v14, &v237, &v242);
          outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

          v210 = 1;
        }

        else
        {

          outlined consume of AttributedString.AttributeRunBoundaries?(v18, v19);
          v3 = v215;
LABEL_24:
          v2 = v216;
        }
      }

      else
      {

        if (!v225)
        {
          goto LABEL_32;
        }

LABEL_34:
        outlined consume of AttributedString.AttributeRunBoundaries?(v18, v19);

        v3 = v215;
        v2 = v216;
      }
    }

    else
    {
LABEL_17:
      outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v18 = 0;
LABEL_18:
      v20 = v225;
      v21 = a1;
      if (v225 != 1)
      {
        v19 = 1;
LABEL_23:
        v25 = v20;

        outlined consume of AttributedString.AttributeRunBoundaries?(v18, v19);
        v3 = v215;
        outlined consume of AttributedString.AttributeRunBoundaries?(v215, v25);
        goto LABEL_24;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v18, 1);
      if (!*(a1 + 16))
      {
        goto LABEL_37;
      }

LABEL_20:
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v14);
      if ((v23 & 1) == 0)
      {
        goto LABEL_37;
      }

      v24 = v22;

      outlined init with copy of AttributedString._AttributeValue(*(v21 + 56) + 72 * v24, &v242);
      outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v2 = v216;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_179;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v99 = a1;
  v100 = 1 << *(a1 + 32);
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  else
  {
    v101 = -1;
  }

  v102 = v101 & *(a1 + 64);
  v103 = (v100 + 63) >> 6;

  v104 = 0;
  while (2)
  {
    if (v102)
    {
LABEL_100:
      v106 = __clz(__rbit64(v102));
      v102 &= v102 - 1;
      v107 = (v99[6] + ((v104 << 10) | (16 * v106)));
      v108 = *v107;
      v109 = v107[1];
      v110 = v99[2];

      if (v110 && (v111 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109), (v112 & 1) != 0))
      {
        outlined init with copy of AttributedString._AttributeValue(v99[7] + 72 * v111, &v242);
        v113 = *(&v244 + 1);
        v114 = v245;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v244 + 1), v245);
        outlined destroy of AttributedString._AttributeValue(&v242);
        if (v114 != 1)
        {
          v115 = v225;
          if (v225 == 1)
          {
            goto LABEL_113;
          }

          if (v114)
          {
            if (!v225)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(v113, v114);

LABEL_128:
              outlined consume of AttributedString.AttributeRunBoundaries?(v113, v114);

              continue;
            }

            if (v113 == v3 && v114 == v225)
            {

              outlined copy of AttributedString.AttributeRunBoundaries?(v3, v225);

              v113 = v3;
              v114 = v225;
            }

            else
            {
              v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

              outlined copy of AttributedString.AttributeRunBoundaries?(v113, v114);

              if ((v222 & 1) == 0)
              {

                outlined consume of AttributedString.AttributeRunBoundaries?(v113, v114);
                v3 = v215;
                continue;
              }
            }
          }

          else
          {

            if (v225)
            {
              goto LABEL_128;
            }

            v114 = 0;
          }

          v117 = v113;
          v118 = v114;
LABEL_117:
          outlined consume of AttributedString.AttributeRunBoundaries?(v117, v118);
          if (v99[2] && (v119 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109), (v120 & 1) != 0))
          {
            outlined init with copy of AttributedString._AttributeValue(v99[7] + 72 * v119, &v242);
          }

          else
          {
            v246 = 0;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
          }

          outlined init with copy of FloatingPointRoundingRule?(&v242, &v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (*(&v238 + 1))
          {
            v234 = v239;
            v235 = v240;
            v236 = v241;
            v232 = v237;
            v233 = v238;
            outlined init with copy of AttributedString._AttributeValue(&v232, &v227);
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v122 = *v216;
            v226 = v122;
            v123 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
            v125 = *(v122 + 16);
            v126 = (v124 & 1) == 0;
            v33 = __OFADD__(v125, v126);
            v127 = v125 + v126;
            if (v33)
            {
              goto LABEL_181;
            }

            if (*(v122 + 24) >= v127)
            {
              if (v121)
              {
                v129 = v122;
                if ((v124 & 1) == 0)
                {
LABEL_156:
                  *(v129 + 8 * (v123 >> 6) + 64) |= 1 << v123;
                  v165 = (*(v129 + 48) + 16 * v123);
                  *v165 = v108;
                  v165[1] = v109;
                  v166 = *(v129 + 56) + 72 * v123;
                  *v166 = v227;
                  v167 = v228;
                  v168 = v229;
                  v169 = v230;
                  *(v166 + 64) = v231;
                  *(v166 + 32) = v168;
                  *(v166 + 48) = v169;
                  *(v166 + 16) = v167;
                  v170 = *(v129 + 16);
                  v33 = __OFADD__(v170, 1);
                  v171 = v170 + 1;
                  if (v33)
                  {
                    goto LABEL_183;
                  }

                  *(v129 + 16) = v171;

                  outlined destroy of AttributedString._AttributeValue(&v232);
                  v237 = 0u;
                  v238 = 0u;
                  v239 = 0u;
                  v240 = 0u;
                  v241 = 0;
                  goto LABEL_158;
                }
              }

              else
              {
                __srcb = v124;
                v200 = v123;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v148 = static _DictionaryStorage.copy(original:)();
                v129 = v148;
                if (*(v122 + 16))
                {
                  v149 = (v148 + 64);
                  v204 = (v122 + 64);
                  v150 = ((1 << *(v129 + 32)) + 63) >> 6;
                  if (v129 != v122 || v149 >= &v204[8 * v150])
                  {
                    memmove(v149, v204, 8 * v150);
                  }

                  v151 = 0;
                  *(v129 + 16) = *(v122 + 16);
                  v152 = 1 << *(v122 + 32);
                  if (v152 < 64)
                  {
                    v153 = ~(-1 << v152);
                  }

                  else
                  {
                    v153 = -1;
                  }

                  v223 = v153 & *(v122 + 64);
                  v193 = (v152 + 63) >> 6;
                  while (v223)
                  {
                    v154 = __clz(__rbit64(v223));
                    v223 &= v223 - 1;
LABEL_153:
                    v157 = v154 | (v151 << 6);
                    v208 = 16 * v157;
                    v158 = (*(v122 + 48) + 16 * v157);
                    v219 = *v158;
                    v213 = v158[1];
                    v159 = 72 * v157;
                    outlined init with copy of AttributedString._AttributeValue(*(v122 + 56) + 72 * v157, &v237);
                    v160 = (*(v129 + 48) + v208);
                    *v160 = v219;
                    v160[1] = v213;
                    v161 = *(v129 + 56) + v159;
                    *v161 = v237;
                    v162 = v238;
                    v163 = v239;
                    v164 = v240;
                    *(v161 + 64) = v241;
                    *(v161 + 32) = v163;
                    *(v161 + 48) = v164;
                    *(v161 + 16) = v162;
                  }

                  v155 = v151;
                  while (1)
                  {
                    v151 = v155 + 1;
                    if (__OFADD__(v155, 1))
                    {
                      goto LABEL_185;
                    }

                    if (v151 >= v193)
                    {
                      break;
                    }

                    v156 = *&v204[8 * v151];
                    ++v155;
                    if (v156)
                    {
                      v154 = __clz(__rbit64(v156));
                      v223 = (v156 - 1) & v156;
                      goto LABEL_153;
                    }
                  }
                }

                v123 = v200;
                v99 = a1;
                if ((__srcb & 1) == 0)
                {
                  goto LABEL_156;
                }
              }
            }

            else
            {
              v128 = v124;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v127, v121);
              v129 = v226;
              v123 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
              if ((v128 & 1) != (v130 & 1))
              {
                goto LABEL_188;
              }

              if ((v128 & 1) == 0)
              {
                goto LABEL_156;
              }
            }

            v140 = *(v129 + 56) + 72 * v123;
            v142 = *(v140 + 16);
            v141 = *(v140 + 32);
            v143 = *(v140 + 48);
            v241 = *(v140 + 64);
            v240 = v143;
            v237 = *v140;
            v238 = v142;
            v239 = v141;
            v144 = *(v129 + 56) + 72 * v123;
            v145 = v228;
            v146 = v229;
            v147 = v230;
            *(v144 + 64) = v231;
            *(v144 + 32) = v146;
            *(v144 + 48) = v147;
            *(v144 + 16) = v145;
            *v144 = v227;
            outlined destroy of AttributedString._AttributeValue(&v232);
          }

          else
          {
            outlined destroy of TermOfAddress?(&v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v131 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
            if ((v132 & 1) == 0)
            {
              v241 = 0;
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
LABEL_159:
              AttributedString._AttributeStorage._attributeModified(_:old:new:)(v108, v109, &v237, &v242);
              outlined destroy of TermOfAddress?(&v242, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v237, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

              v210 = 1;
              v3 = v215;
              continue;
            }

            v133 = v131;
            v134 = swift_isUniquelyReferenced_nonNull_native();
            v135 = *v216;
            if (v134)
            {
              v129 = *v216;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v172 = static _DictionaryStorage.copy(original:)();
              v129 = v172;
              if (*(v135 + 16))
              {
                v173 = (v172 + 64);
                v201 = (v135 + 64);
                v174 = ((1 << *(v129 + 32)) + 63) >> 6;
                if (v129 != v135 || v173 >= &v201[8 * v174])
                {
                  memmove(v173, v201, 8 * v174);
                }

                v205 = 0;
                *(v129 + 16) = *(v135 + 16);
                v175 = 1 << *(v135 + 32);
                if (v175 < 64)
                {
                  v176 = ~(-1 << v175);
                }

                else
                {
                  v176 = -1;
                }

                v224 = v176 & *(v135 + 64);
                __srcc = ((v175 + 63) >> 6);
                while (v224)
                {
                  v177 = __clz(__rbit64(v224));
                  v224 &= v224 - 1;
                  v178 = v177 | (v205 << 6);
LABEL_174:
                  v209 = 16 * v178;
                  v182 = (*(v135 + 48) + 16 * v178);
                  v220 = *v182;
                  v214 = v182[1];
                  v183 = 72 * v178;
                  outlined init with copy of AttributedString._AttributeValue(*(v135 + 56) + 72 * v178, &v237);
                  v184 = (*(v129 + 48) + v209);
                  *v184 = v220;
                  v184[1] = v214;
                  v185 = *(v129 + 56) + v183;
                  *v185 = v237;
                  v186 = v238;
                  v187 = v239;
                  v188 = v240;
                  *(v185 + 64) = v241;
                  *(v185 + 32) = v187;
                  *(v185 + 48) = v188;
                  *(v185 + 16) = v186;
                }

                v179 = v205;
                while (1)
                {
                  v180 = (v179 + 1);
                  if (__OFADD__(v179, 1))
                  {
                    goto LABEL_187;
                  }

                  if (v180 >= __srcc)
                  {
                    break;
                  }

                  v181 = *&v201[8 * v180];
                  ++v179;
                  if (v181)
                  {
                    v224 = (v181 - 1) & v181;
                    v205 = v180;
                    v178 = __clz(__rbit64(v181)) | (v180 << 6);
                    goto LABEL_174;
                  }
                }
              }

              v99 = a1;
            }

            v136 = *(v129 + 56) + 72 * v133;
            v237 = *v136;
            v138 = *(v136 + 32);
            v137 = *(v136 + 48);
            v139 = *(v136 + 64);
            v238 = *(v136 + 16);
            v239 = v138;
            v241 = v139;
            v240 = v137;
            specialized _NativeDictionary._delete(at:)(v133, v129);
          }

LABEL_158:
          *v216 = v129;
          goto LABEL_159;
        }
      }

      else
      {
        v113 = 0;
      }

      v115 = v225;
      if (v225 != 1)
      {
        v114 = 1;
LABEL_113:
        v116 = v115;

        outlined consume of AttributedString.AttributeRunBoundaries?(v113, v114);
        outlined consume of AttributedString.AttributeRunBoundaries?(v3, v116);
        continue;
      }

      v117 = v113;
      v118 = 1;
      goto LABEL_117;
    }

    break;
  }

  while (1)
  {
    v105 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v105 >= v103)
    {

      return v210 & 1;
    }

    v102 = *(a1 + 64 + 8 * v105);
    ++v104;
    if (v102)
    {
      v104 = v105;
      goto LABEL_100;
    }
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*JSONEncoder.userInfo.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 128);

  return JSONEncoder.userInfo.modify;
}

uint64_t JSONEncoder.userInfo.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 128) = *a1;

  v2 = *(v1 + 136);

  os_unfair_lock_unlock(v2 + 4);
}

unint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(int a1, uint64_t a2, uint64_t a3)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v155 = v3[1];
  LODWORD(v162[0]) = a1;
  v153 = dispatch thunk of CustomStringConvertible.description.getter();
  v154 = v9;
  v10 = *v3;
  v11 = v6[2];
  v13 = *(a3 + 24);
  v163 = *(a3 + 16);
  v12 = v163;
  v164 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  v15 = *(v12 - 1);
  (*(v15 + 16))(boxed_opaque_existential_0, a2, v12);
  v16 = *(v10 + 152);
  if (!v16)
  {
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v28;
    goto LABEL_83;
  }

  if (v16 != 1)
  {
    v29 = *(v10 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v11);
    v159 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v32 = v30;
    outlined init with copy of Hashable & Sendable(v162, &v159);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = v32[2];
    v34 = v32[3];
    v149 = v4;
    v152 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v161);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v157 = v12;
    v158 = v13;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v15 + 32))(v41, v39, v12);
    v32[2] = v152;
    outlined init with take of Equatable(&v156, &v32[5 * v35 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    (v16)(&v159, v32);

    __swift_project_boxed_opaque_existential_1(&v159, v161);
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v42;
    sub_1807A5C7C(v16);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    goto LABEL_82;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v17;
  v20 = v18;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v16 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v21 = String.index(after:)();
    v22 = 7;
    if (((v20 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v147 = 4 * v16;
    if (4 * v16 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v146 = v22 | (v16 << 16);
      v148 = v20;
      v23 = String.subscript.getter();
      v27 = v26;
      v165 = v19;
      v149 = v4;
      if ((v23 ^ v24) >= 0x4000)
      {
        v43 = v23;
        v12 = v24;
        v16 = v25;
        v150 = MEMORY[0x1E69E7CC0];
        v20 = 0x700030001;
        v152 = 15;
        while (1)
        {
          v5 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v47 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001);
          v48 = v43;
          if (!v47)
          {
            break;
          }

LABEL_20:
          v49 = Substring.UnicodeScalarView.index(after:)();

          v50 = v48 >> 14;
          v51 = v152;
          if (v48 >> 14 < v152 >> 14 || v49 >> 14 < v50)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v12 = v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
          }

          v53 = *(v12 + 2);
          v52 = *(v12 + 3);
          if (v53 >= v52 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v12);
          }

          *(v12 + 2) = v53 + 1;
          v150 = v12;
          v54 = &v12[16 * v53];
          *(v54 + 4) = v51;
          *(v54 + 5) = v48;
          v143 = v48 >> 14;
          if (v147 < v50)
          {
            goto LABEL_117;
          }

          v55 = String.subscript.getter();
          v59 = v58;
          if ((v55 ^ v56) < 0x4000)
          {
            v152 = v48;
            goto LABEL_73;
          }

          v5 = v55;
          v43 = v56;
          v12 = v57;
          v152 = Substring.UnicodeScalarView.index(before:)();
          v60 = Substring.UnicodeScalarView.subscript.getter();
          v61 = v60;
          v19 = 0x700030000;
          v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 0);
          v63 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030000);
          v64 = v5;
          v20 = v148;
          if (!v63)
          {
            v76 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v76 = v12 & 0xFFFFFFFFFFFFLL;
            }

            v151 = v76;
            v145 = v59 & 0xFFFFFFFFFFFFFFLL;
            v144 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v64 = v5;
            while ((v64 ^ v152) >= 0x4000)
            {
              v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v64, v12, v59);
              v16 = v70 >> 16;
              if (v70 >> 16 >= v151)
              {
                goto LABEL_94;
              }

              if ((v59 & 0x1000000000000000) != 0)
              {
                v64 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v59 & 0x2000000000000000) != 0)
                {
                  v159 = v12;
                  v160 = v145;
                  v81 = *(&v159 + v16);
                }

                else
                {
                  v80 = v144;
                  if ((v12 & 0x1000000000000000) == 0)
                  {
                    v80 = _StringObject.sharedUTF8.getter();
                  }

                  v81 = *(v80 + v16);
                }

                v82 = v81;
                v83 = __clz(v81 ^ 0xFF) - 24;
                if (v82 >= 0)
                {
                  LOBYTE(v83) = 1;
                }

                v64 = ((v16 + v83) << 16) | 5;
              }

              v77 = Substring.UnicodeScalarView.subscript.getter();
              v78 = v77;
              v79 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v77), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v78, v79, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v152 = v48;
            goto LABEL_73;
          }

LABEL_29:
          v65 = Substring.UnicodeScalarView.index(after:)();

          if (v65 >> 14 < v64 >> 14)
          {
            goto LABEL_118;
          }

          if (v64 >> 14 == String.index(after:)() >> 14)
          {
            v66 = v48;
          }

          else
          {
            v66 = String.index(before:)();
            if (v143 > v66 >> 14)
            {
              goto LABEL_120;
            }

            v85 = *(v150 + 2);
            v84 = *(v150 + 3);
            if (v85 >= v84 >> 1)
            {
              v91 = v66;
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v150);
              v66 = v91;
            }

            v86 = v150;
            *(v150 + 2) = v85 + 1;
            v87 = &v86[16 * v85];
            *(v87 + 4) = v48;
            *(v87 + 5) = v66;
          }

          v20 = 0x700030001;
          v152 = v66;
          if (v147 < v65 >> 14)
          {
            goto LABEL_119;
          }

          v43 = String.subscript.getter();
          v12 = v88;
          v16 = v89;
          v27 = v90;
          if ((v43 ^ v88) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        v151 = v27 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v48 = v43;
        while ((v48 ^ v5) >= 0x4000)
        {
          v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v48, v16, v27);
          v71 = v70 >> 16;
          if (v70 >> 16 >= v19)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v27 & 0x1000000000000000) != 0)
          {
            v48 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v27 & 0x2000000000000000) != 0)
            {
              v159 = v16;
              v160 = v151;
              v73 = *(&v159 + v71);
            }

            else
            {
              v72 = v145;
              if ((v16 & 0x1000000000000000) == 0)
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v71);
            }

            v74 = v73;
            v75 = __clz(v73 ^ 0xFF) - 24;
            if (v74 >= 0)
            {
              LOBYTE(v75) = 1;
            }

            v48 = ((v71 + v75) << 16) | 5;
          }

          v67 = Substring.UnicodeScalarView.subscript.getter();
          v68 = v67;
          v20 = 0x700030001;
          v69 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v67), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v68, v69, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v152 = 15;
        v150 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v152;
      if (v147 >= v152 >> 14)
      {
        v12 = v150;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v93 = *(v12 + 2);
          v92 = *(v12 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v12);
          }

          *(v12 + 2) = v94;
          v95 = &v12[16 * v93];
          v96 = v146;
          *(v95 + 4) = boxed_opaque_existential_0;
          *(v95 + 5) = v96;
          v159 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v97 = v159;
          v150 = v12;
          v98 = v12 + 40;
          do
          {
            String.subscript.getter();
            v99 = Substring.lowercased()();

            v159 = v97;
            v101 = *(v97 + 2);
            v100 = *(v97 + 3);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v97 = v159;
            }

            v98 += 16;
            *(v97 + 2) = v101 + 1;
            *&v97[16 * v101 + 32] = v99;
            --v94;
          }

          while (v94);

          v159 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v19 = BidirectionalCollection<>.joined(separator:)();
          v16 = v102;

          v20 = v16;
LABEL_82:
          v5 = v149;
          goto LABEL_83;
        }

LABEL_115:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v103 = v155;
  __swift_destroy_boxed_opaque_existential_1(v162);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = *(v103 + 16);
  v43 = v162[0];
  *(v103 + 16) = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v106 = *(v43 + 16);
  v107 = (v105 & 1) == 0;
  v108 = __OFADD__(v106, v107);
  v109 = v106 + v107;
  if (v108)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v151 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v119 = static _DictionaryStorage.copy(original:)();
    v110 = v119;
    if (!*(v43 + 16))
    {
LABEL_111:

      v70 = v151;
      v103 = v155;
      if (v16)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v120 = (v119 + 64);
    v121 = v43 + 64;
    v122 = ((1 << *(v110 + 32)) + 63) >> 6;
    if (v110 != v43 || v120 >= v121 + 8 * v122)
    {
      memmove(v120, (v43 + 64), 8 * v122);
    }

    v123 = 0;
    *(v110 + 16) = *(v43 + 16);
    v124 = 1 << *(v43 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v43 + 64);
    v127 = (v124 + 63) >> 6;
    v165 = v19;
    v149 = v5;
    if (v126)
    {
      do
      {
        v128 = __clz(__rbit64(v126));
        v152 = (v126 - 1) & v126;
LABEL_109:
        v131 = v128 | (v123 << 6);
        v132 = 16 * v131;
        v133 = (*(v43 + 48) + 16 * v131);
        v135 = *v133;
        v134 = v133[1];
        v131 *= 24;
        v136 = *(v43 + 56) + v131;
        v137 = *v136;
        v138 = *(v136 + 8);
        v139 = (*(v110 + 48) + v132);
        v140 = *(v136 + 16);
        *v139 = v135;
        v139[1] = v134;
        v141 = *(v110 + 56) + v131;
        *v141 = v137;
        *(v141 + 8) = v138;
        *(v141 + 16) = v140;

        outlined copy of JSONFuture(v137, v138, v140);
        v19 = v165;
        v126 = v152;
      }

      while (v152);
    }

    v129 = v123;
    while (1)
    {
      v123 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v123 >= v127)
      {
        goto LABEL_111;
      }

      v130 = *(v121 + 8 * v123);
      ++v129;
      if (v130)
      {
        v128 = __clz(__rbit64(v130));
        v152 = (v130 - 1) & v130;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v16) = v105;
  if (*(v43 + 24) >= v109)
  {
    if (v104)
    {
      v110 = v43;
      if (v105)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, v104);
  v110 = v162[0];
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  if ((v16 & 1) == (v111 & 1))
  {
    if (v16)
    {
LABEL_87:
      v112 = v70;

      v113 = *(v110 + 56) + 24 * v112;
      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = v154;
      *v113 = v153;
      *(v113 + 8) = v116;
      v117 = *(v113 + 16);
      *(v113 + 16) = 1;
      result = outlined consume of JSONFuture(v114, v115, v117);
LABEL_91:
      *(v103 + 16) = v110;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v70, v19, v20, v153, v154, 1, v110);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 FloatingPointFormatStyle.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 36);
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v7 + 57) = result;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance FloatingPointFormatStyle<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FloatingPointFormatStyle.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t NumberFormatStyleConfiguration.Precision.fractionalStem(min:max:)(Swift::Int count, Swift::Int a2, char a3)
{
  v6._countAndFlagsBits = 48;
  v6._object = 0xE100000000000000;
  countAndFlagsBits = String.init(repeating:count:)(v6, count)._countAndFlagsBits;
  MEMORY[0x1865CB0E0](countAndFlagsBits);

  if (a3)
  {
    MEMORY[0x1865CB0E0](43, 0xE100000000000000);
  }

  else
  {
    if (a2 < count)
    {

      return 0;
    }

    if (__OFSUB__(a2, count))
    {
      __break(1u);
      return result;
    }

    v9._countAndFlagsBits = 35;
    v9._object = 0xE100000000000000;
    v10 = String.init(repeating:count:)(v9, a2 - count)._countAndFlagsBits;
    MEMORY[0x1865CB0E0](v10);
  }

  return 46;
}

double specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter();
  v20 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter();
  if (v19 == 11)
  {
    if (v20 == 52)
    {
      (*(v9 + 16))(v12, a1, a2);
      if (!swift_dynamicCast())
      {
        v23 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v24 = v46;
        swift_getAssociatedConformanceWitness();
        v25 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v24);
        v26 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v27 = v49;
        swift_getAssociatedConformanceWitness();
        v28 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v26, v27);
        *&result = (v23 << 63) | ((v25 & 0x7FF) << 52) | v28 & 0xFFFFFFFFFFFFFLL;
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v19 == 8)
  {
    if (v20 == 23)
    {
      (*(v9 + 16))(v15, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v9 + 8))(a1, a2);
        return *&v50;
      }

      else
      {
        v29 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v30 = v46;
        swift_getAssociatedConformanceWitness();
        v31 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v30);
        v32 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v33 = v49;
        swift_getAssociatedConformanceWitness();
        v34 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v32, v33);
        return COERCE_FLOAT((v29 << 31) | (v31 << 23) | v34 & 0x7FFFFF);
      }
    }

    goto LABEL_13;
  }

  if (v19 != 5 || v20 != 10)
  {
LABEL_13:
    lazy protocol witness table accessor for type Double and conformance Double();
    static BinaryFloatingPoint._convert<A>(from:)();
LABEL_14:
    (*(v9 + 8))(a1, a2);
    return v50;
  }

  (*(v9 + 16))(v18, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(a1, a2);
    _H0 = LOWORD(v50);
  }

  else
  {
    v35 = dispatch thunk of FloatingPoint.sign.getter();
    dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
    v36 = v46;
    swift_getAssociatedConformanceWitness();
    v37 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v45 + 8))(v8, v36);
    v38 = v47;
    dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
    (*(v9 + 8))(a1, a2);
    v39 = v49;
    swift_getAssociatedConformanceWitness();
    v40 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v48 + 8))(v38, v39);
    _H0 = (v35 << 15) | ((v37 & 0x1F) << 10) | v40 & 0x3FF;
  }

  __asm { FCVT            D0, H0 }

  return result;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter();
  v20 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter();
  if (v19 == 11)
  {
    if (v20 == 52)
    {
      (*(v9 + 16))(v18, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v23 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v24 = v46;
        swift_getAssociatedConformanceWitness();
        v25 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v24);
        v26 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v27 = v49;
        swift_getAssociatedConformanceWitness();
        v28 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v26, v27);
        *&result = (v23 << 63) | ((v25 & 0x7FF) << 52) | v28 & 0xFFFFFFFFFFFFFLL;
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v19 == 8)
  {
    if (v20 == 23)
    {
      (*(v9 + 16))(v15, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v9 + 8))(a1, a2);
        return *&v50;
      }

      else
      {
        v29 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v30 = v46;
        swift_getAssociatedConformanceWitness();
        v31 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v30);
        v32 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v33 = v49;
        swift_getAssociatedConformanceWitness();
        v34 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v32, v33);
        return COERCE_FLOAT((v29 << 31) | (v31 << 23) | v34 & 0x7FFFFF);
      }
    }

    goto LABEL_13;
  }

  if (v19 != 5 || v20 != 10)
  {
LABEL_13:
    lazy protocol witness table accessor for type Double and conformance Double();
    static BinaryFloatingPoint._convert<A>(from:)();
LABEL_14:
    (*(v9 + 8))(a1, a2);
    return v50;
  }

  (*(v9 + 16))(v12, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(a1, a2);
    _H0 = LOWORD(v50);
  }

  else
  {
    v35 = dispatch thunk of FloatingPoint.sign.getter();
    dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
    v36 = v46;
    swift_getAssociatedConformanceWitness();
    v37 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v45 + 8))(v8, v36);
    v38 = v47;
    dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
    (*(v9 + 8))(a1, a2);
    v39 = v49;
    swift_getAssociatedConformanceWitness();
    v40 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v48 + 8))(v38, v39);
    _H0 = (v35 << 15) | ((v37 & 0x1F) << 10) | v40 & 0x3FF;
  }

  __asm { FCVT            D0, H0 }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimeZoneICU()
{
  v1 = *(*v0 + 24);

  return v1;
}

__n128 FloatingPointFormatStyle.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for FloatingPointFormatStyle() + 36);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t NumberFormatStyleConfiguration.Precision.skeleton.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 56);
  if (v5 < 0)
  {
    v8 = *(v0 + 17) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 32);
    v9 = *(v0 + 24);
    v10 = *(v0 + 48);
    if (*(v0 + 40))
    {
      if (v5)
      {
        goto LABEL_14;
      }

      v10 = *(v0 + 48);
      if (v10)
      {
        v11 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *(v0 + 32);
      if ((v5 & 1) != 0 || (v11 = *(v0 + 32), v10))
      {
LABEL_16:
        v15 = NumberFormatStyleConfiguration.Precision.fractionalStem(min:max:)(v11, v10, v5 & 1);
        MEMORY[0x1865CB0E0](v15);

        result = 0;
        if (v2)
        {
LABEL_17:
          if (v9)
          {
            return result;
          }
        }

LABEL_18:
        if (String.count.getter() >= 1)
        {
          MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        }

        if (v2)
        {
          v16 = 0;
        }

        else
        {
          v16 = v1;
        }

        v17 = NumberFormatStyleConfiguration.Precision.integerStem(min:max:)(v16, v4 | (v8 << 8), v9 & 1);
        MEMORY[0x1865CB0E0](v17);

        return 0;
      }
    }

    MEMORY[0x1865CB0E0](0xD000000000000011, 0x800000018147F190);
LABEL_14:
    result = 0;
    if (v2)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v6._countAndFlagsBits = 64;
  v6._object = 0xE100000000000000;
  result = String.init(repeating:count:)(v6, *v0)._countAndFlagsBits;
  v18 = result;
  if (v4)
  {
    MEMORY[0x1865CB0E0](43, 0xE100000000000000);
    return v18;
  }

  v12 = v2 | (v3 << 8);
  if (!__OFSUB__(v12, v1))
  {
    v13._countAndFlagsBits = 35;
    v13._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v13, v12 - v1)._countAndFlagsBits;
    MEMORY[0x1865CB0E0](countAndFlagsBits);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection._trimmingCharacters(while:)(unint64_t a1, unint64_t a2)
{
  v55 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v9 = (a1 >> 59) & 1;
  }

  else
  {
    v9 = 1;
  }

  v54 = 4 * v8;
  v56 = a1;
  v49 = v5;
  v51 = v9;
  v10 = 0;
  if (v8)
  {
    v11 = 4 << v9;
    v52 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v53 = (a2 & 0xFFFFFFFFFFFFFFLL);
    v12 = (v5 + 8);
    v13 = 15;
    do
    {
      a1 = v13 & 0xC;
      v14 = (v13 & 1) == 0 || a1 == v11;
      v2 = v14;
      if (v14)
      {
        v15 = v13;
        if (a1 == v11)
        {
          v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v56, a2);
        }

        if (v15 >> 16 >= v8)
        {
          goto LABEL_123;
        }

        if ((v15 & 1) == 0)
        {
          _StringGuts.scalarAlignSlow(_:)(v15, v56, a2);
        }
      }

      else if (v13 >> 16 >= v8)
      {
LABEL_122:
        __break(1u);
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
        goto LABEL_131;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v57 = v56;
        v58 = v53;
      }

      else if ((v56 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      Unicode.Scalar.properties.getter();
      v16 = Unicode.Scalar.Properties.isWhitespace.getter();
      (*v12)(v7, v55);
      if ((v16 & 1) == 0)
      {
        a1 = v56;
        break;
      }

      if (v2)
      {
        if (a1 == v11)
        {
          a1 = v56;
          v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v56, a2);
          if (v8 <= v13 >> 16)
          {
            goto LABEL_124;
          }
        }

        else
        {
          a1 = v56;
          if (v8 <= v13 >> 16)
          {
            goto LABEL_124;
          }
        }

        if ((v13 & 1) == 0)
        {
          v13 = v13 & 0xC | _StringGuts.scalarAlignSlow(_:)(v13, a1, a2) & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        a1 = v56;
        if (v8 <= v13 >> 16)
        {
          goto LABEL_125;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v2 = v13 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v57 = a1;
          v58 = v53;
          v18 = *(&v57 + v2);
        }

        else
        {
          v17 = v52;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v18 = *(v17 + v2);
        }

        v19 = v18;
        v20 = __clz(v18 ^ 0xFF) - 24;
        if (v19 >= 0)
        {
          LOBYTE(v20) = 1;
        }

        v13 = ((v2 + v20) << 16) | 5;
      }

      v10 = v13 >> 14;
    }

    while (v13 >> 14 < v54);
  }

  v11 = v51;
  v21 = 11;
  if (v51)
  {
    v21 = 7;
  }

  if (v10 == v54)
  {
    return String.UnicodeScalarView.subscript.getter();
  }

  v22 = _StringGuts.validateInclusiveScalarIndex(_:)(v21 | (v8 << 16), a1, a2);
  if (v22 < 0x4000)
  {
    goto LABEL_130;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_131:
    v22 = String.UnicodeScalarView._foreignIndex(before:)();
    v29 = v22;
    if (v10 >= v22 >> 14)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v2 = v22 >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v57 = a1;
      v58 = a2 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v57 + v2 - 1) & 0xC0) != 0x80)
      {
        goto LABEL_68;
      }

      v25 = -2;
      do
      {
        v27 = *(&v57 + v2 + v25--) & 0xC0;
      }

      while (v27 == 128);
      goto LABEL_67;
    }

    if ((a1 & 0x1000000000000000) == 0)
    {
      goto LABEL_135;
    }

    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v24 = v23 + v2;
      if ((*(v24 - 1) & 0xC0) == 0x80)
      {
        v25 = -2;
        do
        {
          v26 = *(v24 + v25--) & 0xC0;
        }

        while (v26 == 128);
LABEL_67:
        v28 = v25 + 1;
      }

      else
      {
LABEL_68:
        v28 = -1;
      }

      v29 = (v22 + (v28 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v10 < v29 >> 14)
      {
        break;
      }

LABEL_132:
      if (v54 >= v10)
      {
        return String.UnicodeScalarView.subscript.getter();
      }

      __break(1u);
LABEL_135:
      v47 = v11;
      v48 = v22;
      v23 = _StringObject.sharedUTF8.getter();
      v22 = v48;
      v11 = v47;
    }
  }

  v30 = 4 << v11;
  v50 = &v56 + 7;
  v51 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v52 = a2 & 0xFFFFFFFFFFFFFFLL;
  v53 = (v49 + 8);
  v54 = 4 << v11;
  while (1)
  {
    v32 = v29 & 0xC;
    v33 = (v29 & 1) == 0 || v32 == v30;
    v11 = v33;
    if (v33)
    {
      v34 = v29;
      if (v32 == v30)
      {
        v34 = _StringGuts._slowEnsureMatchingEncoding(_:)(v29, a1, a2);
      }

      v2 = v34 >> 16;
      if (v34 >> 16 >= v8)
      {
        goto LABEL_126;
      }

      if ((v34 & 1) == 0)
      {
        v2 = _StringGuts.scalarAlignSlow(_:)(v34, a1, a2) >> 16;
      }
    }

    else
    {
      v2 = v29 >> 16;
      if (v29 >> 16 >= v8)
      {
        goto LABEL_127;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v57 = a1;
      v58 = v52;
    }

    else if ((a1 & 0x1000000000000000) == 0)
    {
      _StringObject.sharedUTF8.getter();
    }

    Unicode.Scalar.properties.getter();
    v35 = Unicode.Scalar.Properties.isWhitespace.getter();
    result = (*v53)(v7, v55);
    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v11)
    {
      v30 = v54;
      a1 = v56;
      if (v32 == v54)
      {
        v45 = _StringGuts._slowEnsureMatchingEncoding(_:)(v29, v56, a2);
        v30 = v54;
        v29 = v45;
        if (v8 < v45 >> 16)
        {
          goto LABEL_129;
        }
      }

      else if (v8 < v29 >> 16)
      {
        goto LABEL_129;
      }

      if ((v29 & 1) == 0)
      {
        v37 = _StringGuts.scalarAlignSlow(_:)(v29, a1, a2);
        v30 = v54;
        v29 = v29 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      a1 = v56;
      v30 = v54;
      if (v8 < v29 >> 16)
      {
        goto LABEL_128;
      }
    }

    if (v29 < 0x4000)
    {
      __break(1u);
      goto LABEL_122;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v31 = String.UnicodeScalarView._foreignIndex(before:)();
      v30 = v54;
      v29 = v31;
    }

    else
    {
      v38 = v29 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v57 = a1;
        v58 = v52;
        if ((v50[v38] & 0xC0) != 0x80)
        {
          goto LABEL_113;
        }

        v43 = -2;
        do
        {
          v44 = *(&v57 + v38 + v43--) & 0xC0;
        }

        while (v44 == 128);
        v42 = v43 + 1;
      }

      else
      {
        v39 = v51;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v39 = _StringObject.sharedUTF8.getter();
          v30 = v54;
        }

        if ((*(v39 + v38 - 1) & 0xC0) != 0x80)
        {
LABEL_113:
          v42 = -1;
          goto LABEL_114;
        }

        v40 = -2;
        do
        {
          v41 = *(v39 + v38 + v40--) & 0xC0;
        }

        while (v41 == 128);
        v42 = v40 + 1;
      }

LABEL_114:
      v29 = (v29 + (v42 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    }
  }

  if (v10 <= v29 >> 14)
  {
    v46 = _StringGuts.validateScalarIndex(_:)(v29, v56, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      _StringGuts.fastUTF8ScalarLength(startingAt:)(v46 >> 16);
    }

    return String.UnicodeScalarView.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t ___createRegexForPattern_block_invoke()
{
  qword_1ED440028 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [qword_1ED440028 setName:@"NSRegularExpressionCache"];
  v0 = qword_1ED440028;

  return [v0 setCountLimit:10];
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v6 = 0xE200000000000000;
    v7 = 25700;
    if (a1 != 1)
    {
      v7 = 70;
      v6 = 0xE100000000000000;
    }

    if (a1)
    {
      countAndFlagsBits = v7;
    }

    else
    {
      countAndFlagsBits = 100;
    }

    if (a1)
    {
      object = v6;
    }

    else
    {
      object = 0xE100000000000000;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0xE200000000000000;
    v20 = 25700;
    if (a3 != 1)
    {
      v20 = 70;
      v19 = 0xE100000000000000;
    }

    if (a3)
    {
      v21 = v20;
    }

    else
    {
      v21 = 100;
    }

    if (a3)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0xE100000000000000;
    }

    if (countAndFlagsBits != v21)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v15 = 10;
  if (a1 < 10)
  {
    v15 = a1;
  }

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17._countAndFlagsBits = 103;
  v17._object = 0xE100000000000000;
  v18 = String.init(repeating:count:)(v17, v16);
  countAndFlagsBits = v18._countAndFlagsBits;
  object = v18._object;
  if (a4)
  {
    goto LABEL_24;
  }

LABEL_11:
  v10 = 10;
  if (a3 < 10)
  {
    v10 = a3;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12._countAndFlagsBits = 103;
  v12._object = 0xE100000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  v14 = v13._object;
  if (countAndFlagsBits != v13._countAndFlagsBits)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (object != v14)
  {
LABEL_35:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_36;
  }

  v22 = 1;
LABEL_36:

  return v22 & 1;
}

{
  if (a2)
  {
    if (a1)
    {
      countAndFlagsBits = 22873;
    }

    else
    {
      countAndFlagsBits = 89;
    }

    if (a1)
    {
      object = 0xE200000000000000;
    }

    else
    {
      object = 0xE100000000000000;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 10;
    if (a1 < 10)
    {
      v13 = a1;
    }

    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15._countAndFlagsBits = 89;
    v15._object = 0xE100000000000000;
    v16 = String.init(repeating:count:)(v15, v14);
    countAndFlagsBits = v16._countAndFlagsBits;
    object = v16._object;
    if ((a4 & 1) == 0)
    {
LABEL_9:
      v8 = 10;
      if (a3 < 10)
      {
        v8 = a3;
      }

      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10._countAndFlagsBits = 89;
      v10._object = 0xE100000000000000;
      v11 = String.init(repeating:count:)(v10, v9);
      v12 = v11._object;
      if (countAndFlagsBits != v11._countAndFlagsBits)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  if (a3)
  {
    v17 = 22873;
  }

  else
  {
    v17 = 89;
  }

  if (a3)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (countAndFlagsBits != v17)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (object != v12)
  {
LABEL_31:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v18 = 1;
LABEL_32:

  return v18 & 1;
}

{
  if (a2)
  {
    v6 = 65;
  }

  else
  {
    v6 = 83;
  }

  if (a1 >= 2)
  {

    MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
    if (a1 != 2)
    {
      MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
      if (a1 != 3)
      {
        MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
        if (a1 != 4)
        {
          MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
          if (a1 != 5)
          {
            MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
            if (a1 != 6)
            {
              MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
              if (a1 != 7)
              {
                MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
                if (a1 != 8)
                {
                  MEMORY[0x1865CB0E0](v6, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  if (a4)
  {
    v8 = 65;
  }

  else
  {
    v8 = 83;
  }

  if (a3 >= 2)
  {

    MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
    if (a3 != 2)
    {
      MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
      if (a3 != 3)
      {
        MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
        if (a3 != 4)
        {
          MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
          if (a3 != 5)
          {
            MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
            if (a3 != 6)
            {
              MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
              if (a3 != 7)
              {
                MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
                if (a3 != 8)
                {
                  MEMORY[0x1865CB0E0](v8, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  if (v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t String.LocalizationValue.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = a2;
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = result;
  return result;
}

uint64_t AttributedString.Guts.fixScalarConstrainedAttributes(in:)()
{
  v1 = *(v0 + 40);
  v227 = *(v0 + 24);
  v228 = v1;
  v229 = *(v0 + 56);
  swift_unknownObjectRetain();
  v2 = BigString.UnicodeScalarView.index(roundingDown:)();
  v198 = v3;
  v4 = v0;
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);
  v224 = *(v0 + 24);
  v225 = v5;
  v226 = *(v0 + 56);
  swift_unknownObjectRetain();
  v6 = BigString.UnicodeScalarView.index(roundingUp:)();
  swift_unknownObjectRelease();
  v190 = v2;
  v7 = v2 >> 11;
  if (v6 >> 11 < v2 >> 11)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v197 = v6 >> 11;
  v8 = *(v4 + 72);
  if (v8)
  {
    v9 = *(v4 + 88);
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v7)
  {
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v10 = *(v4 + 80);
  v195 = v4;
  v191 = v7;
  v206 = *(v4 + 96);
  if (v8)
  {
    if (v7 < *(v4 + 88))
    {
      v11 = (v8 + 16);
      v12 = *(v8 + 16);
      if (*(v8 + 16))
      {
        v13 = *(v8 + 18);
        swift_unknownObjectRetain_n();

        if (v13)
        {
          v210 = v10;
          v14 = v7;
          v15 = v13;
          v16 = v8;
          while (1)
          {
            v17 = *v11;
            if (*v11)
            {
              break;
            }

            v22 = v14;
LABEL_21:
            if (v22)
            {
              goto LABEL_274;
            }

            v14 = 0;
LABEL_12:
            v15 = (v17 << ((4 * v13 + 8) & 0x3C)) | ((-15 << ((4 * v13 + 8) & 0x3C)) - 1) & v15;
            v18 = *(v16 + 24 + 24 * v17);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            v11 = (v18 + 16);
            LOBYTE(v13) = *(v18 + 18);
            v16 = v18;
            if (!v13)
            {
              v25 = v18;
              v12 = *v11;
              if (*v11)
              {
                goto LABEL_28;
              }

LABEL_250:
              v28 = 0;
              v23 = v25;
              v10 = v210;
              if (v14)
              {
                goto LABEL_251;
              }

LABEL_34:
              v24 = 0;
              goto LABEL_36;
            }
          }

          v19 = 0;
          v20 = (v16 + 40);
          while (1)
          {
            v21 = *v20;
            v20 += 3;
            v22 = v14 - v21;
            if (__OFSUB__(v14, v21))
            {
              goto LABEL_252;
            }

            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v22 + 1 < 1)
            {
              v17 = v19;
              goto LABEL_12;
            }

            ++v19;
            v14 = v22;
            if (v17 == v19)
            {
              goto LABEL_21;
            }
          }

LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
          goto LABEL_278;
        }

        v14 = v7;
        v15 = 0;
        v25 = v8;
LABEL_28:
        v26 = 0;
        v27 = 24;
        v24 = v14;
        v28 = v12;
        v23 = v25;
        while (1)
        {
          v29 = *(v23 + v27);
          v30 = v24 - v29;
          if (__OFSUB__(v24, v29))
          {
            goto LABEL_272;
          }

          if (__OFADD__(v30, 1))
          {
            goto LABEL_273;
          }

          if (v30 + 1 < 1)
          {
            break;
          }

          ++v26;
          v27 += 24;
          v24 -= v29;
          if (v28 == v26)
          {
            if (!v30)
            {
              goto LABEL_34;
            }

LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }
        }

        v28 = v26;
LABEL_36:
        swift_unknownObjectRelease();
        v205 = v15 & 0xFFFFFFFFFFFFF0FFLL | (v28 << 8);
        v4 = v195;
        v7 = v191;
        if (!v8)
        {
          goto LABEL_37;
        }

LABEL_24:
        v202 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v206, v205, v23, v8, v10);
        swift_unknownObjectRelease();
        goto LABEL_38;
      }
    }
  }

  swift_unknownObjectRetain();

  v205 = specialized Rope._endPath.getter(v8);
  v23 = 0;
  v24 = 0;
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_37:
  v202 = 0;
LABEL_38:
  v31 = v197;
  if (!__OFSUB__(v7, v24))
  {
    v204 = v7 - v24;
    v32 = v190;
    v187 = MEMORY[0x1E69E7CC8];
    v192 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v201 = v198;
      v199 = v32;
      v34 = v205;
      v33 = v206;
      v14 = *(v4 + 72);
      if (v7 == v31)
      {
        if (v14)
        {
          v35 = *(v4 + 88);
          if (v35 < v7)
          {
            goto LABEL_271;
          }

          v193 = v23;
          v36 = *(v4 + 80);
          v37 = *(v4 + 96);
          v38 = (v14 + 16);
          v39 = *(v14 + 16);
          v8 = *(v14 + 18);
          if (*(v14 + 16))
          {
            v40 = v7 < v35;
          }

          else
          {
            v40 = 0;
          }

          v210 = v36;
          if (v40)
          {
            swift_unknownObjectRetain_n();
            v45 = v7;
            if (!v8)
            {
              v15 = 0;
              v43 = v14;
LABEL_71:
              v51 = 0;
              v52 = 24;
              v42 = v45;
              v53 = v39;
              v23 = v193;
              while (1)
              {
                v54 = *(v43 + v52);
                v45 = v42 - v54;
                if (__OFSUB__(v42, v54))
                {
                  goto LABEL_254;
                }

                if (__OFADD__(v45, 1))
                {
                  goto LABEL_255;
                }

                if (v45 + 1 < 1)
                {
                  goto LABEL_79;
                }

                ++v51;
                v52 += 24;
                v42 -= v54;
                if (v53 == v51)
                {
                  v51 = v53;
                  goto LABEL_77;
                }
              }
            }

            v15 = v8;
            v46 = v14;
            do
            {
              v47 = *v38;
              if (*v38)
              {
                v48 = 0;
                v25 = (v46 + 40);
                while (1)
                {
                  v49 = *v25;
                  v25 += 3;
                  v50 = v45 - v49;
                  if (__OFSUB__(v45, v49))
                  {
                    break;
                  }

                  if (__OFADD__(v50, 1))
                  {
                    goto LABEL_246;
                  }

                  if (v50 + 1 < 1)
                  {
                    v47 = v48;
                    goto LABEL_57;
                  }

                  ++v48;
                  v45 = v50;
                  if (v47 == v48)
                  {
                    goto LABEL_66;
                  }
                }

                __break(1u);
LABEL_246:
                __break(1u);
                goto LABEL_247;
              }

              v50 = v45;
LABEL_66:
              if (v50)
              {
                goto LABEL_256;
              }

              v45 = 0;
LABEL_57:
              v15 = (v47 << ((4 * v8 + 8) & 0x3C)) | ((-15 << ((4 * v8 + 8) & 0x3C)) - 1) & v15;
              v43 = *(v46 + 24 + 24 * v47);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v38 = (v43 + 16);
              v8 = *(v43 + 18);
              v46 = v43;
            }

            while (*(v43 + 18));
            LODWORD(v39) = *v38;
            if (*v38)
            {
              goto LABEL_71;
            }

            v51 = 0;
            v23 = v193;
LABEL_77:
            if (!v45)
            {
              v42 = 0;
LABEL_79:
              swift_unknownObjectRelease();
              v41 = v15 & 0xFFFFFFFFFFFFF0FFLL | (v51 << 8);
              v7 = v191;
              goto LABEL_80;
            }

            goto LABEL_282;
          }

          v41 = ((-15 << ((4 * v8 + 8) & 0x3C)) - 1) & v8 | (v39 << ((4 * v8 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v42 = 0;
          v43 = 0;
          v23 = v193;
LABEL_80:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v37, v41, v43, v14, v210);
          swift_unknownObjectRelease();
          v4 = v195;
          v31 = v197;
          v34 = v205;
          v33 = v206;
        }

        else
        {
          if (v190 >= 0x800)
          {
            goto LABEL_276;
          }

          v42 = 0;
        }

        v44 = v7 - v42;
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_269;
        }
      }

      else
      {
        v44 = v14 ? *(v4 + 88) : 0;
      }

      if (v204 == v44)
      {

        v170 = 0;
        v171 = 1 << *(v192 + 32);
        v172 = -1;
        if (v171 < 64)
        {
          v172 = ~(-1 << v171);
        }

        v173 = v172 & *(v192 + 64);
        v174 = (v171 + 63) >> 6;
        while (v173)
        {
LABEL_240:
          v176 = __clz(__rbit64(v173));
          v173 &= v173 - 1;
          v177 = v176 | (v170 << 6);
          v178 = *(*(v192 + 56) + 8 * v177);
          v179 = *(v178 + 16);
          if (v179)
          {
            v180 = (*(v192 + 48) + 16 * v177);
            v182 = *v180;
            v181 = v180[1];

            v183 = (v178 + 40);
            do
            {
              AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v182, v181, *(v183 - 1), *v183, 0);
              v183 += 2;
              --v179;
            }

            while (v179);
          }
        }

        while (1)
        {
          v175 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_257;
          }

          if (v175 >= v174)
          {
          }

          v173 = *(v192 + 64 + 8 * v175);
          ++v170;
          if (v173)
          {
            v170 = v175;
            goto LABEL_240;
          }
        }
      }

      if (v33 != *(v4 + 96))
      {
        goto LABEL_258;
      }

      if (v23)
      {
        v55 = v23 + 24 * ((v34 >> ((4 * *(v23 + 18) + 8) & 0x3C)) & 0xF);
        v56 = *(v55 + 32);
        v57 = *(v55 + 24);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v58 = *(v4 + 72);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v34, v58);
        v56 = v59;
        swift_unknownObjectRelease();
        if (v206 != *(v4 + 96))
        {
          goto LABEL_270;
        }

        v60 = *(v4 + 72);
        swift_unknownObjectRetain();
        v57 = specialized Rope._Node.subscript.getter(v34, v60);
        swift_unknownObjectRelease();
        v34 = v205;
        v31 = v197;
      }

      v61 = v204 + v57;
      if (__OFADD__(v204, v57))
      {
        goto LABEL_259;
      }

      if (v31 >= v204)
      {
        v62 = v204;
      }

      else
      {
        v62 = v31;
      }

      if (v204 < v7)
      {
        v62 = v7;
      }

      if (v61 <= v7)
      {
        v63 = v7;
      }

      else
      {
        v63 = v204 + v57;
      }

      if (v31 >= v61)
      {
        v64 = v63;
      }

      else
      {
        v64 = v31;
      }

      if (v62 == v64)
      {
        goto LABEL_260;
      }

      v207 = v56;
      v14 = v64 - v62;
      if (__OFSUB__(v64, v62))
      {
        goto LABEL_261;
      }

      v65 = *(v4 + 72);
      v66 = *(v4 + 96);
      v212 = v206;
      v213 = v34;
      v214[0] = v23;
      if (__OFADD__(v202, 1))
      {
        goto LABEL_262;
      }

      if (v206 != v66)
      {
        goto LABEL_263;
      }

      ++v202;
      if (v23)
      {
        v67 = *(v23 + 24 * ((v34 >> ((4 * *(v23 + 18) + 8) & 0x3C)) & 0xF) + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v67 = specialized Rope._Node.subscript.getter(v34, v65);
      }

      v68 = __OFADD__(v204, v67);
      v69 = v204 + v67;
      if (v68)
      {
        goto LABEL_264;
      }

      if (v65)
      {
        v70 = ((-15 << ((4 * *(v65 + 18) + 8) & 0x3C)) - 1) & *(v65 + 18) | (*(v65 + 16) << ((4 * *(v65 + 18) + 8) & 0x3C));
      }

      else
      {
        v70 = 0;
      }

      if (v205 >= v70)
      {
        goto LABEL_265;
      }

      if (v23)
      {
        v71 = (4 * *(v23 + 18) + 8) & 0x3C;
        v72 = ((v205 >> v71) & 0xF) + 1;
        if (v72 < *(v23 + 16))
        {
          break;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v212, v65))
      {
        swift_unknownObjectRelease();
        v73 = v213;
LABEL_117:
        v31 = v197;
        if (v69 >= v197)
        {
          goto LABEL_123;
        }

        goto LABEL_118;
      }

      if (v65)
      {
        v74 = *(v65 + 18);
        v75 = *(v65 + 16);
        swift_unknownObjectRelease();
        v76 = (4 * v74 + 8) & 0x3C;
        v77 = ((-15 << v76) - 1) & v74;
        v7 = v191;
        v73 = v77 | (v75 << v76);
      }

      else
      {
        v73 = 0;
      }

      v31 = v197;
      v212 = v206;
      v213 = v73;
      v214[0] = 0;
      if (v69 >= v197)
      {
LABEL_123:
        v78 = *(v4 + 72);
        if (v7 == v31)
        {
          v206 = *(v4 + 96);
          if (v78)
          {
            v79 = *(v4 + 88);
            if (v79 < v7)
            {
              goto LABEL_277;
            }

            v8 = *(v4 + 80);
            v80 = (v78 + 16);
            v81 = *(v78 + 16);
            v82 = *(v78 + 18);
            if (*(v78 + 16) && v7 < v79)
            {
              swift_unknownObjectRetain_n();
              v83 = v7;
              if (!v82)
              {
                v15 = 0;
                v23 = v78;
LABEL_151:
                v92 = 0;
                v93 = 24;
                v89 = v83;
                while (1)
                {
                  v94 = *(v23 + v93);
                  v95 = v89 - v94;
                  if (__OFSUB__(v89, v94))
                  {
                    goto LABEL_266;
                  }

                  if (__OFADD__(v95, 1))
                  {
                    goto LABEL_267;
                  }

                  if (v95 + 1 < 1)
                  {
                    goto LABEL_160;
                  }

                  ++v92;
                  v93 += 24;
                  v89 -= v94;
                  if (v81 == v92)
                  {
                    v92 = v81;
                    if (!v95)
                    {
                      goto LABEL_159;
                    }

                    goto LABEL_285;
                  }
                }
              }

              v15 = v82;
              v84 = v78;
              do
              {
                v85 = *v80;
                if (*v80)
                {
                  v86 = 0;
                  v25 = (v84 + 40);
                  while (1)
                  {
                    v87 = *v25;
                    v25 += 3;
                    v88 = v83 - v87;
                    if (__OFSUB__(v83, v87))
                    {
                      goto LABEL_248;
                    }

                    if (__OFADD__(v88, 1))
                    {
                      goto LABEL_249;
                    }

                    if (v88 + 1 < 1)
                    {
                      v85 = v86;
                      goto LABEL_131;
                    }

                    ++v86;
                    v83 = v88;
                    if (v85 == v86)
                    {
                      goto LABEL_140;
                    }
                  }
                }

                v88 = v83;
LABEL_140:
                if (v88)
                {
                  goto LABEL_268;
                }

                v83 = 0;
LABEL_131:
                v15 = (v85 << ((4 * v82 + 8) & 0x3C)) | ((-15 << ((4 * v82 + 8) & 0x3C)) - 1) & v15;
                v81 = *(v84 + 24 + 24 * v85);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v80 = (v81 + 16);
                LOBYTE(v82) = *(v81 + 18);
                v84 = v81;
              }

              while (v82);
              v91 = v81;
              LODWORD(v81) = *v80;
              if (*v80)
              {
                v23 = v91;
                goto LABEL_151;
              }

              v92 = 0;
              v23 = v91;
              if (!v83)
              {
LABEL_159:
                v89 = 0;
LABEL_160:
                swift_unknownObjectRelease();
                v90 = v15 & 0xFFFFFFFFFFFFF0FFLL | (v92 << 8);
                v4 = v195;
                v7 = v191;
                goto LABEL_161;
              }

              goto LABEL_285;
            }

            v90 = ((-15 << ((4 * v82 + 8) & 0x3C)) - 1) & v82 | (v81 << ((4 * v82 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v89 = 0;
            v23 = 0;
LABEL_161:
            v205 = v90;
            v202 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v206, v90, v23, v78, v8);
            swift_unknownObjectRelease();
            v31 = v197;
          }

          else
          {
            if (v190 >= 0x800)
            {
              goto LABEL_280;
            }

            v89 = 0;
            v23 = 0;
            v205 = 0;
            v202 = 0;
          }

          if (__OFSUB__(v7, v89))
          {
            goto LABEL_275;
          }

          v204 = v7 - v89;
        }

        else
        {
          v206 = *(v4 + 96);
          if (v78)
          {
            v23 = 0;
            v204 = *(v4 + 88);
            v202 = *(v4 + 80);
            v205 = ((-15 << ((4 * *(v78 + 18) + 8) & 0x3C)) - 1) & *(v78 + 18) | (*(v78 + 16) << ((4 * *(v78 + 18) + 8) & 0x3C));
          }

          else
          {
            v204 = 0;
            v205 = 0;
            v23 = 0;
            v202 = 0;
          }
        }

        goto LABEL_164;
      }

LABEL_118:
      v204 = v69;
      v205 = v73;
      v206 = v212;
      v23 = v214[0];
LABEL_164:
      v96 = *(v4 + 40);
      v221 = *(v4 + 24);
      v222 = v96;
      v223 = *(v4 + 56);
      swift_unknownObjectRetain();
      v97 = v199;
      v32 = BigString.UTF8View.index(_:offsetBy:)();
      v198 = v98;
      swift_unknownObjectRelease();
      v14 = v207;

      v99 = specialized AttributedString._AttributeStorage.containsScalarConstraint.getter(v207);

      if ((v99 & 1) != 0 && v32 >> 10 > v199 >> 10)
      {
        v185 = v32;
        v186 = v32 >> 10;
        v194 = v23;
        v100 = v207 + 64;
        while (2)
        {
          v101 = v97;
          v102 = *(v4 + 40);
          v218 = *(v4 + 24);
          v219 = v102;
          v220 = *(v4 + 56);
          swift_unknownObjectRetain();
          v8 = v201;
          v196 = BigString.UnicodeScalarView.subscript.getter();
          swift_unknownObjectRelease();
          v103 = *(v4 + 40);
          v215 = *(v4 + 24);
          v216 = v103;
          v217 = *(v4 + 56);
          swift_unknownObjectRetain();
          v104 = BigString.UnicodeScalarView.index(after:)();
          v201 = v105;
          swift_unknownObjectRelease();
          v106 = 1 << *(v14 + 32);
          v107 = (v106 + 63) >> 6;
          if (v106 < 64)
          {
            v108 = ~(-1 << v106);
          }

          else
          {
            v108 = -1;
          }

          v109 = v108 & *(v14 + 64);
          v200 = v104;
          v188 = (v104 >> 11);
          v189 = v101 >> 11;

          v15 = 0;
          v203 = v107;
          if (!v109)
          {
LABEL_173:
            if (v107 <= v15 + 1)
            {
              v111 = v15 + 1;
            }

            else
            {
              v111 = v107;
            }

            v112 = v111 - 1;
            while (1)
            {
              v110 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              if (v110 >= v107)
              {
                v127 = 0;
                v116 = 0;
                v125 = 0;
                v126 = 0;
                v118 = 0;
                v117 = 0;
                v120 = 0;
                v119 = 0;
                v122 = 0;
                v121 = 0;
                v124 = 0;
                v109 = 0;
                v15 = v112;
                goto LABEL_182;
              }

              v109 = *(v100 + 8 * v110);
              ++v15;
              if (v109)
              {
                v15 = v110;
                goto LABEL_181;
              }
            }

LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
            goto LABEL_250;
          }

          while (1)
          {
            v110 = v15;
LABEL_181:
            v113 = __clz(__rbit64(v109));
            v109 &= v109 - 1;
            v114 = v113 | (v110 << 6);
            v115 = (*(v14 + 48) + 16 * v114);
            v116 = v115[1];
            v210 = *v115;
            outlined init with copy of AttributedString._AttributeValue(*(v14 + 56) + 72 * v114, v211);
            v208 = v211[1];
            v209 = v211[0];
            v118 = v211[2];
            v117 = v211[3];
            v120 = v211[4];
            v119 = v211[5];
            v122 = v211[6];
            v121 = v211[7];
            v123 = v211[8];

            v124 = v123;
            v126 = v208;
            v125 = v209;
            v127 = v210;
LABEL_182:
            v212 = v127;
            v213 = v116;
            v214[0] = v125;
            v214[1] = v126;
            v214[2] = v118;
            v214[3] = v117;
            v214[4] = v120;
            v214[5] = v119;
            v214[6] = v122;
            v214[7] = v121;
            v214[8] = v124;
            if (!v116)
            {
              break;
            }

            v8 = v116;
            outlined copy of AttributedString.AttributeRunBoundaries?(v119, v122);
            outlined destroy of AttributedString._AttributeValue(v214);
            v100 = v207 + 64;
            if (v122 < 2 || (v128 = specialized Collection.first.getter(v119, v122), outlined consume of AttributedString.AttributeRunBoundaries?(v119, v122), (v128 & 0x100000000) != 0) || v196 == v128)
            {

              goto LABEL_187;
            }

            if (v188 < v189)
            {
              goto LABEL_283;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v211[0] = v187;
            v131 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v8);
            v132 = *(v187 + 16);
            v133 = (v130 & 1) == 0;
            v134 = v132 + v133;
            if (__OFADD__(v132, v133))
            {
              goto LABEL_284;
            }

            v135 = v130;
            if (*(v187 + 24) >= v134)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v136 = v187;
                v192 = v187;
                if ((v130 & 1) == 0)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                LODWORD(v210) = v130;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
                v192 = static _DictionaryStorage.copy(original:)();
                if (*(v187 + 16))
                {
                  v140 = (v192 + 64);
                  v141 = ((1 << *(v192 + 32)) + 63) >> 6;
                  if (v192 != v187 || v140 >= v187 + 64 + 8 * v141)
                  {
                    memmove(v140, (v187 + 64), 8 * v141);
                  }

                  v142 = 0;
                  *(v192 + 16) = *(v187 + 16);
                  v143 = 1 << *(v187 + 32);
                  v144 = *(v187 + 64);
                  if (v143 < 64)
                  {
                    v145 = ~(-1 << v143);
                  }

                  else
                  {
                    v145 = -1;
                  }

                  v146 = v145 & v144;
                  v147 = (v143 + 63) >> 6;
                  if ((v145 & v144) != 0)
                  {
                    do
                    {
                      v148 = __clz(__rbit64(v146));
                      v146 &= v146 - 1;
LABEL_213:
                      v151 = v148 | (v142 << 6);
                      v152 = (*(v187 + 48) + 16 * v151);
                      v153 = v152[1];
                      v154 = *(*(v187 + 56) + 8 * v151);
                      v155 = (*(v192 + 48) + 16 * v151);
                      *v155 = *v152;
                      v155[1] = v153;
                      *(*(v192 + 56) + 8 * v151) = v154;
                    }

                    while (v146);
                  }

                  v149 = v142;
                  while (1)
                  {
                    v142 = v149 + 1;
                    if (__OFADD__(v149, 1))
                    {
                      goto LABEL_289;
                    }

                    if (v142 >= v147)
                    {
                      break;
                    }

                    v150 = *(v187 + 64 + 8 * v142);
                    ++v149;
                    if (v150)
                    {
                      v148 = __clz(__rbit64(v150));
                      v146 = (v150 - 1) & v150;
                      goto LABEL_213;
                    }
                  }
                }

                v136 = v192;
                if ((v210 & 1) == 0)
                {
LABEL_216:
                  *(v136 + 8 * (v131 >> 6) + 64) |= 1 << v131;
                  v139 = v192;
                  v156 = (*(v192 + 48) + 16 * v131);
                  *v156 = v127;
                  v156[1] = v8;
                  *(*(v192 + 56) + 8 * v131) = MEMORY[0x1E69E7CC0];
                  v157 = *(v192 + 16);
                  v68 = __OFADD__(v157, 1);
                  v158 = v157 + 1;
                  if (v68)
                  {
                    goto LABEL_286;
                  }

                  *(v192 + 16) = v158;
                  goto LABEL_218;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v134, isUniquelyReferenced_nonNull_native);
              v136 = v211[0];
              v137 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v8);
              if ((v135 & 1) != (v138 & 1))
              {
                goto LABEL_290;
              }

              v131 = v137;
              v192 = v136;
              if ((v135 & 1) == 0)
              {
                goto LABEL_216;
              }
            }

            v139 = v192;
LABEL_218:
            v159 = *(v139 + 56);
            v160 = *(v159 + 8 * v131);
            v161 = *(v160 + 2);
            if (v161 && (v162 = v161 - 1, v163 = &v160[16 * v161 - 16], *(v163 + 5) == v189))
            {
              v8 = *(v163 + 4);
              if (v188 < v8)
              {
                goto LABEL_287;
              }

              v164 = swift_isUniquelyReferenced_nonNull_native();
              *(v159 + 8 * v131) = v160;
              if ((v164 & 1) == 0)
              {
                v160 = specialized _ArrayBuffer._consumeAndCreateNew()(v160);
                *(v159 + 8 * v131) = v160;
              }

              v165 = v192;
              if (v161 > *(v160 + 2))
              {
                goto LABEL_288;
              }
            }

            else
            {
              v166 = swift_isUniquelyReferenced_nonNull_native();
              *(v159 + 8 * v131) = v160;
              if ((v166 & 1) == 0)
              {
                v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v161 + 1, 1, v160);
                *(v159 + 8 * v131) = v160;
              }

              v162 = *(v160 + 2);
              v167 = *(v160 + 3);
              v165 = v192;
              if (v162 >= v167 >> 1)
              {
                v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v162 + 1, 1, v160);
                v165 = v192;
                v160 = v169;
                *(v159 + 8 * v131) = v169;
              }

              *(v160 + 2) = v162 + 1;
              v8 = v189;
            }

            v168 = &v160[16 * v162];
            v25 = v188;
            *(v168 + 4) = v8;
            *(v168 + 5) = v188;
            v187 = v165;
LABEL_187:
            v14 = v207;
            v107 = v203;
            if (!v109)
            {
              goto LABEL_173;
            }
          }

          v14 = v207;

          v97 = v200;
          v4 = v195;
          v100 = v207 + 64;
          if (v186 > v200 >> 10)
          {
            continue;
          }

          break;
        }

        v7 = v191;
        v31 = v197;
        v23 = v194;
        v32 = v185;
      }

      else
      {
      }
    }

    v73 = (v72 << v71) | ((-15 << v71) - 1) & v205;
    swift_unknownObjectRelease();
    goto LABEL_117;
  }

LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined consume of AttributedString.AttributeRunBoundaries?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *NSFileHandle.readToEnd()()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v1 = [v0 readDataToEndOfFileAndReturnError_];
  v2 = v14[0];
  if (!v1)
  {
    if (v14[0])
    {
      v14[0];
LABEL_17:
      swift_willThrow();
      return v2;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_16:
      v12 = _nilObjCError;
      goto LABEL_17;
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  v3 = v1;
  v4 = v2;
  v2 = specialized Data.init(referencing:)(v3);
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    v9 = v2[2];
    v8 = v2[3];
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 <= 0)
      {
        goto LABEL_14;
      }

      return v2;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 > 0)
      {
        return v2;
      }

LABEL_14:
      outlined consume of Data._Representation(v2, v6);
      return 0;
    }

    goto LABEL_20;
  }

  if (!BYTE6(v6))
  {
    goto LABEL_14;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type IndexSet.Index and conformance IndexSet.Index()
{
  result = lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index;
  if (!lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index;
  if (!lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index);
  }

  return result;
}