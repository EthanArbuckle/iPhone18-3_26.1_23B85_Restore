Swift::Int IntegerFormatStyle.Attributed.Style.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  IntegerFormatStyle.Attributed.Style.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t IntegerFormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v53 - v11;
  type metadata accessor for IntegerFormatStyle.Attributed.Style.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v60 = a2;
  v64 = a3;
  v62 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    WitnessTable = v19;
    v68 = v16;
    v53 = v22;
    v54 = v25;
    v28 = v63;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = _ArrayBuffer.requestNativeBuffer()();
    if (!v30)
    {
      v74 = v29;
      type metadata accessor for Array();
      swift_getWitnessTable();
      v30 = _copyCollectionToContiguousArray<A>(_:)();
    }

    v31 = v30;

    v32 = (2 * *(v31 + 16)) | 1;
    v70 = v31;
    v71 = v31 + 32;
    v72 = 0;
    v73 = v32;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    if (v74 == 3 || v72 != v73 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v41 = v62;
      v42 = v66;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v65 + 8))(v14, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v74)
      {
        if (v74 == 1)
        {
          LOBYTE(v74) = 1;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v33 = v58;
          v34 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v35 = v65;
          v36 = v61;
          type metadata accessor for IntegerFormatStyle.Percent();
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v28 + 8))(v33, v36);
          (*(v35 + 8))(v14, v34);
          swift_unknownObjectRelease();
          v37 = WitnessTable;
        }

        else
        {
          LOBYTE(v74) = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v45 = v59;
          v46 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v65;
          v48 = v61;
          type metadata accessor for IntegerFormatStyle.Currency();
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v28 + 8))(v45, v48);
          (*(v47 + 8))(v14, v46);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        v38 = v62;
      }

      else
      {
        LOBYTE(v74) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v44 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for IntegerFormatStyle();
        swift_getWitnessTable();
        v37 = v53;
        v49 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v50 = v65;
        (*(v28 + 8))(v44, v49);
        (*(v50 + 8))(v14, v66);
        swift_unknownObjectRelease();
        v38 = v62;
      }

      swift_storeEnumTagMultiPayload();
      v51 = *(v56 + 32);
      v52 = v54;
      v51(v54, v37, v38);
      v51(v55, v52, v38);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerFormatStyle<A>.Currency.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IntegerFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v202 = a3;
  v214 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v197 = type metadata accessor for IntegerFormatStyle.Percent();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = v187 - v6;
  v194 = type metadata accessor for IntegerFormatStyle.Currency();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v192 = v187 - v7;
  v191 = type metadata accessor for IntegerFormatStyle();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = v187 - v8;
  v9 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v203 = *(v9 - 8);
  v204 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v187 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v200 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v199 = v187 - v12;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v198 = v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v187 - v19;
  v21 = *(v14 + 16);
  v188 = a1;
  v187[1] = v14 + 16;
  v187[0] = v21;
  v21(v187 - v19, a1, v4, v18);
  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v187[2] = v5;
  if ((v22 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_15;
  }

  *&v211 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v23)
    {
      if (v24 > 64)
      {
        goto LABEL_8;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v28 = v198;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v30 = *(v14 + 8);
      v30(v28, v4);
      if (v29)
      {
        v30(v20, v4);
LABEL_20:
        v35 = v199;
        dispatch thunk of BinaryInteger.words.getter();
        v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v37 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v39 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v35, v36 & 1, v37, *(*(AssociatedConformanceWitness + 8) + 8));
        v41 = v40;
        (*(v200 + 8))(v35, v37);
        v42 = 3;
        goto LABEL_27;
      }
    }

    else if (v24 >= 64)
    {
      goto LABEL_15;
    }

LABEL_14:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_15;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_14;
  }

LABEL_8:
  lazy protocol witness table accessor for type Int64 and conformance Int64();
  v25 = v198;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v26 = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = *(v14 + 8);
  v27(v25, v4);
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
  {
    goto LABEL_26;
  }

  *&v211 = 0x7FFFFFFFFFFFFFFFLL;
  v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v31)
  {
    if (v32 > 64)
    {
      goto LABEL_18;
    }

LABEL_25:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_26;
  }

  if (v32 <= 63)
  {
    goto LABEL_25;
  }

LABEL_18:
  lazy protocol witness table accessor for type Int64 and conformance Int64();
  v33 = v198;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v34 = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = *(v14 + 8);
  v27(v33, v4);
  if (v34)
  {
LABEL_19:
    v27(v20, v4);
    goto LABEL_20;
  }

LABEL_26:
  v39 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v14 + 8))(v20, v4);
  v41 = 0;
  v42 = 0;
LABEL_27:
  (*(v203 + 16))(v11, v205, v204);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  AssociatedTypeWitness = v39;
  v200 = v41;
  v199 = v42;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v195;
      (v196)[4](v195, v11, v197);
      isUniquelyReferenced_nonNull_native = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v47 = v46;
      v48 = *(v44 + 1);
      ObjectType = swift_getObjectType();
      v50 = (*(v48 + 472))(ObjectType, v48);
      v51 = v50;
      v53 = v52;
      if (one-time initialization token for cache != -1)
      {
        v50 = swift_once();
      }

      v55 = static ICUPercentNumberFormatter.cache;
      v54 = *algn_1EA7B0228;
      *&v211 = isUniquelyReferenced_nonNull_native;
      *(&v211 + 1) = v47;
      *&v212 = v51;
      *(&v212 + 1) = v53;
      MEMORY[0x1EEE9AC00](v50);
      v187[-2] = &v211;
      os_unfair_lock_lock((v54 + 24));
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v54 + 16, &v208);
      os_unfair_lock_unlock((v54 + 24));
      v56 = v208;
      if (v208 != 1)
      {
        goto LABEL_136;
      }

      *&v208 = 0x746E6563726570;
      *(&v208 + 1) = 0xE700000000000000;
      if (String.count.getter() > 0)
      {
        v206 = 32;
        v207 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](isUniquelyReferenced_nonNull_native, v47);
        MEMORY[0x1865CB0E0](v206, v207);
      }

      v58 = *(&v208 + 1);
      v57 = v208;
      type metadata accessor for ICUPercentNumberFormatter();
      swift_allocObject();

      v56 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v57, v58);
      os_unfair_lock_lock((v54 + 24));
      v59 = *(*(v54 + 16) + 16);
      v205 = *(v54 + 16);
      if (v55 >= v59)
      {
      }

      else
      {
        *(v54 + 16) = MEMORY[0x1E69E7CC8];
      }

      LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = *(v54 + 16);
      v67 = v208;
      *(v54 + 16) = 0x8000000000000000;
      v72 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v47, v51, v53);
      v89 = *(v67 + 16);
      v90 = (v71 & 1) == 0;
      v91 = v89 + v90;
      if (!__OFADD__(v89, v90))
      {
        if (*(v67 + 24) < v91)
        {
          v92 = v71;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v88);
          v93 = v208;
          v94 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v47, v51, v53);
          if ((v92 & 1) == (v95 & 1))
          {
            v72 = v94;
            if ((v92 & 1) == 0)
            {
              goto LABEL_134;
            }

LABEL_60:
            v103 = v72;

            *(*(v93 + 56) + 8 * v103) = v56;

LABEL_135:
            *(v54 + 16) = v93;

            os_unfair_lock_unlock((v54 + 24));

            outlined consume of ICUNumberFormatter??(1);
LABEL_136:

            if (v56)
            {
              v176 = v199;
              v177 = AssociatedTypeWitness;
              v178 = v200;
              ICUCurrencyNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v200, v199 << 32);

              outlined consume of ICUNumberFormatterBase.Value(v177, v178, 0, v176);
              return (v196[1])(v195, v197);
            }

            (v196[1])(v195, v197);
LABEL_151:
            v186 = v202;
            outlined consume of ICUNumberFormatterBase.Value(AssociatedTypeWitness, v200, 0, v199);
            (v187[0])(v198, v188, v4);
            String.init<A>(_:radix:uppercase:)();
            BigString.init(_:)();
            result = AttributedString.init(_:attributes:)(&v208, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v206);
            *v186 = v206;
            return result;
          }

          goto LABEL_155;
        }

LABEL_58:
        if (v88)
        {
          v93 = v67;
          if (v71)
          {
            goto LABEL_60;
          }

LABEL_134:
          specialized _NativeDictionary._insert(at:key:value:)(v72, isUniquelyReferenced_nonNull_native, v47, v51, v53, v56, v93);
          goto LABEL_135;
        }

        goto LABEL_88;
      }

      __break(1u);
      goto LABEL_84;
    }

    v73 = v192;
    (v193)[4](v192, v11, v194);
    v74 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v76 = v75;
    v77 = *(v73 + 2);
    v53 = *(v73 + 3);
    v78 = *(v73 + 1);
    v79 = swift_getObjectType();
    v80 = *(v78 + 472);

    v81 = v80(v79, v78);
    *&v211 = v74;
    *(&v211 + 1) = v76;
    v204 = v76;
    v205 = v82;
    *&v212 = v77;
    *(&v212 + 1) = v53;
    *&v213 = v81;
    *(&v213 + 1) = v82;
    if (one-time initialization token for cache != -1)
    {
      v81 = swift_once();
    }

    v83 = static ICUCurrencyNumberFormatter.cache;
    v54 = qword_1EA7B5100;
    v208 = v211;
    v209 = v212;
    v210 = v213;
    MEMORY[0x1EEE9AC00](v81);
    v187[-2] = &v208;
    os_unfair_lock_lock((v54 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v54 + 16, &v206);
    os_unfair_lock_unlock((v54 + 24));
    v56 = v206;
    v51 = v204;
    if (v206 != 1)
    {
LABEL_142:

      if (v56)
      {
        v180 = v199;
        v181 = AssociatedTypeWitness;
        v182 = v200;
        ICUCurrencyNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v200, v199 << 32);

        outlined consume of ICUNumberFormatterBase.Value(v181, v182, 0, v180);
        return (v193[1])(v192, v194);
      }

      (v193[1])(v192, v194);
      goto LABEL_151;
    }

    v84 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v74, v204, v77, v53);
    v86 = v85;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();
    v67 = v205;

    v56 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v84, v86);
    os_unfair_lock_lock((v54 + 24));
    v87 = *(v54 + 16);
    if (v83 >= *(v87 + 16))
    {

      v47 = v87;
    }

    else
    {
      v47 = *(v54 + 16);
      *(v54 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v206 = *(v54 + 16);
    v88 = v206;
    *(v54 + 16) = 0x8000000000000000;
    v96 = specialized __RawDictionaryStorage.find<A>(_:)(&v211);
    v97 = *(v88 + 16);
    v98 = (v71 & 1) == 0;
    v99 = __OFADD__(v97, v98);
    v100 = v97 + v98;
    if (v99)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v67 = v71;
    if (*(v88 + 24) >= v100)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v191 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
        v137 = static _DictionaryStorage.copy(original:)();
        v101 = v137;
        if (*(v88 + 16))
        {
          v138 = (v137 + 64);
          v139 = 1 << *(v101 + 32);
          v195 = (v88 + 64);
          v140 = (v139 + 63) >> 6;
          if (v101 != v88 || v138 >= &v195[8 * v140])
          {
            memmove(v138, v195, 8 * v140);
          }

          v141 = 0;
          *(v101 + 16) = *(v88 + 16);
          v142 = 1 << *(v88 + 32);
          v143 = -1;
          if (v142 < 64)
          {
            v143 = ~(-1 << v142);
          }

          v203 = v143 & *(v88 + 64);
          v190 = (v142 + 63) >> 6;
          for (i = v203; v203; i = v203)
          {
            v145 = __clz(__rbit64(i));
            v203 = (i - 1) & i;
LABEL_116:
            v148 = v145 | (v141 << 6);
            v149 = *(v88 + 56);
            v150 = (*(v88 + 48) + 48 * v148);
            v151 = *v150;
            v196 = v150[1];
            v152 = v196;
            v153 = v150[2];
            v197 = v150[3];
            v154 = v197;
            v155 = *(v149 + 8 * v148);
            v156 = v150[4];
            v157 = v150[5];
            v158 = (*(v101 + 48) + 48 * v148);
            *v158 = v151;
            v158[1] = v152;
            v158[2] = v153;
            v158[3] = v154;
            v158[4] = v156;
            v158[5] = v157;
            *(*(v101 + 56) + 8 * v148) = v155;
          }

          v146 = v141;
          while (1)
          {
            v141 = v146 + 1;
            if (__OFADD__(v146, 1))
            {
              break;
            }

            if (v141 >= v190)
            {
              goto LABEL_139;
            }

            v147 = *&v195[8 * v141];
            ++v146;
            if (v147)
            {
              v145 = __clz(__rbit64(v147));
              v203 = (v147 - 1) & v147;
              goto LABEL_116;
            }
          }

LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_156;
        }

LABEL_139:

        v96 = v191;
        if (v67)
        {
          goto LABEL_64;
        }

        goto LABEL_140;
      }

      v101 = v88;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, isUniquelyReferenced_nonNull_native);
      v101 = v206;
      v96 = specialized __RawDictionaryStorage.find<A>(_:)(&v211);
      if ((v67 & 1) != (v102 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_58;
      }
    }

    if (v67)
    {
LABEL_64:
      v104 = v96;

      *(*(v101 + 56) + 8 * v104) = v56;

LABEL_141:
      *(v54 + 16) = v101;

      os_unfair_lock_unlock((v54 + 24));

      outlined consume of ICUNumberFormatter??(1);
      goto LABEL_142;
    }

LABEL_140:
    specialized _NativeDictionary._insert(at:key:value:)(v96, &v211, v56, v101);
    goto LABEL_141;
  }

  v60 = v189;
  (*(v190 + 32))(v189, v11, v191);
  v51 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v47 = v61;
  v62 = *(v60 + 1);
  v63 = swift_getObjectType();
  v64 = (*(v62 + 472))(v63, v62);
  v65 = v64;
  isUniquelyReferenced_nonNull_native = v66;
  if (one-time initialization token for cache != -1)
  {
    v64 = swift_once();
  }

  v67 = static ICUNumberFormatter.cache;
  v54 = *algn_1EA7B1D98;
  *&v208 = v51;
  *(&v208 + 1) = v47;
  *&v209 = v65;
  *(&v209 + 1) = isUniquelyReferenced_nonNull_native;
  MEMORY[0x1EEE9AC00](v64);
  v187[-2] = &v208;
  os_unfair_lock_lock((v54 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v54 + 16, &v211);
  os_unfair_lock_unlock((v54 + 24));
  v56 = v211;
  if (v211 != 1)
  {
LABEL_148:

    if (v56)
    {
      v183 = v199;
      v184 = AssociatedTypeWitness;
      v185 = v200;
      ICUNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v200, v199 << 32, v202);

      outlined consume of ICUNumberFormatterBase.Value(v184, v185, 0, v183);
      return (*(v190 + 8))(v189, v191);
    }

    (*(v190 + 8))(v189, v191);
    goto LABEL_151;
  }

  type metadata accessor for ICUNumberFormatter();
  v56 = swift_allocObject();
  v56[3] = v51;
  v56[4] = v47;
  swift_bridgeObjectRetain_n();
  v68 = MEMORY[0x1865CB200](v51, v47);
  if (v68)
  {
    v203 = isUniquelyReferenced_nonNull_native;
    v205 = v67;
    v67 = v65;
    v53 = v68;
    v69 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v68, 0);

    isUniquelyReferenced_nonNull_native = v51;
    v70 = specialized Sequence._copySequenceContents(initializing:)(&v211, (v69 + 4), v53, v51, v47);

    if (v70 != v53)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      v191 = v72;
      LODWORD(v192) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v117 = static _DictionaryStorage.copy(original:)();
      v93 = v117;
      if (!*(v67 + 16))
      {
LABEL_133:

        v72 = v191;
        if (v192)
        {
          goto LABEL_60;
        }

        goto LABEL_134;
      }

      v118 = (v117 + 64);
      v119 = 1 << *(v93 + 32);
      v193 = (v67 + 64);
      v120 = (v119 + 63) >> 6;
      if (v93 != v67 || v118 >= &v193[v120])
      {
        memmove(v118, v193, 8 * v120);
      }

      v121 = 0;
      *(v93 + 16) = *(v67 + 16);
      v122 = 1 << *(v67 + 32);
      v123 = -1;
      if (v122 < 64)
      {
        v123 = ~(-1 << v122);
      }

      v204 = v123 & *(v67 + 64);
      v190 = (v122 + 63) >> 6;
      for (j = v204; v204; j = v204)
      {
        v125 = __clz(__rbit64(j));
        v204 = (j - 1) & j;
LABEL_101:
        v128 = v125 | (v121 << 6);
        v129 = *(v67 + 56);
        v130 = (*(v67 + 48) + 32 * v128);
        v131 = *v130;
        v194 = v130[1];
        v132 = v194;
        v133 = v130[2];
        v203 = v130[3];
        v134 = v203;
        v135 = *(v129 + 8 * v128);
        v136 = (*(v93 + 48) + 32 * v128);
        *v136 = v131;
        v136[1] = v132;
        v136[2] = v133;
        v136[3] = v134;
        *(*(v93 + 56) + 8 * v128) = v135;
      }

      v126 = v121;
      while (1)
      {
        v121 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v121 >= v190)
        {
          goto LABEL_133;
        }

        v127 = v193[v121];
        ++v126;
        if (v127)
        {
          v125 = __clz(__rbit64(v127));
          v204 = (v127 - 1) & v127;
          goto LABEL_101;
        }
      }

      __break(1u);
      goto LABEL_153;
    }

    v65 = v67;
    v67 = v205;
    isUniquelyReferenced_nonNull_native = v203;
  }

  else
  {

    v69 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v211) = 0;
  v53 = v69[2];
  if (v53 >> 31)
  {
    goto LABEL_85;
  }

  v205 = v65;
  String.utf8CString.getter();
  v105 = unumf_openForSkeletonAndLocale();

  if (!v105)
  {
    goto LABEL_70;
  }

  if (v211 >= 1)
  {
    unumf_close();
LABEL_70:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v56 = 0;
    goto LABEL_72;
  }

  v56[2] = v105;
LABEL_72:
  os_unfair_lock_lock((v54 + 24));
  v106 = *(*(v54 + 16) + 16);
  v204 = *(v54 + 16);
  if (v67 >= v106)
  {
  }

  else
  {
    *(v54 + 16) = MEMORY[0x1E69E7CC8];
  }

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v211 = *(v54 + 16);
  v53 = v211;
  *(v54 + 16) = 0x8000000000000000;
  v72 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v47, v205, isUniquelyReferenced_nonNull_native);
  v108 = *(v53 + 16);
  v109 = (v71 & 1) == 0;
  v110 = v108 + v109;
  if (__OFADD__(v108, v109))
  {
    goto LABEL_86;
  }

  v111 = v71;
  if (*(v53 + 24) >= v110)
  {
    if (v107)
    {
      v112 = v53;
      v113 = v205;
      if ((v71 & 1) == 0)
      {
LABEL_146:
        specialized _NativeDictionary._insert(at:key:value:)(v72, v51, v47, v113, isUniquelyReferenced_nonNull_native, v56, v112);
        goto LABEL_147;
      }
    }

    else
    {
      v203 = isUniquelyReferenced_nonNull_native;
      v194 = v51;
      v195 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v159 = static _DictionaryStorage.copy(original:)();
      v112 = v159;
      if (*(v53 + 16))
      {
        v160 = (v159 + 64);
        v161 = 1 << *(v112 + 32);
        v196 = (v53 + 64);
        v162 = (v161 + 63) >> 6;
        if (v112 != v53 || v160 >= &v196[v162])
        {
          memmove(v160, v196, 8 * v162);
        }

        v163 = 0;
        *(v112 + 16) = *(v53 + 16);
        v164 = 1 << *(v53 + 32);
        v165 = -1;
        if (v164 < 64)
        {
          v165 = ~(-1 << v164);
        }

        v197 = v165 & *(v53 + 64);
        v193 = ((v164 + 63) >> 6);
        while (v197)
        {
          v166 = __clz(__rbit64(v197));
          v197 &= v197 - 1;
LABEL_132:
          v169 = v166 | (v163 << 6);
          v170 = (*(v53 + 48) + 32 * v169);
          v171 = v170[1];
          v172 = v170[2];
          v173 = v170[3];
          v174 = *(*(v53 + 56) + 8 * v169);
          v175 = (*(v112 + 48) + 32 * v169);
          *v175 = *v170;
          v175[1] = v171;
          v175[2] = v172;
          v175[3] = v173;
          *(*(v112 + 56) + 8 * v169) = v174;
        }

        v167 = v163;
        while (1)
        {
          v163 = v167 + 1;
          if (__OFADD__(v167, 1))
          {
            goto LABEL_154;
          }

          if (v163 >= v193)
          {
            break;
          }

          v168 = v196[v163];
          ++v167;
          if (v168)
          {
            v166 = __clz(__rbit64(v168));
            v197 = (v168 - 1) & v168;
            goto LABEL_132;
          }
        }
      }

      v113 = v205;
      v72 = v195;
      v51 = v194;
      isUniquelyReferenced_nonNull_native = v203;
      if ((v111 & 1) == 0)
      {
        goto LABEL_146;
      }
    }

LABEL_82:
    v116 = v72;

    *(*(v112 + 56) + 8 * v116) = v56;

LABEL_147:
    *(v54 + 16) = v112;

    os_unfair_lock_unlock((v54 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_148;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v110, v107);
  v112 = v211;
  v113 = v205;
  v114 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v47, v205, isUniquelyReferenced_nonNull_native);
  if ((v111 & 1) == (v115 & 1))
  {
    v72 = v114;
    if ((v111 & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_82;
  }

LABEL_156:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t IntegerFormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IntegerFormatStyle.Percent();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - v7);
  v9 = type metadata accessor for IntegerFormatStyle.Currency();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - v10);
  v12 = type metadata accessor for IntegerFormatStyle();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v36 - v13);
  v15 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = *a1;
  v42 = a1[1];
  v21 = a3;
  v22 = a3;
  v23 = v43;
  (*(*(a2 - 8) + 16))(v22, v43, a2, v17);
  (*(v16 + 16))(v19, v23, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v40;
      v26 = v41;
      (*(v40 + 32))(v8, v19, v41);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v28 = v42;
      *v8 = v20;
      v8[1] = v28;
      (*v25)(v21, v15);
      (*(v27 + 16))(v21, v8, v26);
      swift_storeEnumTagMultiPayload();
      return (*(v27 + 8))(v8, v26);
    }

    else
    {
      v34 = v38;
      v33 = v39;
      (*(v38 + 32))(v11, v19, v39);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v35 = v42;
      *v11 = v20;
      v11[1] = v35;
      (*v25)(v21, v15);
      (*(v34 + 16))(v21, v11, v33);
      swift_storeEnumTagMultiPayload();
      return (*(v34 + 8))(v11, v33);
    }
  }

  else
  {
    v31 = v36;
    v30 = v37;
    (*(v36 + 32))(v14, v19, v37);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v32 = v42;
    *v14 = v20;
    v14[1] = v32;
    (*v25)(v21, v15);
    (*(v31 + 16))(v21, v14, v30);
    swift_storeEnumTagMultiPayload();
    return (*(v31 + 8))(v14, v30);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.Attributed.encode(to:)(void *a1, uint64_t a2)
{
  v8 = *(a2 + 16);
  type metadata accessor for IntegerFormatStyle.Attributed.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for IntegerFormatStyle.Attributed.Style();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IntegerFormatStyle.Attributed.hash(into:)(Swift::Int a1)
{
  v217 = type metadata accessor for IntegerFormatStyle.Currency();
  v220 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v214 = &v206 - v3;
  v221 = type metadata accessor for IntegerFormatStyle.Percent();
  v219 = *(v221 - 1);
  MEMORY[0x1EEE9AC00](v221);
  v5 = &v206 - v4;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v222 = *(v6 - 8);
  v223 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v218 = &v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v216 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v215 = &v206 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v206 - v13;
  v15 = type metadata accessor for IntegerFormatStyle();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v206 - v17;
  v19 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v206 - v21;
  (*(v23 + 16))(&v206 - v21, v1, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v5;
      (*(v219 + 4))(v5, v22, v221);
      MEMORY[0x1865CD060](1);
      v26 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v28 = (*(v26 + 48))(ObjectType, v26);
      v30 = v222;
      v29 = v223;
      if (v28)
      {
        v31 = 1;
LABEL_11:
        Hasher._combine(_:)(v31);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v26 + 64))(ObjectType, v26);
      String.hash(into:)();

      (*(v26 + 464))(&v224, ObjectType, v26);
      v237 = v230;
      v238[0] = v231[0];
      *(v238 + 12) = *(v231 + 12);
      *v234 = v226;
      *&v234[16] = v227;
      v235 = v228;
      v236 = v229;
      v232 = v224;
      v233 = v225;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v232) == 1)
      {
        v31 = 0;
        goto LABEL_11;
      }

      v46 = v224;
      v47 = *(&v224 + 1);
      v48 = *(&v225 + 1);
      v207 = v225;
      v49 = *(&v226 + 1);
      v208 = v226;
      *(&v210 + 1) = *(&v227 + 1);
      *v211 = v228;
      *&v211[16] = v229;
      v212 = v230;
      *&v209 = *(&v231[0] + 1);
      v213 = *&v231[0];
      *(&v209 + 1) = v227;
      v214 = *&v231[1];
      v216 = BYTE8(v231[1]);
      v217 = BYTE9(v231[1]);
      v50 = BYTE10(v231[1]);
      v51 = BYTE11(v231[1]);
      Hasher._combine(_:)(1u);
      if (v46 == 2)
      {
        v52 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v52 = v46 & 1;
      }

      LODWORD(v220) = v51;
      Hasher._combine(_:)(v52);
      if (v47)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v47 + 16));
        v67 = *(v47 + 16);
        if (v67)
        {
          v68 = v47 + 40;
          do
          {

            String.hash(into:)();

            v68 += 16;
            --v67;
          }

          while (v67);
        }

        if (v48)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v48)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_48;
        }
      }

      Hasher._combine(_:)(0);
LABEL_48:
      v30 = v222;
      v29 = v223;
      v74 = *v211;
      LODWORD(v210) = v50;
      if (v49)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v75 = v214;
      v76 = *&v211[16];
      v77 = *(&v209 + 1);
      if (*(&v209 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v77, v78, v79, v80, v81, v82, v83);
        v84 = *(&v210 + 1);
        if (*(&v210 + 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v84 = *(&v210 + 1);
        if (*(&v210 + 1))
        {
LABEL_53:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v84, v85, v86, v87, v88, v89, v90);
          if (v74)
          {
            goto LABEL_54;
          }

          goto LABEL_59;
        }
      }

      Hasher._combine(_:)(0);
      if (v74)
      {
LABEL_54:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v211[8])
        {
          goto LABEL_55;
        }

        goto LABEL_60;
      }

LABEL_59:
      Hasher._combine(_:)(0);
      if (*&v211[8])
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v76)
        {
LABEL_56:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_62;
        }

LABEL_61:
        Hasher._combine(_:)(0);
LABEL_62:
        v91 = v210;
        if (*&v211[24])
        {
          v92 = v217;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v212)
          {
LABEL_64:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_67;
          }
        }

        else
        {
          v92 = v217;
          Hasher._combine(_:)(0);
          if (v212)
          {
            goto LABEL_64;
          }
        }

        Hasher._combine(_:)(0);
LABEL_67:
        v93 = v92;
        v94 = v91;
        v95 = *(&v212 + 1);
        if (*(&v212 + 1))
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v95);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v96 = v75;
        v97 = v213;
        if (v213)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v97);
          v98 = v216;
          if (v96)
          {
            goto LABEL_72;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v98 = v216;
          if (v96)
          {
LABEL_72:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            if (v98 == 2)
            {
              goto LABEL_73;
            }

            goto LABEL_78;
          }
        }

        Hasher._combine(_:)(0);
        if (v98 == 2)
        {
LABEL_73:
          Hasher._combine(_:)(0);
          if (v93 != 2)
          {
            goto LABEL_74;
          }

          goto LABEL_79;
        }

LABEL_78:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v98 & 1);
        if (v93 != 2)
        {
LABEL_74:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v93 & 1);
          if (v94 != 2)
          {
LABEL_75:
            Hasher._combine(_:)(1u);
            v99 = v94 & 1;
LABEL_81:
            Hasher._combine(_:)(v99);
            v100 = v220;
            if (v220 == 2)
            {
              v101 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v101 = v100 & 1;
            }

            Hasher._combine(_:)(v101);
            outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
            v102 = &v25[*(v221 + 9)];
            if (v102[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v103 = *v102;
              Hasher._combine(_:)(1u);
              if ((v103 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v104 = v103;
              }

              else
              {
                v104 = 0;
              }

              MEMORY[0x1865CD090](v104);
            }

            v105 = *(v102 + 2);
            v232 = *(v102 + 1);
            v233 = v105;
            *v234 = *(v102 + 3);
            *&v234[9] = *(v102 + 57);
            specialized Optional<A>.hash(into:)();
            v106 = v102[73];
            if (v106 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v106 & 1);
            }

            v107 = *(v102 + 37);
            v108 = v107 | (v102[76] << 16);
            if (v107 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v108 & 1);
              MEMORY[0x1865CD060]((v108 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v108) & 1);
            }

            v109 = v102[77];
            if (v109 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v109 & 1);
            }

            v110 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v111 = v215;
            outlined init with copy of FloatingPointRoundingRule?(&v102[v110[9]], v215);
            if ((*(v30 + 48))(v111, 1, v29) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v112 = v218;
              (*(v30 + 32))(v218, v111, v29);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v30 + 8))(v112, v29);
            }

            v113 = &v102[v110[10]];
            v114 = v113[8];
            if (v114 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v115 = *v113;
              Hasher._combine(_:)(1u);
              if (v114)
              {
                MEMORY[0x1865CD060](1);
                if ((v115 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v116 = v115;
                }

                else
                {
                  v116 = 0;
                }

                MEMORY[0x1865CD090](v116);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v115);
              }
            }

            v117 = v102[v110[11]];
            if (v117 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v117);
            }

            return (*(v219 + 1))(v25, v221);
          }

LABEL_80:
          v99 = 0;
          goto LABEL_81;
        }

LABEL_79:
        Hasher._combine(_:)(0);
        if (v94 != 2)
        {
          goto LABEL_75;
        }

        goto LABEL_80;
      }

LABEL_60:
      Hasher._combine(_:)(0);
      if (v76)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }

    v36 = v214;
    v37 = v217;
    (*(v220 + 32))(v214, v22, v217);
    MEMORY[0x1865CD060](2);
    v38 = *(v36 + 1);
    v39 = swift_getObjectType();
    v40 = (*(v38 + 48))(v39, v38);
    v42 = v222;
    v41 = v223;
    if (v40)
    {
      v43 = 1;
LABEL_17:
      Hasher._combine(_:)(v43);
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v38 + 64))(v39, v38);
    String.hash(into:)();

    (*(v38 + 464))(&v224, v39, v38);
    v237 = v230;
    v238[0] = v231[0];
    *(v238 + 12) = *(v231 + 12);
    *v234 = v226;
    *&v234[16] = v227;
    v235 = v228;
    v236 = v229;
    v232 = v224;
    v233 = v225;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v232) == 1)
    {
      v43 = 0;
      goto LABEL_17;
    }

    v61 = v224;
    v62 = *(&v224 + 1);
    v63 = *(&v225 + 1);
    v206 = v225;
    v64 = *(&v226 + 1);
    v207 = v226;
    v209 = v227;
    v210 = v228;
    *v211 = v229;
    *&v211[16] = v230;
    v208 = *(&v231[0] + 1);
    *&v212 = *&v231[0];
    v213 = *&v231[1];
    v215 = BYTE8(v231[1]);
    v219 = BYTE9(v231[1]);
    LODWORD(v221) = BYTE10(v231[1]);
    v65 = BYTE11(v231[1]);
    Hasher._combine(_:)(1u);
    if (v61 == 2)
    {
      v66 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v66 = v61 & 1;
    }

    Hasher._combine(_:)(v66);
    if (v62)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v62 + 16));
      v71 = *(v62 + 16);
      if (v71)
      {
        v72 = v62 + 40;
        do
        {

          String.hash(into:)();

          v72 += 16;
          --v71;
        }

        while (v71);
      }

      DWORD2(v212) = v65;
      if (v63)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v73 = *(&v210 + 1);
        if (v64)
        {
LABEL_45:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_188;
        }

LABEL_187:
        Hasher._combine(_:)(0);
LABEL_188:
        v163 = v223;
        v164 = v217;
        v165 = v209;
        if (v209)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v165, v166, v167, v168, v169, v170, v171);
          v172 = v73;
          if (*(&v165 + 1))
          {
LABEL_190:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, *(&v165 + 1), v173, v174, v175, v176, v177, v178);
            goto LABEL_193;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v172 = v73;
          if (*(&v165 + 1))
          {
            goto LABEL_190;
          }
        }

        Hasher._combine(_:)(0);
LABEL_193:
        v37 = v164;
        v41 = v163;
        if (v210)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v179 = *&v211[8];
        v42 = v222;
        if (v172)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*v211)
          {
            goto LABEL_198;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*v211)
          {
LABEL_198:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v179)
            {
              goto LABEL_199;
            }

            goto LABEL_203;
          }
        }

        Hasher._combine(_:)(0);
        if (v179)
        {
LABEL_199:
          v180 = v219;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v181 = *&v211[24];
          if (*&v211[16])
          {
LABEL_200:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_205;
          }

LABEL_204:
          Hasher._combine(_:)(0);
LABEL_205:
          v182 = v180;
          v183 = v213;
          if (v181)
          {
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v181);
            v184 = v212;
            if (v212)
            {
              goto LABEL_207;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            v184 = v212;
            if (v212)
            {
LABEL_207:
              Hasher._combine(_:)(1u);
              specialized Dictionary<>.hash(into:)(a1, v184);
              v185 = v221;
              if (v183)
              {
LABEL_208:
                Hasher._combine(_:)(1u);
                String.hash(into:)();
                goto LABEL_212;
              }

LABEL_211:
              Hasher._combine(_:)(0);
LABEL_212:
              v186 = v215;
              if (v215 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v186 & 1);
              }

              v187 = DWORD2(v212);
              if (v182 == 2)
              {
                Hasher._combine(_:)(0);
                if (v185 != 2)
                {
LABEL_217:
                  Hasher._combine(_:)(1u);
                  v188 = v185 & 1;
LABEL_220:
                  Hasher._combine(_:)(v188);
                  if (v187 == 2)
                  {
                    v189 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v189 = v187 & 1;
                  }

                  Hasher._combine(_:)(v189);
                  outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_224:
                  String.hash(into:)();
                  v190 = &v36[*(v37 + 40)];
                  if (v190[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v191 = *v190;
                    Hasher._combine(_:)(1u);
                    if ((v191 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v192 = v191;
                    }

                    else
                    {
                      v192 = 0;
                    }

                    MEMORY[0x1865CD090](v192);
                  }

                  v193 = *(v190 + 2);
                  v232 = *(v190 + 1);
                  v233 = v193;
                  *v234 = *(v190 + 3);
                  *&v234[9] = *(v190 + 57);
                  specialized Optional<A>.hash(into:)();
                  v194 = v190[73];
                  if (v194 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v194 & 1);
                  }

                  v195 = *(v190 + 74);
                  if (*(v190 + 74) == 2)
                  {
                    LOBYTE(v196) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v195 & 1);
                    MEMORY[0x1865CD060]((v195 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v195) & 1);
                    v196 = BYTE3(v195) & 1;
                  }

                  Hasher._combine(_:)(v196);
                  v197 = v190[78];
                  if (v197 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v197 & 1);
                  }

                  v198 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  v199 = v216;
                  outlined init with copy of FloatingPointRoundingRule?(&v190[v198[9]], v216);
                  if ((*(v42 + 48))(v199, 1, v41) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v200 = v218;
                    (*(v42 + 32))(v218, v199, v41);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v42 + 8))(v200, v41);
                  }

                  v201 = &v190[v198[10]];
                  v202 = v201[8];
                  if (v202 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v203 = *v201;
                    Hasher._combine(_:)(1u);
                    if (v202)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v203 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v204 = v203;
                      }

                      else
                      {
                        v204 = 0;
                      }

                      MEMORY[0x1865CD090](v204);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v203);
                    }
                  }

                  MEMORY[0x1865CD060](v190[v198[11]]);
                  v205 = v190[v198[12]];
                  if (v205 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v205);
                  }

                  return (*(v220 + 8))(v36, v37);
                }
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v182 & 1);
                if (v185 != 2)
                {
                  goto LABEL_217;
                }
              }

              v188 = 0;
              goto LABEL_220;
            }
          }

          Hasher._combine(_:)(0);
          v185 = v221;
          if (v183)
          {
            goto LABEL_208;
          }

          goto LABEL_211;
        }

LABEL_203:
        v180 = v219;
        Hasher._combine(_:)(0);
        v181 = *&v211[24];
        if (*&v211[16])
        {
          goto LABEL_200;
        }

        goto LABEL_204;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      DWORD2(v212) = v65;
      if (v63)
      {
        goto LABEL_44;
      }
    }

    Hasher._combine(_:)(0);
    v73 = *(&v210 + 1);
    if (v64)
    {
      goto LABEL_45;
    }

    goto LABEL_187;
  }

  v221 = v14;
  (*(v16 + 32))(v18, v22, v15);
  MEMORY[0x1865CD060](0);
  v32 = *(v18 + 1);
  v33 = swift_getObjectType();
  v34 = (*(v32 + 48))(v33, v32);
  v213 = v16;
  if (v34)
  {
    v35 = 1;
LABEL_14:
    Hasher._combine(_:)(v35);
    v45 = v222;
    v44 = v223;
    goto LABEL_155;
  }

  Hasher._combine(_:)(0);
  (*(v32 + 64))(v33, v32);
  String.hash(into:)();

  (*(v32 + 464))(&v224, v33, v32);
  v237 = v230;
  v238[0] = v231[0];
  *(v238 + 12) = *(v231 + 12);
  *v234 = v226;
  *&v234[16] = v227;
  v235 = v228;
  v236 = v229;
  v232 = v224;
  v233 = v225;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v232) == 1)
  {
    v35 = 0;
    goto LABEL_14;
  }

  v219 = v18;
  v220 = v15;
  v53 = v224;
  v54 = *(&v224 + 1);
  v55 = *(&v225 + 1);
  v206 = v225;
  v56 = *(&v226 + 1);
  v207 = v226;
  v209 = v227;
  v210 = v228;
  v57 = v230;
  *&v211[8] = v229;
  *(&v212 + 1) = *(&v230 + 1);
  v208 = *(&v231[0] + 1);
  v214 = *&v231[0];
  v215 = *&v231[1];
  v216 = BYTE8(v231[1]);
  v217 = BYTE9(v231[1]);
  v58 = BYTE10(v231[1]);
  v59 = BYTE11(v231[1]);
  Hasher._combine(_:)(1u);
  if (v53 == 2)
  {
    v60 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v60 = v53 & 1;
  }

  *&v212 = v57;
  Hasher._combine(_:)(v60);
  if (v54)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v54 + 16));
    v69 = *(v54 + 16);
    if (v69)
    {
      v70 = v54 + 40;
      do
      {

        String.hash(into:)();

        v70 += 16;
        --v69;
      }

      while (v69);
    }

    *v211 = v59;
    if (v55)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *v211 = v59;
    if (v55)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v45 = v222;
  v44 = v223;
  v119 = *(&v210 + 1);
  v120 = *(&v209 + 1);
  *&v211[24] = v58;
  if (v56)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = v219;
  v15 = v220;
  v121 = v209;
  if (v209)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v121, v122, v123, v124, v125, v126, v127);
    if (v120)
    {
      goto LABEL_122;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v120)
    {
LABEL_122:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v120, v128, v129, v130, v131, v132, v133);
      if (v210)
      {
        goto LABEL_123;
      }

      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
  if (v210)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v119)
    {
      goto LABEL_124;
    }

    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
  if (v119)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v211[8])
    {
      goto LABEL_125;
    }

LABEL_131:
    v134 = v215;
    Hasher._combine(_:)(0);
    if (*&v211[16])
    {
      goto LABEL_126;
    }

    goto LABEL_132;
  }

LABEL_130:
  Hasher._combine(_:)(0);
  if (!*&v211[8])
  {
    goto LABEL_131;
  }

LABEL_125:
  v134 = v215;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*&v211[16])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
LABEL_133:
  v135 = v134;
  if (v212)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v136 = *(&v212 + 1);
    if (*(&v212 + 1))
    {
      goto LABEL_135;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v136 = *(&v212 + 1);
    if (*(&v212 + 1))
    {
LABEL_135:
      v137 = *v211;
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v136);
      v138 = v214;
      if (v214)
      {
        goto LABEL_136;
      }

LABEL_140:
      Hasher._combine(_:)(0);
      if (v135)
      {
        goto LABEL_137;
      }

LABEL_141:
      Hasher._combine(_:)(0);
      goto LABEL_142;
    }
  }

  v137 = *v211;
  Hasher._combine(_:)(0);
  v138 = v214;
  if (!v214)
  {
    goto LABEL_140;
  }

LABEL_136:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v138);
  if (!v135)
  {
    goto LABEL_141;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_142:
  v139 = v216;
  if (v216 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v139 & 1);
  }

  v140 = v217;
  if (v217 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v140 & 1);
  }

  v141 = v211[24];
  if (*&v211[24] == 2)
  {
    v142 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v142 = v141 & 1;
  }

  Hasher._combine(_:)(v142);
  if (v137 == 2)
  {
    v143 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v143 = v137 & 1;
  }

  Hasher._combine(_:)(v143);
  outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_155:
  v144 = &v18[*(v15 + 36)];
  if (v144[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v145 = *v144;
    Hasher._combine(_:)(1u);
    if ((v145 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v146 = v145;
    }

    else
    {
      v146 = 0;
    }

    MEMORY[0x1865CD090](v146);
  }

  v147 = *(v144 + 2);
  v232 = *(v144 + 1);
  v233 = v147;
  *v234 = *(v144 + 3);
  *&v234[9] = *(v144 + 57);
  specialized Optional<A>.hash(into:)();
  v148 = v144[73];
  if (v148 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v148 & 1);
  }

  v149 = *(v144 + 37);
  v150 = v149 | (v144[76] << 16);
  if (v149 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v150 & 1);
    MEMORY[0x1865CD060]((v150 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v150) & 1);
  }

  v151 = v144[77];
  if (v151 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v151 & 1);
  }

  v152 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v153 = v221;
  outlined init with copy of FloatingPointRoundingRule?(&v144[v152[9]], v221);
  if ((*(v45 + 48))(v153, 1, v44) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v154 = v15;
    v155 = v218;
    (*(v45 + 32))(v218, v153, v44);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v156 = v155;
    v15 = v154;
    (*(v45 + 8))(v156, v44);
  }

  v157 = v213;
  v158 = &v144[v152[10]];
  v159 = v158[8];
  if (v159 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v160 = *v158;
    Hasher._combine(_:)(1u);
    if (v159)
    {
      MEMORY[0x1865CD060](1);
      if ((v160 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v161 = v160;
      }

      else
      {
        v161 = 0;
      }

      MEMORY[0x1865CD090](v161);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v160);
    }
  }

  v162 = v144[v152[11]];
  if (v162 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v162);
  }

  return (*(v157 + 8))(v18, v15);
}

Swift::Int IntegerFormatStyle.Attributed.hashValue.getter()
{
  Hasher.init(_seed:)();
  IntegerFormatStyle.Attributed.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t IntegerFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v18 - v4;
  type metadata accessor for IntegerFormatStyle.Attributed.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedDecodingContainer();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for IntegerFormatStyle.Attributed();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v18 = v10;
    v26 = v8;
    v12 = v21;
    v14 = v23;
    v13 = v24;
    swift_getWitnessTable();
    v15 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v15);
    v16 = v18;
    (*(v14 + 32))(v18, v25, v13);
    (*(v19 + 32))(v20, v16, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerFormatStyle<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t IntegerFormatStyle.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  return IntegerFormatStyle.consuming(_:startingAt:in:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  v31 = a1;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v29 = a7;
  swift_getWitnessTable();
  v8 = type metadata accessor for IntegerParseStrategy();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(a6 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v28 - v17);
  (*(*(a6 - 8) + 16))(v11, v30, a6, v16);
  v11[*(v8 + 44)] = 0;
  v19 = v36;
  IntegerParseStrategy.parse(_:startingAt:in:)(v31, v32, v33, v35, v8, v18);
  if (v19)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 8))(v11, v8);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v21 = swift_getTupleTypeMetadata2();
    return (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  }

  else
  {
    v22 = *v18;
    v23 = *(TupleTypeMetadata2 + 48);
    v24 = v12;
    v25 = swift_getTupleTypeMetadata2();
    v26 = *(v25 + 48);
    v27 = v29;
    *v29 = v22;
    (*(*(v24 - 8) + 32))(v27 + v26, v18 + v23, v24);
    return (*(*(v25 - 8) + 56))(v27, 0, 1, v25);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>.Percent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>.Currency(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t static RegexComponent<>.localizedInteger(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd) + 36);
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
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedIntegerPercentage(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd) + 36);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x3FF0000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedIntegerCurrency(code:locale:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd) + 40);
  v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v8 = v7[9];
  v9 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0x1FFFFFFFELL;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 72) = 512;
  *(v6 + 74) = 2;
  *(v6 + 78) = 2;
  v10 = v6 + v7[10];
  *v10 = 0;
  *(v10 + 8) = -1;
  *(v6 + v7[11]) = 1;
  *(v6 + v7[12]) = 3;

  return swift_unknownObjectRetain();
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t outlined init with take of CurrencyFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of ICUNumberFormatterBase.Value(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>.Currency(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>.Percent(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for IntegerFormatStyle.Attributed()
{
  result = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for IntegerFormatStyle.Attributed.Style()
{
  result = type metadata accessor for IntegerFormatStyle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IntegerFormatStyle.Percent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IntegerFormatStyle.Currency();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t IntegerParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle, a5);
}

{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle.Percent, a5);
}

{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle.Currency, a5);
}

id IntegerParseStrategy.parse(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a4;
  v158[6] = *MEMORY[0x1E69E9840];
  v8 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v142 = &v135 - v10;
  v140 = *(*(a3[4] + 24) + 16);
  v139 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v135 - v11;
  v144 = v7;
  v143 = v8;
  v148 = swift_getAssociatedTypeWitness();
  v136 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v135 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Optional();
  v137 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = (&v135 - v15);
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v135 - v23;
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v146 = a2;
  v145 = v22;
  if (v25)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v22, a2);
    v26 = String.init(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26;
  }

  v30 = 7;
  if (((v28 >> 60) & ((v26 & 0x800000000000000) == 0)) != 0)
  {
    v30 = 11;
  }

  v31 = v150;
  IntegerParseStrategy.parse(_:startingAt:in:)(v26, v28, 0xFuLL, v30 | (v29 << 16), a3, v16);
  if (v31)
  {
  }

  if ((*(v17 + 48))(v16, 1, TupleTypeMetadata2) != 1)
  {
    v43 = *(v17 + 32);
    v43(v24, v16, TupleTypeMetadata2);
    v43(v20, v24, TupleTypeMetadata2);
    return (*(v149 + 32))(v141, &v20[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
  }

  v150 = 0;
  (*(v137 + 8))(v16, v14);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v33 = v142;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v34 = v147;
  (*(v144 + 48))(v33, v143);
  (*(v149 + 8))(v33, AssociatedTypeWitness);
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v36 = @"NSDebugDescription";
  v37 = v36;
  if (!isTaggedPointer)
  {
    goto LABEL_19;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v36);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_31;
    case 0x16:
      result = [(__CFString *)v37 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_170;
      }

      v49 = String.init(utf8String:)(result);
      if (v50)
      {
LABEL_32:
        v40 = v49;
        v42 = v50;
LABEL_33:

        goto LABEL_50;
      }

      __break(1u);
LABEL_31:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v50)
      {
        [(__CFString *)v37 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v40 = v151;
        v42 = v152;
        goto LABEL_50;
      }

      goto LABEL_32;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v135 - 2) = v37;
      v39 = v150;
      v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v42 = v41;
      v150 = v39;

      goto LABEL_50;
  }

LABEL_19:
  LOBYTE(v151) = 0;
  v155 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v46 = v37;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v40 = v47;
      v42 = v48;

      goto LABEL_50;
    }

    v155 = [(__CFString *)v46 length];
    if (v155)
    {
      goto LABEL_48;
    }

LABEL_27:
    v40 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_50;
  }

  v45 = v155;
  if (!v155)
  {

    goto LABEL_27;
  }

  if (v154 == 1)
  {
    if (v151)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v51 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_49;
  }

  if (v153)
  {
    if (v151 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v135 - 4) = v37;
      *(&v135 - 3) = &v155;
      *(&v135 - 4) = 1536;
      *(&v135 - 1) = v45;
    }

    else
    {
      v53 = [(__CFString *)v37 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v53);
      *(&v135 - 4) = v37;
      *(&v135 - 3) = &v155;
      *(&v135 - 4) = 134217984;
      *(&v135 - 1) = v54;
    }

    v55 = v150;
    v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v42 = v57;
    v150 = v55;
    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      v40 = v56;
      goto LABEL_33;
    }
  }

LABEL_48:
  v51 = String.init(_cocoaString:)();
LABEL_49:
  v40 = v51;
  v42 = v52;
LABEL_50:
  v158[0] = v40;
  v158[1] = v42;
  v155 = 0;
  v156 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](v145, v146);
  MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
  _print_unlocked<A, B>(_:_:)();
  v158[5] = MEMORY[0x1E69E6158];
  v158[2] = v155;
  v158[3] = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v59 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v158, &v155);

  outlined destroy of (String, Any)(v158);
  v60 = v155;
  v61 = v156;
  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v155, v156);
  v64 = v63;

  if (v64)
  {
    __break(1u);
    goto LABEL_167;
  }

  v59[(v62 >> 6) + 8] |= 1 << v62;
  v65 = (v59[6] + 16 * v62);
  *v65 = v60;
  v65[1] = v61;
  outlined init with take of Any(&v157, (v59[7] + 32 * v62));
  v66 = v59[2];
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (v67)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v59[2] = v68;
  v69 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v70 = @"NSCocoaErrorDomain";
  v71 = v70;
  if (!v69)
  {
    goto LABEL_57;
  }

  v72 = _objc_getTaggedPointerTag(v70);
  switch(v72)
  {
    case 0:
LABEL_68:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v79)
      {
        [(__CFString *)v71 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_85;
      }

      goto LABEL_82;
    case 0x16:
      result = [(__CFString *)v71 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v78)
        {
          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_68;
      }

LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    case 2:
      MEMORY[0x1EEE9AC00](v72);
      *(&v135 - 2) = v71;
      v73 = v150;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v150 = v73;

      goto LABEL_85;
  }

LABEL_57:
  LOBYTE(v151) = 0;
  v155 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  v74 = __CFStringIsCF();
  if (!v74)
  {
    v76 = v71;
    String.init(_nativeStorage:)();
    if (v77 || (v155 = [(__CFString *)v76 length]) == 0)
    {

      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v75 = v155;
  if (!v155)
  {
LABEL_82:

    goto LABEL_85;
  }

  if (v154 != 1)
  {
    if (v153)
    {
      if (v151 == 1)
      {
        MEMORY[0x1EEE9AC00](v74);
        *(&v135 - 4) = v71;
        *(&v135 - 3) = &v155;
        *(&v135 - 4) = 1536;
        *(&v135 - 1) = v75;
      }

      else
      {
        v80 = [(__CFString *)v71 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v80);
        *(&v135 - 4) = v71;
        *(&v135 - 3) = &v155;
        *(&v135 - 4) = 134217984;
        *(&v135 - 1) = v81;
      }

      v82 = v150;
      v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v150 = v82;
      v85 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v85 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {
        goto LABEL_82;
      }
    }

LABEL_84:
    String.init(_cocoaString:)();
    goto LABEL_85;
  }

  if (v151)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_85:
  v86 = objc_allocWithZone(NSError);
  v87 = String._bridgeToObjectiveCImpl()();

  v88 = [v86 initWithDomain:v87 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v89 = [v88 domain];
  if (!v89)
  {
    v96 = 0;
    v98 = 0xE000000000000000;
LABEL_126:
    v114 = v71;
    v115 = v114;
    if (!v69)
    {
      goto LABEL_131;
    }

    v116 = _objc_getTaggedPointerTag(v114);
    if (!v116)
    {
      goto LABEL_143;
    }

    if (v116 != 22)
    {
      if (v116 == 2)
      {
        MEMORY[0x1EEE9AC00](v116);
        *(&v135 - 2) = v115;
        v117 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v119 = v118;

        goto LABEL_161;
      }

LABEL_131:
      LOBYTE(v151) = 0;
      v155 = 0;
      LOBYTE(v153) = 0;
      v154 = 0;
      v120 = __CFStringIsCF();
      if (v120)
      {
        v121 = v155;
        if (v155)
        {
          if (v154 == 1)
          {
            if (v151)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v127 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_160;
          }

          if (v153)
          {
            if (v151 == 1)
            {
              MEMORY[0x1EEE9AC00](v120);
              *(&v135 - 4) = v115;
              *(&v135 - 3) = &v155;
              *(&v135 - 4) = 1536;
              *(&v135 - 1) = v121;
            }

            else
            {
              v129 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v129);
              *(&v135 - 4) = v115;
              *(&v135 - 3) = &v155;
              *(&v135 - 4) = 134217984;
              *(&v135 - 1) = v130;
            }

            v131 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v119 = v132;
            v133 = HIBYTE(v132) & 0xF;
            if ((v132 & 0x2000000000000000) == 0)
            {
              v133 = v131 & 0xFFFFFFFFFFFFLL;
            }

            if (v133)
            {
              v117 = v131;

              goto LABEL_161;
            }
          }

LABEL_159:
          v127 = String.init(_cocoaString:)();
LABEL_160:
          v117 = v127;
          v119 = v128;
LABEL_161:
          if (v96 == v117 && v98 == v119)
          {

LABEL_165:
            swift_willThrow();
            return (*(v136 + 8))(v34, v148);
          }

          v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v134)
          {
            goto LABEL_165;
          }

LABEL_168:
          __break(1u);
        }
      }

      else
      {
        v122 = v115;
        v123 = String.init(_nativeStorage:)();
        if (v124)
        {
          v117 = v123;
          v119 = v124;

          goto LABEL_161;
        }

        v155 = [(__CFString *)v122 length];
        if (v155)
        {
          goto LABEL_159;
        }
      }

      v117 = 0;
      v119 = 0xE000000000000000;
      goto LABEL_161;
    }

    result = [(__CFString *)v115 UTF8String];
    if (result)
    {
      v125 = String.init(utf8String:)(result);
      if (v126)
      {
        goto LABEL_144;
      }

      __break(1u);
LABEL_143:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v125 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v126)
      {
        [(__CFString *)v115 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v117 = v151;
        v119 = v152;
        goto LABEL_161;
      }

LABEL_144:
      v117 = v125;
      v119 = v126;

      goto LABEL_161;
    }

    goto LABEL_171;
  }

  v90 = v89;
  v91 = _objc_isTaggedPointer(v89);
  v92 = v90;
  v93 = v92;
  if ((v91 & 1) == 0)
  {
    goto LABEL_91;
  }

  v94 = _objc_getTaggedPointerTag(v92);
  if (!v94)
  {
    goto LABEL_104;
  }

  if (v94 != 22)
  {
    if (v94 == 2)
    {
      MEMORY[0x1EEE9AC00](v94);
      *(&v135 - 2) = v93;
      v95 = v150;
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v97;
      v150 = v95;

LABEL_125:
      v34 = v147;
      goto LABEL_126;
    }

LABEL_91:
    LOBYTE(v151) = 0;
    v155 = 0;
    LOBYTE(v153) = 0;
    v154 = 0;
    v99 = __CFStringIsCF();
    if (v99)
    {
      v100 = v155;
      if (v155)
      {
        if (v154 == 1)
        {
          if (v151)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v109 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_123;
        }

        if (v153)
        {
          if (v151 == 1)
          {
            MEMORY[0x1EEE9AC00](v99);
            *(&v135 - 4) = v93;
            *(&v135 - 3) = &v155;
            *(&v135 - 4) = 1536;
            *(&v135 - 1) = v100;
          }

          else
          {
            v111 = [v93 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v111);
            *(&v135 - 4) = v93;
            *(&v135 - 3) = &v155;
            *(&v135 - 4) = 134217984;
            *(&v135 - 1) = v112;
          }

          v106 = v150;
          v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v98 = v108;
          v150 = v106;
          v113 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v113 = v107 & 0xFFFFFFFFFFFFLL;
          }

          if (v113)
          {
            v96 = v107;
            goto LABEL_106;
          }
        }

LABEL_122:
        v109 = String.init(_cocoaString:)();
LABEL_123:
        v96 = v109;
        v98 = v110;
        goto LABEL_124;
      }
    }

    else
    {
      v101 = v93;
      v102 = String.init(_nativeStorage:)();
      if (v103)
      {
        v96 = v102;
        v98 = v103;

        goto LABEL_125;
      }

      v155 = [v101 length];
      if (v155)
      {
        goto LABEL_122;
      }
    }

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_125;
  }

  result = [v93 UTF8String];
  if (result)
  {
    v104 = String.init(utf8String:)(result);
    if (v105)
    {
LABEL_105:
      v96 = v104;
      v98 = v105;
LABEL_106:

LABEL_124:
      goto LABEL_125;
    }

    __break(1u);
LABEL_104:
    v153 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v104 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v105)
    {
      [v93 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v96 = v151;
      v98 = v152;
      goto LABEL_124;
    }

    goto LABEL_105;
  }

LABEL_172:
  __break(1u);
  return result;
}

uint64_t IntegerParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = a5(0, a3, a4);
  (*(*(v9 - 8) + 32))(a6, a1, v9);
  swift_getWitnessTable();
  result = type metadata accessor for IntegerParseStrategy();
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t specialized ICULegacyNumberFormatter.parseAsInt<A>(_:upperBound:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v10 = String.UTF16View.distance(from:to:)();
  if (v10)
  {
    v11 = v10;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v10, 0);
    v13 = specialized Sequence._copySequenceContents(initializing:)(v16, (v12 + 4), v11, a1, a2, a3, a4);
    swift_bridgeObjectRetain_n();

    if (v13 != v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v16[0]) = 0;
  if (v12[2] >> 31)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v14 = unum_parseInt64();

  if (SLODWORD(v16[0]) > 0)
  {
    return 0;
  }

  *a5 = 0;
  return v14;
}

uint64_t IntegerParseStrategy.parse(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v427 = a4;
  v426 = a3;
  v414 = a2;
  v413 = a1;
  v423 = a6;
  v437[6] = *MEMORY[0x1E69E9840];
  v7 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v397 = type metadata accessor for Optional();
  v396 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v392 = &v387 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v406 = &v387 - v11;
  v415 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v391 = &v387 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v395 = &v387 - v15;
  v419 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v420 = *(v419 - 8);
  MEMORY[0x1EEE9AC00](v419);
  v405 = &v387 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v421 = &v387 - v18;
  v417 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v425 = &v387 - v21;
  v418 = a5;
  v22 = *(a5 + 32);
  v23 = type metadata accessor for IntegerFormatStyle.Currency();
  v394 = type metadata accessor for Optional();
  v393 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v403 = &v387 - v24;
  v404 = v23;
  v402 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v387 - v26;
  v28 = type metadata accessor for IntegerFormatStyle.Percent();
  v401 = type metadata accessor for Optional();
  v400 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401);
  v411 = &v387 - v29;
  v412 = v28;
  v410 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v399 = &v387 - v31;
  v407 = v22;
  v32 = type metadata accessor for IntegerFormatStyle();
  v409 = type metadata accessor for Optional();
  v408 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409);
  v34 = &v387 - v33;
  v422 = v7;
  v35 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v36);
  v398 = &v387 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v387 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v387 - v42;
  v44 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v387 - v46);
  v48 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v428 = (&v387 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v426 >> 14 >= v427 >> 14)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v60 = *(*(TupleTypeMetadata2 - 8) + 56);
    v61 = v423;
    return v60(v61, 1, 1, TupleTypeMetadata2);
  }

  v390 = v49;
  v387 = v27;
  v389 = AssociatedTypeWitness;
  v52 = v416;
  v388 = *(v35 + 16);
  v388(v43, v416, v422, v50);
  v53 = swift_dynamicCast();
  v54 = *(v44 + 56);
  v55 = v52;
  if (v53)
  {
    v54(v34, 0, 1, v32);
    (*(v44 + 32))(v47, v34, v32);
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v47 + *(v32 + 36), v428, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    v56 = v47[1];
    inited = *v47;
    v58 = v425;
  }

  else
  {
    v54(v34, 1, 1, v32);
    (*(v408 + 8))(v34, v409);
    v63 = v388;
    (v388)(v40, v52, v422);
    v64 = v411;
    v65 = v412;
    v66 = swift_dynamicCast();
    v67 = v410;
    v68 = *(v410 + 56);
    v58 = v425;
    if (!v66)
    {
      v68(v64, 1, 1, v65);
      (*(v400 + 8))(v64, v401);
      v71 = v55;
      v63(v398, v55, v422);
      v72 = v403;
      v73 = v404;
      v74 = swift_dynamicCast();
      v75 = v402;
      v76 = *(v402 + 56);
      v70 = v419;
      if (v74)
      {
        v76(v72, 0, 1, v73);
        v77 = v387;
        (*(v75 + 32))(v387, v72, v73);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
        v79 = (v428 + *(v78 + 48));
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v77 + *(v73 + 40), v428, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v80 = v77[3];
        *v79 = v77[2];
        v79[1] = v80;
        swift_storeEnumTagMultiPayload();
        inited = *v77;
        v56 = v77[1];
      }

      else
      {
        v76(v72, 1, 1, v73);
        (*(v393 + 8))(v72, v394);
        v81 = v428;
        *v428 = 0;
        *(v81 + 8) = 1;
        v81[2] = 0;
        v81[3] = 0;
        v81[4] = 0;
        v81[5] = 0x1FFFFFFFELL;
        v81[7] = 0;
        v81[8] = 0;
        v81[6] = 0;
        *(v81 + 18) = 131584;
        *(v81 + 38) = 512;
        v82 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v83 = v82[9];
        v84 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v84 - 8) + 56))(v81 + v83, 1, 1, v84);
        v85 = v81 + v82[10];
        *v85 = 0;
        v85[8] = -1;
        *(v81 + v82[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        inited = swift_initStaticObject();
        v56 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }

      v55 = v71;
      goto LABEL_13;
    }

    v68(v64, 0, 1, v65);
    v69 = v399;
    (*(v67 + 32))(v399, v64, v65);
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v69 + v65[9], v428, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    inited = *v69;
    v56 = v69[1];
  }

  v70 = v419;
LABEL_13:
  v86 = *(v55 + *(v418 + 44));
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v428, v58, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v88 = *(v56 + 64);
  swift_unknownObjectRetain();
  v89 = v88(ObjectType, v56);
  v90 = (v58 + *(v70 + 20));
  *v90 = v89;
  v90[1] = v91;
  *(v58 + *(v70 + 24)) = v86;
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_339;
  }

LABEL_14:
  v92 = static ICULegacyNumberFormatter.cache;
  v93 = qword_1EA7AFFA0;
  v94 = v421;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v58, v421, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v95 = (*(v420 + 80) + 16) & ~*(v420 + 80);
  v96 = swift_allocObject();
  v97 = _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v94, v96 + v95, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v97);
  *(&v387 - 2) = v58;
  os_unfair_lock_lock((v93 + 24));
  v98 = v424;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v93 + 16, &v434);
  if (v98)
  {
    goto LABEL_376;
  }

  os_unfair_lock_unlock((v93 + 24));
  v99 = v434;
  if (v434)
  {
    v424 = 0;
    goto LABEL_17;
  }

  v143 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
  os_unfair_lock_lock((v93 + 24));
  v144 = *(v93 + 16);
  v145 = *(v144 + 16);
  v146 = v425;
  v424 = 0;
  if (v92 < v145)
  {
    *(v93 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v158 = v405;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v146, v405, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v422 = v143;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v434 = *(v93 + 16);
  v160 = v434;
  *(v93 + 16) = 0x8000000000000000;
  v161 = specialized __RawDictionaryStorage.find<A>(_:)(v158);
  v163 = v160[2];
  v164 = (v162 & 1) == 0;
  v165 = __OFADD__(v163, v164);
  v166 = v163 + v164;
  if (!v165)
  {
    v167 = v160[3];
    v419 = v144;
    if (v167 >= v166)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_345;
      }

      v171 = v160;
      v99 = v422;
      if (v162)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v168 = v162;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v166, isUniquelyReferenced_nonNull_native);
      v169 = v434;
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v405);
      if ((v168 & 1) != (v170 & 1))
      {
        goto LABEL_377;
      }

      v99 = v422;
      v171 = v169;
      if (v168)
      {
        goto LABEL_55;
      }
    }

LABEL_361:
    v383 = v161;
    v172 = v405;
    v384 = inited;
    v385 = v421;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v405, v421, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v386 = v385;
    inited = v384;
    specialized _NativeDictionary._insert(at:key:value:)(v383, v386, v99, v171);
    goto LABEL_362;
  }

LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
  do
  {
    __break(1u);
LABEL_345:
    LODWORD(v410) = v162;
    v418 = inited;
    v411 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v416 = static _DictionaryStorage.copy(original:)();
    if (v160[2])
    {
      v369 = (v416 + 64);
      v370 = 1 << *(v416 + 32);
      v412 = (v160 + 8);
      v371 = (v370 + 63) >> 6;
      if (v416 != v160 || v369 >= &v412[8 * v371])
      {
        memmove(v369, v412, 8 * v371);
      }

      v372 = 0;
      *(v416 + 16) = v160[2];
      v373 = 1 << *(v160 + 32);
      v374 = -1;
      if (v373 < 64)
      {
        v374 = ~(-1 << v373);
      }

      v417 = v374 & v160[8];
      v409 = (v373 + 63) >> 6;
      while (v417)
      {
        v375 = __clz(__rbit64(v417));
        v417 &= v417 - 1;
LABEL_359:
        v378 = v375 | (v372 << 6);
        v379 = *(v420 + 72) * v378;
        v380 = v421;
        _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v160[6] + v379, v421, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v381 = *(v160[7] + 8 * v378);
        v382 = v416;
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v380, *(v416 + 48) + v379, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v382 + 56) + 8 * v378) = v381;
      }

      v376 = v372;
      while (1)
      {
        v372 = v376 + 1;
        if (__OFADD__(v376, 1))
        {
          break;
        }

        if (v372 >= v409)
        {
          goto LABEL_360;
        }

        v377 = *&v412[8 * v372];
        ++v376;
        if (v377)
        {
          v375 = __clz(__rbit64(v377));
          v417 = (v377 - 1) & v377;
          goto LABEL_359;
        }
      }

      __break(1u);
      goto LABEL_366;
    }

LABEL_360:

    v161 = v411;
    inited = v418;
    v99 = v422;
    v171 = v416;
    if ((v410 & 1) == 0)
    {
      goto LABEL_361;
    }

LABEL_55:
    *(v171[7] + 8 * v161) = v99;

    v172 = v405;
LABEL_362:
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v172, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v93 + 16) = v171;

    os_unfair_lock_unlock((v93 + 24));

LABEL_17:
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v425, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v100 = String.subscript.getter();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v433 = 0;
    v107 = specialized ICULegacyNumberFormatter.parseAsInt<A>(_:upperBound:)(v100, v101, v103, v105, &v433);
    if ((v108 & 1) == 0)
    {
      v422 = v99;
      v93 = v107;
      v434 = v107;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v111 = v406;
      v112 = v389;
      dispatch thunk of Numeric.init<A>(exactly:)();
      v113 = v415;
      if ((*(v415 + 48))(v111, 1, v112) != 1)
      {
        v135 = v112;
        v136 = *(v113 + 32);
        v415 = v113 + 32;
        v137 = v111;
        v138 = v395;
        v136(v395, v137, v135);
        v434 = v100;
        v435 = v102;
        *&v436 = v104;
        *(&v436 + 1) = v106;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v139 = String.Index.init<A>(utf16Offset:in:)();
        swift_unknownObjectRelease();

        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v428, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
        v140 = swift_getTupleTypeMetadata2();
        v141 = *(v140 + 48);
        v142 = v423;
        *v423 = v139;
        v136(v142 + v141, v138, v135);
        return (*(*(v140 - 8) + 56))(v142, 0, 1, v140);
      }

      (*(v396 + 8))(v111, v397);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
      v114 = swift_allocObject();
      isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
      v116 = @"NSDebugDescription";
      v117 = v116;
      if (!isTaggedPointer)
      {
        goto LABEL_38;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v116);
      switch(TaggedPointerTag)
      {
        case 0:
          goto LABEL_74;
        case 0x16:
          v184 = [(__CFString *)v117 UTF8String];
          if (v184)
          {
            v185 = String.init(utf8String:)(v184);
            if (!v186)
            {
              __break(1u);
LABEL_74:
              v431 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v185 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v186)
              {
                [(__CFString *)v117 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v120 = v429;
                v122 = v430;
                goto LABEL_125;
              }
            }

            v120 = v185;
            v122 = v186;
LABEL_76:

            goto LABEL_125;
          }

LABEL_366:
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
LABEL_376:
          os_unfair_lock_unlock((v93 + 24));
          __break(1u);
LABEL_377:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v387 - 2) = v117;
          v119 = v424;
          v120 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v122 = v121;
          v424 = v119;

          goto LABEL_125;
      }

LABEL_38:
      LOBYTE(v429) = 0;
      v434 = 0;
      LOBYTE(v431) = 0;
      v432 = 0;
      IsCF = __CFStringIsCF();
      if (!IsCF)
      {
        v179 = v117;
        v180 = String.init(_nativeStorage:)();
        if (v181)
        {
          v120 = v180;
          v122 = v181;

          goto LABEL_125;
        }

        v434 = [(__CFString *)v179 length];
        if (!v434)
        {

          goto LABEL_70;
        }

LABEL_123:
        v193 = String.init(_cocoaString:)();
        goto LABEL_124;
      }

      v148 = v434;
      if (!v434)
      {

LABEL_70:
        v120 = 0;
        v122 = 0xE000000000000000;
        goto LABEL_125;
      }

      if (v432 != 1)
      {
        if (v431)
        {
          if (v429 == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v387 - 4) = v117;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 1536;
            *(&v387 - 1) = v148;
          }

          else
          {
            v203 = [(__CFString *)v117 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v203);
            *(&v387 - 4) = v117;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 134217984;
            *(&v387 - 1) = v204;
          }

          v205 = v424;
          v206 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v122 = v207;
          v424 = v205;
          v208 = HIBYTE(v207) & 0xF;
          if ((v207 & 0x2000000000000000) == 0)
          {
            v208 = v206 & 0xFFFFFFFFFFFFLL;
          }

          if (v208)
          {
            v120 = v206;
            goto LABEL_76;
          }
        }

        goto LABEL_123;
      }

      if (v429)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v193 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_124:
      v120 = v193;
      v122 = v194;
LABEL_125:
      v114[4] = v120;
      v114[5] = v122;
      v434 = 0;
      v435 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      v429 = v93;
      v209 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v209);

      MEMORY[0x1865CB0E0](0xD00000000000004FLL, 0x800000018147EF40);
      v210 = v434;
      v211 = v435;
      v114[9] = MEMORY[0x1E69E6158];
      v114[6] = v210;
      v114[7] = v211;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v212 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)((v114 + 4), &v434);
      swift_setDeallocating();

      outlined destroy of (String, Any)((v114 + 4));
      swift_deallocClassInstance();
      v213 = v434;
      v214 = v435;
      v215 = specialized __RawDictionaryStorage.find<A>(_:)(v434, v435);
      v160 = v216;

      if (v160)
      {
        __break(1u);
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      v212[(v215 >> 6) + 8] |= 1 << v215;
      v217 = (v212[6] + 16 * v215);
      *v217 = v213;
      v217[1] = v214;
      v161 = outlined init with take of Any(&v436, (v212[7] + 32 * v215));
      v218 = v212[2];
      v165 = __OFADD__(v218, 1);
      v219 = v218 + 1;
      if (v165)
      {
        goto LABEL_341;
      }

      v212[2] = v219;
      v220 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v221 = @"NSCocoaErrorDomain";
      v222 = v221;
      v223 = v424;
      if (!v220)
      {
        goto LABEL_132;
      }

      v224 = _objc_getTaggedPointerTag(v221);
      switch(v224)
      {
        case 0:
          goto LABEL_143;
        case 0x16:
          v229 = [(__CFString *)v222 UTF8String];
          if (!v229)
          {
            goto LABEL_367;
          }

          String.init(utf8String:)(v229);
          if (!v230)
          {
            __break(1u);
LABEL_143:
            v431 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v231)
            {
              [(__CFString *)v222 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_160;
            }
          }

LABEL_157:

          goto LABEL_160;
        case 2:
          MEMORY[0x1EEE9AC00](v224);
          *(&v387 - 2) = v222;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v424 = v223;

          goto LABEL_160;
      }

LABEL_132:
      LOBYTE(v429) = 0;
      v434 = 0;
      LOBYTE(v431) = 0;
      v432 = 0;
      v225 = __CFStringIsCF();
      if (!v225)
      {
        v227 = v222;
        String.init(_nativeStorage:)();
        if (v228 || (v434 = [(__CFString *)v227 length]) == 0)
        {

          goto LABEL_160;
        }

        goto LABEL_159;
      }

      v226 = v434;
      if (!v434)
      {
        goto LABEL_157;
      }

      if (v432 != 1)
      {
        if (v431)
        {
          if (v429 == 1)
          {
            MEMORY[0x1EEE9AC00](v225);
            *(&v387 - 4) = v222;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 1536;
            *(&v387 - 1) = v226;
          }

          else
          {
            v232 = [(__CFString *)v222 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v232);
            *(&v387 - 4) = v222;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 134217984;
            *(&v387 - 1) = v233;
          }

          v234 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v424 = v223;
          v236 = HIBYTE(v235) & 0xF;
          if ((v235 & 0x2000000000000000) == 0)
          {
            v236 = v234 & 0xFFFFFFFFFFFFLL;
          }

          if (v236)
          {
            goto LABEL_157;
          }
        }

LABEL_159:
        String.init(_cocoaString:)();
        goto LABEL_160;
      }

      if (v429)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_160:
      v237 = objc_allocWithZone(NSError);
      v238 = String._bridgeToObjectiveCImpl()();

      v239 = [v237 initWithDomain:v238 code:2048 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v93 = v239;
      v240 = [v239 domain];
      if (!v240)
      {
        goto LABEL_174;
      }

      v241 = v240;
      v242 = _objc_isTaggedPointer(v240);
      v243 = v241;
      v244 = v243;
      if ((v242 & 1) == 0)
      {
        goto LABEL_166;
      }

      v245 = _objc_getTaggedPointerTag(v243);
      switch(v245)
      {
        case 0:
          goto LABEL_178;
        case 0x16:
          v255 = [v244 UTF8String];
          if (!v255)
          {
            goto LABEL_369;
          }

          v256 = String.init(utf8String:)(v255);
          if (!v257)
          {
            __break(1u);
LABEL_178:
            v431 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v256 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v257)
            {
              [v244 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v247 = v429;
              v249 = v430;
              goto LABEL_207;
            }
          }

          v247 = v256;
          v249 = v257;
LABEL_180:

          goto LABEL_207;
        case 2:
          MEMORY[0x1EEE9AC00](v245);
          *(&v387 - 2) = v244;
          v246 = v424;
          v247 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v249 = v248;
          v424 = v246;

          goto LABEL_208;
      }

LABEL_166:
      LOBYTE(v429) = 0;
      v434 = 0;
      LOBYTE(v431) = 0;
      v432 = 0;
      v250 = __CFStringIsCF();
      if (!v250)
      {
        v252 = v244;
        v253 = String.init(_nativeStorage:)();
        if (v254)
        {
          v247 = v253;
          v249 = v254;

          goto LABEL_208;
        }

        v434 = [v252 length];
        if (!v434)
        {

          goto LABEL_174;
        }

LABEL_205:
        v258 = String.init(_cocoaString:)();
        goto LABEL_206;
      }

      v251 = v434;
      if (!v434)
      {

LABEL_174:
        v247 = 0;
        v249 = 0xE000000000000000;
        goto LABEL_208;
      }

      if (v432 != 1)
      {
        if (v431)
        {
          if (v429 == 1)
          {
            MEMORY[0x1EEE9AC00](v250);
            *(&v387 - 4) = v244;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 1536;
            *(&v387 - 1) = v251;
          }

          else
          {
            v260 = [v244 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v260);
            *(&v387 - 4) = v244;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 134217984;
            *(&v387 - 1) = v261;
          }

          v262 = v424;
          v263 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v249 = v264;
          v424 = v262;
          v265 = HIBYTE(v264) & 0xF;
          if ((v264 & 0x2000000000000000) == 0)
          {
            v265 = v263 & 0xFFFFFFFFFFFFLL;
          }

          if (v265)
          {
            v247 = v263;
            goto LABEL_180;
          }
        }

        goto LABEL_205;
      }

      if (v429)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v258 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_206:
      v247 = v258;
      v249 = v259;
LABEL_207:

LABEL_208:
      v274 = v222;
      v275 = v274;
      if (!v220)
      {
        goto LABEL_213;
      }

      v276 = _objc_getTaggedPointerTag(v274);
      switch(v276)
      {
        case 0:
          goto LABEL_225;
        case 0x16:
          v284 = [(__CFString *)v275 UTF8String];
          if (!v284)
          {
            goto LABEL_368;
          }

          v285 = String.init(utf8String:)(v284);
          if (!v286)
          {
            __break(1u);
LABEL_225:
            v431 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v285 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v286)
            {
              [(__CFString *)v275 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v277 = v429;
              v126 = v430;
              goto LABEL_242;
            }
          }

          v277 = v285;
          v126 = v286;

          goto LABEL_242;
        case 2:
          MEMORY[0x1EEE9AC00](v276);
          *(&v387 - 2) = v275;
          v277 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v126 = v278;

          goto LABEL_242;
      }

LABEL_213:
      LOBYTE(v429) = 0;
      v434 = 0;
      LOBYTE(v431) = 0;
      v432 = 0;
      v279 = __CFStringIsCF();
      if (!v279)
      {
        v281 = v275;
        v282 = String.init(_nativeStorage:)();
        if (v283)
        {
          v277 = v282;
          v126 = v283;

          goto LABEL_242;
        }

        v434 = [(__CFString *)v281 length];
        if (!v434)
        {

          goto LABEL_221;
        }

LABEL_241:
        v277 = String.init(_cocoaString:)();
        v126 = v293;
        goto LABEL_242;
      }

      v280 = v434;
      if (!v434)
      {

LABEL_221:
        v277 = 0;
        v126 = 0xE000000000000000;
        goto LABEL_242;
      }

      if (v432 != 1)
      {
        if (v431)
        {
          if (v429 == 1)
          {
            MEMORY[0x1EEE9AC00](v279);
            *(&v387 - 4) = v275;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 1536;
            *(&v387 - 1) = v280;
          }

          else
          {
            v288 = [(__CFString *)v275 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v288);
            *(&v387 - 4) = v275;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 134217984;
            *(&v387 - 1) = v289;
          }

          v290 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v126 = v291;
          v292 = HIBYTE(v291) & 0xF;
          if ((v291 & 0x2000000000000000) == 0)
          {
            v292 = v290 & 0xFFFFFFFFFFFFLL;
          }

          if (v292)
          {
            v277 = v290;

            goto LABEL_242;
          }
        }

        goto LABEL_241;
      }

      if (v429)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v277 = String.init<A>(_immortalCocoaString:count:encoding:)();
      v126 = v287;
LABEL_242:
      if (v247 == v277 && v249 == v126)
      {
        goto LABEL_335;
      }

      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v129)
      {
        goto LABEL_336;
      }

      __break(1u);
LABEL_246:
      [v129 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v132 = v429;
      v134 = v430;
LABEL_297:
      v126[4] = v132;
      v126[5] = v134;
      v434 = 0;
      v435 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      Double.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD00000000000004FLL, 0x800000018147EF40);
      v333 = v434;
      v334 = v435;
      v126[9] = MEMORY[0x1E69E6158];
      v126[6] = v333;
      v126[7] = v334;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v335 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)((v126 + 4), &v434);
      swift_setDeallocating();

      outlined destroy of (String, Any)((v126 + 4));
      swift_deallocClassInstance();
      v336 = v434;
      v337 = v435;
      v338 = specialized __RawDictionaryStorage.find<A>(_:)(v434, v435);
      v340 = v339;

      if (v340)
      {
        __break(1u);
LABEL_364:
        __break(1u);
      }

      v335[(v338 >> 6) + 8] |= 1 << v338;
      v341 = (v335[6] + 16 * v338);
      *v341 = v336;
      v341[1] = v337;
      outlined init with take of Any(&v436, (v335[7] + 32 * v338));
      v342 = v335[2];
      v165 = __OFADD__(v342, 1);
      v343 = v342 + 1;
      if (v165)
      {
        goto LABEL_364;
      }

      v335[2] = v343;
      v344 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v345 = @"NSCocoaErrorDomain";
      v346 = v345;
      if (!v344)
      {
        goto LABEL_304;
      }

      v347 = _objc_getTaggedPointerTag(v345);
      switch(v347)
      {
        case 0:
          v431 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v58 = v93;
          if (v354)
          {
          }

          else
          {
            [(__CFString *)v346 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

          goto LABEL_333;
        case 0x16:
          v352 = [(__CFString *)v346 UTF8String];
          if (!v352)
          {
            goto LABEL_374;
          }

          String.init(utf8String:)(v352);
          if (v353)
          {
            v58 = v93;

            goto LABEL_333;
          }

          goto LABEL_375;
        case 2:
          MEMORY[0x1EEE9AC00](v347);
          *(&v387 - 2) = v346;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_332;
      }

LABEL_304:
      LOBYTE(v429) = 0;
      v434 = 0;
      LOBYTE(v431) = 0;
      v432 = 0;
      v348 = __CFStringIsCF();
      if (!v348)
      {
        v350 = v346;
        String.init(_nativeStorage:)();
        if (v351 || (v434 = [(__CFString *)v350 length]) == 0)
        {

LABEL_332:
          v58 = v93;
          goto LABEL_333;
        }

LABEL_331:
        String.init(_cocoaString:)();
        goto LABEL_332;
      }

      v349 = v434;
      if (!v434)
      {
        goto LABEL_329;
      }

      if (v432 != 1)
      {
        if (v431)
        {
          if (v429 == 1)
          {
            MEMORY[0x1EEE9AC00](v348);
            *(&v387 - 4) = v346;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 1536;
            *(&v387 - 1) = v349;
          }

          else
          {
            v355 = [(__CFString *)v346 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v355);
            *(&v387 - 4) = v346;
            *(&v387 - 3) = &v434;
            *(&v387 - 4) = 134217984;
            *(&v387 - 1) = v356;
          }

          v357 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v359 = HIBYTE(v358) & 0xF;
          if ((v358 & 0x2000000000000000) == 0)
          {
            v359 = v357 & 0xFFFFFFFFFFFFLL;
          }

          if (v359)
          {
LABEL_329:

            goto LABEL_332;
          }
        }

        goto LABEL_331;
      }

      v58 = v93;
      if (v429)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_333:
      v360 = objc_allocWithZone(NSError);
      v361 = String._bridgeToObjectiveCImpl()();

      v362 = [v360 initWithDomain:v361 code:2048 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v363 = [v362 domain];
      v364 = static String._unconditionallyBridgeFromObjectiveC(_:)(v363);
      v366 = v365;

      if (v364 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v366 == v367)
      {
LABEL_335:

        goto LABEL_336;
      }

      v368 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v368)
      {
        goto LABEL_336;
      }

      __break(1u);
LABEL_339:
      swift_once();
      goto LABEL_14;
    }

    v109 = specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v100, v102, v104, v106, &v433);
    v93 = v423;
    if (v110)
    {
      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v428, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      swift_unknownObjectRelease();

      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v60 = *(*(TupleTypeMetadata2 - 8) + 56);
      v61 = v93;
      return v60(v61, 1, 1, TupleTypeMetadata2);
    }

    if (fabs(*&v109) < 9.00719925e15)
    {
      v418 = inited;
      v434 = v109;
      lazy protocol witness table accessor for type Double and conformance Double();
      v123 = v392;
      v124 = v389;
      dispatch thunk of BinaryInteger.init<A>(exactly:)();
      v125 = v415;
      if ((*(v415 + 48))(v123, 1, v124) != 1)
      {
        v422 = v99;
        v175 = *(v125 + 32);
        v175(v391, v123, v124);
        v434 = v100;
        v435 = v102;
        *&v436 = v104;
        *(&v436 + 1) = v106;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v176 = String.Index.init<A>(utf16Offset:in:)();
        swift_unknownObjectRelease();

        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v428, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
        v177 = swift_getTupleTypeMetadata2();
        v178 = *(v177 + 48);
        *v93 = v176;
        v175((v93 + v178), v391, v124);
        return (*(*(v177 - 8) + 56))(v93, 0, 1, v177);
      }

      (*(v396 + 8))(v123, v397);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
      v126 = swift_allocObject();
      v127 = _objc_isTaggedPointer(@"NSDebugDescription");
      v128 = @"NSDebugDescription";
      v129 = v128;
      if (!v127)
      {
LABEL_64:
        LOBYTE(v429) = 0;
        v434 = 0;
        LOBYTE(v431) = 0;
        v432 = 0;
        v182 = __CFStringIsCF();
        if (v182)
        {
          v183 = v434;
          inited = v418;
          if (v434)
          {
            if (v432 != 1)
            {
              if (v431)
              {
                v93 = v99;
                if (v429 != 1)
                {
                  goto LABEL_289;
                }

                MEMORY[0x1EEE9AC00](v182);
                *(&v387 - 4) = v129;
                *(&v387 - 3) = &v434;
                *(&v387 - 4) = 1536;
                *(&v387 - 1) = v183;
                goto LABEL_290;
              }

              v93 = v99;
              goto LABEL_295;
            }

            v93 = v99;
            if (v429)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v266 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_296:
            v132 = v266;
            v134 = v267;
            goto LABEL_297;
          }

          v93 = v99;
        }

        else
        {
          v93 = v99;
          v195 = v129;
          v196 = String.init(_nativeStorage:)();
          inited = v418;
          if (v197)
          {
            v132 = v196;
            v134 = v197;

            goto LABEL_297;
          }

          v434 = [v195 length];
          if (v434)
          {
            goto LABEL_295;
          }
        }

        v132 = 0;
        v134 = 0xE000000000000000;
        goto LABEL_297;
      }

      v130 = _objc_getTaggedPointerTag(v128);
      if (v130)
      {
        if (v130 != 22)
        {
          if (v130 == 2)
          {
            v93 = v99;
            MEMORY[0x1EEE9AC00](v130);
            *(&v387 - 2) = v129;
            v131 = v424;
            v132 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v134 = v133;
            v424 = v131;

            inited = v418;
            goto LABEL_297;
          }

          goto LABEL_64;
        }

        v198 = [v129 UTF8String];
        if (!v198)
        {
          goto LABEL_373;
        }

        v93 = v99;
        v199 = String.init(utf8String:)(v198);
        inited = v418;
        if (!v200)
        {
          __break(1u);
          goto LABEL_107;
        }
      }

      else
      {
LABEL_107:
        v93 = v99;
        v431 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v199 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        inited = v418;
        if (!v200)
        {
          goto LABEL_246;
        }
      }

      v132 = v199;
      v134 = v200;
LABEL_109:

      goto LABEL_297;
    }

    v149 = _objc_isTaggedPointer(@"NSDebugDescription");
    v150 = @"NSDebugDescription";
    v151 = v150;
    v152 = v424;
    if (!v149)
    {
      goto LABEL_56;
    }

    v153 = _objc_getTaggedPointerTag(v150);
    if (v153)
    {
      if (v153 != 22)
      {
        if (v153 == 2)
        {
          v93 = v99;
          MEMORY[0x1EEE9AC00](v153);
          *(&v387 - 2) = v151;
          v154 = v152;
          v155 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v157 = v156;
          v424 = v154;

          goto LABEL_250;
        }

LABEL_56:
        LOBYTE(v429) = 0;
        v434 = 0;
        LOBYTE(v431) = 0;
        v432 = 0;
        v173 = __CFStringIsCF();
        if (v173)
        {
          v174 = v434;
          if (!v434)
          {
            v93 = v99;

LABEL_85:
            v155 = 0;
            v157 = 0xE000000000000000;
            goto LABEL_250;
          }

          if (v432 == 1)
          {
            v93 = v99;
            if (v429)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v201 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_249;
          }

          if (v431)
          {
            v93 = v99;
            if (v429 == 1)
            {
              MEMORY[0x1EEE9AC00](v173);
              *(&v387 - 4) = v151;
              *(&v387 - 3) = &v434;
              *(&v387 - 4) = 1536;
              *(&v387 - 1) = v174;
            }

            else
            {
              v268 = [(__CFString *)v151 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v268);
              *(&v387 - 4) = v151;
              *(&v387 - 3) = &v434;
              *(&v387 - 4) = 134217984;
              *(&v387 - 1) = v269;
            }

            v270 = v152;
            v271 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v157 = v272;
            v273 = HIBYTE(v272) & 0xF;
            if ((v272 & 0x2000000000000000) == 0)
            {
              v273 = v271 & 0xFFFFFFFFFFFFLL;
            }

            if (v273)
            {
              v155 = v271;
              v424 = v270;
              goto LABEL_91;
            }

            v424 = v152;
          }

          else
          {
            v93 = v99;
          }
        }

        else
        {
          v93 = v99;
          v187 = v151;
          v188 = String.init(_nativeStorage:)();
          if (v189)
          {
            v155 = v188;
            v157 = v189;

            goto LABEL_250;
          }

          v434 = [(__CFString *)v187 length];
          if (!v434)
          {

            goto LABEL_85;
          }
        }

        v201 = String.init(_cocoaString:)();
LABEL_249:
        v155 = v201;
        v157 = v202;
        goto LABEL_250;
      }

      v190 = [(__CFString *)v151 UTF8String];
      if (!v190)
      {
        goto LABEL_370;
      }

      v93 = v99;
      v191 = String.init(utf8String:)(v190);
      if (v192)
      {
LABEL_90:
        v155 = v191;
        v157 = v192;
LABEL_91:

        goto LABEL_250;
      }

      __break(1u);
    }

    v93 = v99;
    v431 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v191 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v192)
    {
      goto LABEL_90;
    }

    [(__CFString *)v151 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v155 = v429;
    v157 = v430;
LABEL_250:
    v437[0] = v155;
    v437[1] = v157;
    v434 = 0;
    v435 = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000043, 0x800000018147EEF0);
    v437[5] = MEMORY[0x1E69E6158];
    v437[2] = v434;
    v437[3] = v435;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v294 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (String, Any)(v437, &v434);

    outlined destroy of (String, Any)(v437);
    v295 = v434;
    v296 = v435;
    v297 = specialized __RawDictionaryStorage.find<A>(_:)(v434, v435);
    v160 = v298;

    if (v160)
    {
      goto LABEL_343;
    }

    v294[(v297 >> 6) + 8] |= 1 << v297;
    v299 = (v294[6] + 16 * v297);
    *v299 = v295;
    v299[1] = v296;
    v161 = outlined init with take of Any(&v436, (v294[7] + 32 * v297));
    v300 = v294[2];
    v165 = __OFADD__(v300, 1);
    v301 = v300 + 1;
  }

  while (v165);
  v294[2] = v301;
  v302 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v303 = @"NSCocoaErrorDomain";
  v304 = v303;
  if (!v302)
  {
    goto LABEL_257;
  }

  v305 = _objc_getTaggedPointerTag(v303);
  switch(v305)
  {
    case 0:
      v431 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v312)
      {
        [(__CFString *)v304 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_285;
      }

      goto LABEL_282;
    case 0x16:
      v310 = [(__CFString *)v304 UTF8String];
      if (!v310)
      {
        goto LABEL_371;
      }

      String.init(utf8String:)(v310);
      if (!v311)
      {
        goto LABEL_372;
      }

      goto LABEL_282;
    case 2:
      MEMORY[0x1EEE9AC00](v305);
      *(&v387 - 2) = v304;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_285;
  }

LABEL_257:
  LOBYTE(v429) = 0;
  v434 = 0;
  LOBYTE(v431) = 0;
  v432 = 0;
  v306 = __CFStringIsCF();
  if (!v306)
  {
    v308 = v304;
    String.init(_nativeStorage:)();
    if (v309 || (v434 = [(__CFString *)v308 length]) == 0)
    {

      goto LABEL_285;
    }

    goto LABEL_284;
  }

  v307 = v434;
  if (!v434)
  {
LABEL_282:

    goto LABEL_285;
  }

  if (v432 != 1)
  {
    if (v431)
    {
      if (v429 == 1)
      {
        MEMORY[0x1EEE9AC00](v306);
        *(&v387 - 4) = v304;
        *(&v387 - 3) = &v434;
        *(&v387 - 4) = 1536;
        *(&v387 - 1) = v307;
      }

      else
      {
        v313 = [(__CFString *)v304 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v313);
        *(&v387 - 4) = v304;
        *(&v387 - 3) = &v434;
        *(&v387 - 4) = 134217984;
        *(&v387 - 1) = v314;
      }

      v315 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v317 = HIBYTE(v316) & 0xF;
      if ((v316 & 0x2000000000000000) == 0)
      {
        v317 = v315 & 0xFFFFFFFFFFFFLL;
      }

      if (v317)
      {
        goto LABEL_282;
      }
    }

LABEL_284:
    String.init(_cocoaString:)();
    goto LABEL_285;
  }

  if (v429)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_285:
  v318 = objc_allocWithZone(NSError);
  v319 = String._bridgeToObjectiveCImpl()();

  v320 = [v318 initWithDomain:v319 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v93 = v320;
  v321 = [v320 domain];
  v322 = static String._unconditionallyBridgeFromObjectiveC(_:)(v321);
  v324 = v323;

  v325 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  v126 = v326;
  if (v322 == v325 && v324 == v326)
  {
    goto LABEL_335;
  }

  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v129 & 1) == 0)
  {
    __break(1u);
LABEL_289:
    v327 = [v129 lengthOfBytesUsingEncoding_];
    MEMORY[0x1EEE9AC00](v327);
    *(&v387 - 4) = v129;
    *(&v387 - 3) = &v434;
    *(&v387 - 4) = 134217984;
    *(&v387 - 1) = v328;
LABEL_290:
    v329 = v424;
    v330 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v134 = v331;
    v424 = v329;
    v332 = HIBYTE(v331) & 0xF;
    if ((v331 & 0x2000000000000000) == 0)
    {
      v332 = v330 & 0xFFFFFFFFFFFFLL;
    }

    if (v332)
    {
      v132 = v330;
      goto LABEL_109;
    }

LABEL_295:
    v266 = String.init(_cocoaString:)();
    goto LABEL_296;
  }

LABEL_336:
  swift_willThrow();
  swift_unknownObjectRelease();

  return _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v428, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
}

uint64_t static IntegerParseStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v4 = type metadata accessor for IntegerParseStrategy();
    v5 = *(a1 + *(v4 + 44)) ^ *(a2 + *(v4 + 44)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerParseStrategy.encode(to:)(void *a1, uint64_t a2)
{
  v9[2] = *(a2 + 16);
  v9[0] = *(a2 + 24);
  type metadata accessor for IntegerParseStrategy.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  v7 = v9[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v7)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int IntegerParseStrategy.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 44)));
  return Hasher._finalize()();
}

uint64_t IntegerParseStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerParseStrategy.CodingKeys();
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v24 - v8;
  v31 = a2;
  v32 = a3;
  v10 = type metadata accessor for IntegerParseStrategy();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v26 = v12;
  v35 = a1;
  v14 = v29;
  v15 = v30;
  v37 = 0;
  v16 = v33;
  v17 = v31;
  v18 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v26;
  (*(v15 + 32))(v26, v16, v17);
  v36 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v14 + 8))(v9, v18);
  v21 = v25;
  v19[*(v25 + 44)] = v20 & 1;
  v22 = v27;
  (*(v27 + 16))(v28, v19, v21);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v22 + 8))(v19, v21);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerParseStrategy<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  IntegerParseStrategy.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for IntegerParseStrategy<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t AttributeScopes.FoundationAttributes.MeasurementAttribute.Component.init(unumberFormatField:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xB)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = byte_181227DD8[result];
  }

  return result;
}

uint64_t CurrencyFormatStyleConfiguration.Collection.skeleton.getter()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  if (*(v0 + *(v12 + 44)) > 1u)
  {
    if (*(v0 + *(v12 + 44)) == 2)
    {
      v14 = "sign-accounting-always";
      v13 = 0xD000000000000013;
    }

    else
    {
      v14 = "Invalid Precision";
      v13 = 0xD000000000000014;
    }
  }

  else if (*(v0 + *(v12 + 44)))
  {
    v14 = "unit-width-iso-code";
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0xD000000000000011;
    v14 = "unit-width-short";
  }

  *&v102 = v13;
  *(&v102 + 1) = v14 | 0x8000000000000000;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  v109 = v102;
  if ((*(v0 + 8) & 1) == 0)
  {
    v15 = *v0;
    *&v101 = 0x2F656C616373;
    *(&v101 + 1) = 0xE600000000000000;
    specialized NSDecimal.init(_:)(v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    *&v102 = v16;
    *(&v102 + 1) = v18;
    LODWORD(v103) = v20;
    if (_So9NSDecimala__length_getter(&v102) || (*&v102 = v17, *(&v102 + 1) = v19, LODWORD(v103) = v21, !_So9NSDecimala__isNegative_getter(&v102)))
    {
      *&v102 = v17;
      *(&v102 + 1) = v19;
      LODWORD(v103) = v21;
      if (_So9NSDecimala__length_getter(&v102))
      {
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        *&v102 = v17;
        *(&v102 + 1) = v19;
        LODWORD(v103) = v21;
        v98 = v102;
        v99 = v21;
        if (_So9NSDecimala__exponent_getter(&v98) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v98 = v102;
            v99 = v103;
            v22 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v22 - 1), &v102);
            v98 = v102;
            v99 = v103;
          }

          while (_So9NSDecimala__exponent_getter(&v98) > 0);
        }

        v92 = v11;
        v93 = v12;
        v94 = v7;
        v98 = v102;
        v99 = v103;
        if (!_So9NSDecimala__exponent_getter(&v98))
        {
          _So9NSDecimala__exponent_setter(1, &v102);
        }

        v98 = v102;
        v99 = v103;
        if (_So9NSDecimala__length_getter(&v98))
        {
          v11 = 3435973837;
          v12 = 10;
          v81 = v6;
          while (1)
          {
            v98 = v102;
            v99 = v103;
            if (!_So9NSDecimala__exponent_getter(&v98))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v98 = v102;
            v99 = v103;
            v23 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v23 + 1), &v102);
            v91 = v102;
            v90 = WORD2(v102);
            v83 = WORD3(v102);
            v89 = WORD4(v102);
            v88 = WORD5(v102);
            v87 = WORD6(v102);
            v85 = HIWORD(v102);
            v86 = v103;
            v84 = WORD1(v103);
            NSDecimal.asVariableLengthInteger()(v102 | (WORD2(v102) << 32) | (WORD3(v102) << 48), WORD4(v102) | (WORD5(v102) << 16) | (WORD6(v102) << 32) | (HIWORD(v102) << 48), v103 | (WORD1(v103) << 16));
            v25 = v24;
            v26 = *(v24 + 16);
            v27 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v26);
            v28 = v27;
            *&v98 = v27;
            if (v26)
            {
              break;
            }

            v31 = 48;
LABEL_29:
            while (1)
            {
              v32 = *(v28 + 16);
              if (!v32 || *(v28 + 2 * v32 + 30))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v98 + 16) - 1);
              }

              v28 = v98;
            }

            LODWORD(v98) = v91;
            WORD2(v98) = v90;
            WORD3(v98) = v83;
            WORD4(v98) = v89;
            WORD5(v98) = v88;
            WORD6(v98) = v87;
            HIWORD(v98) = v85;
            LOWORD(v99) = v86;
            HIWORD(v99) = v84;
            NSDecimal.copyVariableLengthInteger(_:)(v28);
            if (v33)
            {
              goto LABEL_123;
            }

            v34 = *(v28 + 16);

            if (HIDWORD(v34))
            {
              __break(1u);
LABEL_123:

              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            _So9NSDecimala__length_setter(v34, &v98);
            v102 = v98;
            LODWORD(v103) = v99;
            *&v96 = v31;
            v35 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v35);

            v96 = v102;
            v97 = v103;
            v2 = 0xD000000000000010;
            if (!_So9NSDecimala__length_getter(&v96))
            {
              goto LABEL_36;
            }
          }

          v82 = 0;
          v29 = 0;
          v2 = v26 + 15;
          while (1)
          {
            v6 = v2 - 15;
            if ((v2 - 15) > *(v25 + 16))
            {
              break;
            }

            v7 = *(v25 + 2 * v2);
            LODWORD(v27) = swift_isUniquelyReferenced_nonNull_native();
            if ((v27 & 1) == 0)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
              v28 = v27;
            }

            if (v6 > *(v28 + 16))
            {
              goto LABEL_114;
            }

            v30 = v7 | (v29 << 16);
            *(v28 + 2 * v2) = v30 / 0xA;
            v29 = v30 % 0xA;
            if (--v2 == 15)
            {

              *&v98 = v28;
              v31 = v29 | 0x30;
              v6 = v81;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

LABEL_36:
        v98 = v102;
        v99 = v103;
        v36 = _So9NSDecimala__exponent_getter(&v98);
        v7 = v94;
        v12 = v93;
        v11 = v92;
        if (v36 <= 0)
        {
          while (1)
          {
            v98 = v102;
            v99 = v103;
            if (!_So9NSDecimala__exponent_getter(&v98))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v98 = v102;
            v99 = v103;
            v37 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v37 + 1), &v102);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v98 = v102;
        v99 = v103;
        if (_So9NSDecimala__isNegative_getter(&v98))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v98 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v38 = String.init<A>(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE100000000000000;
        v38 = 48;
      }
    }

    else
    {
      v40 = 0xE300000000000000;
      v38 = 5136718;
    }

    MEMORY[0x1865CB0E0](v38, v40);

    v102 = v101;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v42 = *(v1 + 40);
  v41 = *(v1 + 48);
  v44 = *(v1 + 56);
  v43 = *(v1 + 64);
  v45 = *(v1 + 72);
  v46 = v1 + *(v12 + 40);
  v47 = *(v46 + 8);
  if (v42 >> 1 == 0xFFFFFFFF && v44 <= 1 && v45 < 2)
  {
    if (v47 == 255)
    {
      goto LABEL_57;
    }

    *&v102 = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(*v46, v47 & 1);
    *(&v102 + 1) = v48;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    object = *(&v102 + 1);
    countAndFlagsBits = v102;
  }

  else if (v47 == 255)
  {
    v102 = *(v1 + 16);
    v103 = *(v1 + 32);
    v104 = v42;
    v105 = v41;
    v106 = v44;
    v107 = v43;
    v108 = v45;
    *&v98 = NumberFormatStyleConfiguration.Precision.skeleton.getter();
    *(&v98 + 1) = v54;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    object = *(&v98 + 1);
    countAndFlagsBits = v98;
  }

  else
  {
    v51 = *v46;
    v102 = *(v1 + 16);
    v103 = *(v1 + 32);
    v104 = v42;
    v105 = v41;
    v106 = v44;
    v107 = v43;
    v108 = v45;
    v52._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(v51, v47 & 1);
    v53 = NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(v52);
    object = v53._object;

    countAndFlagsBits = v53._countAndFlagsBits;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x1865CB0E0](countAndFlagsBits, object);

LABEL_57:
  v55 = *(v1 + 73);
  if (v55 != 2)
  {
    if (v55)
    {
      v56 = 0x666F2D70756F7267;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = 0xE900000000000066;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    MEMORY[0x1865CB0E0](v56, v57);
  }

  v29 = 0xEA00000000006369;
  v58 = *(v1 + 74);
  if (v58 != 2)
  {
    v59 = 0x76656E2D6E676973;
    if ((v58 & 0x100) == 0)
    {
      v59 = 0x7475612D6E676973;
    }

    v60 = 0xE90000000000006FLL;
    if ((v58 & 0x100) != 0)
    {
      v60 = 0xEA00000000007265;
    }

    v61 = 0xEB00000000737961;
    v62 = 0x776C612D6E676973;
    if ((v58 & 0x10000) != 0)
    {
      v62 = 0xD000000000000010;
      v61 = 0x800000018147F0D0;
    }

    if ((v58 & 1) == 0)
    {
      v59 = v62;
      v60 = v61;
    }

    v63 = 0xEF676E69746E756FLL;
    v64 = 0x6363612D6E676973;
    v65 = 0x800000018147F0F0;
    v66 = 0xD00000000000001BLL;
    if ((v58 & 0x10000) == 0)
    {
      v66 = 0xD000000000000016;
      v65 = 0x800000018147F110;
    }

    if ((v58 & 1) == 0)
    {
      v64 = v66;
      v63 = v65;
    }

    v67 = (v58 & 0x1000000) == 0;
    if ((v58 & 0x1000000) != 0)
    {
      v68 = v64;
    }

    else
    {
      v68 = v59;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v63;
    }

    *&v102 = v68;
    *(&v102 + 1) = v69;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v70 = *(v1 + 78);
  if (v70 != 2)
  {
    if (v70)
    {
      v71 = 0xEE00737961776C61;
    }

    else
    {
      v71 = 0xEC0000006F747561;
    }

    *&v102 = 0x2D6C616D69636564;
    *(&v102 + 1) = v71;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  outlined init with copy of FloatingPointRoundingRule?(v1 + *(v12 + 36), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TermOfAddress?(v5, &_ss25FloatingPointRoundingRuleOSgMd);
    goto LABEL_98;
  }

  (*(v7 + 32))(v11, v5, v6);
  v72 = v95;
  (*(v7 + 16))(v95, v11, v6);
  LODWORD(v27) = (*(v7 + 88))(v72, v6);
  if (v27 != *MEMORY[0x1E69E7038])
  {
    if (v27 == *MEMORY[0x1E69E7030])
    {
      v73 = v11;
      v75 = 0x800000018147F070;
      v2 = 0xD000000000000017;
      goto LABEL_97;
    }

    if (v27 == *MEMORY[0x1E69E7040])
    {
      v73 = v11;
      v74 = "rounding-mode-ceiling";
      goto LABEL_94;
    }

LABEL_115:
    if (v27 == *MEMORY[0x1E69E7048])
    {
      v73 = v11;
      v75 = 0x800000018147F030;
      v2 += 3;
    }

    else
    {
      v73 = v11;
      if (v27 == *MEMORY[0x1E69E7020])
      {
        v75 = 0x800000018147F010;
        v2 += 2;
      }

      else if (v27 == *MEMORY[0x1E69E7028])
      {
        v75 = 0x800000018147F0B0;
      }

      else
      {
        (*(v7 + 8))(v95, v6);
        v2 = 0;
        v75 = 0xE000000000000000;
      }
    }

    goto LABEL_97;
  }

  v73 = v11;
  v74 = "rounding-mode-half-up";
LABEL_94:
  v75 = (v74 - 32) | 0x8000000000000000;
  v2 = 0xD000000000000015;
LABEL_97:
  *&v102 = v2;
  *(&v102 + 1) = v75;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  MEMORY[0x1865CB0E0](v102, *(&v102 + 1));

  (*(v7 + 8))(v73, v6);
LABEL_98:
  if (*(v1 + *(v12 + 48)) <= 1u)
  {
    if (*(v1 + *(v12 + 48)))
    {
      v76 = 0x6669746E65696373;
    }

    else
    {
      v76 = 0;
      v29 = 0xE000000000000000;
    }

    goto LABEL_104;
  }

  if (*(v1 + *(v12 + 48)) == 2)
  {
    v29 = 0xED000074726F6873;
    v76 = 0x2D746361706D6F63;
LABEL_104:
    *&v102 = v76;
    *(&v102 + 1) = v29;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v77 = HIBYTE(*(&v109 + 1)) & 0xFLL;
  if ((*(&v109 + 1) & 0x2000000000000000) == 0)
  {
    v77 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v109, *(&v109 + 1));
    v78 = String.init(_:)();
  }

  else
  {

    return 0;
  }

  return v78;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FormatStyleCapitalizationContext.Option@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FormatStyleCapitalizationContext.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FormatStyleCapitalizationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FormatStyleCapitalizationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStyleCapitalizationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option()
{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

uint64_t FormatStyleCapitalizationContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NumberFormatStyleConfiguration.Collection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v17 = *(v3 + 16);
    v18 = v9;
    *v19 = *(v3 + 48);
    *&v19[9] = *(v3 + 57);
    v16 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 73);
    v16 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 74);
    BYTE2(v17) = *(v3 + 76);
    LOWORD(v17) = v10;
    v16 = 3;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 77);
    v16 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    LOBYTE(v17) = 5;
    type metadata accessor for FloatingPointRoundingRule();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + *(v11 + 40));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *&v17 = v13;
    BYTE8(v17) = v12;
    v16 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + *(v11 + 44));
    v16 = 7;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NumberFormatStyleConfiguration.Collection.hash(into:)()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *v0;
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1865CD090](v9);
  }

  v10 = *(v0 + 2);
  v21[0] = *(v0 + 1);
  v21[1] = v10;
  v22[0] = *(v0 + 3);
  *(v22 + 9) = *(v0 + 57);
  specialized Optional<A>.hash(into:)();
  v11 = *(v0 + 73);
  if (v11 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v11 & 1);
  }

  v12 = *(v0 + 37);
  v13 = v12 | (*(v0 + 76) << 16);
  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v13 & 1);
    MEMORY[0x1865CD060]((v13 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v13) & 1);
  }

  v14 = *(v0 + 77);
  if (v14 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v14 & 1);
  }

  v15 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v0 + v15[9], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  v16 = (v0 + v15[10]);
  v17 = *(v16 + 8);
  if (v17 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v16;
    Hasher._combine(_:)(1u);
    if (v17)
    {
      MEMORY[0x1865CD060](1);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x1865CD090](v19);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v18);
    }
  }

  v20 = *(v0 + v15[11]);
  if (v20 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v20);
  }
}

uint64_t NumberFormatStyleConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v30 - v5;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0x1FFFFFFFELL;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 18) = 131584;
  *(v10 + 38) = 512;
  v11 = v8[11];
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(*(v12 - 8) + 56);
  v33 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[12]];
  *v14 = 0;
  v14[8] = -1;
  v15 = v8[13];
  v10[v15] = 3;
  v16 = a1;
  v17 = a1[3];
  v39 = v16;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();
  v36 = v6;
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v38 = v14;
    v31 = v15;
    v19 = v34;
    v20 = v35;
    LOBYTE(v42) = 0;
    v21 = v36;
    v22 = v37;
    *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[8] = v23 & 1;
    v46 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v43;
    *(v10 + 1) = v42;
    *(v10 + 2) = v24;
    *(v10 + 3) = v44[0];
    *(v10 + 57) = *(v44 + 9);
    v45 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10[73] = v40;
    v45 = 3;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v40;
    v10[76] = BYTE2(v40);
    *(v10 + 37) = v26;
    v45 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10[77] = v40;
    LOBYTE(v40) = 5;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of FloatingPointRoundingRule?(v20, &v10[v33]);
    v45 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v41;
    v28 = v38;
    *v38 = v40;
    v28[8] = v27;
    v45 = 7;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v21, v22);
    v29 = v32;
    v10[v31] = v40;
    outlined init with copy of NumberFormatStyleConfiguration.Collection(v10, v29, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_1(v10, type metadata accessor for NumberFormatStyleConfiguration.Collection);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x6E6F697461746F6ELL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x676E69646E756F72;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 2)
  {
    v5 = 0x70756F7267;
  }

  if (*v0)
  {
    v2 = 0x6F69736963657270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.Collection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NumberFormatStyleConfiguration.Collection.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Grouping.description.getter()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Grouping.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Grouping.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Grouping.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option()
{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

uint64_t NumberFormatStyleConfiguration.Grouping.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Grouping()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(1, 999, a1);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = result;
  }

  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.significantDigits(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerAndFractionLength(integer:fraction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0x80;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerLength<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 999, a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5 & 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = -127;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerLength(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = -127;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.fractionLength(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = result;
  *(a2 + 56) = 0x80;
  return result;
}

BOOL static NumberFormatStyleConfiguration.Precision.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(v5, v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Precision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Precision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Precision.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[1];
  v10[0] = *v2;
  v10[1] = v8;
  v11[0] = v2[2];
  *(v11 + 9) = *(v2 + 41);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option and conformance NumberFormatStyleConfiguration.Precision.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void NumberFormatStyleConfiguration.Precision.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);
  if (v4 < 0)
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 40);
    v14 = v0[4];
    v15 = v0[6];
    v11 = *(v0 + 23);
    v12 = *(v0 + 21);
    v13 = *(v0 + 17);
    MEMORY[0x1865CD060](1);
    if (v2)
    {
      Hasher._combine(_:)(0);
      if ((v9 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v1);
      if ((v9 & 1) == 0)
      {
LABEL_6:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060]((v13 << 8) | ((v12 | (v11 << 16)) << 40) | v3);
        if ((v10 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    Hasher._combine(_:)(0);
    if ((v10 & 1) == 0)
    {
LABEL_7:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v14);
      if (v4)
      {
        goto LABEL_13;
      }

LABEL_8:
      Hasher._combine(_:)(1u);
      v8 = v15;
      goto LABEL_9;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v5 = *(v0 + 15);
  v6 = *(v0 + 13);
  v7 = *(v0 + 9);
  MEMORY[0x1865CD060](0);
  MEMORY[0x1865CD060](v1);
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v8 = v2 | ((v7 | ((v6 | (v5 << 16)) << 32)) << 8);
LABEL_9:
    MEMORY[0x1865CD060](v8);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
}

Swift::Int NumberFormatStyleConfiguration.Precision.hashValue.getter()
{
  Hasher.init(_seed:)();
  NumberFormatStyleConfiguration.Precision.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.Precision.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option and conformance NumberFormatStyleConfiguration.Precision.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 41) = *(v12 + 9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.Precision.Option(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.Precision.Option(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.description.getter()
{
  if (*v0)
  {
    return 0x737961776C61;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy()
{
  if (*v0)
  {
    return 0x737961776C61;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  return result;
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.description.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return 0x726576656ELL;
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else if (v0[2])
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 1869768058;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v8;
  v19 = 0;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v18 = v14;
  v17 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = v10;
  v15 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  return MEMORY[0x1865CD060](v2);
}

Swift::Int NumberFormatStyleConfiguration.SignDisplayStrategy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v19;
    v16 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v17;
    v14 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  if (*v0)
  {
    if (v0[1])
    {
      return 0x726576656ELL;
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else if (v0[2])
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t NumberFormatStyleConfiguration.Notation.description.getter()
{
  v1 = 0x6669746E65696373;
  if (*v0 != 1)
  {
    v1 = 0x20746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Notation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Notation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Notation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.Option and conformance NumberFormatStyleConfiguration.Notation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NumberFormatStyleConfiguration.Notation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.Option and conformance NumberFormatStyleConfiguration.Notation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Notation()
{
  v1 = 0x6669746E65696373;
  if (*v0 != 1)
  {
    v1 = 0x20746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

Swift::Int NumberFormatStyleConfiguration.RoundingIncrement.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1865CD060](1);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    MEMORY[0x1865CD060](a1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NumberFormatStyleConfiguration.RoundingIncrement()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1865CD090](v2);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    return MEMORY[0x1865CD060](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.RoundingIncrement()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1865CD090](v3);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    MEMORY[0x1865CD060](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement()
{
  if (*(v0 + 8) != 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return Double.description.getter();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NumberFormatStyleConfiguration.RoundingIncrement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a1 == *a2;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    return v3;
  }

  else
  {
    return (*a1 == *a2) & ~v2;
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656C616373;
    v5 = 0x70756F7267;
    if (a1 != 2)
    {
      v5 = 0xD000000000000013;
    }

    if (a1)
    {
      v4 = 0x6F69736963657270;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x61746E6573657270;
    if (a1 != 7)
    {
      v1 = 0x6E6F697461746F6ELL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000018;
    if (a1 != 4)
    {
      v2 = 0x676E69646E756F72;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v16 = *(v3 + 16);
    v17 = v9;
    *v18 = *(v3 + 48);
    *&v18[9] = *(v3 + 57);
    v15 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + 73);
    v15 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v16) = *(v3 + 74);
    v15 = 3;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + 78);
    v15 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    LOBYTE(v16) = 5;
    type metadata accessor for FloatingPointRoundingRule();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = (v3 + v10[10]);
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    *&v16 = v12;
    BYTE8(v16) = v11;
    v15 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v10[11]);
    v15 = 7;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation and conformance CurrencyFormatStyleConfiguration.Presentation();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v10[12]);
    v15 = 8;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void CurrencyFormatStyleConfiguration.Collection.hash(into:)()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *v0;
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1865CD090](v9);
  }

  v10 = *(v0 + 2);
  v21[0] = *(v0 + 1);
  v21[1] = v10;
  v22[0] = *(v0 + 3);
  *(v22 + 9) = *(v0 + 57);
  specialized Optional<A>.hash(into:)();
  v11 = *(v0 + 73);
  if (v11 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v11 & 1);
  }

  v12 = *(v0 + 74);
  if (*(v0 + 74) == 2)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v12 & 1);
    MEMORY[0x1865CD060]((v12 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v12) & 1);
    v13 = BYTE3(v12) & 1;
  }

  Hasher._combine(_:)(v13);
  v14 = *(v0 + 78);
  if (v14 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v14 & 1);
  }

  v15 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v0 + v15[9], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  v16 = (v0 + v15[10]);
  v17 = *(v16 + 8);
  if (v17 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v16;
    Hasher._combine(_:)(1u);
    if (v17)
    {
      MEMORY[0x1865CD060](1);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x1865CD090](v19);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v18);
    }
  }

  MEMORY[0x1865CD060](*(v0 + v15[11]));
  v20 = *(v0 + v15[12]);
  if (v20 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v20);
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0x1FFFFFFFELL;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 36) = 512;
  *(v9 + 74) = 2;
  v9[78] = 2;
  v11 = *(v10 + 36);
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(*(v12 - 8) + 56);
  v34 = v11;
  v13(&v9[v11], 1, 1, v12);
  v14 = v7[12];
  v9[v14] = 3;
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();
  v32 = v6;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    return outlined destroy of TermOfAddress?(&v9[v22], &_ss25FloatingPointRoundingRuleOSgMd);
  }

  else
  {
    v33 = v12;
    v17 = v29;
    v18 = v30;
    LOBYTE(v38) = 0;
    v19 = v31;
    *v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[8] = v20 & 1;
    v42 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v39;
    *(v9 + 1) = v38;
    *(v9 + 2) = v21;
    *(v9 + 3) = v40[0];
    *(v9 + 57) = *(v40 + 9);
    v41 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9[73] = v36;
    v41 = 3;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v34;
    *(v9 + 74) = v36;
    v41 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9[78] = v36;
    LOBYTE(v36) = 5;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of FloatingPointRoundingRule?(v18, &v9[v23]);
    v41 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = &v9[v7[10]];
    v25 = v37;
    *v24 = v36;
    v24[8] = v25;
    v41 = 7;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation and conformance CurrencyFormatStyleConfiguration.Presentation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[v7[11]] = v36;
    v41 = 8;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    v26 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v26, v19);
    v9[v14] = v36;
    outlined init with copy of NumberFormatStyleConfiguration.Collection(v9, v28, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_1(v9, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CurrencyFormatStyleConfiguration.Collection.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.automatic.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 0x1000100010001;
  *a1 = 65537;
  return result;
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.never.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 65793;
  *a1 = 65793;
  return result;
}

uint64_t static CurrencyFormatStyleConfiguration.SignDisplayStrategy.always(showZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  *(a2 + 3) = 0;
  return result;
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.accounting.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842753;
  *a1 = 16842753;
  return result;
}

uint64_t static CurrencyFormatStyleConfiguration.SignDisplayStrategy.accountingAlways(showZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  *(a2 + 3) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys()
{
  v1 = 0x6576697469736F70;
  v2 = 1869768058;
  if (*v0 != 2)
  {
    v2 = 0x69746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x657669746167656ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyFormatStyleConfiguration.SignDisplayStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  v12[1] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v8;
  v20 = 0;
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v19 = v14;
  v18 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17 = v10;
  v16 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void CurrencyFormatStyleConfiguration.SignDisplayStrategy.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int CurrencyFormatStyleConfiguration.SignDisplayStrategy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t CurrencyFormatStyleConfiguration.SignDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v21;
    v18 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v9;
    LOBYTE(v9) = v19;
    v16 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v9;
    LOBYTE(v9) = v17;
    v15 = 3;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v14;
    a2[1] = v10;
    a2[2] = v9;
    a2[3] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for Hashable.hash(into:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyFormatStyleConfiguration.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.Option and conformance CurrencyFormatStyleConfiguration.Presentation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CurrencyFormatStyleConfiguration.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.Option and conformance CurrencyFormatStyleConfiguration.Presentation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DescriptiveNumberFormatConfiguration.Presentation.Option@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DescriptiveNumberFormatConfiguration.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.Option and conformance DescriptiveNumberFormatConfiguration.Presentation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int DescriptiveNumberFormatConfiguration.Presentation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  return Hasher._finalize()();
}

uint64_t DescriptiveNumberFormatConfiguration.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.Option and conformance DescriptiveNumberFormatConfiguration.Presentation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DescriptiveNumberFormatConfiguration.Presentation.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  return Hasher._finalize()();
}

uint64_t DescriptiveNumberFormatConfiguration.Collection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v14 = 0;
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation and conformance DescriptiveNumberFormatConfiguration.Presentation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DescriptiveNumberFormatConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation and conformance DescriptiveNumberFormatConfiguration.Presentation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v16;
    v13 = 1;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x61746E6573657270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147CDF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DescriptiveNumberFormatConfiguration.Collection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  if (v2 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DescriptiveNumberFormatConfiguration.Collection()
{
  v1 = v0[1];
  MEMORY[0x1865CD060](*v0 + 1);
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DescriptiveNumberFormatConfiguration.Collection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  if (v2 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2);
  }

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FloatingPointRoundingRule.CodingValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FloatingPointRoundingRule.CodingValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t FloatingPointRoundingRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    lazy protocol witness table accessor for type FloatingPointRoundingRule.CodingValue and conformance FloatingPointRoundingRule.CodingValue();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v6 + 104))(v8, **(&unk_1E69F0CD0 + v12), v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v6 + 32))(a2, v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FloatingPointRoundingRule.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69E7038])
  {
    v10 = 0;
  }

  else
  {
    if (v9 != *MEMORY[0x1E69E7030])
    {
      if (v9 == *MEMORY[0x1E69E7040])
      {
        v10 = 2;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7048])
      {
        v10 = 3;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7020])
      {
        v10 = 4;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7028])
      {
        v10 = 5;
        goto LABEL_13;
      }

      (*(v5 + 8))(v8, v4);
    }

    v10 = 1;
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v12[7] = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  lazy protocol witness table accessor for type FloatingPointRoundingRule.CodingValue and conformance FloatingPointRoundingRule.CodingValue();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys()
{
  if (*v0)
  {
    return 0x676E6974616F6C66;
  }

  else
  {
    return 0x72656765746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E6974616F6C66 && a2 == 0xED0000746E696F50)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.RoundingIncrement.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO17RoundingIncrementO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a3)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v11 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for Decodable.init(from:) in conformance NumberFormatStyleConfiguration.RoundingIncrement@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized NumberFormatStyleConfiguration.RoundingIncrement.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (v2 == 3)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NumberFormatStyleConfiguration.Precision.Option.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Precision.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV6OptionO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  v10 = *(v3 + 8);
  v31 = *(v3 + 16);
  v11 = *(v3 + 56);
  if (v11 < 0)
  {
    v15 = *(v3 + 23);
    v24 = *(v3 + 21);
    v25 = v15;
    v26 = *(v3 + 17);
    v27 = *(v3 + 24);
    v23 = v3[4];
    v16 = *(v3 + 40);
    v17 = v3[6];
    v29 = v9;
    v30 = v10 & 1;
    v32 = 2;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
    v28 = v18;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v22 = v16;
    v21 = v17;
    LOBYTE(v29) = v31;
    HIBYTE(v29) = (v26 | ((v24 | (v25 << 16)) << 32)) >> 48;
    *(&v29 + 5) = (v26 | ((v24 | (v25 << 16)) << 32)) >> 32;
    *(&v29 + 1) = v26;
    v30 = v27 & 1;
    v32 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v23;
    v30 = v22 & 1;
    v32 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v21;
    v30 = v11 & 1;
    v32 = 5;
    goto LABEL_4;
  }

  v12 = *(v3 + 15);
  v13 = *(v3 + 13);
  v14 = *(v3 + 9);
  LOBYTE(v29) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v29) = v10;
    *(&v29 + 1) = v14;
    HIBYTE(v29) = (v14 | ((v13 | (v12 << 16)) << 32)) >> 48;
    *(&v29 + 5) = (v14 | ((v13 | (v12 << 16)) << 32)) >> 32;
    v30 = v31 & 1;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
LABEL_4:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double protocol witness for Decodable.init(from:) in conformance NumberFormatStyleConfiguration.Precision.Option@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized NumberFormatStyleConfiguration.Precision.Option.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(int64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (a1 >= 1)
    {
      _StringGuts.grow(_:)(22);

      v79 = 0xD000000000000014;
      v80 = 0x800000018147F1B0;
      v27 = specialized NSDecimal.init(_:)(a1);
      v29 = v28;
      v31 = v30;
      *&v77 = v27;
      *(&v77 + 1) = v28;
      v78 = v30;
      if (!_So9NSDecimala__length_getter(&v77))
      {
        *&v77 = v27;
        *(&v77 + 1) = v29;
        v78 = v31;
        if (_So9NSDecimala__isNegative_getter(&v77))
        {
          goto LABEL_67;
        }
      }

      *&v77 = v27;
      *(&v77 + 1) = v29;
      v78 = v31;
      if (_So9NSDecimala__length_getter(&v77))
      {
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        *&v77 = v27;
        *(&v77 + 1) = v29;
        v78 = v31;
        v74 = v77;
        v75 = v31;
        if (_So9NSDecimala__exponent_getter(&v74) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v74 = v77;
            v75 = v78;
            v32 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v32 - 1), &v77);
            v74 = v77;
            v75 = v78;
          }

          while (_So9NSDecimala__exponent_getter(&v74) > 0);
        }

        v74 = v77;
        v75 = v78;
        if (!_So9NSDecimala__exponent_getter(&v74))
        {
          _So9NSDecimala__exponent_setter(1, &v77);
        }

        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__length_getter(&v74))
        {
          while (1)
          {
            v74 = v77;
            v75 = v78;
            if (!_So9NSDecimala__exponent_getter(&v74))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v74 = v77;
            v75 = v78;
            v33 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v33 + 1), &v77);
            v34 = v77;
            v35 = WORD2(v77);
            v36 = WORD4(v77);
            v37 = WORD5(v77);
            v64 = WORD3(v77);
            v71 = WORD6(v77);
            v68 = HIWORD(v77);
            v70 = v78;
            v66 = HIWORD(v78);
            NSDecimal.asVariableLengthInteger()(v77 | (WORD2(v77) << 32) | (WORD3(v77) << 48), WORD4(v77) | (WORD5(v77) << 16) | (WORD6(v77) << 32) | (HIWORD(v77) << 48), v78 | (HIWORD(v78) << 16));
            v39 = v38;
            v40 = *(v38 + 16);
            v41._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v40);
            *&v74 = v41;
            if (v40)
            {
              break;
            }

            v47 = 48;
LABEL_50:
            while (1)
            {
              v48 = *(v41._rawValue + 2);
              if (!v48 || *(v41._rawValue + v48 + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v74 + 16) - 1);
              }

              v41._rawValue = v74;
            }

            LODWORD(v74) = v34;
            WORD2(v74) = v35;
            WORD3(v74) = v64;
            WORD4(v74) = v36;
            WORD5(v74) = v37;
            WORD6(v74) = v71;
            HIWORD(v74) = v68;
            LOWORD(v75) = v70;
            HIWORD(v75) = v66;
            NSDecimal.copyVariableLengthInteger(_:)(v41);
            if (v49)
            {
              goto LABEL_83;
            }

            v50 = *(v41._rawValue + 2);

            if (HIDWORD(v50))
            {
              goto LABEL_81;
            }

            _So9NSDecimala__length_setter(v50, &v74);
            v77 = v74;
            v78 = v75;
            *&v72 = v47;
            v51 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v51);

            v72 = v77;
            v73 = v78;
            if (!_So9NSDecimala__length_getter(&v72))
            {
              goto LABEL_57;
            }
          }

          v59 = v37;
          v62 = v35;
          v42 = v34;
          v43 = 0;
          v44 = v40 + 15;
          while ((v44 - 15) <= *(v39 + 16))
          {
            v45 = *(v39 + 2 * v44);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v41._rawValue);
            }

            if ((v44 - 15) > *(v41._rawValue + 2))
            {
              goto LABEL_78;
            }

            v46 = v45 | (v43 << 16);
            *(v41._rawValue + v44) = v46 / 0xA;
            v43 = v46 % 0xA;
            if (--v44 == 15)
            {

              *&v74 = v41;
              v47 = v43 | 0x30;
              v34 = v42;
              v35 = v62;
              v37 = v59;
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_57:
        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__exponent_getter(&v74) <= 0)
        {
          while (1)
          {
            v74 = v77;
            v75 = v78;
            if (!_So9NSDecimala__exponent_getter(&v74))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v74 = v77;
            v75 = v78;
            v53 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v53 + 1), &v77);
          }

          goto LABEL_72;
        }

LABEL_73:
        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__isNegative_getter(&v74))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v74 = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v55 = String.init<A>(_:)();
        v54 = v57;
        goto LABEL_76;
      }

LABEL_63:
      v54 = 0xE100000000000000;
      v55 = 48;
LABEL_76:
      MEMORY[0x1865CB0E0](v55, v54);

      return v79;
    }

    return 0;
  }

  if (*&a1 <= 0.0)
  {
    return 0;
  }

  _StringGuts.grow(_:)(22);

  v79 = 0xD000000000000014;
  v80 = 0x800000018147F1B0;
  specialized NSDecimal.init(_:)(*&a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *&v77 = v3;
  *(&v77 + 1) = v5;
  v78 = v7;
  if (!_So9NSDecimala__length_getter(&v77))
  {
    *&v77 = v4;
    *(&v77 + 1) = v6;
    v78 = v8;
    if (_So9NSDecimala__isNegative_getter(&v77))
    {
LABEL_67:
      v55 = 5136718;
      v54 = 0xE300000000000000;
      goto LABEL_76;
    }
  }

  *&v77 = v4;
  *(&v77 + 1) = v6;
  v78 = v8;
  if (!_So9NSDecimala__length_getter(&v77))
  {
    goto LABEL_63;
  }

  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  *&v77 = v4;
  *(&v77 + 1) = v6;
  v78 = v8;
  v74 = v77;
  v75 = v8;
  if (_So9NSDecimala__exponent_getter(&v74) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v74 = v77;
      v75 = v78;
      v9 = _So9NSDecimala__exponent_getter(&v74);
      _So9NSDecimala__exponent_setter((v9 - 1), &v77);
      v74 = v77;
      v75 = v78;
    }

    while (_So9NSDecimala__exponent_getter(&v74) > 0);
  }

  v74 = v77;
  v75 = v78;
  if (!_So9NSDecimala__exponent_getter(&v74))
  {
    _So9NSDecimala__exponent_setter(1, &v77);
  }

  v74 = v77;
  v75 = v78;
  if (!_So9NSDecimala__length_getter(&v74))
  {
LABEL_68:
    v74 = v77;
    v75 = v78;
    if (_So9NSDecimala__exponent_getter(&v74) <= 0)
    {
      while (1)
      {
        v74 = v77;
        v75 = v78;
        if (!_So9NSDecimala__exponent_getter(&v74))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v74 = v77;
        v75 = v78;
        v56 = _So9NSDecimala__exponent_getter(&v74);
        _So9NSDecimala__exponent_setter((v56 + 1), &v77);
      }

LABEL_72:
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      goto LABEL_73;
    }

    goto LABEL_73;
  }

  while (1)
  {
    v74 = v77;
    v75 = v78;
    if (!_So9NSDecimala__exponent_getter(&v74))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v74 = v77;
    v75 = v78;
    v10 = _So9NSDecimala__exponent_getter(&v74);
    _So9NSDecimala__exponent_setter((v10 + 1), &v77);
    v11 = WORD3(v77);
    v67 = WORD2(v77);
    v69 = v77;
    v63 = WORD5(v77);
    v65 = WORD4(v77);
    v61 = WORD6(v77);
    v12 = HIWORD(v78);
    v58 = HIWORD(v77);
    v60 = v78;
    NSDecimal.asVariableLengthInteger()(v77 | (WORD2(v77) << 32) | (WORD3(v77) << 48), WORD4(v77) | (WORD5(v77) << 16) | (WORD6(v77) << 32) | (HIWORD(v77) << 48), v78 | (HIWORD(v78) << 16));
    v14 = v13;
    v15 = *(v13 + 16);
    v16._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v15);
    *&v74 = v16;
    if (v15)
    {
      break;
    }

    v21 = 48;
LABEL_20:
    for (i = *(v16._rawValue + 2); i; i = *(v74 + 16))
    {
      if (*(v16._rawValue + i + 15))
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v74 + 16) - 1);
      }

      v16._rawValue = v74;
    }

    LODWORD(v74) = v69;
    WORD2(v74) = v67;
    WORD3(v74) = v11;
    WORD4(v74) = v65;
    WORD5(v74) = v63;
    WORD6(v74) = v61;
    HIWORD(v74) = v58;
    LOWORD(v75) = v60;
    HIWORD(v75) = v12;
    NSDecimal.copyVariableLengthInteger(_:)(v16);
    if (v23)
    {
      goto LABEL_83;
    }

    v24 = *(v16._rawValue + 2);

    if (HIDWORD(v24))
    {
      goto LABEL_82;
    }

    _So9NSDecimala__length_setter(v24, &v74);
    v77 = v74;
    v78 = v75;
    *&v72 = v21;
    v25 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v25);

    v72 = v77;
    v73 = v78;
    if (!_So9NSDecimala__length_getter(&v72))
    {
      goto LABEL_68;
    }
  }

  v17 = 0;
  v18 = v15 + 15;
  while ((v18 - 15) <= *(v14 + 16))
  {
    v19 = *(v14 + 2 * v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v16._rawValue);
    }

    if ((v18 - 15) > *(v16._rawValue + 2))
    {
      goto LABEL_80;
    }

    v20 = v19 | (v17 << 16);
    *(v16._rawValue + v18) = v20 / 0xA;
    v17 = v20 % 0xA;
    if (--v18 == 15)
    {

      *&v74 = v16;
      v21 = v17 | 0x30;
      goto LABEL_20;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::String __swiftcall NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(Swift::String stem)
{
  object = stem._object;
  countAndFlagsBits = stem._countAndFlagsBits;
  v39 = *v1;
  v4 = *(v1 + 9) | ((*(v1 + 13) | (*(v1 + 15) << 16)) << 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v40 = *(v1 + 8);
  v41 = v6;
  v7 = *(v1 + 25) | ((*(v1 + 29) | (*(v1 + 31) << 16)) << 32);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 41) | ((*(v1 + 45) | (*(v1 + 47) << 16)) << 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  if (String.count.getter() < 1)
  {
    v44 = v39;
    LOBYTE(v45) = v40;
    *(&v45 + 1) = v4;
    HIBYTE(v45) = BYTE6(v4);
    *(&v45 + 5) = WORD2(v4);
    v46 = v5;
    v47 = v41;
    v48 = v7;
    v50 = BYTE6(v7);
    v49 = WORD2(v7);
    v51 = v8;
    v52 = v9;
    v53 = v10;
    v55 = BYTE6(v10);
    v54 = WORD2(v10);
    v56 = v11;
    v57 = v12;
    v13 = NumberFormatStyleConfiguration.Precision.skeleton.getter();
  }

  else
  {
    v34 = v4;
    v35 = v7;
    v36 = v10;
    v37 = v11;
    v38 = v9;
    v42 = countAndFlagsBits;
    v43 = object;
    if ((v12 & 0x80000000) == 0)
    {

LABEL_19:
      v13 = v42;
      v14 = v43;
      goto LABEL_22;
    }

    v15 = v38;
    if (v38)
    {

      v16 = v5;
      goto LABEL_14;
    }

    v17 = v12;
    v33 = v5;
    v44 = 46;
    v45 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](object);
    v32[2] = &v44;
    v19 = v18;

    specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v32, countAndFlagsBits, v19);
    if (v20)
    {
      v21._countAndFlagsBits = 48;
      v21._object = 0xE100000000000000;
      v22 = String.init(repeating:count:)(v21, v8)._countAndFlagsBits;
      v44 = 46;
      v45 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v22);

      v23 = v44;
      v24 = v45;
LABEL_12:
      MEMORY[0x1865CB0E0](v23, v24);
      goto LABEL_13;
    }

    v25 = String.index(after:)();
    specialized Collection.suffix(from:)(v25, countAndFlagsBits, v19);

    if (Substring.distance(from:to:)() >= v8)
    {
LABEL_13:

      v16 = v33;
      LOBYTE(v12) = v17;
      v15 = v38;
LABEL_14:
      if (v40)
      {
        if (v41)
        {
          goto LABEL_19;
        }

        v29 = 0;
      }

      else
      {
        v29 = v39;
      }

      v44 = v39;
      LOBYTE(v45) = v40;
      *(&v45 + 1) = v34;
      HIBYTE(v45) = BYTE6(v34);
      *(&v45 + 5) = WORD2(v34);
      v46 = v16;
      v47 = v41;
      v48 = v35;
      v50 = BYTE6(v35);
      v49 = WORD2(v35);
      v51 = v8;
      v52 = v15;
      v53 = v36;
      v55 = BYTE6(v36);
      v54 = WORD2(v36);
      v56 = v37;
      v57 = v12;
      v30 = NumberFormatStyleConfiguration.Precision.integerStem(min:max:)(v29, v16, v41 & 1);
      v44 = 32;
      v45 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v30);

      MEMORY[0x1865CB0E0](v44, v45);

      goto LABEL_19;
    }

    v26 = Substring.distance(from:to:)();

    if (!__OFSUB__(v8, v26))
    {
      v27._countAndFlagsBits = 48;
      v27._object = 0xE100000000000000;
      v28 = String.init(repeating:count:)(v27, v8 - v26);
      v24 = v28._object;
      v23 = v28._countAndFlagsBits;
      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_22:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

BOOL specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if ((v5 & 0x80000000) == 0)
  {
    if ((*(a2 + 56) & 0x80000000) == 0 && v2 == *a2)
    {
      if (v4)
      {
        return (*(a2 + 16) & 1) != 0;
      }

      if ((*(a2 + 16) & 1) == 0 && ((*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40) | v3) == *(a2 + 8))
      {
        return 1;
      }
    }

    return 0;
  }

  v7 = *(a2 + 56);
  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = a1[6];
  v12 = *(a1 + 23);
  v13 = *(a1 + 21);
  v14 = *(a1 + 17);
  if (v3)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 8) & 1) != 0 || v2 != *a2)
    {
      return result;
    }
  }

  if (v8)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || ((v14 << 8) | ((v13 | (v12 << 16)) << 40) | v4) != *(a2 + 16))
    {
      return result;
    }
  }

  if (v10)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v7 & 1) != 0 || v11 != *(a2 + 48))
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 40) & 1) == 0 && v9 == *(a2 + 32))
  {
    goto LABEL_27;
  }

  return result;
}