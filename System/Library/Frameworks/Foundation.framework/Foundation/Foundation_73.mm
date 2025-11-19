uint64_t NSDecimal.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v8 = a4;
  return (*(a6 + 48))(v7, a5, a6);
}

uint64_t NSDecimal.FormatStyle.Percent.consuming(_:startingAt:in:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v109 = a3;
  v103 = a1;
  v104 = a2;
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  outlined init with copy of NSDecimal.FormatStyle(v108, &v90 - v22, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v24 = v23;
  v25 = v109;
  *(v24 + *(v21 + 44)) = 0;
  v108 = a5;
  if (v25 >> 14 >= a5 >> 14)
  {
    goto LABEL_11;
  }

  v99 = v24;
  outlined init with copy of NSDecimal.FormatStyle(v24, v16, type metadata accessor for NSDecimal.FormatStyle.Percent);
  outlined init with take of NSDecimal.FormatStyle.Percent(v16 + *(v14 + 20), v19, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v27 = *v16;
  v26 = v16[1];
  v101 = v19;
  outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v29 = *(v26 + 64);
  swift_unknownObjectRetain();
  v100 = v27;
  v30 = v29(ObjectType, v26);
  v31 = v105;
  v32 = &v13[*(v105 + 20)];
  *v32 = v30;
  v32[1] = v33;
  v13[*(v31 + 24)] = 0;
  v34 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v35 = static ICULegacyNumberFormatter.cache;
  v36 = qword_1EA7AFFA0;
  v37 = v13;
  v38 = v107;
  outlined init with copy of NSDecimal.FormatStyle(v37, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v39 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v40 = swift_allocObject();
  v41 = outlined init with take of NSDecimal.FormatStyle.Percent(v38, v40 + v39, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v41);
  *(&v90 - 2) = v34;
  os_unfair_lock_lock((v36 + 24));
  v42 = v110;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v36 + 16, v111);
  if (v42)
  {
LABEL_44:
    os_unfair_lock_unlock((v36 + 24));
    __break(1u);
    goto LABEL_45;
  }

  os_unfair_lock_unlock((v36 + 24));
  if (v111[0])
  {
    v110 = 0;
LABEL_7:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v34, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v43 = String.subscript.getter();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v112 = 0;
    v109 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v43, v44, v46, v48, &v112);
    if ((v50 & 0x100000000) == 0)
    {
      v111[0] = v43;
      v111[1] = v45;
      v111[2] = v47;
      v111[3] = v49;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v51 = String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      outlined destroy of TermOfAddress?(v99, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd);
      result = v51;
      v53 = 0;
LABEL_12:
      LOBYTE(v111[0]) = v53;
      return result;
    }

    swift_unknownObjectRelease();

    outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v24 = v99;
LABEL_11:
    outlined destroy of TermOfAddress?(v24, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd);
    result = 0;
    v53 = 1;
    goto LABEL_12;
  }

  v98 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v110 = 0;
  os_unfair_lock_lock((v36 + 24));
  v54 = *(v36 + 16);
  if (v35 >= *(v54 + 16))
  {
  }

  else
  {
    *(v36 + 16) = MEMORY[0x1E69E7CC8];
  }

  v55 = v102;
  outlined init with copy of NSDecimal.FormatStyle(v34, v102, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111[0] = *(v36 + 16);
  v57 = v111[0];
  *(v36 + 16) = 0x8000000000000000;
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v60 = v57[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
LABEL_27:
    v91 = v59;
    v96 = v58;
    v92 = v54;
    v105 = v40;
    v93 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v97 = static _DictionaryStorage.copy(original:)();
    v95 = v57;
    if (!v57[2])
    {
LABEL_42:

      v40 = v105;
      v34 = v93;
      v55 = v102;
      v66 = v96;
      v59 = v91;
LABEL_20:
      v57 = v97;
      if (v66)
      {
LABEL_21:
        *(v57[7] + 8 * v59) = v98;

LABEL_25:
        outlined destroy of NumberFormatStyleConfiguration.Collection(v55, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v36 + 16) = v57;

        os_unfair_lock_unlock((v36 + 24));

        goto LABEL_7;
      }

LABEL_24:
      v105 = v40;
      v67 = v107;
      v68 = v57;
      v69 = v59;
      outlined init with copy of NSDecimal.FormatStyle(v55, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v70 = v69;
      v57 = v68;
      specialized _NativeDictionary._insert(at:key:value:)(v70, v67, v98, v68);
      goto LABEL_25;
    }

    v71 = (v97 + 64);
    v72 = 1 << *(v97 + 32);
    v94 = (v95 + 8);
    v73 = (v72 + 63) >> 6;
    if (v97 != v95 || v71 >= &v94[8 * v73])
    {
      memmove(v71, v94, 8 * v73);
    }

    v74 = 0;
    v75 = v95;
    *(v97 + 16) = v95[2];
    v76 = 1 << *(v75 + 32);
    v77 = v75[8];
    v78 = -1;
    if (v76 < 64)
    {
      v78 = ~(-1 << v76);
    }

    v79 = v78 & v77;
    v80 = (v76 + 63) >> 6;
    if ((v78 & v77) != 0)
    {
      do
      {
        v81 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
LABEL_40:
        v84 = v81 | (v74 << 6);
        v85 = v95;
        v86 = v107;
        v87 = *(v106 + 72) * v84;
        outlined init with copy of NSDecimal.FormatStyle(v95[6] + v87, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v88 = *(v85[7] + 8 * v84);
        v89 = v97;
        outlined init with take of NSDecimal.FormatStyle.Percent(v86, *(v97 + 48) + v87, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v89 + 56) + 8 * v84) = v88;
      }

      while (v79);
    }

    v82 = v74;
    while (1)
    {
      v74 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v74 >= v80)
      {
        goto LABEL_42;
      }

      v83 = *&v94[8 * v74];
      ++v82;
      if (v83)
      {
        v81 = __clz(__rbit64(v83));
        v79 = (v83 - 1) & v83;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v57[3] >= v62)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v58)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v96 = v58;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
  v97 = v111[0];
  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v65 = v64 & 1;
  v66 = v96;
  if ((v96 & 1) == v65)
  {
    v59 = v63;
    goto LABEL_20;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance NSDecimal.FormatStyle.Percent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Currency.consuming(_:startingAt:in:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v107 = a3;
  v101 = a1;
  v102 = a2;
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v103 = v6;
  v104 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v100 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v89 - v22;
  outlined init with copy of NSDecimal.FormatStyle(v106, v89 - v22, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v24 = v23;
  v25 = v107;
  *(v24 + *(v21 + 44)) = 0;
  v106 = a5;
  if (v25 >> 14 >= a5 >> 14)
  {
    goto LABEL_11;
  }

  v98 = v24;
  outlined init with copy of NSDecimal.FormatStyle(v24, v16, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v26 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd) + 48)];
  outlined init with take of NSDecimal.FormatStyle.Percent(v16 + *(v14 + 24), v19, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v27 = v16[3];
  *v26 = v16[2];
  *(v26 + 1) = v27;
  swift_storeEnumTagMultiPayload();
  v29 = *v16;
  v28 = v16[1];
  v99 = v19;
  outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v31 = *(v28 + 64);
  swift_unknownObjectRetain();
  v97 = v29;
  v32 = v31(ObjectType, v28);
  v33 = v103;
  v34 = &v13[*(v103 + 5)];
  *v34 = v32;
  v34[1] = v35;
  v13[*(v33 + 6)] = 0;
  v36 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v37 = static ICULegacyNumberFormatter.cache;
  v38 = qword_1EA7AFFA0;
  v39 = v105;
  outlined init with copy of NSDecimal.FormatStyle(v13, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v40 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v41 = swift_allocObject();
  v42 = outlined init with take of NSDecimal.FormatStyle.Percent(v39, v41 + v40, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v42);
  v89[-2] = v13;
  os_unfair_lock_lock((v38 + 24));
  v43 = v108;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v38 + 16, v109);
  if (v43)
  {
LABEL_44:
    os_unfair_lock_unlock((v38 + 24));
    __break(1u);
    goto LABEL_45;
  }

  os_unfair_lock_unlock((v38 + 24));
  if (v109[0])
  {
    v108 = 0;
LABEL_7:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v36, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v44 = String.subscript.getter();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v110 = 0;
    v107 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v44, v45, v47, v49, &v110);
    if ((v51 & 0x100000000) == 0)
    {
      v109[0] = v44;
      v109[1] = v46;
      v109[2] = v48;
      v109[3] = v50;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v52 = String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of NumberFormatStyleConfiguration.Collection(v99, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      outlined destroy of TermOfAddress?(v98, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd);
      result = v52;
      v54 = 0;
LABEL_12:
      LOBYTE(v109[0]) = v54;
      return result;
    }

    swift_unknownObjectRelease();

    outlined destroy of NumberFormatStyleConfiguration.Collection(v99, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v24 = v98;
LABEL_11:
    outlined destroy of TermOfAddress?(v24, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd);
    result = 0;
    v54 = 1;
    goto LABEL_12;
  }

  v96 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v108 = 0;
  os_unfair_lock_lock((v38 + 24));
  v55 = *(v38 + 16);
  if (v37 >= *(v55 + 16))
  {
  }

  else
  {
    *(v38 + 16) = MEMORY[0x1E69E7CC8];
  }

  v56 = v100;
  outlined init with copy of NSDecimal.FormatStyle(v36, v100, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = *(v38 + 16);
  v58 = v109[0];
  *(v38 + 16) = 0x8000000000000000;
  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
  v61 = v58[2];
  v62 = (v59 & 1) == 0;
  v63 = v61 + v62;
  if (__OFADD__(v61, v62))
  {
    __break(1u);
LABEL_27:
    v90 = v60;
    v94 = v59;
    v89[1] = v55;
    v91 = v41;
    v92 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v95 = static _DictionaryStorage.copy(original:)();
    v103 = v58;
    if (!v58[2])
    {
LABEL_42:

      v36 = v92;
      v56 = v100;
      v67 = v94;
      v60 = v90;
LABEL_20:
      v58 = v95;
      if (v67)
      {
LABEL_21:
        *(v58[7] + 8 * v60) = v96;

LABEL_25:
        outlined destroy of NumberFormatStyleConfiguration.Collection(v56, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v38 + 16) = v58;

        os_unfair_lock_unlock((v38 + 24));

        goto LABEL_7;
      }

LABEL_24:
      v95 = v58;
      v68 = v105;
      v69 = v60;
      outlined init with copy of NSDecimal.FormatStyle(v56, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v58 = v95;
      specialized _NativeDictionary._insert(at:key:value:)(v69, v68, v96, v95);
      goto LABEL_25;
    }

    v70 = (v95 + 8);
    v71 = 1 << *(v95 + 32);
    v93 = (v103 + 8);
    v72 = (v71 + 63) >> 6;
    if (v95 != v103 || v70 >= &v93[8 * v72])
    {
      memmove(v70, v93, 8 * v72);
    }

    v73 = 0;
    v74 = v103;
    v95[2] = v103[2];
    v75 = 1 << *(v74 + 32);
    v76 = v74[8];
    v77 = -1;
    if (v75 < 64)
    {
      v77 = ~(-1 << v75);
    }

    v78 = v77 & v76;
    v79 = (v75 + 63) >> 6;
    if ((v77 & v76) != 0)
    {
      do
      {
        v80 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
LABEL_40:
        v83 = v80 | (v73 << 6);
        v84 = v103;
        v85 = *(v104 + 72) * v83;
        v86 = v105;
        outlined init with copy of NSDecimal.FormatStyle(v103[6] + v85, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v87 = *(v84[7] + 8 * v83);
        v88 = v95;
        outlined init with take of NSDecimal.FormatStyle.Percent(v86, v95[6] + v85, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v88[7] + 8 * v83) = v87;
      }

      while (v78);
    }

    v81 = v73;
    while (1)
    {
      v73 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v73 >= v79)
      {
        goto LABEL_42;
      }

      v82 = *&v93[8 * v73];
      ++v81;
      if (v82)
      {
        v80 = __clz(__rbit64(v82));
        v78 = (v82 - 1) & v82;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v58[3] >= v63)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v59)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v94 = v59;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
  v95 = v109[0];
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
  v66 = v65 & 1;
  v67 = v94;
  if ((v94 & 1) == v66)
  {
    v60 = v64;
    goto LABEL_20;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance NSDecimal.FormatStyle.Currency(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t static RegexComponent<>.localizedCurrency(code:locale:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  v6 = a3 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
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
    v7 = v3 + 2 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 34), 2 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

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
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    v10 = *(v9 + 3);
    *a2 = *(v9 + 2);
    *(a2 + 16) = v10;
    *(a2 + 32) = v9[8];
    result = memmove(v9 + 4, v9 + 9, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized static NSDecimal.FormatStyle.Currency.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v8 = *a2;
  v9 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = specialized static Locale.== infix(_:_:)(&v9, &v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 || (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);

  return static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t specialized static NSDecimal.FormatStyle.Attributed.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v45 = a2;
  v42 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v41 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of NSDecimal.FormatStyle(a1, &v41 - v18, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  outlined init with copy of NSDecimal.FormatStyle(v45, &v19[v21], type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = &v19[v21];
        v24 = v44;
        outlined init with take of NSDecimal.FormatStyle.Percent(v23, v44, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v25 = *v13;
        v45 = *v24;
        v46 = v45;
        v47 = v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v26 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v26 & 1) != 0 && (*(v13 + 2) == *(v24 + 16) && *(v13 + 3) == *(v24 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v13[*(v41 + 24)], v24 + *(v41 + 24)))
        {
          outlined destroy of NumberFormatStyleConfiguration.Collection(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
          v27 = v13;
          v28 = type metadata accessor for NSDecimal.FormatStyle.Currency;
LABEL_23:
          outlined destroy of NumberFormatStyleConfiguration.Collection(v27, v28);
          outlined destroy of NumberFormatStyleConfiguration.Collection(v19, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
          return 1;
        }

        outlined destroy of NumberFormatStyleConfiguration.Collection(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v35 = v13;
        v36 = type metadata accessor for NSDecimal.FormatStyle.Currency;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Currency;
      v30 = v13;
    }

    else
    {
      outlined init with copy of NSDecimal.FormatStyle(v19, v10, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v43;
        outlined init with take of NSDecimal.FormatStyle.Percent(&v19[v21], v43, type metadata accessor for NSDecimal.FormatStyle.Percent);
        v32 = *v10;
        v45 = *v31;
        v46 = v45;
        v47 = v32;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v33 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v33)
        {
          v34 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v42 + 20), v31 + *(v42 + 20));
          outlined destroy of NumberFormatStyleConfiguration.Collection(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
          if (v34)
          {
            v28 = type metadata accessor for NSDecimal.FormatStyle.Percent;
            v27 = v10;
            goto LABEL_23;
          }
        }

        else
        {
          outlined destroy of NumberFormatStyleConfiguration.Collection(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
        }

        v36 = type metadata accessor for NSDecimal.FormatStyle.Percent;
        v35 = v10;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      v30 = v10;
    }
  }

  else
  {
    outlined init with copy of NSDecimal.FormatStyle(v19, v16, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(&v19[v21], v7, type metadata accessor for NSDecimal.FormatStyle);
      v37 = *v16;
      v45 = *v7;
      v46 = v45;
      v47 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v38 = specialized static Locale.== infix(_:_:)(&v47, &v46);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v38)
      {
        v39 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v16 + *(v5 + 20), v7 + *(v5 + 20));
        outlined destroy of NumberFormatStyleConfiguration.Collection(v7, type metadata accessor for NSDecimal.FormatStyle);
        if (v39)
        {
          v28 = type metadata accessor for NSDecimal.FormatStyle;
          v27 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        outlined destroy of NumberFormatStyleConfiguration.Collection(v7, type metadata accessor for NSDecimal.FormatStyle);
      }

      v36 = type metadata accessor for NSDecimal.FormatStyle;
      v35 = v16;
LABEL_28:
      outlined destroy of NumberFormatStyleConfiguration.Collection(v35, v36);
      outlined destroy of NumberFormatStyleConfiguration.Collection(v19, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      return 0;
    }

    v29 = type metadata accessor for NSDecimal.FormatStyle;
    v30 = v16;
  }

  outlined destroy of NumberFormatStyleConfiguration.Collection(v30, v29);
  outlined destroy of TermOfAddress?(v19, &_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMd);
  return 0;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

uint64_t outlined assign with take of NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Percent(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Currency(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Attributed(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Currency(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Percent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for NSDecimal.FormatStyle.Attributed()
{
  result = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
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

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

uint64_t specialized NSDecimal.FormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D69636564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
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

uint64_t static NSDecimal.ParseStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v4 = type metadata accessor for NSDecimal.ParseStrategy();
    v5 = *(a1 + *(v4 + 36)) ^ *(a2 + *(v4 + 36)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t NSDecimal.ParseStrategy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEB00000000656C79;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696E656CLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int NSDecimal.ParseStrategy.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1 & 1);
  return Hasher._finalize()();
}

uint64_t NSDecimal.ParseStrategy.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E65696E656CLL;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = NSDecimal.ParseStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for Sequence._customContainsEquatableElement(_:) in conformance AttributedString._InternalRuns();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.ParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.ParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t NSDecimal.ParseStrategy.encode(to:)(void *a1, uint64_t a2)
{
  v9[0] = a2;
  v9[2] = *(a2 + 16);
  type metadata accessor for NSDecimal.ParseStrategy.CodingKeys();
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

Swift::Int NSDecimal.ParseStrategy.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

uint64_t NSDecimal.ParseStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDecimal.ParseStrategy.CodingKeys();
  swift_getWitnessTable();
  v29 = type metadata accessor for KeyedDecodingContainer();
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v21 - v8;
  v27 = a3;
  v10 = type metadata accessor for NSDecimal.ParseStrategy();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a1;
  v22 = v10;
  v14 = v25;
  v15 = v26;
  v32 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v12;
  (*(v15 + 32))(v12, v28, a2);
  v31 = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v14 + 8))(v9, v29);
  v19 = v22;
  v18 = v23;
  v16[*(v22 + 36)] = v17 & 1;
  (*(v18 + 16))(v24, v16, v19);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v18 + 8))(v16, v19);
}

void protocol witness for ParseStrategy.parse(_:) in conformance NSDecimal.ParseStrategy<A>(NSDecimal **a1@<X0>, uint64_t a2@<X8>)
{
  NSDecimal.ParseStrategy.parse(_:)(*a1, *a1);
  if (!v6)
  {
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }
}

uint64_t specialized NSDecimal.ParseStrategy.parse(_:)(unint64_t a1, unint64_t rawValue)
{
  v280 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v265 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v259 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v266 = &v250 - v8;
  v264 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v250 - v11;
  v13 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((rawValue & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(rawValue) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v270 = a1;
  v20 = 7;
  if (((rawValue >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v267 = rawValue;
  v268 = v2;
  if (!v19)
  {
    v37 = v269;
    goto LABEL_17;
  }

  v260 = v20;
  v261 = v19;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v2, v15, type metadata accessor for NSDecimal.FormatStyle);
  v258 = v13;
  outlined init with take of ICULegacyNumberFormatter.Signature(v15 + *(v13 + 20), v18, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v21 = *v15;
  v22 = v15[1];
  v23 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd) + 36));
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v18, v12, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v25 = *(v22 + 64);
  swift_unknownObjectRetain();
  v263 = v21;
  v26 = v25(ObjectType, v22);
  v27 = &v12[*(v5 + 20)];
  *v27 = v26;
  v27[1] = v28;
  v12[*(v5 + 24)] = v23;
  v262 = v18;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v257 = v5;
  v30 = static ICULegacyNumberFormatter.cache;
  v29 = qword_1EA7AFFA0;
  v31 = v266;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v12, v266, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v32 = (*(v265 + 80) + 16) & ~*(v265 + 80);
  v33 = swift_allocObject();
  v34 = outlined init with take of ICULegacyNumberFormatter.Signature(v31, v33 + v32, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v34);
  *(&v250 - 2) = v12;
  os_unfair_lock_lock((v29 + 24));
  v35 = v269;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v29 + 16, &v278);
  if (v35)
  {
    goto LABEL_285;
  }

  v36 = v12;
  os_unfair_lock_unlock((v29 + 24));
  rawValue = v267;
  if (!v278)
  {
    v67 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v269 = 0;
    os_unfair_lock_lock((v29 + 24));
    v68 = *(*(v29 + 16) + 16);
    v256 = *(v29 + 16);
    if (v30 < v68)
    {
      *(v29 + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
    }

    v37 = v269;
    v80._rawValue = v259;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v12, v259, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v264 = v67;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v278 = *(v29 + 16);
    v82 = v278;
    *(v29 + 16) = 0x8000000000000000;
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v80._rawValue);
    v85 = *(v82 + 16);
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      goto LABEL_147;
    }

    if (*(v82 + 24) >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_261;
      }

      if ((v83 & 1) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_53;
    }

    v88 = isUniquelyReferenced_nonNull_native;
    v89 = v83;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, v88);
    v82 = v278;
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v80._rawValue);
    if ((v89 & 1) == (v91 & 1))
    {
      v84 = v90;
      if ((v89 & 1) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_53;
    }

    goto LABEL_288;
  }

  v37 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v36, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v38 = String.subscript.getter();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    *&v275 = 0;
    v45 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v38, v39, v41, v43, &v275);
    if ((v46 & 0x100000000) == 0)
    {
      *&v278 = v38;
      *(&v278 + 1) = v40;
      *&v279 = v42;
      *(&v279 + 1) = v44;
      v47 = v45;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v262, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v47;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v262, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

    v13 = v258;
LABEL_17:
    v278 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(v270, rawValue, &v278);
    v36 = v268;
    if ((v49 & 0x100000000) == 0)
    {
      return result;
    }

    specialized NSDecimal.init(_:)(3.14);
    v263 = v50;
    v265 = v51;
    LODWORD(v264) = v52;
    v261 = *(v13 + 20);
    v29 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v54 = v53;
    v56 = *v36;
    v55 = *(v36 + 8);
    v57 = swift_getObjectType();
    v58 = *(v55 + 472);
    v259 = v56;
    v257 = v57;
    v260 = v55;
    v258 = v55 + 472;
    v256 = v58;
    v59 = v58(v57, v55);
    v61 = v60;
    if (one-time initialization token for cache != -1)
    {
      v92 = v59;
      swift_once();
      v59 = v92;
    }

    rawValue = *algn_1EA7B1D98;
    v262 = static ICUNumberFormatter.cache;
    *&v275 = v29;
    *(&v275 + 1) = v54;
    v266 = v59;
    v276 = v59;
    v277 = v61;
    MEMORY[0x1EEE9AC00](v59);
    *(&v250 - 2) = &v275;
    os_unfair_lock_lock((rawValue + 24));
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(rawValue + 16, &v278);
    v269 = v37;
    if (v37)
    {
      break;
    }

    os_unfair_lock_unlock((rawValue + 24));
    v62 = v278;
    if (v278 != 1)
    {
      goto LABEL_75;
    }

    type metadata accessor for ICUNumberFormatter();
    v62 = swift_allocObject();
    v62[3] = v29;
    v62[4] = v54;
    swift_bridgeObjectRetain_n();
    v63 = MEMORY[0x1865CB200](v29, v54);
    if (v63)
    {
      v64 = v63;
      v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v63, 0);

      v36 = specialized Sequence._copySequenceContents(initializing:)(&v278, (v65 + 4), v64, v29, v54);

      if (v36 != v64)
      {
        goto LABEL_56;
      }
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v278) = 0;
    if (v65[2] >> 31)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    LOBYTE(v36) = String.utf8CString.getter();
    v69 = unumf_openForSkeletonAndLocale();

    if (!v69)
    {
      goto LABEL_33;
    }

    if (v278 >= 1)
    {
      unumf_close();
LABEL_33:

      type metadata accessor for ICUNumberFormatterBase();
      swift_deallocPartialClassInstance();
      v62 = 0;
      goto LABEL_35;
    }

    v62[2] = v69;
LABEL_35:
    os_unfair_lock_lock((rawValue + 24));
    v70 = *(*(rawValue + 16) + 16);
    v255 = *(rawValue + 16);
    if (v262 < v70)
    {
      *(rawValue + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
    }

    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v278 = *(rawValue + 16);
    v37 = v278;
    *(rawValue + 16) = 0x8000000000000000;
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v54, v266, v61);
    v73 = *(v37 + 2);
    v74 = (v72 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_55;
    }

    LOBYTE(v36) = v72;
    if (*(v37 + 3) < v75)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v71);
      v76 = v278;
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v54, v266, v61);
      if ((v36 & 1) != (v78 & 1))
      {
        goto LABEL_287;
      }

      v66 = v77;
LABEL_44:
      if ((v36 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_45;
    }

    if (v71)
    {
      v76 = v37;
      goto LABEL_44;
    }

LABEL_57:
    v252 = v66;
    v250 = rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v93 = static _DictionaryStorage.copy(original:)();
    v76 = v93;
    if (*(v37 + 2))
    {
      v94 = (v93 + 64);
      v95 = 1 << v76[32];
      v253 = (v37 + 64);
      v96 = (v95 + 63) >> 6;
      if (v76 != v37 || v94 >= v253 + 8 * v96)
      {
        memmove(v94, v253, 8 * v96);
      }

      v97 = 0;
      *(v76 + 2) = *(v37 + 2);
      v98 = 1 << v37[32];
      v99 = -1;
      if (v98 < 64)
      {
        v99 = ~(-1 << v98);
      }

      v254 = v99 & *(v37 + 8);
      v251 = (v98 + 63) >> 6;
      while (v254)
      {
        v100 = __clz(__rbit64(v254));
        v254 &= v254 - 1;
LABEL_71:
        v103 = v100 | (v97 << 6);
        v104 = (*(v37 + 6) + 32 * v103);
        v105 = v104[1];
        v106 = v104[2];
        rawValue = v104[3];
        v107 = *(*(v37 + 7) + 8 * v103);
        v108 = (*(v76 + 6) + 32 * v103);
        *v108 = *v104;
        v108[1] = v105;
        v108[2] = v106;
        v108[3] = rawValue;
        *(*(v76 + 7) + 8 * v103) = v107;
      }

      v101 = v97;
      while (1)
      {
        v97 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v97 >= v251)
        {
          goto LABEL_72;
        }

        v102 = *(v253 + 8 * v97);
        ++v101;
        if (v102)
        {
          v100 = __clz(__rbit64(v102));
          v254 = (v102 - 1) & v102;
          goto LABEL_71;
        }
      }

      __break(1u);
      goto LABEL_281;
    }

LABEL_72:

    rawValue = v250;
    v66 = v252;
    if ((v36 & 1) == 0)
    {
LABEL_73:
      specialized _NativeDictionary._insert(at:key:value:)(v66, v29, v54, v266, v61, v62, v76);
      goto LABEL_74;
    }

LABEL_45:
    v79 = v66;

    *(*(v76 + 7) + 8 * v79) = v62;

LABEL_74:
    *(rawValue + 16) = v76;

    os_unfair_lock_unlock((rawValue + 24));

    outlined consume of ICUNumberFormatter??(1);
    v36 = v268;
LABEL_75:

    if (!v62)
    {
      v112 = v264;
      v110 = v263;
LABEL_79:
      v111 = v265;
      goto LABEL_80;
    }

    v109 = v62[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v110 = v263;
    v111 = v265;
    v112 = v264;
    v113 = v269;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v109, v263, v265, v264);
    if (!v113)
    {
      v269 = 0;

      v125 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v127 = v128;

      if (v127)
      {
        goto LABEL_119;
      }

      goto LABEL_79;
    }

    v269 = 0;
LABEL_80:
    *&v278 = v110;
    *(&v278 + 1) = v111;
    LODWORD(v279) = v112;
    if (_So9NSDecimala__length_getter(&v278) || (*&v278 = v110, *(&v278 + 1) = v111, LODWORD(v279) = v112, !_So9NSDecimala__isNegative_getter(&v278)))
    {
      *&v278 = v110;
      *(&v278 + 1) = v111;
      LODWORD(v279) = v112;
      if (_So9NSDecimala__length_getter(&v278))
      {
        *&v272 = 0;
        *(&v272 + 1) = 0xE000000000000000;
        *&v278 = v110;
        *(&v278 + 1) = v111;
        LODWORD(v279) = v112;
        v275 = v278;
        LODWORD(v276) = v112;
        if (_So9NSDecimala__exponent_getter(&v275) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v275 = v278;
            LODWORD(v276) = v279;
            v114 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v114 - 1), &v278);
            v275 = v278;
            LODWORD(v276) = v279;
          }

          while (_So9NSDecimala__exponent_getter(&v275) > 0);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (!_So9NSDecimala__exponent_getter(&v275))
        {
          _So9NSDecimala__exponent_setter(1, &v278);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__length_getter(&v275))
        {
          v33 = 3435973837;
          v29 = 10;
          while (1)
          {
            v275 = v278;
            LODWORD(v276) = v279;
            if (!_So9NSDecimala__exponent_getter(&v275))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v275 = v278;
            LODWORD(v276) = v279;
            v115 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v115 + 1), &v278);
            v31 = v278;
            v266 = WORD2(v278);
            v252 = WORD3(v278);
            v265 = WORD4(v278);
            v264 = WORD5(v278);
            v263 = WORD6(v278);
            v254 = HIWORD(v278);
            LODWORD(v255) = v279;
            LODWORD(v253) = WORD1(v279);
            NSDecimal.asVariableLengthInteger()(v278 | (WORD2(v278) << 32) | (WORD3(v278) << 48), WORD4(v278) | (WORD5(v278) << 16) | (WORD6(v278) << 32) | (HIWORD(v278) << 48), v279 | (WORD1(v279) << 16));
            v117 = v116;
            v118 = *(v116 + 16);
            v80._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v118);
            *&v275 = v80;
            if (v118)
            {
              break;
            }

            v120 = 48;
LABEL_100:
            while (1)
            {
              v121 = *(v80._rawValue + 2);
              if (!v121 || *(v80._rawValue + v121 + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v275 + 16) - 1);
              }

              v80._rawValue = v275;
            }

            LODWORD(v275) = v31;
            WORD2(v275) = v266;
            WORD3(v275) = v252;
            WORD4(v275) = v265;
            WORD5(v275) = v264;
            WORD6(v275) = v263;
            HIWORD(v275) = v254;
            LOWORD(v276) = v255;
            WORD1(v276) = v253;
            NSDecimal.copyVariableLengthInteger(_:)(v80);
            v269 = v122;
            if (v122)
            {
              goto LABEL_286;
            }

            v82 = *(v80._rawValue + 2);

            if (HIDWORD(v82))
            {
              goto LABEL_260;
            }

            _So9NSDecimala__length_setter(v82, &v275);
            v278 = v275;
            LODWORD(v279) = v276;
            *&v273 = v120;
            v123 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v123);

            v273 = v278;
            v274 = v279;
            if (!_So9NSDecimala__length_getter(&v273))
            {
              goto LABEL_107;
            }
          }

          v251 = v31;
          v31 = 0;
          isUniquelyReferenced_nonNull_native = v118 + 15;
          while ((isUniquelyReferenced_nonNull_native - 15) <= *(v117 + 16))
          {
            v37 = *(v117 + 2 * isUniquelyReferenced_nonNull_native);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v80._rawValue);
            }

            if ((isUniquelyReferenced_nonNull_native - 15) > *(v80._rawValue + 2))
            {
              goto LABEL_131;
            }

            v119 = v37 | (v31 << 16);
            *(v80._rawValue + isUniquelyReferenced_nonNull_native) = v119 / 0xA;
            v31 = v119 % 0xA;
            if (--isUniquelyReferenced_nonNull_native == 15)
            {

              *&v275 = v80;
              v120 = v31 | 0x30;
              v36 = v268;
              LODWORD(v31) = v251;
              goto LABEL_100;
            }
          }

          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

LABEL_107:
        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__exponent_getter(&v275) <= 0)
        {
          while (1)
          {
            v275 = v278;
            LODWORD(v276) = v279;
            if (!_So9NSDecimala__exponent_getter(&v275))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v275 = v278;
            LODWORD(v276) = v279;
            v124 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v124 + 1), &v278);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__isNegative_getter(&v275))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v275 = v272;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v125 = String.init<A>(_:)();
        v127 = v126;
      }

      else
      {
        v127 = 0xE100000000000000;
        v125 = 48;
      }
    }

    else
    {
      v125 = 5136718;
      v127 = 0xE300000000000000;
    }

LABEL_119:
    *&v272 = v125;
    *(&v272 + 1) = v127;
    v251 = v127;
    *&v278 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v278 + 1) = v129;
    LODWORD(v279) = v130;
    _So9NSDecimala__isNegative_setter(1, &v278);
    v266 = v278;
    v255 = WORD2(v278);
    v254 = WORD3(v278);
    v253 = WORD4(v278);
    v263 = WORD5(v278);
    v80._rawValue = WORD6(v278);
    v252 = HIWORD(v278);
    LODWORD(v265) = v279;
    LODWORD(v264) = WORD1(v279);
    v33 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    isUniquelyReferenced_nonNull_native = v131;
    v132 = v256(v257, v260);
    v37 = v133;
    v29 = &v250;
    *&v275 = v33;
    *(&v275 + 1) = isUniquelyReferenced_nonNull_native;
    v268 = v132;
    v276 = v132;
    v277 = v133;
    MEMORY[0x1EEE9AC00](v132);
    *(&v250 - 2) = &v275;
    os_unfair_lock_lock((rawValue + 24));
    v134 = v269;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(rawValue + 16, &v278);
    v269 = v134;
    if (v134)
    {
      break;
    }

    os_unfair_lock_unlock((rawValue + 24));
    v31 = v278;
    if (v278 == 1)
    {
      type metadata accessor for ICUNumberFormatter();
      v31 = swift_allocObject();
      *(v31 + 24) = v33;
      *(v31 + 32) = isUniquelyReferenced_nonNull_native;
      swift_bridgeObjectRetain_n();
      v135 = MEMORY[0x1865CB200](v33, isUniquelyReferenced_nonNull_native);
      v261 = v37;
      if (v135)
      {
        v37 = v31;
        v31 = rawValue;
        rawValue = v80._rawValue;
        v136 = v135;
        v137 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v135, 0);

        v36 = specialized Sequence._copySequenceContents(initializing:)(&v278, (v137 + 4), v136, v33, isUniquelyReferenced_nonNull_native);

        if (v36 == v136)
        {

          rawValue = v31;
          v31 = v37;
          v37 = v261;
          goto LABEL_125;
        }

LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        v258 = v84;
        v259 = v33;
        v257 = v31;
        v250 = rawValue;
        v262 = v80._rawValue;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
        v148 = static _DictionaryStorage.copy(original:)();
        v144 = v148;
        if (*(v36 + 16))
        {
          v149 = (v148 + 64);
          v150 = v36 + 64;
          v151 = ((1 << *(v144 + 32)) + 63) >> 6;
          if (v144 != v36 || v149 >= v150 + 8 * v151)
          {
            memmove(v149, (v36 + 64), 8 * v151);
          }

          v29 = 0;
          *(v144 + 16) = *(v36 + 16);
          v152 = 1 << *(v36 + 32);
          v153 = *(v36 + 64);
          v154 = -1;
          if (v152 < 64)
          {
            v154 = ~(-1 << v152);
          }

          v155 = v154 & v153;
          v156 = (v152 + 63) >> 6;
          if ((v154 & v153) != 0)
          {
            do
            {
              v157 = __clz(__rbit64(v155));
              v155 &= v155 - 1;
LABEL_161:
              v160 = v157 | (v29 << 6);
              v161 = (*(v36 + 48) + 32 * v160);
              v162 = v161[1];
              v163 = v161[2];
              rawValue = v161[3];
              v164 = *(*(v36 + 56) + 8 * v160);
              v165 = (*(v144 + 48) + 32 * v160);
              *v165 = *v161;
              v165[1] = v162;
              v165[2] = v163;
              v165[3] = rawValue;
              *(*(v144 + 56) + 8 * v160) = v164;
            }

            while (v155);
          }

          v158 = v29;
          while (1)
          {
            v29 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              break;
            }

            if (v29 >= v156)
            {
              goto LABEL_163;
            }

            v159 = *(v150 + 8 * v29);
            ++v158;
            if (v159)
            {
              v157 = __clz(__rbit64(v159));
              v155 = (v159 - 1) & v159;
              goto LABEL_161;
            }
          }

LABEL_281:
          __break(1u);
          goto LABEL_282;
        }

LABEL_163:

        v80._rawValue = v262;
        rawValue = v250;
        v31 = v257;
        v33 = v259;
        v84 = v258;
        if ((v37 & 1) == 0)
        {
          goto LABEL_164;
        }

LABEL_143:
        v147 = v84;

        *(*(v144 + 56) + 8 * v147) = v31;

        goto LABEL_165;
      }

      v137 = MEMORY[0x1E69E7CC0];
LABEL_125:
      LODWORD(v278) = 0;
      if (v137[2] >> 31)
      {
        __break(1u);
        goto LABEL_145;
      }

      String.utf8CString.getter();
      v29 = unumf_openForSkeletonAndLocale();

      if (!v29)
      {
        goto LABEL_129;
      }

      if (v278 >= 1)
      {
        unumf_close();
LABEL_129:

        type metadata accessor for ICUNumberFormatterBase();
        swift_deallocPartialClassInstance();
        v31 = 0;
LABEL_133:
        os_unfair_lock_lock((rawValue + 24));
        v138 = *(*(rawValue + 16) + 16);
        v260 = *(rawValue + 16);
        if (v262 < v138)
        {
          *(rawValue + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        v139 = swift_isUniquelyReferenced_nonNull_native();
        *&v278 = *(rawValue + 16);
        v36 = v278;
        *(rawValue + 16) = 0x8000000000000000;
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v33, isUniquelyReferenced_nonNull_native, v268, v37);
        v141 = *(v36 + 16);
        v142 = (v140 & 1) == 0;
        v143 = v141 + v142;
        if (!__OFADD__(v141, v142))
        {
          LOBYTE(v37) = v140;
          if (*(v36 + 24) >= v143)
          {
            if ((v139 & 1) == 0)
            {
              goto LABEL_148;
            }

            v144 = v36;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, v139);
            v144 = v278;
            v145 = specialized __RawDictionaryStorage.find<A>(_:)(v33, isUniquelyReferenced_nonNull_native, v268, v261);
            if ((v37 & 1) != (v146 & 1))
            {
              goto LABEL_287;
            }

            v84 = v145;
          }

          if (v37)
          {
            goto LABEL_143;
          }

LABEL_164:
          specialized _NativeDictionary._insert(at:key:value:)(v84, v33, isUniquelyReferenced_nonNull_native, v268, v261, v31, v144);
LABEL_165:
          *(rawValue + 16) = v144;

          os_unfair_lock_unlock((rawValue + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_166;
        }

LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_132:
      *(v31 + 16) = v29;
      goto LABEL_133;
    }

LABEL_166:

    if (v31)
    {
      v166 = v252;
      v167 = v80._rawValue;
      v168 = *(v31 + 16);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v169 = v255;
      v29 = v254;
      v170 = v253;
      v171 = v263;
      v262 = v167;
      v172 = v269;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v168, v266 | (v255 << 32) | (v254 << 48), v253 | (v263 << 16) | (v167 << 32) | (v166 << 48), v265 | (v264 << 16));
      v269 = v172;
      if (v172)
      {

        v269 = 0;
      }

      else
      {

        v192 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v193 = v194;

        if (v193)
        {
          goto LABEL_212;
        }

        v171 = v263;
      }

      LOWORD(v80._rawValue) = v262;
    }

    else
    {
      v169 = v255;
      v29 = v254;
      v170 = v253;
      v171 = v263;
      LOWORD(v166) = v252;
    }

    v173 = v266;
    LODWORD(v278) = v266;
    WORD2(v278) = v169;
    WORD3(v278) = v29;
    WORD4(v278) = v170;
    WORD5(v278) = v171;
    WORD6(v278) = v80._rawValue;
    HIWORD(v278) = v166;
    v174 = v265;
    LOWORD(v279) = v265;
    v175 = v264;
    WORD1(v279) = v264;
    if (_So9NSDecimala__length_getter(&v278) || (LODWORD(v278) = v173, WORD2(v278) = v169, WORD3(v278) = v29, WORD4(v278) = v170, WORD5(v278) = v171, WORD6(v278) = v80._rawValue, HIWORD(v278) = v166, LOWORD(v279) = v174, WORD1(v279) = v175, !_So9NSDecimala__isNegative_getter(&v278)))
    {
      LODWORD(v278) = v173;
      WORD2(v278) = v169;
      WORD3(v278) = v29;
      WORD4(v278) = v170;
      WORD5(v278) = v171;
      WORD6(v278) = v80._rawValue;
      HIWORD(v278) = v166;
      LOWORD(v279) = v174;
      WORD1(v279) = v175;
      if (_So9NSDecimala__length_getter(&v278))
      {
        *&v271[1] = 0;
        *&v271[9] = 0xE000000000000000;
        LODWORD(v278) = v173;
        WORD2(v278) = v169;
        WORD3(v278) = v29;
        WORD4(v278) = v170;
        WORD5(v278) = v171;
        WORD6(v278) = v80._rawValue;
        HIWORD(v278) = v166;
        LOWORD(v279) = v174;
        WORD1(v279) = v175;
        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__exponent_getter(&v275) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v275 = v278;
            LODWORD(v276) = v279;
            v176 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v176 - 1), &v278);
            v275 = v278;
            LODWORD(v276) = v279;
          }

          while (_So9NSDecimala__exponent_getter(&v275) > 0);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (!_So9NSDecimala__exponent_getter(&v275))
        {
          _So9NSDecimala__exponent_setter(1, &v278);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__length_getter(&v275))
        {
          v177 = 3435973837;
          v29 = 10;
          while (1)
          {
            v275 = v278;
            LODWORD(v276) = v279;
            if (!_So9NSDecimala__exponent_getter(&v275))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v275 = v278;
            LODWORD(v276) = v279;
            v178 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v178 + 1), &v278);
            v179 = WORD3(v278);
            v268 = v278;
            v266 = WORD2(v278);
            v265 = WORD4(v278);
            v264 = WORD5(v278);
            v263 = WORD6(v278);
            v261 = HIWORD(v278);
            LODWORD(v262) = v279;
            LODWORD(v260) = WORD1(v279);
            NSDecimal.asVariableLengthInteger()(v278 | (WORD2(v278) << 32) | (WORD3(v278) << 48), WORD4(v278) | (WORD5(v278) << 16) | (WORD6(v278) << 32) | (HIWORD(v278) << 48), v279 | (WORD1(v279) << 16));
            v181 = v180;
            v182 = *(v180 + 16);
            p_isa = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v182);
            *&v275 = p_isa;
            if (v182)
            {
              break;
            }

            v187 = 48;
LABEL_189:
            for (i = p_isa[2]; i; i = *(v275 + 16))
            {
              if (*(p_isa + i + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v275 + 16) - 1);
              }

              p_isa = v275;
            }

            LODWORD(v275) = v268;
            WORD2(v275) = v266;
            WORD3(v275) = v179;
            WORD4(v275) = v265;
            WORD5(v275) = v264;
            WORD6(v275) = v263;
            HIWORD(v275) = v261;
            LOWORD(v276) = v262;
            WORD1(v276) = v260;
            NSDecimal.copyVariableLengthInteger(_:)(p_isa);
            v269 = v189;
            if (v189)
            {
              goto LABEL_286;
            }

            v190 = p_isa[2];

            if (HIDWORD(v190))
            {
              __break(1u);
            }

            _So9NSDecimala__length_setter(v190, &v275);
            v278 = v275;
            LODWORD(v279) = v276;
            *&v273 = v187;
            v191 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v191);

            v273 = v278;
            v274 = v279;
            if (!_So9NSDecimala__length_getter(&v273))
            {
              goto LABEL_204;
            }
          }

          rawValue = 0;
          v184 = v182 + 15;
          while ((v184 - 15) <= *(v181 + 16))
          {
            v185 = *(v181 + 2 * v184);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              p_isa = specialized _ArrayBuffer._consumeAndCreateNew()(p_isa);
            }

            if ((v184 - 15) > p_isa[2])
            {
              goto LABEL_225;
            }

            v186 = v185 | (rawValue << 16);
            *(p_isa + v184) = v186 / 0xA;
            rawValue = v186 % 0xA;
            if (--v184 == 15)
            {

              *&v275 = p_isa;
              v187 = rawValue | 0x30;
              goto LABEL_189;
            }
          }

          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:

          v201 = 0xE000000000000000;
          goto LABEL_249;
        }

LABEL_204:
        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__exponent_getter(&v275) <= 0)
        {
          while (1)
          {
            v275 = v278;
            LODWORD(v276) = v279;
            if (!_So9NSDecimala__exponent_getter(&v275))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v275 = v278;
            LODWORD(v276) = v279;
            v195 = _So9NSDecimala__exponent_getter(&v275);
            _So9NSDecimala__exponent_setter((v195 + 1), &v278);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v275 = v278;
        LODWORD(v276) = v279;
        if (_So9NSDecimala__isNegative_getter(&v275))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v275 = *&v271[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v192 = String.init<A>(_:)();
        v193 = v196;
      }

      else
      {
        v193 = 0xE100000000000000;
        v192 = 48;
      }
    }

    else
    {
      v192 = 5136718;
      v193 = 0xE300000000000000;
    }

LABEL_212:
    *&v275 = v192;
    *(&v275 + 1) = v193;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v177 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v198 = @"NSDebugDescription";
    p_isa = &v198->isa;
    rawValue = MEMORY[0x1E69E7CA0];
    if (!isTaggedPointer)
    {
      goto LABEL_217;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v198);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v250 - 2) = p_isa;
          v181 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v201 = v200;

          goto LABEL_249;
        }

LABEL_217:
        LOBYTE(v273) = 0;
        *&v278 = 0;
        *v271 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v181 = v278;
          if (!v278)
          {
            goto LABEL_226;
          }

          if (v271[0] == 1)
          {
            if (v273)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v209 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_248;
          }

          if (v271[1])
          {
            if (v273 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v250 - 4) = p_isa;
              *(&v250 - 3) = &v278;
              *(&v250 - 4) = 1536;
              *(&v250 - 1) = v181;
            }

            else
            {
              v211 = [p_isa lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v211);
              *(&v250 - 4) = p_isa;
              *(&v250 - 3) = &v278;
              *(&v250 - 4) = 134217984;
              *(&v250 - 1) = v212;
            }

            v213 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v201 = v214;
            v215 = HIBYTE(v214) & 0xF;
            if ((v214 & 0x2000000000000000) == 0)
            {
              v215 = v213 & 0xFFFFFFFFFFFFLL;
            }

            if (v215)
            {
              v181 = v213;
              goto LABEL_232;
            }
          }
        }

        else
        {
          v203 = p_isa;
          v204 = String.init(_nativeStorage:)();
          if (v205)
          {
            v181 = v204;
            v201 = v205;

            goto LABEL_249;
          }

          *&v278 = [v203 length];
          if (!v278)
          {

            v181 = 0;
            v201 = 0xE000000000000000;
            goto LABEL_249;
          }
        }

        v209 = String.init(_cocoaString:)();
LABEL_248:
        v181 = v209;
        v201 = v210;
        goto LABEL_249;
      }

      v206 = [p_isa UTF8String];
      if (!v206)
      {
        goto LABEL_283;
      }

      v207 = String.init(utf8String:)(v206);
      if (v208)
      {
LABEL_231:
        v181 = v207;
        v201 = v208;
LABEL_232:

        goto LABEL_249;
      }

      __break(1u);
    }

    *&v271[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v207 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v208)
    {
      goto LABEL_231;
    }

    [p_isa mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v201 = *(&v273 + 1);
    v181 = v273;
LABEL_249:
    *(v177 + 32) = v181;
    *(v177 + 40) = v201;
    *&v278 = 0;
    *(&v278 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v270, v267);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    v216 = MEMORY[0x1E69E6158];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v217 = v278;
    *(v177 + 72) = v216;
    *(v177 + 48) = v217;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v82 = static _DictionaryStorage.allocate(capacity:)();
    v36 = &v278;
    outlined init with copy of (String, Any)(v177 + 32, &v278);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v177 + 32, &_sSS_yptMd);
    swift_deallocClassInstance();
    v218 = v278;
    v219 = specialized __RawDictionaryStorage.find<A>(_:)(v278, *(&v278 + 1));
    v29 = v220;

    if (v29)
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    *(v82 + 8 * (v219 >> 6) + 64) |= 1 << v219;
    *(*(v82 + 48) + 16 * v219) = v218;
    outlined init with take of Any(&v279, (*(v82 + 56) + 32 * v219));
    v221 = *(v82 + 16);
    v222 = __OFADD__(v221, 1);
    v223 = v221 + 1;
    if (v222)
    {
      goto LABEL_258;
    }

    *(v82 + 16) = v223;
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
    v29 = objc_allocWithZone(NSError);
    v224 = String._bridgeToObjectiveCImpl()();

    v225 = [v29 initWithDomain:v224 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v226 = [v225 domain];
    v227 = static String._unconditionallyBridgeFromObjectiveC(_:)(v226);
    v82 = v228;

    if (v227 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v82 == v229)
    {

LABEL_255:
      swift_willThrow();
    }

    v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v230)
    {
      goto LABEL_255;
    }

LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    v231 = v82;
    v253 = v84;
    LODWORD(v254) = v83;
    v252 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v232 = static _DictionaryStorage.copy(original:)();
    v82 = v232;
    v257 = v231;
    if (v231[2])
    {
      v233 = (v232 + 64);
      v234 = 1 << *(v82 + 32);
      v255 = (v257 + 8);
      v235 = (v234 + 63) >> 6;
      if (v82 != v257 || v233 >= v255 + 8 * v235)
      {
        memmove(v233, v255, 8 * v235);
      }

      v236 = 0;
      v237 = v257;
      *(v82 + 16) = v257[2];
      v238 = 1 << *(v237 + 32);
      v239 = v237[8];
      v240 = -1;
      if (v238 < 64)
      {
        v240 = ~(-1 << v238);
      }

      v241 = v240 & v239;
      v251 = (v238 + 63) >> 6;
      if ((v240 & v239) != 0)
      {
        do
        {
          v242 = __clz(__rbit64(v241));
          v241 &= v241 - 1;
LABEL_274:
          v245 = v242 | (v236 << 6);
          v246 = v257;
          v247 = *(v265 + 72) * v245;
          rawValue = v266;
          outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v257[6] + v247, v266, type metadata accessor for ICULegacyNumberFormatter.Signature);
          v248 = *(v246[7] + 8 * v245);
          outlined init with take of ICULegacyNumberFormatter.Signature(rawValue, *(v82 + 48) + v247, type metadata accessor for ICULegacyNumberFormatter.Signature);
          *(*(v82 + 56) + 8 * v245) = v248;
        }

        while (v241);
      }

      v243 = v236;
      while (1)
      {
        v236 = v243 + 1;
        if (__OFADD__(v243, 1))
        {
          break;
        }

        if (v236 >= v251)
        {
          goto LABEL_276;
        }

        v244 = *(v255 + 8 * v236);
        ++v243;
        if (v244)
        {
          v242 = __clz(__rbit64(v244));
          v241 = (v244 - 1) & v244;
          goto LABEL_274;
        }
      }

LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
      break;
    }

LABEL_276:

    rawValue = v267;
    v37 = v269;
    v80._rawValue = v259;
    v31 = v266;
    v36 = v252;
    v84 = v253;
    if (v254)
    {
LABEL_53:
      *(*(v82 + 56) + 8 * v84) = v264;
    }

    else
    {
LABEL_277:
      v249 = v84;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v80._rawValue, v31, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v249, v31, v264, v82);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v80._rawValue, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v29 + 16) = v82;

    os_unfair_lock_unlock((v29 + 24));
  }

  os_unfair_lock_unlock((rawValue + 24));
  __break(1u);
LABEL_285:
  os_unfair_lock_unlock((v29 + 24));
  __break(1u);
LABEL_286:

  swift_unexpectedError();
  __break(1u);
LABEL_287:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_288:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized NSDecimal.ParseStrategy.parse(_:)(unint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v294 = *MEMORY[0x1E69E9840];
  v279 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v280 = *(v279 - 8);
  v8 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v279);
  v272 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v281 = &v265 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v265 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v265 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v21 = 11;
  }

  v282 = v5;
  v283 = a2;
  v284 = a1;
  if (!v20)
  {
    v38 = v14;
    goto LABEL_17;
  }

  v273 = v21;
  v274 = v20;
  rawValue = v3;
  v22 = v19;
  v23 = v5;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v5, v16, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v277 = v14;
  outlined init with take of ICULegacyNumberFormatter.Signature(v16 + *(v14 + 20), v22, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v24 = *v16;
  v25 = v16[1];
  LOBYTE(v23) = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd) + 36));
  v276 = v22;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v22, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v275 = v24;
  v28 = v27(ObjectType, v25);
  v29 = v279;
  v30 = (v13 + *(v279 + 20));
  *v30 = v28;
  v30[1] = v31;
  *(v13 + *(v29 + 24)) = v23;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static ICULegacyNumberFormatter.cache;
  v32 = qword_1EA7AFFA0;
  v34 = v281;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v13, v281, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v35 = (*(v280 + 80) + 16) & ~*(v280 + 80);
  v278 = swift_allocObject();
  v36 = outlined init with take of ICULegacyNumberFormatter.Signature(v34, v278 + v35, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v36);
  *(&v265 - 2) = v13;
  os_unfair_lock_lock((v32 + 24));
  v37 = rawValue;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v32 + 16, &v292);
  if (v37)
  {
    goto LABEL_301;
  }

  os_unfair_lock_unlock((v32 + 24));
  a2 = v283;
  v38 = v277;
  if (!v292)
  {
    v133 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v134._rawValue = 0;
    os_unfair_lock_lock((v32 + 24));
    v74 = *(v32 + 16);
    if (v33 < *(v74 + 16))
    {
      *(v32 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  rawValue = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v13, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    a1 = v284;
    v39 = String.subscript.getter();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    *&v290 = 0;
    v46 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v39, v40, v42, v44, &v290);
    if ((v47 & 0x100000000) == 0)
    {
      *&v292 = v39;
      *(&v292 + 1) = v41;
      *&v293 = v43;
      *(&v293 + 1) = v45;
      v48 = v46;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v276, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v48;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v276, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

    v4 = rawValue;
LABEL_17:
    v292 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(a1, a2, &v292);
    if ((v50 & 0x100000000) == 0)
    {
      return result;
    }

    rawValue = v4;
    specialized NSDecimal.init(_:)(3.14);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v282;
    v281 = *(v38 + 20);
    v58 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v60 = v59;
    v61 = *v57;
    v62 = v57[1];
    v63 = swift_getObjectType();
    v64 = *(v62 + 472);
    v279 = v61;
    v277 = v63;
    v280 = v62;
    v278 = v62 + 472;
    v276 = v64;
    v65 = v64(v63, v62);
    v67 = specialized static ICUPercentNumberFormatter._create(with:)(v58, v60, v65, v66);

    if (v67)
    {
      v68 = *(v67 + 2);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v69 = rawValue;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v68, v52, v54, v56);
      if (v69)
      {

        rawValue = 0;
      }

      else
      {
        rawValue = 0;

        v85 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v87 = v88;

        if (v87)
        {
          goto LABEL_60;
        }
      }
    }

    *&v292 = v52;
    *(&v292 + 1) = v54;
    LODWORD(v293) = v56;
    if (!_So9NSDecimala__length_getter(&v292))
    {
      *&v292 = v52;
      *(&v292 + 1) = v54;
      LODWORD(v293) = v56;
      if (_So9NSDecimala__isNegative_getter(&v292))
      {
        v85 = 5136718;
        v87 = 0xE300000000000000;
        goto LABEL_60;
      }
    }

    *&v292 = v52;
    *(&v292 + 1) = v54;
    LODWORD(v293) = v56;
    if (!_So9NSDecimala__length_getter(&v292))
    {
      v87 = 0xE100000000000000;
      v85 = 48;
      goto LABEL_60;
    }

    *&v287 = 0;
    *(&v287 + 1) = 0xE000000000000000;
    *&v292 = v52;
    *(&v292 + 1) = v54;
    LODWORD(v293) = v56;
    v290 = v292;
    v291 = v56;
    if (_So9NSDecimala__exponent_getter(&v290) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v290 = v292;
        v291 = v293;
        v70 = _So9NSDecimala__exponent_getter(&v290);
        _So9NSDecimala__exponent_setter((v70 - 1), &v292);
        v290 = v292;
        v291 = v293;
      }

      while (_So9NSDecimala__exponent_getter(&v290) > 0);
    }

    v290 = v292;
    v291 = v293;
    if (!_So9NSDecimala__exponent_getter(&v290))
    {
      _So9NSDecimala__exponent_setter(1, &v292);
    }

    v290 = v292;
    v291 = v293;
    if (!_So9NSDecimala__length_getter(&v290))
    {
LABEL_48:
      v290 = v292;
      v291 = v293;
      if (_So9NSDecimala__exponent_getter(&v290) <= 0)
      {
        while (1)
        {
          v290 = v292;
          v291 = v293;
          if (!_So9NSDecimala__exponent_getter(&v290))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v290 = v292;
          v291 = v293;
          v84 = _So9NSDecimala__exponent_getter(&v290);
          _So9NSDecimala__exponent_setter((v84 + 1), &v292);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v290 = v292;
      v291 = v293;
      if (_So9NSDecimala__isNegative_getter(&v290))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v290 = v287;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
      lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
      v85 = String.init<A>(_:)();
      v87 = v86;
LABEL_60:
      *&v287 = v85;
      *(&v287 + 1) = v87;
      v269 = v87;
      *&v292 = specialized NSDecimal.init(_:)(0x3039uLL);
      *(&v292 + 1) = v89;
      LODWORD(v293) = v90;
      _So9NSDecimala__isNegative_setter(1, &v292);
      v282 = v292;
      v91 = WORD2(v292);
      v275 = WORD3(v292);
      v92 = WORD4(v292);
      v274 = WORD5(v292);
      v93 = WORD6(v292);
      v94 = HIWORD(v292);
      v95 = v293;
      v96 = WORD1(v293);
      v97 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v99 = v98;
      v100 = (v276)(v277, v280);
      v102 = specialized static ICUPercentNumberFormatter._create(with:)(v97, v99, v100, v101);

      v273 = v92;
      v272 = v91;
      v271 = v94;
      LODWORD(v270) = v96;
      if (v102)
      {
        v103 = *(v102 + 2);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_allocObject();
        v104 = v282 | (v91 << 32);
        v105 = v275;
        v106 = v274;
        v107 = rawValue;
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v103, v104 | (v275 << 48), v92 | (v274 << 16) | (v93 << 32) | (v94 << 48), v95 | (v96 << 16));
        v108 = v106;
        v109 = v95;
        if (v107)
        {

          v110 = 0;
        }

        else
        {
          rawValue = 0;

          v131 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v136 = v135;

          if (v136)
          {
            v74 = v136;
            goto LABEL_105;
          }

          v110 = rawValue;
          v109 = v95;
        }
      }

      else
      {
        v110 = rawValue;
        v105 = v275;
        v108 = v274;
        v109 = v95;
      }

      LODWORD(v292) = v282;
      v111 = v272;
      WORD2(v292) = v272;
      WORD3(v292) = v105;
      v74 = v273;
      WORD4(v292) = v273;
      WORD5(v292) = v108;
      WORD6(v292) = v93;
      v112 = v271;
      HIWORD(v292) = v271;
      LOWORD(v293) = v109;
      v113 = v270;
      WORD1(v293) = v270;
      if (_So9NSDecimala__length_getter(&v292) || (LODWORD(v292) = v282, WORD2(v292) = v111, WORD3(v292) = v105, WORD4(v292) = v74, WORD5(v292) = v108, WORD6(v292) = v93, HIWORD(v292) = v112, LOWORD(v293) = v109, WORD1(v293) = v113, !_So9NSDecimala__isNegative_getter(&v292)))
      {
        LODWORD(v292) = v282;
        WORD2(v292) = v111;
        WORD3(v292) = v105;
        WORD4(v292) = v74;
        WORD5(v292) = v108;
        WORD6(v292) = v93;
        HIWORD(v292) = v112;
        LOWORD(v293) = v109;
        WORD1(v293) = v113;
        if (_So9NSDecimala__length_getter(&v292))
        {
          *&v286[1] = 0;
          *&v286[9] = 0xE000000000000000;
          LODWORD(v292) = v282;
          WORD2(v292) = v111;
          WORD3(v292) = v105;
          WORD4(v292) = v74;
          WORD5(v292) = v108;
          WORD6(v292) = v93;
          HIWORD(v292) = v112;
          LOWORD(v293) = v109;
          WORD1(v293) = v113;
          v290 = v292;
          v291 = v293;
          if (_So9NSDecimala__exponent_getter(&v290) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v290 = v292;
              v291 = v293;
              v114 = _So9NSDecimala__exponent_getter(&v290);
              _So9NSDecimala__exponent_setter((v114 - 1), &v292);
              v290 = v292;
              v291 = v293;
            }

            while (_So9NSDecimala__exponent_getter(&v290) > 0);
          }

          v290 = v292;
          v291 = v293;
          v115 = _So9NSDecimala__exponent_getter(&v290);
          v32 = v284;
          if (!v115)
          {
            _So9NSDecimala__exponent_setter(1, &v292);
          }

          v290 = v292;
          v291 = v293;
          if (_So9NSDecimala__length_getter(&v290))
          {
            while (1)
            {
              rawValue = v110;
              v290 = v292;
              v291 = v293;
              if (!_So9NSDecimala__exponent_getter(&v290))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v290 = v292;
              v291 = v293;
              v116 = _So9NSDecimala__exponent_getter(&v290);
              _So9NSDecimala__exponent_setter((v116 + 1), &v292);
              v117 = WORD3(v292);
              v282 = v292;
              v281 = WORD2(v292);
              v280 = WORD4(v292);
              v279 = WORD5(v292);
              v278 = WORD6(v292);
              v276 = HIWORD(v292);
              LODWORD(v277) = v293;
              LODWORD(v275) = WORD1(v293);
              NSDecimal.asVariableLengthInteger()(v292 | (WORD2(v292) << 32) | (WORD3(v292) << 48), WORD4(v292) | (WORD5(v292) << 16) | (WORD6(v292) << 32) | (HIWORD(v292) << 48), v293 | (WORD1(v293) << 16));
              v119 = v118;
              v120 = *(v118 + 16);
              p_isa = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v120);
              *&v290 = p_isa;
              if (v120)
              {
                break;
              }

              v124 = 48;
LABEL_83:
              while (1)
              {
                v125 = p_isa[2];
                if (!v125 || *(p_isa + v125 + 15))
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v290 + 16) - 1);
                }

                p_isa = v290;
              }

              LODWORD(v290) = v282;
              WORD2(v290) = v281;
              WORD3(v290) = v117;
              WORD4(v290) = v280;
              WORD5(v290) = v279;
              WORD6(v290) = v278;
              HIWORD(v290) = v276;
              LOWORD(v291) = v277;
              HIWORD(v291) = v275;
              NSDecimal.copyVariableLengthInteger(_:)(p_isa);
              if (v126)
              {
                goto LABEL_302;
              }

              v127 = p_isa[2];

              if (HIDWORD(v127))
              {
                __break(1u);
              }

              _So9NSDecimala__length_setter(v127, &v290);
              v292 = v290;
              LODWORD(v293) = v291;
              *&v288 = v124;
              v128 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v128);

              v288 = v292;
              v289 = v293;
              v129 = _So9NSDecimala__length_getter(&v288);
              v110 = 0;
              v32 = v284;
              if (!v129)
              {
                goto LABEL_90;
              }
            }

            v122 = 0;
            v32 = v120 + 15;
            while (v32 - 15 <= *(v119 + 16))
            {
              v74 = *(v119 + 2 * v32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                p_isa = specialized _ArrayBuffer._consumeAndCreateNew()(p_isa);
              }

              if (v32 - 15 > p_isa[2])
              {
                goto LABEL_131;
              }

              v123 = v74 | (v122 << 16);
              *(p_isa + v32) = v123 / 0xA;
              v122 = v123 % 0xA;
              if (--v32 == 15)
              {

                *&v290 = p_isa;
                v124 = v122 | 0x30;
                goto LABEL_83;
              }
            }

            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

LABEL_90:
          v290 = v292;
          v291 = v293;
          if (_So9NSDecimala__exponent_getter(&v290) <= 0)
          {
            while (1)
            {
              v290 = v292;
              v291 = v293;
              if (!_So9NSDecimala__exponent_getter(&v290))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v290 = v292;
              v291 = v293;
              v130 = _So9NSDecimala__exponent_getter(&v290);
              _So9NSDecimala__exponent_setter((v130 + 1), &v292);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          rawValue = v110;
          v290 = v292;
          v291 = v293;
          if (_So9NSDecimala__isNegative_getter(&v290))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v290 = *&v286[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
          lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
          v131 = String.init<A>(_:)();
          v74 = v132;
LABEL_106:
          *&v290 = v131;
          *(&v290 + 1) = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
          v122 = swift_allocObject();
          isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
          v138 = @"NSDebugDescription";
          p_isa = &v138->isa;
          if (!isTaggedPointer)
          {
LABEL_111:
            LOBYTE(v288) = 0;
            *&v292 = 0;
            *v286 = 0;
            IsCF = __CFStringIsCF();
            if (!IsCF)
            {
              v146 = p_isa;
              v147 = String.init(_nativeStorage:)();
              if (v148)
              {
                v141 = v147;
                v143 = v148;

                goto LABEL_157;
              }

              *&v292 = [v146 length];
              if (v292)
              {
                goto LABEL_155;
              }

LABEL_133:
              v141 = 0;
              v143 = 0xE000000000000000;
              goto LABEL_157;
            }

            v145 = v292;
            if (v292)
            {
              if (v286[0] == 1)
              {
                if (v288)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v164 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_156;
              }

              if (v286[1])
              {
                if (v288 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v265 - 4) = p_isa;
                  *(&v265 - 3) = &v292;
                  *(&v265 - 4) = 1536;
                  *(&v265 - 1) = v145;
                }

                else
                {
                  v166 = [p_isa lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v166);
                  *(&v265 - 4) = p_isa;
                  *(&v265 - 3) = &v292;
                  *(&v265 - 4) = 134217984;
                  *(&v265 - 1) = v167;
                }

                v168 = rawValue;
                v169 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v143 = v170;
                rawValue = v168;
                v171 = HIBYTE(v170) & 0xF;
                if ((v170 & 0x2000000000000000) == 0)
                {
                  v171 = v169 & 0xFFFFFFFFFFFFLL;
                }

                if (v171)
                {
                  v141 = v169;

                  goto LABEL_153;
                }

                v32 = v284;
              }

LABEL_155:
              v164 = String.init(_cocoaString:)();
LABEL_156:
              v141 = v164;
              v143 = v165;
LABEL_157:
              *(v122 + 32) = v141;
              *(v122 + 40) = v143;
              *&v292 = 0;
              *(&v292 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(83);
              MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
              MEMORY[0x1865CB0E0](v32, v283);
              MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
              v172 = MEMORY[0x1E69E6158];
              _print_unlocked<A, B>(_:_:)();
              MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
              _print_unlocked<A, B>(_:_:)();
              MEMORY[0x1865CB0E0](34, 0xE100000000000000);
              v173 = v292;
              *(v122 + 72) = v172;
              *(v122 + 48) = v173;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
              v13 = static _DictionaryStorage.allocate(capacity:)();
              outlined init with copy of (String, Any)(v122 + 32, &v292);
              swift_setDeallocating();

              outlined destroy of TermOfAddress?(v122 + 32, &_sSS_yptMd);
              swift_deallocClassInstance();
              v174 = v292;
              v80 = specialized __RawDictionaryStorage.find<A>(_:)(v292, *(&v292 + 1));
              v32 = v175;

              if (v32)
              {
                __break(1u);
              }

              else
              {
                *(v13 + 8 * (v80 >> 6) + 64) |= 1 << v80;
                *(*(v13 + 48) + 16 * v80) = v174;
                outlined init with take of Any(&v293, (*(v13 + 56) + 32 * v80));
                v176 = *(v13 + 16);
                v177 = __OFADD__(v176, 1);
                v178 = v176 + 1;
                if (!v177)
                {
                  *(v13 + 16) = v178;
                  v179 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                  v180 = @"NSCocoaErrorDomain";
                  v181 = v180;
                  if (!v179)
                  {
                    goto LABEL_164;
                  }

                  TaggedPointerTag = _objc_getTaggedPointerTag(v180);
                  if (TaggedPointerTag)
                  {
                    if (TaggedPointerTag != 22)
                    {
                      if (TaggedPointerTag == 2)
                      {
                        MEMORY[0x1EEE9AC00](TaggedPointerTag);
                        *(&v265 - 2) = v181;
                        v183 = rawValue;
                        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        rawValue = v183;

                        goto LABEL_193;
                      }

LABEL_164:
                      LOBYTE(v288) = 0;
                      *&v292 = 0;
                      *v286 = 0;
                      v184 = __CFStringIsCF();
                      if (v184)
                      {
                        v185 = v292;
                        if (!v292)
                        {
LABEL_190:

                          goto LABEL_193;
                        }

                        if (v286[0] == 1)
                        {
                          if (v288)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_193:
                          v32 = objc_allocWithZone(NSError);
                          v197 = String._bridgeToObjectiveCImpl()();

                          v13 = [v32 initWithDomain:v197 code:2048 userInfo:_NativeDictionary.bridged()()];
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          v198 = [v13 domain];
                          if (!v198)
                          {
                            goto LABEL_204;
                          }

                          v199 = v198;
                          v32 = _objc_isTaggedPointer(v198);
                          v200 = v199;
                          v201 = v200;
                          if (!v32)
                          {
LABEL_199:
                            LOBYTE(v288) = 0;
                            *&v292 = 0;
                            *v286 = 0;
                            v207 = __CFStringIsCF();
                            if (!v207)
                            {
                              v32 = v74;
                              v209 = v201;
                              v210 = String.init(_nativeStorage:)();
                              if (v211)
                              {
                                v204 = v210;
                                v206 = v211;

                                v74 = v32;
                                goto LABEL_233;
                              }

                              *&v292 = [v209 length];
                              if (!v292)
                              {

                                v204 = 0;
                                v206 = 0xE000000000000000;
                                v74 = v32;
                                goto LABEL_233;
                              }

                              v74 = v32;
                              goto LABEL_230;
                            }

                            v208 = v292;
                            if (v292)
                            {
                              if (v286[0] == 1)
                              {
                                if (v288)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                v215 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                goto LABEL_231;
                              }

                              if (v286[1])
                              {
                                if (v288 == 1)
                                {
                                  v32 = &v265;
                                  MEMORY[0x1EEE9AC00](v207);
                                  *(&v265 - 4) = v201;
                                  *(&v265 - 3) = &v292;
                                  *(&v265 - 4) = 1536;
                                  *(&v265 - 1) = v208;
                                }

                                else
                                {
                                  v217 = [v201 lengthOfBytesUsingEncoding_];
                                  v32 = &v265;
                                  MEMORY[0x1EEE9AC00](v217);
                                  *(&v265 - 4) = v201;
                                  *(&v265 - 3) = &v292;
                                  *(&v265 - 4) = 134217984;
                                  *(&v265 - 1) = v218;
                                }

                                v219 = rawValue;
                                v220 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v206 = v221;
                                rawValue = v219;
                                v222 = HIBYTE(v221) & 0xF;
                                if ((v221 & 0x2000000000000000) == 0)
                                {
                                  v222 = v220 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v222)
                                {
                                  v204 = v220;
                                  goto LABEL_213;
                                }
                              }

LABEL_230:
                              v215 = String.init(_cocoaString:)();
LABEL_231:
                              v204 = v215;
                              v206 = v216;
                              goto LABEL_232;
                            }

LABEL_204:
                            v204 = 0;
                            v206 = 0xE000000000000000;
                            goto LABEL_233;
                          }

                          v202 = _objc_getTaggedPointerTag(v200);
                          if (v202)
                          {
                            if (v202 != 22)
                            {
                              if (v202 == 2)
                              {
                                v32 = &v265;
                                MEMORY[0x1EEE9AC00](v202);
                                *(&v265 - 2) = v201;
                                v203 = rawValue;
                                v204 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v206 = v205;
                                rawValue = v203;

                                goto LABEL_233;
                              }

                              goto LABEL_199;
                            }

                            v212 = [v201 UTF8String];
                            if (!v212)
                            {
                              goto LABEL_300;
                            }

                            v213 = String.init(utf8String:)(v212);
                            if (v214)
                            {
LABEL_212:
                              v204 = v213;
                              v206 = v214;
LABEL_213:

LABEL_232:
LABEL_233:
                              v223 = v181;
                              v224 = v223;
                              if (!v179)
                              {
                                goto LABEL_238;
                              }

                              v225 = _objc_getTaggedPointerTag(v223);
                              if (v225)
                              {
                                if (v225 != 22)
                                {
                                  if (v225 == 2)
                                  {
                                    v32 = &v265;
                                    MEMORY[0x1EEE9AC00](v225);
                                    *(&v265 - 2) = v224;
                                    v226 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                    v80 = v227;

                                    goto LABEL_267;
                                  }

LABEL_238:
                                  LOBYTE(v288) = 0;
                                  *&v292 = 0;
                                  *v286 = 0;
                                  v228 = __CFStringIsCF();
                                  if (v228)
                                  {
                                    v229 = v292;
                                    if (!v292)
                                    {

                                      v226 = 0;
                                      v80 = 0xE000000000000000;
                                      goto LABEL_267;
                                    }

                                    if (v286[0] == 1)
                                    {
                                      if (v288)
                                      {
                                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                      }

                                      else
                                      {
                                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                      }

                                      v226 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                      v80 = v237;
                                      goto LABEL_267;
                                    }

                                    v230 = v74;
                                    if (v286[1])
                                    {
                                      if (v288 == 1)
                                      {
                                        v32 = &v265;
                                        MEMORY[0x1EEE9AC00](v228);
                                        *(&v265 - 4) = v224;
                                        *(&v265 - 3) = &v292;
                                        *(&v265 - 4) = 1536;
                                        *(&v265 - 1) = v229;
                                      }

                                      else
                                      {
                                        v238 = [(__CFString *)v224 lengthOfBytesUsingEncoding:4];
                                        v32 = &v265;
                                        MEMORY[0x1EEE9AC00](v238);
                                        *(&v265 - 4) = v224;
                                        *(&v265 - 3) = &v292;
                                        *(&v265 - 4) = 134217984;
                                        *(&v265 - 1) = v239;
                                      }

                                      v240 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                      v80 = v241;
                                      v242 = HIBYTE(v241) & 0xF;
                                      if ((v241 & 0x2000000000000000) == 0)
                                      {
                                        v242 = v240 & 0xFFFFFFFFFFFFLL;
                                      }

                                      if (v242)
                                      {
                                        v226 = v240;

                                        goto LABEL_267;
                                      }
                                    }

                                    goto LABEL_265;
                                  }

                                  v230 = v74;
                                  v231 = v224;
                                  v232 = String.init(_nativeStorage:)();
                                  if (v233)
                                  {
                                    v226 = v232;
                                    v80 = v233;
                                  }

                                  else
                                  {
                                    *&v292 = [(__CFString *)v231 length];
                                    if (v292)
                                    {
LABEL_265:
                                      v226 = String.init(_cocoaString:)();
                                      v80 = v243;
                                      goto LABEL_266;
                                    }

                                    v226 = 0;
                                    v80 = 0xE000000000000000;
                                  }

LABEL_266:
                                  v74 = v230;
LABEL_267:
                                  if (v204 == v226 && v206 == v80)
                                  {

LABEL_271:
                                    swift_willThrow();
                                  }

                                  v244 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v244)
                                  {
                                    goto LABEL_271;
                                  }

                                  goto LABEL_275;
                                }

                                v234 = [(__CFString *)v224 UTF8String];
                                if (!v234)
                                {
                                  goto LABEL_299;
                                }

                                v235 = String.init(utf8String:)(v234);
                                if (v236)
                                {
LABEL_250:
                                  v226 = v235;
                                  v80 = v236;

                                  goto LABEL_267;
                                }

                                __break(1u);
                              }

                              *&v286[1] = 0;
                              _CFIndirectTaggedPointerStringGetContents();
                              v235 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                              if (!v236)
                              {
                                [(__CFString *)v224 mutableCopy];
                                _bridgeAnyObjectToAny(_:)();

                                swift_unknownObjectRelease();
                                swift_dynamicCast();
                                v80 = *(&v288 + 1);
                                v226 = v288;
                                goto LABEL_267;
                              }

                              goto LABEL_250;
                            }

                            __break(1u);
                          }

                          *&v286[1] = 0;
                          _CFIndirectTaggedPointerStringGetContents();
                          v213 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                          if (!v214)
                          {
                            v32 = [v201 mutableCopy];
                            _bridgeAnyObjectToAny(_:)();

                            swift_unknownObjectRelease();
                            swift_dynamicCast();
                            v206 = *(&v288 + 1);
                            v204 = v288;
                            goto LABEL_232;
                          }

                          goto LABEL_212;
                        }

                        if (v286[1])
                        {
                          if (v288 == 1)
                          {
                            MEMORY[0x1EEE9AC00](v184);
                            *(&v265 - 4) = v181;
                            *(&v265 - 3) = &v292;
                            *(&v265 - 4) = 1536;
                            *(&v265 - 1) = v185;
                          }

                          else
                          {
                            v191 = [(__CFString *)v181 lengthOfBytesUsingEncoding:4];
                            MEMORY[0x1EEE9AC00](v191);
                            *(&v265 - 4) = v181;
                            *(&v265 - 3) = &v292;
                            *(&v265 - 4) = 134217984;
                            *(&v265 - 1) = v192;
                          }

                          v193 = rawValue;
                          v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          rawValue = v193;
                          v196 = HIBYTE(v195) & 0xF;
                          if ((v195 & 0x2000000000000000) == 0)
                          {
                            v196 = v194 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v196)
                          {
                            goto LABEL_190;
                          }
                        }
                      }

                      else
                      {
                        v186 = v181;
                        String.init(_nativeStorage:)();
                        if (v187 || (*&v292 = [(__CFString *)v186 length], !v292))
                        {

                          goto LABEL_193;
                        }
                      }

                      String.init(_cocoaString:)();
                      goto LABEL_193;
                    }

                    v188 = [(__CFString *)v181 UTF8String];
                    if (!v188)
                    {
                      goto LABEL_298;
                    }

                    String.init(utf8String:)(v188);
                    if (v189)
                    {
                      goto LABEL_190;
                    }

                    __break(1u);
                  }

                  *&v286[1] = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v190)
                  {
                    [(__CFString *)v181 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_193;
                  }

                  goto LABEL_190;
                }
              }

              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
LABEL_277:
              __break(1u);
              goto LABEL_278;
            }

LABEL_132:

            goto LABEL_133;
          }

          v139 = _objc_getTaggedPointerTag(v138);
          if (v139)
          {
            if (v139 != 22)
            {
              if (v139 == 2)
              {
                MEMORY[0x1EEE9AC00](v139);
                *(&v265 - 2) = p_isa;
                v140 = rawValue;
                v141 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v143 = v142;
                rawValue = v140;

LABEL_153:
                v32 = v284;
                goto LABEL_157;
              }

              goto LABEL_111;
            }

            v161 = [p_isa UTF8String];
            if (!v161)
            {
              goto LABEL_297;
            }

            v162 = String.init(utf8String:)(v161);
            if (v163)
            {
LABEL_138:
              v141 = v162;
              v143 = v163;

              goto LABEL_157;
            }

            __break(1u);
          }

          *&v286[1] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v162 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v163)
          {
            [p_isa mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v143 = *(&v288 + 1);
            v141 = v288;
            goto LABEL_157;
          }

          goto LABEL_138;
        }

        rawValue = v110;
        v74 = 0xE100000000000000;
        v131 = 48;
      }

      else
      {
        rawValue = v110;
        v131 = 5136718;
        v74 = 0xE300000000000000;
      }

LABEL_105:
      v32 = v284;
      goto LABEL_106;
    }

    v13 = 10;
    while (1)
    {
      v290 = v292;
      v291 = v293;
      if (!_So9NSDecimala__exponent_getter(&v290))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v290 = v292;
      v291 = v293;
      v71 = _So9NSDecimala__exponent_getter(&v290);
      _So9NSDecimala__exponent_setter((v71 + 1), &v292);
      v72 = v292;
      v73 = WORD2(v292);
      v38 = WORD4(v292);
      v74 = WORD5(v292);
      v271 = WORD3(v292);
      v275 = WORD6(v292);
      v273 = HIWORD(v292);
      LODWORD(v274) = v293;
      LODWORD(v272) = WORD1(v293);
      NSDecimal.asVariableLengthInteger()(v292 | (WORD2(v292) << 32) | (WORD3(v292) << 48), WORD4(v292) | (WORD5(v292) << 16) | (WORD6(v292) << 32) | (HIWORD(v292) << 48), v293 | (WORD1(v293) << 16));
      v133 = v75;
      v76 = *(v75 + 16);
      v134._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v76);
      *&v290 = v134;
      if (v76)
      {
        break;
      }

      v32 = 48;
LABEL_41:
      while (1)
      {
        v78 = *(v134._rawValue + 2);
        if (!v78 || *(v134._rawValue + v78 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v290 + 16) - 1);
        }

        v134._rawValue = v290;
      }

      LODWORD(v290) = v72;
      WORD2(v290) = v73;
      WORD3(v290) = v271;
      WORD4(v290) = v38;
      WORD5(v290) = v74;
      WORD6(v290) = v275;
      HIWORD(v290) = v273;
      LOWORD(v291) = v274;
      HIWORD(v291) = v272;
      NSDecimal.copyVariableLengthInteger(_:)(v134);
      rawValue = v79;
      if (v79)
      {
        goto LABEL_302;
      }

      v80 = *(v134._rawValue + 2);

      if (HIDWORD(v80))
      {
        goto LABEL_277;
      }

      _So9NSDecimala__length_setter(v80, &v290);
      v292 = v290;
      LODWORD(v293) = v291;
      *&v288 = v32;
      v83 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v83);

      v288 = v292;
      v289 = v293;
      if (!_So9NSDecimala__length_getter(&v288))
      {
        goto LABEL_48;
      }
    }

    v268 = v74;
    v269 = v38;
    v270 = v73;
    a2 = v72;
    v74 = 0;
    v32 = v76 + 15;
    while (v32 - 15 <= *(v133 + 16))
    {
      v38 = *(v133 + 2 * v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v134._rawValue);
      }

      if (v32 - 15 > *(v134._rawValue + 2))
      {
        goto LABEL_119;
      }

      v77 = v38 | (v74 << 16);
      *(v134._rawValue + v32) = v77 / 0xA;
      v74 = v77 % 0xA;
      if (--v32 == 15)
      {

        *&v290 = v134;
        v32 = v74 | 0x30;
        LOWORD(v73) = v270;
        LOWORD(v38) = v269;
        v74 = v268;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:

LABEL_121:
    v149 = v272;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v13, v272, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v271 = v133;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v292 = *(v32 + 16);
    v80 = v292;
    *(v32 + 16) = 0x8000000000000000;
    v82 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
    v151 = *(v80 + 16);
    v152 = (v81 & 1) == 0;
    v153 = v151 + v152;
    if (__OFADD__(v151, v152))
    {
      goto LABEL_276;
    }

    v154 = *(v80 + 24);
    rawValue = v134._rawValue;
    if (v154 >= v153)
    {
      break;
    }

    v155 = isUniquelyReferenced_nonNull_native;
    v156 = v81;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v153, v155);
    v80 = v292;
    v157 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
    if ((v156 & 1) != (v158 & 1))
    {
      goto LABEL_303;
    }

    v82 = v157;
    if ((v156 & 1) == 0)
    {
LABEL_125:
      v159 = v281;
      v160 = v82;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v149, v281, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v160, v159, v271, v80);
      goto LABEL_129;
    }

LABEL_128:
    *(*(v80 + 56) + 8 * v82) = v271;

LABEL_129:
    outlined destroy of ICULegacyNumberFormatter.Signature(v149, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v32 + 16) = v80;

    os_unfair_lock_unlock((v32 + 24));
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v81 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

LABEL_278:
  v245 = v80;
  v267 = v82;
  LODWORD(v268) = v81;
  v269 = v74;
  v266 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
  v246 = static _DictionaryStorage.copy(original:)();
  v80 = v246;
  v279 = v245;
  if (!*(v245 + 16))
  {
LABEL_293:

    a2 = v283;
    v38 = v277;
    v149 = v272;
    v13 = v266;
    v82 = v267;
    if ((v268 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

  v247 = (v246 + 64);
  v248 = 1 << *(v80 + 32);
  v270 = (v279 + 64);
  v249 = (v248 + 63) >> 6;
  if (v80 != v279 || v247 >= &v270[8 * v249])
  {
    memmove(v247, v270, 8 * v249);
  }

  v250 = 0;
  v251 = v279;
  *(v80 + 16) = *(v279 + 16);
  v252 = 1 << *(v251 + 32);
  v253 = *(v251 + 64);
  v254 = -1;
  if (v252 < 64)
  {
    v254 = ~(-1 << v252);
  }

  v255 = v254 & v253;
  v256 = (v252 + 63) >> 6;
  if ((v254 & v253) != 0)
  {
    do
    {
      v257 = __clz(__rbit64(v255));
      v255 &= v255 - 1;
LABEL_291:
      v260 = v257 | (v250 << 6);
      v261 = v279;
      v262 = *(v280 + 72) * v260;
      v263 = v281;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(*(v279 + 48) + v262, v281, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v264 = *(*(v261 + 56) + 8 * v260);
      outlined init with take of ICULegacyNumberFormatter.Signature(v263, *(v80 + 48) + v262, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(*(v80 + 56) + 8 * v260) = v264;
    }

    while (v255);
  }

  v258 = v250;
  while (1)
  {
    v250 = v258 + 1;
    if (__OFADD__(v258, 1))
    {
      break;
    }

    if (v250 >= v256)
    {
      goto LABEL_293;
    }

    v259 = *&v270[8 * v250];
    ++v258;
    if (v259)
    {
      v257 = __clz(__rbit64(v259));
      v255 = (v259 - 1) & v259;
      goto LABEL_291;
    }
  }

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
  os_unfair_lock_unlock((v32 + 24));
  __break(1u);
LABEL_302:

  swift_unexpectedError();
  __break(1u);
LABEL_303:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v295 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v276 = v6;
  v277 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v278 = &v261 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v261 - v12;
  v282 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v282);
  v15 = (&v261 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v261 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v280 = a1;
  v281 = a2;
  v20 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v279 = v2;
  if (!v19)
  {
    goto LABEL_15;
  }

  v271 = v20;
  v272 = v19;
  v270 = &v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v18;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v2, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd) + 48));
  outlined init with take of ICULegacyNumberFormatter.Signature(v15 + *(v282 + 24), v21, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v23 = v15[3];
  *v22 = v15[2];
  v22[1] = v23;
  swift_storeEnumTagMultiPayload();
  v24 = *v15;
  v25 = v15[1];
  LOBYTE(v22) = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd) + 36));
  v274 = v21;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v21, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v273 = v24;
  v28 = v27(ObjectType, v25);
  v29 = v276;
  v30 = &v13[*(v276 + 20)];
  *v30 = v28;
  v30[1] = v31;
  v13[*(v29 + 24)] = v22;
  v32 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static ICULegacyNumberFormatter.cache;
  v34 = qword_1EA7AFFA0;
  v35 = v13;
  v36 = v278;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v35, v278, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v37 = (*(v277 + 80) + 16) & ~*(v277 + 80);
  v38 = swift_allocObject();
  v39 = outlined init with take of ICULegacyNumberFormatter.Signature(v36, v38 + v37, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v39);
  *(&v261 - 2) = v32;
  os_unfair_lock_lock(v34 + 6);
  v40 = v283;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v34[4], &v293);
  if (v40)
  {
    goto LABEL_302;
  }

  os_unfair_lock_unlock(v34 + 6);
  v275 = v293;
  if (!v293)
  {
    v275 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v283 = 0;
    os_unfair_lock_lock(v34 + 6);
    v139 = *&v34[4]._os_unfair_lock_opaque;
    if (v33 >= *(v139 + 16))
    {
    }

    else
    {
      *&v34[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
    }

    v153 = v270;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v32, v270, type metadata accessor for ICULegacyNumberFormatter.Signature);

    LODWORD(v269) = swift_isUniquelyReferenced_nonNull_native();
    *&v293 = *&v34[4]._os_unfair_lock_opaque;
    v78 = v293;
    *&v34[4]._os_unfair_lock_opaque = 0x8000000000000000;
    v91 = specialized __RawDictionaryStorage.find<A>(_:)(v153);
    v155 = *(v78 + 16);
    v156 = (v154 & 1) == 0;
    v157 = v155 + v156;
    if (__OFADD__(v155, v156))
    {
      goto LABEL_275;
    }

    LODWORD(v33) = v154;
    v158 = *(v78 + 24);
    v268 = v139;
    if (v158 >= v157)
    {
      if ((v269 & 1) == 0)
      {
        goto LABEL_277;
      }

      v159 = v78;
      if ((v154 & 1) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_130;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v157, v269);
    v159 = v293;
    v160 = specialized __RawDictionaryStorage.find<A>(_:)(v270);
    if ((v33 & 1) == (v161 & 1))
    {
      v91 = v160;
      if ((v33 & 1) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_130;
    }

    goto LABEL_304;
  }

  v283 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v32, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v41 = String.subscript.getter();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    *&v291 = 0;
    v48 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v41, v42, v44, v46, &v291);
    if ((v49 & 0x100000000) == 0)
    {
      *&v293 = v41;
      *(&v293 + 1) = v43;
      *&v294 = v45;
      *(&v294 + 1) = v47;
      v50 = v48;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v274, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v50;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v274, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

LABEL_15:
    v53 = v282;
    v52 = v283;
    v293 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(v280, v281, &v293);
    if ((v54 & 0x100000000) == 0)
    {
      return result;
    }

    v283 = v52;
    specialized NSDecimal.init(_:)(3.14);
    v277 = v56;
    v278 = v55;
    LODWORD(v276) = v57;
    v58 = v279;
    v273 = *(v53 + 24);
    v59 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v61 = v60;
    v62 = v58[2];
    v63 = v58[3];
    v64 = *v58;
    v65 = v58[1];
    v66 = swift_getObjectType();
    v67 = *(v65 + 472);

    v271 = v64;
    v272 = v65;
    v269 = v66;
    v270 = v65 + 472;
    v268 = v67;
    v68 = v67(v66, v65);
    v288[0] = v59;
    v288[1] = v61;
    v274 = v62;
    v288[2] = v62;
    v288[3] = v63;
    v288[4] = v68;
    v288[5] = v69;

    v70 = specialized static ICUCurrencyNumberFormatter._create(with:)(v288);

    v275 = v63;

    if (v70)
    {
      v71 = *(v70 + 2);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v73 = v277;
      v72 = v278;
      v74 = v276;
      v75 = v283;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v71, v278, v277, v276);
      v76 = v75;
      if (v75)
      {

        v76 = 0;
      }

      else
      {

        v94 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v96 = v97;

        if (v96)
        {
          v283 = 0;
          goto LABEL_62;
        }
      }
    }

    else
    {
      v76 = v283;
      v74 = v276;
      v73 = v277;
      v72 = v278;
    }

    *&v293 = v72;
    *(&v293 + 1) = v73;
    LODWORD(v294) = v74;
    if (!_So9NSDecimala__length_getter(&v293))
    {
      *&v293 = v72;
      *(&v293 + 1) = v73;
      LODWORD(v294) = v74;
      if (_So9NSDecimala__isNegative_getter(&v293))
      {
        v283 = v76;
        v94 = 5136718;
        v96 = 0xE300000000000000;
        goto LABEL_62;
      }
    }

    *&v293 = v72;
    *(&v293 + 1) = v73;
    LODWORD(v294) = v74;
    if (_So9NSDecimala__length_getter(&v293))
    {
      *&v286 = 0;
      *(&v286 + 1) = 0xE000000000000000;
      *&v293 = v72;
      *(&v293 + 1) = v73;
      LODWORD(v294) = v74;
      v291 = v293;
      j = v74;
      if (_So9NSDecimala__exponent_getter(&v291) >= 1)
      {
        do
        {
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v291 = v293;
          j = v294;
          v77 = _So9NSDecimala__exponent_getter(&v291);
          _So9NSDecimala__exponent_setter((v77 - 1), &v293);
          v291 = v293;
          j = v294;
        }

        while (_So9NSDecimala__exponent_getter(&v291) > 0);
      }

      v291 = v293;
      j = v294;
      if (!_So9NSDecimala__exponent_getter(&v291))
      {
        _So9NSDecimala__exponent_setter(1, &v293);
      }

      v291 = v293;
      j = v294;
      if (_So9NSDecimala__length_getter(&v291))
      {
        LODWORD(v33) = -858993459;
        v78 = 10;
        do
        {
          v291 = v293;
          j = v294;
          if (!_So9NSDecimala__exponent_getter(&v291))
          {
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          }

          v291 = v293;
          j = v294;
          v79 = _So9NSDecimala__exponent_getter(&v291);
          _So9NSDecimala__exponent_setter((v79 + 1), &v293);
          v32 = v293;
          v282 = WORD2(v293);
          v264 = WORD3(v293);
          v277 = WORD5(v293);
          v278 = WORD4(v293);
          v276 = WORD6(v293);
          v266 = HIWORD(v293);
          LODWORD(v267) = v294;
          LODWORD(v265) = WORD1(v294);
          NSDecimal.asVariableLengthInteger()(v293 | (WORD2(v293) << 32) | (WORD3(v293) << 48), WORD4(v293) | (WORD5(v293) << 16) | (WORD6(v293) << 32) | (HIWORD(v293) << 48), v294 | (WORD1(v294) << 16));
          v81 = v80;
          v82 = *(v80 + 16);
          v83._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v82);
          *&v291 = v83;
          if (v82)
          {
            v263 = v32;
            v283 = v76;
            v32 = 0;
            v84 = v82 + 15;
            do
            {
              v34 = (v84 - 15);
              if ((v84 - 15) > *(v81 + 16))
              {
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v85 = *(v81 + 2 * v84);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v83._rawValue);
              }

              if (v34 > *(v83._rawValue + 2))
              {
                goto LABEL_102;
              }

              v86 = v85 | (v32 << 16);
              *(v83._rawValue + v84) = v86 / 0xA;
              v32 = v86 % 0xA;
              --v84;
            }

            while (v84 != 15);

            *&v291 = v83;
            v87 = v32 | 0x30;
            v32 = v263;
            v88 = *(v83._rawValue + 2);
            if (!v88)
            {
              goto LABEL_45;
            }
          }

          else
          {

            v87 = 48;
            v88 = *(v83._rawValue + 2);
            if (!v88)
            {
LABEL_45:
              v34 = &v289;
              goto LABEL_46;
            }
          }

          v34 = &v289;
          do
          {
            if (*(v83._rawValue + v88 + 15))
            {
              break;
            }

            if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
            {
              specialized Array.remove(at:)(*(v291 + 16) - 1);
            }

            v83._rawValue = v291;
            v88 = *(v291 + 16);
          }

          while (v88);
LABEL_46:
          LODWORD(v291) = v32;
          WORD2(v291) = v282;
          WORD3(v291) = v264;
          WORD4(v291) = v278;
          WORD5(v291) = v277;
          WORD6(v291) = v276;
          HIWORD(v291) = v266;
          LOWORD(j) = v267;
          HIWORD(j) = v265;
          NSDecimal.copyVariableLengthInteger(_:)(v83);
          v76 = v89;
          if (v89)
          {
            goto LABEL_303;
          }

          v90 = *(v83._rawValue + 2);

          if (HIDWORD(v90))
          {
            goto LABEL_276;
          }

          _So9NSDecimala__length_setter(v90, &v291);
          v293 = v291;
          LODWORD(v294) = j;
          *&v289 = v87;
          v92 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v92);

          v289 = v293;
          v290 = v294;
        }

        while (_So9NSDecimala__length_getter(&v289));
      }

      v291 = v293;
      j = v294;
      if (_So9NSDecimala__exponent_getter(&v291) <= 0)
      {
        while (1)
        {
          v291 = v293;
          j = v294;
          if (!_So9NSDecimala__exponent_getter(&v291))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v291 = v293;
          j = v294;
          v93 = _So9NSDecimala__exponent_getter(&v291);
          _So9NSDecimala__exponent_setter((v93 + 1), &v293);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v291 = v293;
      j = v294;
      if (_So9NSDecimala__isNegative_getter(&v291))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v283 = v76;
      v291 = v286;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
      lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
      v94 = String.init<A>(_:)();
      v96 = v95;
    }

    else
    {
      v283 = v76;
      v96 = 0xE100000000000000;
      v94 = 48;
    }

LABEL_62:
    *&v286 = v94;
    *(&v286 + 1) = v96;
    v265 = v96;
    *&v293 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v293 + 1) = v98;
    LODWORD(v294) = v99;
    _So9NSDecimala__isNegative_setter(1, &v293);
    v276 = v293;
    v279 = WORD2(v293);
    v100 = WORD3(v293);
    v277 = WORD4(v293);
    v282 = WORD5(v293);
    v101 = WORD6(v293);
    v278 = HIWORD(v293);
    v102 = v294;
    v103 = WORD1(v294);
    v104 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v106 = v105;
    v107 = v268(v269, v272);
    v287[0] = v104;
    v287[1] = v106;
    v287[2] = v274;
    v287[3] = v275;
    v287[4] = v107;
    v287[5] = v108;
    v109 = specialized static ICUCurrencyNumberFormatter._create(with:)(v287);

    LODWORD(v267) = v103;
    v266 = v101;
    if (!v109)
    {
      LODWORD(v275) = v102;
      v113 = v276;
      v117 = v279;
LABEL_66:
      v112 = v277;
      v118 = v282;
      goto LABEL_67;
    }

    v274 = v109;
    v110 = *(v109 + 2);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v111 = v101;
    v113 = v276;
    v112 = v277;
    v114 = v279;
    v115 = v102;
    v34 = v282;
    v116 = v283;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v110, v276 | (v279 << 32) | (v100 << 48), v277 | (v282 << 16) | (v111 << 32) | (v278 << 48), v115 | (v103 << 16));
    v117 = v114;
    if (!v116)
    {
      v283 = 0;

      v137 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v138 = v140;

      if (v138)
      {
        goto LABEL_100;
      }

      LODWORD(v275) = v115;
      goto LABEL_66;
    }

    v118 = v34;
    LODWORD(v275) = v115;

    v283 = 0;
LABEL_67:
    LODWORD(v293) = v113;
    WORD2(v293) = v117;
    WORD3(v293) = v100;
    WORD4(v293) = v112;
    WORD5(v293) = v118;
    v34 = v266;
    WORD6(v293) = v266;
    v119 = v278;
    HIWORD(v293) = v278;
    v120 = v275;
    LOWORD(v294) = v275;
    v121 = v267;
    WORD1(v294) = v267;
    if (!_So9NSDecimala__length_getter(&v293))
    {
      LODWORD(v293) = v113;
      WORD2(v293) = v279;
      WORD3(v293) = v100;
      WORD4(v293) = v112;
      WORD5(v293) = v282;
      WORD6(v293) = v34;
      HIWORD(v293) = v119;
      LOWORD(v294) = v120;
      WORD1(v294) = v121;
      if (_So9NSDecimala__isNegative_getter(&v293))
      {
        v137 = 5136718;
        v138 = 0xE300000000000000;
LABEL_100:
        v32 = v283;
        goto LABEL_110;
      }
    }

    LODWORD(v293) = v113;
    WORD2(v293) = v279;
    WORD3(v293) = v100;
    WORD4(v293) = v112;
    WORD5(v293) = v282;
    WORD6(v293) = v34;
    HIWORD(v293) = v119;
    LOWORD(v294) = v120;
    WORD1(v294) = v121;
    if (!_So9NSDecimala__length_getter(&v293))
    {
      v138 = 0xE100000000000000;
      v137 = 48;
      goto LABEL_100;
    }

    *&v285 = 0;
    *(&v285 + 1) = 0xE000000000000000;
    LODWORD(v293) = v113;
    WORD2(v293) = v279;
    WORD3(v293) = v100;
    WORD4(v293) = v112;
    WORD5(v293) = v282;
    WORD6(v293) = v34;
    HIWORD(v293) = v119;
    LOWORD(v294) = v120;
    WORD1(v294) = v121;
    v291 = v293;
    j = v294;
    if (_So9NSDecimala__exponent_getter(&v291) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v291 = v293;
        j = v294;
        v122 = _So9NSDecimala__exponent_getter(&v291);
        _So9NSDecimala__exponent_setter((v122 - 1), &v293);
        v291 = v293;
        j = v294;
      }

      while (_So9NSDecimala__exponent_getter(&v291) > 0);
    }

    v291 = v293;
    j = v294;
    v123 = _So9NSDecimala__exponent_getter(&v291);
    v32 = v283;
    if (!v123)
    {
      _So9NSDecimala__exponent_setter(1, &v293);
    }

    v291 = v293;
    j = v294;
    if (_So9NSDecimala__length_getter(&v291))
    {
      while (1)
      {
        v291 = v293;
        j = v294;
        if (!_So9NSDecimala__exponent_getter(&v291))
        {
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        }

        v283 = v32;
        v291 = v293;
        j = v294;
        v124 = _So9NSDecimala__exponent_getter(&v291);
        _So9NSDecimala__exponent_setter((v124 + 1), &v293);
        v282 = v293;
        v278 = WORD4(v293);
        v279 = WORD2(v293);
        v272 = WORD3(v293);
        v276 = WORD6(v293);
        v277 = WORD5(v293);
        v274 = HIWORD(v293);
        LODWORD(v275) = v294;
        LODWORD(v273) = WORD1(v294);
        NSDecimal.asVariableLengthInteger()(v293 | (WORD2(v293) << 32) | (WORD3(v293) << 48), WORD4(v293) | (WORD5(v293) << 16) | (WORD6(v293) << 32) | (HIWORD(v293) << 48), v294 | (WORD1(v294) << 16));
        v126 = v125;
        data = v125->data;
        v128._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, data);
        *&v291 = v128;
        if (data)
        {
          break;
        }

        v132 = 48;
LABEL_84:
        for (i = *(v128._rawValue + 2); i; i = *(v291 + 16))
        {
          if (*(v128._rawValue + i + 15))
          {
            break;
          }

          if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
          {
            specialized Array.remove(at:)(*(v291 + 16) - 1);
          }

          v128._rawValue = v291;
        }

        LODWORD(v291) = v282;
        WORD2(v291) = v279;
        WORD3(v291) = v272;
        WORD4(v291) = v278;
        WORD5(v291) = v277;
        WORD6(v291) = v276;
        HIWORD(v291) = v274;
        LOWORD(j) = v275;
        HIWORD(j) = v273;
        NSDecimal.copyVariableLengthInteger(_:)(v128);
        v32 = v134;
        if (v134)
        {
          goto LABEL_303;
        }

        v135 = *(v128._rawValue + 2);

        if (HIDWORD(v135))
        {
          __break(1u);
        }

        _So9NSDecimala__length_setter(v135, &v291);
        v34 = &v289;
        v293 = v291;
        LODWORD(v294) = j;
        *&v289 = v132;
        v136 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v136);

        v289 = v293;
        v290 = v294;
        if (!_So9NSDecimala__length_getter(&v289))
        {
          goto LABEL_103;
        }
      }

      v32 = 0;
      v129 = data + 15;
      while (v129 - 15 <= v126->data)
      {
        v130 = *(&v126->isa + v129);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v128._rawValue);
        }

        if (v129 - 15 > *(v128._rawValue + 2))
        {
          goto LABEL_132;
        }

        v131 = v130 | (v32 << 16);
        *(v128._rawValue + v129) = v131 / 0xA;
        v32 = v131 % 0xA;
        if (--v129 == 15)
        {

          *&v291 = v128;
          v132 = v32 | 0x30;
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:

LABEL_134:
      v33 = 0;
      v147 = 0xE000000000000000;
      goto LABEL_158;
    }

LABEL_103:
    v291 = v293;
    j = v294;
    if (_So9NSDecimala__exponent_getter(&v291) <= 0)
    {
      v291 = v293;
      for (j = v294; _So9NSDecimala__exponent_getter(&v291); j = v294)
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v291 = v293;
        j = v294;
        v141 = _So9NSDecimala__exponent_getter(&v291);
        _So9NSDecimala__exponent_setter((v141 + 1), &v293);
        v291 = v293;
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v291 = v293;
    j = v294;
    if (_So9NSDecimala__isNegative_getter(&v291))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v291 = v285;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
    lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
    v137 = String.init<A>(_:)();
    v138 = v142;
LABEL_110:
    *&v291 = v137;
    *(&v291 + 1) = v138;
    v283 = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v129 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v144 = @"NSDebugDescription";
    v126 = v144;
    if (!isTaggedPointer)
    {
      goto LABEL_115;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v144);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v261 - 2) = v126;
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v147 = v146;

          goto LABEL_158;
        }

LABEL_115:
        LOBYTE(v289) = 0;
        *&v293 = 0;
        LOBYTE(v285) = 0;
        v284 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v149 = v293;
          if (!v293)
          {
            goto LABEL_133;
          }

          if (v284 == 1)
          {
            if (v289)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v166 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_157;
          }

          if (v285)
          {
            if (v289 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v261 - 4) = v126;
              *(&v261 - 3) = &v293;
              *(&v261 - 4) = 1536;
              *(&v261 - 1) = v149;
            }

            else
            {
              v168 = [(__CFString *)v126 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v168);
              *(&v261 - 4) = v126;
              *(&v261 - 3) = &v293;
              *(&v261 - 4) = 134217984;
              *(&v261 - 1) = v169;
            }

            v170 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v147 = v171;
            v172 = HIBYTE(v171) & 0xF;
            if ((v171 & 0x2000000000000000) == 0)
            {
              v172 = v170 & 0xFFFFFFFFFFFFLL;
            }

            if (v172)
            {
              v33 = v170;
              goto LABEL_140;
            }
          }
        }

        else
        {
          v150 = v126;
          v151 = String.init(_nativeStorage:)();
          if (v152)
          {
            v33 = v151;
            v147 = v152;

            goto LABEL_158;
          }

          *&v293 = [(__CFString *)v150 length];
          if (!v293)
          {

            goto LABEL_134;
          }
        }

        v166 = String.init(_cocoaString:)();
LABEL_157:
        v33 = v166;
        v147 = v167;
        goto LABEL_158;
      }

      v163 = [(__CFString *)v126 UTF8String];
      if (!v163)
      {
        goto LABEL_297;
      }

      v164 = String.init(utf8String:)(v163);
      if (v165)
      {
LABEL_139:
        v33 = v164;
        v147 = v165;
LABEL_140:

        goto LABEL_158;
      }

      __break(1u);
    }

    LOWORD(v285) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v164 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v165)
    {
      goto LABEL_139;
    }

    [(__CFString *)v126 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v147 = *(&v289 + 1);
    v33 = v289;
LABEL_158:
    *(v129 + 32) = v33;
    *(v129 + 40) = v147;
    *&v293 = 0;
    *(&v293 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v280, v281);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    v173 = MEMORY[0x1E69E6158];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v174 = v293;
    *(v129 + 72) = v173;
    *(v129 + 48) = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v78 = static _DictionaryStorage.allocate(capacity:)();
    v34 = &v293;
    outlined init with copy of (String, Any)(v129 + 32, &v293);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v129 + 32, &_sSS_yptMd);
    swift_deallocClassInstance();
    v175 = v293;
    v176 = specialized __RawDictionaryStorage.find<A>(_:)(v293, *(&v293 + 1));
    LODWORD(v33) = v177;

    if (v33)
    {
      __break(1u);
LABEL_273:
      __break(1u);
      goto LABEL_274;
    }

    *(v78 + 8 * (v176 >> 6) + 64) |= 1 << v176;
    *(*(v78 + 48) + 16 * v176) = v175;
    outlined init with take of Any(&v294, (*(v78 + 56) + 32 * v176));
    v178 = *(v78 + 16);
    v179 = __OFADD__(v178, 1);
    v180 = v178 + 1;
    if (v179)
    {
      goto LABEL_273;
    }

    *(v78 + 16) = v180;
    v181 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v182 = @"NSCocoaErrorDomain";
    v183 = v182;
    if (v181)
    {
      v184 = _objc_getTaggedPointerTag(v182);
      switch(v184)
      {
        case 0:
          goto LABEL_176;
        case 0x16:
          v189 = [(__CFString *)v183 UTF8String];
          if (!v189)
          {
            goto LABEL_298;
          }

          String.init(utf8String:)(v189);
          if (!v190)
          {
            __break(1u);
LABEL_176:
            LOWORD(v285) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v191)
            {
              [(__CFString *)v183 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_193;
            }
          }

LABEL_190:

          goto LABEL_193;
        case 2:
          MEMORY[0x1EEE9AC00](v184);
          *(&v261 - 2) = v183;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_193;
      }
    }

    LOBYTE(v289) = 0;
    *&v293 = 0;
    LOBYTE(v285) = 0;
    v284 = 0;
    v185 = __CFStringIsCF();
    if (!v185)
    {
      v187 = v183;
      String.init(_nativeStorage:)();
      if (v188 || (*&v293 = [(__CFString *)v187 length], !v293))
      {

        goto LABEL_193;
      }

LABEL_192:
      String.init(_cocoaString:)();
      goto LABEL_193;
    }

    v186 = v293;
    if (!v293)
    {
      goto LABEL_190;
    }

    if (v284 != 1)
    {
      if (v285)
      {
        if (v289 == 1)
        {
          MEMORY[0x1EEE9AC00](v185);
          *(&v261 - 4) = v183;
          *(&v261 - 3) = &v293;
          *(&v261 - 4) = 1536;
          *(&v261 - 1) = v186;
        }

        else
        {
          v192 = [(__CFString *)v183 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v192);
          *(&v261 - 4) = v183;
          *(&v261 - 3) = &v293;
          *(&v261 - 4) = 134217984;
          *(&v261 - 1) = v193;
        }

        v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v196 = HIBYTE(v195) & 0xF;
        if ((v195 & 0x2000000000000000) == 0)
        {
          v196 = v194 & 0xFFFFFFFFFFFFLL;
        }

        if (v196)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_192;
    }

    if (v289)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_193:
    v34 = objc_allocWithZone(NSError);
    v197 = String._bridgeToObjectiveCImpl()();

    v78 = [(os_unfair_lock_s *)v34 initWithDomain:v197 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v198 = [v78 domain];
    if (!v198)
    {
      goto LABEL_207;
    }

    v199 = v198;
    v200 = _objc_isTaggedPointer(v198);
    v201 = v199;
    v202 = v201;
    if (!v200)
    {
      goto LABEL_199;
    }

    v203 = _objc_getTaggedPointerTag(v201);
    if (!v203)
    {
      goto LABEL_211;
    }

    if (v203 != 22)
    {
      if (v203 == 2)
      {
        MEMORY[0x1EEE9AC00](v203);
        *(&v261 - 2) = v202;
        v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v205 = v204;

        goto LABEL_232;
      }

LABEL_199:
      LOBYTE(v289) = 0;
      *&v293 = 0;
      LOBYTE(v285) = 0;
      v284 = 0;
      v206 = __CFStringIsCF();
      if (!v206)
      {
        v208 = v32;
        v209 = v202;
        v210 = String.init(_nativeStorage:)();
        if (v211)
        {
          v34 = v210;
          v205 = v211;

          v32 = v208;
          goto LABEL_232;
        }

        *&v293 = [v209 length];
        if (!v293)
        {

          v34 = 0;
          v205 = 0xE000000000000000;
          v32 = v208;
          goto LABEL_232;
        }

        v32 = v208;
LABEL_229:
        v215 = String.init(_cocoaString:)();
LABEL_230:
        v34 = v215;
        v205 = v216;
        goto LABEL_231;
      }

      v207 = v293;
      if (!v293)
      {

LABEL_207:
        v34 = 0;
        v205 = 0xE000000000000000;
        goto LABEL_232;
      }

      if (v284 == 1)
      {
        if (v289)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v215 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_230;
      }

      if ((v285 & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v289 == 1)
      {
        MEMORY[0x1EEE9AC00](v206);
        *(&v261 - 4) = v202;
        *(&v261 - 3) = &v293;
        *(&v261 - 4) = 1536;
        *(&v261 - 1) = v207;
      }

      else
      {
        v217 = [v202 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v217);
        *(&v261 - 4) = v202;
        *(&v261 - 3) = &v293;
        *(&v261 - 4) = 134217984;
        *(&v261 - 1) = v218;
      }

      v219 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v205 = v220;
      v221 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v221 = v219 & 0xFFFFFFFFFFFFLL;
      }

      if (!v221)
      {

        goto LABEL_229;
      }

      v34 = v219;
      goto LABEL_213;
    }

    v212 = [v202 UTF8String];
    if (!v212)
    {
      goto LABEL_301;
    }

    v213 = String.init(utf8String:)(v212);
    if (!v214)
    {
      __break(1u);
LABEL_211:
      LOWORD(v285) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v213 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v214)
      {
        [v202 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v205 = *(&v289 + 1);
        v34 = v289;
        goto LABEL_231;
      }
    }

    v34 = v213;
    v205 = v214;
LABEL_213:

LABEL_231:
LABEL_232:
    v222 = v183;
    v223 = v222;
    if (v181)
    {
      v224 = _objc_getTaggedPointerTag(v222);
      switch(v224)
      {
        case 0:
          LOWORD(v285) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v232 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v233)
          {
            goto LABEL_248;
          }

          [(__CFString *)v223 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v226 = *(&v289 + 1);
          v33 = v289;
          goto LABEL_266;
        case 0x16:
          v231 = [(__CFString *)v223 UTF8String];
          if (!v231)
          {
            goto LABEL_299;
          }

          v232 = String.init(utf8String:)(v231);
          if (!v233)
          {
            goto LABEL_300;
          }

LABEL_248:
          v33 = v232;
          v226 = v233;

          goto LABEL_266;
        case 2:
          MEMORY[0x1EEE9AC00](v224);
          *(&v261 - 2) = v223;
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v226 = v225;

          goto LABEL_266;
      }
    }

    LOBYTE(v289) = 0;
    *&v293 = 0;
    LOBYTE(v285) = 0;
    v284 = 0;
    v227 = __CFStringIsCF();
    if (v227)
    {
      v228 = v293;
      if (!v293)
      {

LABEL_245:
        v33 = 0;
        v226 = 0xE000000000000000;
        goto LABEL_266;
      }

      if (v284 == 1)
      {
        if (v289)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v33 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v226 = v234;
        goto LABEL_266;
      }

      if (v285)
      {
        if (v289 == 1)
        {
          MEMORY[0x1EEE9AC00](v227);
          *(&v261 - 4) = v223;
          *(&v261 - 3) = &v293;
          *(&v261 - 4) = 1536;
          *(&v261 - 1) = v228;
        }

        else
        {
          v235 = [(__CFString *)v223 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v235);
          *(&v261 - 4) = v223;
          *(&v261 - 3) = &v293;
          *(&v261 - 4) = 134217984;
          *(&v261 - 1) = v236;
        }

        v237 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v226 = v238;
        v239 = HIBYTE(v238) & 0xF;
        if ((v238 & 0x2000000000000000) == 0)
        {
          v239 = v237 & 0xFFFFFFFFFFFFLL;
        }

        if (v239)
        {
          v33 = v237;

          goto LABEL_266;
        }
      }
    }

    else
    {
      v32 = v223;
      v229 = String.init(_nativeStorage:)();
      if (v230)
      {
        v33 = v229;
        v226 = v230;

        goto LABEL_266;
      }

      *&v293 = [v32 length];
      if (!v293)
      {

        goto LABEL_245;
      }
    }

    v33 = String.init(_cocoaString:)();
    v226 = v240;
LABEL_266:
    if (v34 == v33 && v205 == v226)
    {

LABEL_270:
      swift_willThrow();
    }

    v241 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v241)
    {
      goto LABEL_270;
    }

LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    v263 = v91;
    LODWORD(v264) = v33;
    v265 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v269 = static _DictionaryStorage.copy(original:)();
    v267 = v78;
    if (*(v78 + 16))
    {
      break;
    }

LABEL_292:

    v32 = v265;
    v91 = v263;
    v159 = v269;
    if (v264)
    {
LABEL_130:
      *(v159[7] + 8 * v91) = v275;

      v162 = v270;
    }

    else
    {
LABEL_293:
      v162 = v270;
      v259 = v278;
      v260 = v91;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v270, v278, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v260, v259, v275, v159);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v162, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *&v34[4]._os_unfair_lock_opaque = v159;

    os_unfair_lock_unlock(v34 + 6);
  }

  v242 = (v269 + 64);
  v243 = 1 << *(v269 + 32);
  v266 = (v267 + 8);
  v244 = (v243 + 63) >> 6;
  if (v269 != v267 || v242 >= &v266[2 * v244])
  {
    memmove(v242, v266, 8 * v244);
  }

  v245 = 0;
  v246 = v267;
  *(v269 + 16) = v267[2];
  v247 = 1 << *(v246 + 32);
  v248 = v246[8];
  v249 = -1;
  if (v247 < 64)
  {
    v249 = ~(-1 << v247);
  }

  v276 = v249 & v248;
  v262 = (v247 + 63) >> 6;
  if ((v249 & v248) != 0)
  {
    do
    {
      v250 = __clz(__rbit64(v276));
      v276 &= v276 - 1;
LABEL_290:
      v253 = v250 | (v245 << 6);
      v254 = v267;
      v255 = v278;
      v256 = *(v277 + 72) * v253;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v267[6] + v256, v278, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v257 = *(v254[7] + 8 * v253);
      v258 = v269;
      outlined init with take of ICULegacyNumberFormatter.Signature(v255, *(v269 + 48) + v256, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(*(v258 + 56) + 8 * v253) = v257;
    }

    while (v276);
  }

  v251 = v245;
  while (1)
  {
    v245 = v251 + 1;
    if (__OFADD__(v251, 1))
    {
      break;
    }

    if (v245 >= v262)
    {
      goto LABEL_292;
    }

    v252 = *&v266[2 * v245]._os_unfair_lock_opaque;
    ++v251;
    if (v252)
    {
      v250 = __clz(__rbit64(v252));
      v276 = (v252 - 1) & v252;
      goto LABEL_290;
    }
  }

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
  os_unfair_lock_unlock(v34 + 6);
  __break(1u);
LABEL_303:

  swift_unexpectedError();
  __break(1u);
LABEL_304:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal.ParseStrategy.parse(_:)(NSDecimal *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v268 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v245 = v2;
  v243 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v241 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v250 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v251 = &v227 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v234 = &v227 - v10;
  v235 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v233 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v228 = (&v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v246 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v247 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v236 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v248 = &v227 - v14;
  v244 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v253 = &v227 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v240 = &v227 - v19;
  v239 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  v238 = *(v239 - 1);
  MEMORY[0x1EEE9AC00](v239);
  v232 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v227 - v22;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v227 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v227 - v31;
  v33 = type metadata accessor for NSDecimal.FormatStyle(0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v252 = (&v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((object & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(object) & 0xF;
  }

  else
  {
    v41 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v255 = object;
  v42 = 7;
  if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
  {
    v42 = 11;
  }

  v242 = v5;
  if (!v41)
  {
    v77 = v250;
    goto LABEL_24;
  }

  v237 = v38;
  v229 = v42;
  v230 = v41;
  v43 = v24 + 16;
  v44 = *(v24 + 16);
  v45 = v254;
  v227 = v43;
  v44(v32, v254, v5, v39);
  v46 = swift_dynamicCast();
  v47 = *(v34 + 56);
  if (v46)
  {
    v47(v23, 0, 1, v33);
    outlined init with take of ICULegacyNumberFormatter.Signature(v23, v36, type metadata accessor for NSDecimal.FormatStyle);
    v48 = v252;
    outlined init with take of ICULegacyNumberFormatter.Signature(&v36[*(v33 + 20)], v252, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    v49 = *(v36 + 1);
  }

  else
  {
    v47(v23, 1, 1, v33);
    outlined destroy of TermOfAddress?(v23, &_sSo9NSDecimala10FoundationE11FormatStyleVSgMd);
    (v44)(v29, v45, v5);
    v50 = v240;
    v51 = v239;
    v52 = swift_dynamicCast();
    v53 = *(v238 + 56);
    if (v52)
    {
      v53(v50, 0, 1, v51);
      v54 = v50;
      v55 = v232;
      outlined init with take of ICULegacyNumberFormatter.Signature(v54, v232, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v48 = v252;
      outlined init with take of ICULegacyNumberFormatter.Signature(v55 + *(v51 + 5), v252, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      swift_storeEnumTagMultiPayload();
      v49 = *(v55 + 8);
    }

    else
    {
      v53(v50, 1, 1, v51);
      outlined destroy of TermOfAddress?(v50, &_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd);
      (v44)(v231, v45, v5);
      v56 = v234;
      v57 = v235;
      v58 = swift_dynamicCast();
      v59 = *(v233 + 56);
      if (v58)
      {
        v59(v56, 0, 1, v57);
        v60 = v228;
        outlined init with take of ICULegacyNumberFormatter.Signature(v56, v228, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
        v48 = v252;
        v62 = (v252 + *(v61 + 48));
        outlined init with take of ICULegacyNumberFormatter.Signature(v60 + *(v57 + 24), v252, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v63 = v60[3];
        *v62 = v60[2];
        v62[1] = v63;
        swift_storeEnumTagMultiPayload();
        v49 = v60[1];
      }

      else
      {
        v59(v56, 1, 1, v57);
        outlined destroy of TermOfAddress?(v56, &_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd);
        v48 = v252;
        *v252 = 0;
        *(v48 + 8) = 1;
        v48[2] = 0;
        v48[3] = 0;
        v48[4] = 0;
        v48[5] = 0x1FFFFFFFELL;
        v48[7] = 0;
        v48[8] = 0;
        v48[6] = 0;
        *(v48 + 18) = 131584;
        *(v48 + 38) = 512;
        v64 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v65 = v64[9];
        v66 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v66 - 8) + 56))(v48 + v65, 1, 1, v66);
        v67 = v48 + v64[10];
        *v67 = 0;
        v67[8] = -1;
        *(v48 + v64[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        swift_initStaticObject();
        v49 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }
    }
  }

  v68 = *(v45 + *(v245 + 36));
  v69 = v253;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v48, v253, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v71 = *(v49 + 64);
  swift_unknownObjectRetain();
  v72 = v71(ObjectType, v49);
  v73 = v246;
  v74 = (v69 + *(v246 + 20));
  *v74 = v72;
  v74[1] = v75;
  *(v69 + *(v73 + 24)) = v68;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v76 = static ICULegacyNumberFormatter.cache;
  v77 = qword_1EA7AFFA0;
  v78 = v248;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v69, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v79 = (*(v247 + 80) + 16) & ~*(v247 + 80);
  v80 = swift_allocObject();
  v81 = outlined init with take of ICULegacyNumberFormatter.Signature(v78, v80 + v79, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v81);
  *(&v227 - 2) = v69;
  os_unfair_lock_lock((v77 + 24));
  v82 = v256;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v77 + 16, &v262);
  if (v82)
  {
    goto LABEL_213;
  }

  os_unfair_lock_unlock((v77 + 24));
  if (!v262)
  {
    v112 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
    v256 = 0;
    os_unfair_lock_lock((v77 + 24));
    if (v76 >= *(*(v77 + 16) + 16))
    {
    }

    else
    {
      *(v77 + 16) = MEMORY[0x1E69E7CC8];
    }

    v116 = v236;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v253, v236, type metadata accessor for ICULegacyNumberFormatter.Signature);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v262 = *(v77 + 16);
    v118 = v262;
    *(v77 + 16) = 0x8000000000000000;
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
    v121 = *(v118 + 16);
    v122 = (v120 & 1) == 0;
    v123 = __OFADD__(v121, v122);
    v124 = v121 + v122;
    if (v123)
    {
      goto LABEL_191;
    }

    LOBYTE(v116) = v120;
    if (*(v118 + 24) >= v124)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_192;
      }

      v125 = v118;
      goto LABEL_59;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v124, isUniquelyReferenced_nonNull_native);
    v125 = v262;
    v126 = v236;
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v236);
    if ((v116 & 1) == (v127 & 1))
    {
      if ((v116 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    goto LABEL_214;
  }

  v256 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v253, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v83 = String.subscript.getter();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    *&v260 = 0;
    specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v83, v84, v86, v88, &v260);
    v77 = v250;
    if ((v90 & 0x100000000) == 0)
    {
      *&v262 = v83;
      *(&v262 + 1) = v85;
      *&v263 = v87;
      *(&v263 + 1) = v89;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v252, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v252, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

LABEL_24:
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(countAndFlagsBits, v255, 0x2EuLL, 0xE100000000000000, 0, v267);
    if ((v267[32] & 1) == 0)
    {
      return;
    }

    specialized NSDecimal.init(_:)(3.14);
    *&v262 = v91;
    *(&v262 + 1) = v92;
    LODWORD(v263) = v93;
    v94 = v243;
    v95 = *(v243 + 48);
    v96 = v242;
    v95(&v262, v242, v243);
    *&v262 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v262 + 1) = v97;
    LODWORD(v263) = v98;
    _So9NSDecimala__isNegative_setter(1, &v262);
    v260 = v262;
    v261 = v263;
    v95(&v260, v96, v94);
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v100 = @"NSDebugDescription";
    v101 = v100;
    v112 = MEMORY[0x1E69E7CA0];
    if (!isTaggedPointer)
    {
      goto LABEL_31;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v100);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v227 - 2) = v101;
          v103 = v256;
          v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v106 = v105;
          v256 = v103;

          goto LABEL_75;
        }

LABEL_31:
        LOBYTE(v260) = 0;
        *&v262 = 0;
        LOBYTE(v258) = 0;
        v259 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v108 = v262;
          if (!v262)
          {

LABEL_41:
            v104 = 0;
            v106 = 0xE000000000000000;
            goto LABEL_75;
          }

          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v130 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_74;
          }

          if (v258)
          {
            if (v260 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v227 - 4) = v101;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 1536;
              *(&v227 - 1) = v108;
            }

            else
            {
              v132 = [(__CFString *)v101 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v132);
              *(&v227 - 4) = v101;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 134217984;
              *(&v227 - 1) = v133;
            }

            v134 = v256;
            v135 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v106 = v136;
            v256 = v134;
            v137 = HIBYTE(v136) & 0xF;
            if ((v136 & 0x2000000000000000) == 0)
            {
              v137 = v135 & 0xFFFFFFFFFFFFLL;
            }

            if (v137)
            {
              v104 = v135;
              goto LABEL_47;
            }
          }
        }

        else
        {
          v109 = v101;
          v110 = String.init(_nativeStorage:)();
          if (v111)
          {
            v104 = v110;
            v106 = v111;

            goto LABEL_75;
          }

          *&v262 = [(__CFString *)v109 length];
          if (!v262)
          {

            goto LABEL_41;
          }
        }

        v130 = String.init(_cocoaString:)();
LABEL_74:
        v104 = v130;
        v106 = v131;
        goto LABEL_75;
      }

      v113 = [(__CFString *)v101 UTF8String];
      if (!v113)
      {
        goto LABEL_209;
      }

      v114 = String.init(utf8String:)(v113);
      if (v115)
      {
LABEL_46:
        v104 = v114;
        v106 = v115;
LABEL_47:

        goto LABEL_75;
      }

      __break(1u);
    }

    v258 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v114 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v115)
    {
      goto LABEL_46;
    }

    [(__CFString *)v101 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v106 = *(&v260 + 1);
    v104 = v260;
LABEL_75:
    v264[0] = v104;
    v264[1] = v106;
    *&v262 = 0;
    *(&v262 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](countAndFlagsBits, v255);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v266 = MEMORY[0x1E69E6158];
    v265 = v262;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v138 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (String, Any)(v264, &v262);

    outlined destroy of TermOfAddress?(v264, &_sSS_yptMd);
    v118 = *(&v262 + 1);
    v116 = v262;
    v139 = specialized __RawDictionaryStorage.find<A>(_:)(v262, *(&v262 + 1));
    v141 = v140;

    if (v141)
    {
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v138[(v139 >> 6) + 8] |= 1 << v139;
    v142 = (v138[6] + 16 * v139);
    *v142 = v116;
    v142[1] = v118;
    v119 = outlined init with take of Any(&v263, (v138[7] + 32 * v139));
    v143 = v138[2];
    v123 = __OFADD__(v143, 1);
    v144 = v143 + 1;
    if (v123)
    {
      goto LABEL_189;
    }

    v138[2] = v144;
    v145 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v146 = @"NSCocoaErrorDomain";
    v147 = v146;
    if (v145)
    {
      v148 = _objc_getTaggedPointerTag(v146);
      switch(v148)
      {
        case 0:
          goto LABEL_93;
        case 0x16:
          v154 = [(__CFString *)v147 UTF8String];
          if (!v154)
          {
            goto LABEL_210;
          }

          String.init(utf8String:)(v154);
          if (!v155)
          {
            __break(1u);
LABEL_93:
            v258 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v156)
            {
              [(__CFString *)v147 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_110;
            }
          }

LABEL_107:

          goto LABEL_110;
        case 2:
          MEMORY[0x1EEE9AC00](v148);
          *(&v227 - 2) = v147;
          v149 = v256;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v256 = v149;

          goto LABEL_110;
      }
    }

    LOBYTE(v260) = 0;
    *&v262 = 0;
    LOBYTE(v258) = 0;
    v259 = 0;
    v150 = __CFStringIsCF();
    if (!v150)
    {
      v152 = v147;
      String.init(_nativeStorage:)();
      if (v153 || (*&v262 = [(__CFString *)v152 length], !v262))
      {

        goto LABEL_110;
      }

LABEL_109:
      String.init(_cocoaString:)();
      goto LABEL_110;
    }

    v151 = v262;
    if (!v262)
    {
      goto LABEL_107;
    }

    if (v259 != 1)
    {
      if (v258)
      {
        if (v260 == 1)
        {
          MEMORY[0x1EEE9AC00](v150);
          *(&v227 - 4) = v147;
          *(&v227 - 3) = &v262;
          *(&v227 - 4) = 1536;
          *(&v227 - 1) = v151;
        }

        else
        {
          v157 = [(__CFString *)v147 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v157);
          *(&v227 - 4) = v147;
          *(&v227 - 3) = &v262;
          *(&v227 - 4) = 134217984;
          *(&v227 - 1) = v158;
        }

        v159 = v256;
        v160 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v256 = v159;
        v162 = HIBYTE(v161) & 0xF;
        if ((v161 & 0x2000000000000000) == 0)
        {
          v162 = v160 & 0xFFFFFFFFFFFFLL;
        }

        if (v162)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_109;
    }

    if (v260)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_110:
    v163 = objc_allocWithZone(NSError);
    v164 = String._bridgeToObjectiveCImpl()();

    v165 = [v163 initWithDomain:v164 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v166 = [v165 domain];
    if (!v166)
    {
      goto LABEL_124;
    }

    v167 = v166;
    v168 = _objc_isTaggedPointer(v166);
    v169 = v167;
    v170 = v169;
    if ((v168 & 1) == 0)
    {
      goto LABEL_116;
    }

    v171 = _objc_getTaggedPointerTag(v169);
    if (!v171)
    {
      goto LABEL_128;
    }

    if (v171 != 22)
    {
      if (v171 == 2)
      {
        MEMORY[0x1EEE9AC00](v171);
        *(&v227 - 2) = v170;
        v172 = v256;
        v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v116 = v174;
        v256 = v172;

        goto LABEL_148;
      }

LABEL_116:
      LOBYTE(v260) = 0;
      *&v262 = 0;
      LOBYTE(v258) = 0;
      v259 = 0;
      v175 = __CFStringIsCF();
      if (v175)
      {
        v176 = v262;
        if (v262)
        {
          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v183 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_146;
          }

          if ((v258 & 1) == 0)
          {
            goto LABEL_145;
          }

          if (v260 == 1)
          {
            MEMORY[0x1EEE9AC00](v175);
            *(&v227 - 4) = v170;
            *(&v227 - 3) = &v262;
            *(&v227 - 4) = 1536;
            *(&v227 - 1) = v176;
          }

          else
          {
            v185 = [v170 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v185);
            *(&v227 - 4) = v170;
            *(&v227 - 3) = &v262;
            *(&v227 - 4) = 134217984;
            *(&v227 - 1) = v186;
          }

          v187 = v256;
          v188 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v116 = v189;
          v256 = v187;
          v190 = HIBYTE(v189) & 0xF;
          if ((v189 & 0x2000000000000000) == 0)
          {
            v190 = v188 & 0xFFFFFFFFFFFFLL;
          }

          if (!v190)
          {

            goto LABEL_145;
          }

          v173 = v188;
          goto LABEL_130;
        }
      }

      else
      {
        v177 = v170;
        v178 = String.init(_nativeStorage:)();
        if (v179)
        {
          v173 = v178;
          v116 = v179;

          goto LABEL_148;
        }

        *&v262 = [v177 length];
        if (v262)
        {
LABEL_145:
          v183 = String.init(_cocoaString:)();
LABEL_146:
          v173 = v183;
          v116 = v184;
          goto LABEL_147;
        }
      }

LABEL_124:
      v173 = 0;
      v116 = 0xE000000000000000;
      goto LABEL_148;
    }

    v180 = [v170 UTF8String];
    if (!v180)
    {
      goto LABEL_212;
    }

    v181 = String.init(utf8String:)(v180);
    if (!v182)
    {
      __break(1u);
LABEL_128:
      v258 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v181 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v182)
      {
        [v170 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v116 = *(&v260 + 1);
        v173 = v260;
        goto LABEL_147;
      }
    }

    v173 = v181;
    v116 = v182;
LABEL_130:

LABEL_147:
LABEL_148:
    v191 = v147;
    v192 = v191;
    if (!v145)
    {
      goto LABEL_153;
    }

    v193 = _objc_getTaggedPointerTag(v191);
    if (v193)
    {
      if (v193 != 22)
      {
        if (v193 == 2)
        {
          MEMORY[0x1EEE9AC00](v193);
          *(&v227 - 2) = v192;
          v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v118 = v195;

          goto LABEL_183;
        }

LABEL_153:
        LOBYTE(v260) = 0;
        *&v262 = 0;
        LOBYTE(v258) = 0;
        v259 = 0;
        v196 = __CFStringIsCF();
        if (v196)
        {
          v197 = v262;
          if (!v262)
          {

LABEL_161:
            v194 = 0;
            v118 = 0xE000000000000000;
            goto LABEL_183;
          }

          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v204 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_182;
          }

          if (v258)
          {
            if (v260 == 1)
            {
              MEMORY[0x1EEE9AC00](v196);
              *(&v227 - 4) = v192;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 1536;
              *(&v227 - 1) = v197;
            }

            else
            {
              v206 = [(__CFString *)v192 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v206);
              *(&v227 - 4) = v192;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 134217984;
              *(&v227 - 1) = v207;
            }

            v208 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v118 = v209;
            v210 = HIBYTE(v209) & 0xF;
            if ((v209 & 0x2000000000000000) == 0)
            {
              v210 = v208 & 0xFFFFFFFFFFFFLL;
            }

            if (v210)
            {
              v194 = v208;

              goto LABEL_183;
            }
          }
        }

        else
        {
          v198 = v192;
          v199 = String.init(_nativeStorage:)();
          if (v200)
          {
            v194 = v199;
            v118 = v200;

            goto LABEL_183;
          }

          *&v262 = [(__CFString *)v198 length];
          if (!v262)
          {

            goto LABEL_161;
          }
        }

        v204 = String.init(_cocoaString:)();
LABEL_182:
        v194 = v204;
        v118 = v205;
        goto LABEL_183;
      }

      v201 = [(__CFString *)v192 UTF8String];
      if (!v201)
      {
        goto LABEL_211;
      }

      v202 = String.init(utf8String:)(v201);
      if (v203)
      {
LABEL_166:
        v194 = v202;
        v118 = v203;

        goto LABEL_183;
      }

      __break(1u);
    }

    v258 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v202 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v203)
    {
      goto LABEL_166;
    }

    [(__CFString *)v192 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v118 = *(&v260 + 1);
    v194 = v260;
LABEL_183:
    if (v173 == v194 && v116 == v118)
    {

LABEL_187:
      swift_willThrow();
      v212 = *(v241 + 8);
      v213 = AssociatedTypeWitness;
      v212(v77, AssociatedTypeWitness);
      v212(v251, v213);
      return;
    }

    v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v211)
    {
      goto LABEL_187;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    v238 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v214 = static _DictionaryStorage.copy(original:)();
    v125 = v214;
    if (*(v118 + 16))
    {
      break;
    }

LABEL_207:

    v119 = v238;
LABEL_59:
    v126 = v236;
    if (v116)
    {
LABEL_56:
      *(*(v125 + 56) + 8 * v119) = v112;
    }

    else
    {
LABEL_60:
      v128 = v119;
      v129 = v248;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v126, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v128, v129, v112, v125);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v126, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v77 + 16) = v125;

    os_unfair_lock_unlock((v77 + 24));
  }

  v215 = (v214 + 64);
  v216 = 1 << *(v125 + 32);
  v239 = (v118 + 64);
  v217 = (v216 + 63) >> 6;
  if (v125 != v118 || v215 >= &v239[v217])
  {
    memmove(v215, v239, 8 * v217);
  }

  v218 = 0;
  *(v125 + 16) = *(v118 + 16);
  v219 = 1 << *(v118 + 32);
  v220 = -1;
  if (v219 < 64)
  {
    v220 = ~(-1 << v219);
  }

  v246 = v220 & *(v118 + 64);
  v237 = (v219 + 63) >> 6;
  while (v246)
  {
    v221 = __clz(__rbit64(v246));
    v246 &= v246 - 1;
LABEL_206:
    v224 = v221 | (v218 << 6);
    v225 = *(v118 + 48);
    v226 = *(v247 + 72);
    v245 = v224;
    v240 = v226 * v224;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v225 + v226 * v224, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v244 = *(*(v118 + 56) + 8 * v245);
    outlined init with take of ICULegacyNumberFormatter.Signature(v248, *(v125 + 48) + v240, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(*(v125 + 56) + 8 * v245) = v244;
  }

  v222 = v218;
  while (1)
  {
    v218 = v222 + 1;
    if (__OFADD__(v222, 1))
    {
      break;
    }

    if (v218 >= v237)
    {
      goto LABEL_207;
    }

    v223 = v239[v218];
    ++v222;
    if (v223)
    {
      v221 = __clz(__rbit64(v223));
      v246 = (v223 - 1) & v223;
      goto LABEL_206;
    }
  }

  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  os_unfair_lock_unlock((v77 + 24));
  __break(1u);
LABEL_214:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.ParseStrategy<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t NSDecimal.init<A>(_:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 48))(&v10, a1, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4)
  {
    return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v10;
}

uint64_t NSDecimal.init(_:format:lenient:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd);
  return v12;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle.Percent);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd);
  return v12;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle.Currency);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd);
  return v12;
}

uint64_t NSDecimal.ParseStrategy<>.init(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  return NSDecimal.ParseStrategy<>.init(format:lenient:)(a1, a2, type metadata accessor for NSDecimal.FormatStyle, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd, a3);
}

{
  return NSDecimal.ParseStrategy<>.init(format:lenient:)(a1, a2, type metadata accessor for NSDecimal.FormatStyle.Percent, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, a3);
}

{
  return NSDecimal.ParseStrategy<>.init(format:lenient:)(a1, a2, type metadata accessor for NSDecimal.FormatStyle.Currency, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, a3);
}

uint64_t NSDecimal.ParseStrategy<>.init(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of ICULegacyNumberFormatter.Signature(a1, a5, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = a2 + a3;
  if (a2 + a3 == result)
  {
    return v3;
  }

  v5 = result - a2;
  v6 = a3 + a2 - result;
  while ((v5 & 0x8000000000000000) == 0)
  {
    if (v6-- < 1)
    {
      break;
    }

    static String._uncheckedFromUTF8(_:)();
    v8 = Character.isWhitespace.getter();

    if (v8)
    {
      ++v3;
      ++v5;
      if (v3 != v4)
      {
        continue;
      }
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  for (; v8; a5 = v23)
  {
    v9 = 0;
    v10 = (a2 >> 59) & 1;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v25 = 4 << v10;
    v13 = v8 - 1;
    v14 = a5 + a4 - a1;
    v15 = a1 - a4;
    while (1)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v16 = MEMORY[0x1865CB180](15, v9, a2, a3);
      }

      else
      {
        v16 = v11;
        if (v12 < v9)
        {
          goto LABEL_35;
        }
      }

      if ((v15 + v9) < 0)
      {
        break;
      }

      if (v14-- < 1)
      {
        break;
      }

      v7 = *(a1 + v9);
      if ((v16 & 0xC) == v25)
      {
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, a2, a3);
      }

      v18 = v16 >> 16;
      if (v16 >> 16 >= v12)
      {
        goto LABEL_34;
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v20 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a3 & 0x2000000000000000) != 0)
      {
        v27[0] = a2;
        v27[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v20 = *(v27 + v18);
      }

      else
      {
        v19 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v19 = _StringObject.sharedUTF8.getter();
        }

        v20 = *(v19 + v18);
      }

      v21 = v7 == v20;
      result = v21;
      if (v21)
      {
        v11 += 0x10000;
        v21 = v13 == v9++;
        if (!v21)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = a5;
    v24 = a4;
    v8 = String.UTF8View._foreignCount()();
    if (v8 < 0)
    {
      __break(1u);
    }

    a4 = v24;
  }

  return 1;
}

uint64_t outlined init with take of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.ParseStrategy<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal.ParseStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for NSDecimal.ParseStrategy(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v62 = 0uLL;
  v63 = 0;
  v11 = specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a1, a2);
  v12 = v11;
  v60 = a2;
  v13 = (a1 + a2);
  if ((a1 + a2) != v11)
  {
    if (&v11[-a1] < 0 || a1 + a2 - v11 < 1)
    {
      goto LABEL_120;
    }

    v14 = *v11;
    if (v14 == 45 || v14 == 43)
    {
      _So9NSDecimala__isNegative_setter(v14 == 45, &v62);
      ++v12;
    }
  }

  v56 = a3;
  v57 = a4;
  v59 = a6;
  if (v13 == v12)
  {
    LOBYTE(a3) = 0;
    goto LABEL_26;
  }

  a3 = 0;
  v55 = xmmword_18121B2B0;
LABEL_9:
  v15 = 1 - a1 + v12;
  v16 = v60 + a1 - 1 - v12;
  v17 = a3;
  while (1)
  {
    if ((v12 - a1) < 0 || &v13[-v12] < 1)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v18 = *v12;
    if ((v18 - 58) < 0xF6u)
    {
      goto LABEL_45;
    }

    if (v17)
    {
      break;
    }

    NSDecimal._multiply(byShort:)(v17, 0xAu);
    if (v19 || (NSDecimal._add(_:)((v18 - 48), (v18 - 48)), v19))
    {

      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__exponent_getter(v61) == 127)
      {
        *(v61 + 4) = 0uLL;
        _So9NSDecimala__exponent_setter(0, v61);
        _So9NSDecimala__length_setter(0, v61);
        _So9NSDecimala__isNegative_setter(1, v61);
        _So9NSDecimala__isCompact_setter(v61);
        _So9NSDecimala__reserved_setter(v61);
        v62 = v61[0];
        v63 = v61[1];
      }

      else
      {
        v61[0] = v62;
        LODWORD(v61[1]) = v63;
        v23 = _So9NSDecimala__exponent_getter(v61);
        _So9NSDecimala__exponent_setter((v23 + 1), &v62);
      }

      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (!_So9NSDecimala__length_getter(v61))
      {
        v61[0] = v62;
        LODWORD(v61[1]) = v63;
        if (_So9NSDecimala__isNegative_getter(v61))
        {
          goto LABEL_88;
        }
      }

      ++v12;
      a3 = 1;
      if (v12 == v13)
      {
LABEL_26:
        if (v12 < v13)
        {
          goto LABEL_46;
        }

LABEL_64:
        v28 = v12;
        goto LABEL_65;
      }

      goto LABEL_9;
    }

    v17 = 0;
    *&v62 = v20;
    *(&v62 + 1) = v21;
    ++v12;
    v63 = v22;
    ++v15;
    --v16;
    if (v12 == v13)
    {
      goto LABEL_45;
    }
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  if (_So9NSDecimala__exponent_getter(v61) == 127)
  {
    *(v61 + 12) = 0;
    *(v61 + 4) = 0;
    _So9NSDecimala__exponent_setter(0, v61);
    _So9NSDecimala__length_setter(0, v61);
    _So9NSDecimala__isNegative_setter(1, v61);
    _So9NSDecimala__isCompact_setter(v61);
    _So9NSDecimala__reserved_setter(v61);
    v62 = v61[0];
    v63 = v61[1];
  }

  else
  {
    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    v24 = _So9NSDecimala__exponent_getter(v61);
    _So9NSDecimala__exponent_setter((v24 + 1), &v62);
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  if (!_So9NSDecimala__length_getter(v61))
  {
    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (_So9NSDecimala__isNegative_getter(v61))
    {
LABEL_88:
      v49 = 0;
      v50 = 0;
      LOBYTE(v38) = 1;
      v44 = v55;
      goto LABEL_112;
    }
  }

  ++v12;
  while (v12 != v13)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v25 = v16-- < 1;
    if (v25)
    {
      goto LABEL_116;
    }

    if (*v12 - 58 < 0xFFFFFFF6)
    {
      goto LABEL_45;
    }

    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (_So9NSDecimala__exponent_getter(v61) == 127)
    {
      *(v61 + 12) = 0;
      *(v61 + 4) = 0;
      _So9NSDecimala__exponent_setter(0, v61);
      _So9NSDecimala__length_setter(0, v61);
      _So9NSDecimala__isNegative_setter(1, v61);
      _So9NSDecimala__isCompact_setter(v61);
      _So9NSDecimala__reserved_setter(v61);
      v62 = v61[0];
      v63 = v61[1];
    }

    else
    {
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      v26 = _So9NSDecimala__exponent_getter(v61);
      _So9NSDecimala__exponent_setter((v26 + 1), &v62);
    }

    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (!_So9NSDecimala__length_getter(v61))
    {
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__isNegative_getter(v61))
      {
        goto LABEL_88;
      }
    }

    ++v12;
    ++v15;
  }

  v12 = v13;
LABEL_45:
  if (v12 >= v13)
  {
    goto LABEL_64;
  }

LABEL_46:
  if ((specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v12, v56, v57, a1, v60) & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    goto LABEL_122;
  }

  if ((v57 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v27 = v56 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v28 = (v12 + v27);
    if (v13 != (v12 + v27))
    {
      v29 = v27 + v12 - a1 + 1;
      v12 = ~v27 + v60 + a1 - v12;
      v55 = xmmword_18121B2B0;
      while (&v28[-a1] >= 0 && v13 - v28 >= 1)
      {
        v30 = *v28;
        v31 = (v30 - 58);
        if (v31 < 0xF6)
        {
          goto LABEL_65;
        }

        if (a3)
        {
          if (++v28 == v13)
          {
LABEL_96:
            v28 = v13;
            goto LABEL_65;
          }

          while ((v29 & 0x8000000000000000) == 0)
          {
            v25 = v12-- < 1;
            if (v25)
            {
              break;
            }

            if (*v28 - 58 < 0xFFFFFFF6)
            {
              goto LABEL_65;
            }

            ++v28;
            ++v29;
            if (v28 == v13)
            {
              goto LABEL_96;
            }
          }

          break;
        }

        NSDecimal._multiply(byShort:)(v31, 0xAu);
        if (v32 || (NSDecimal._add(_:)((v30 - 48), (v30 - 48)), v32))
        {

          LOBYTE(a3) = 1;
        }

        else
        {
          *&v62 = v33;
          *(&v62 + 1) = v34;
          v63 = v35;
          v61[0] = v62;
          LODWORD(v61[1]) = v35;
          if (_So9NSDecimala__exponent_getter(v61) == -128)
          {
            goto LABEL_88;
          }

          v61[0] = v62;
          LODWORD(v61[1]) = v63;
          v36 = _So9NSDecimala__exponent_getter(v61);
          _So9NSDecimala__exponent_setter((v36 - 1), &v62);
          LOBYTE(a3) = 0;
        }

        ++v28;
        ++v29;
        --v12;
        if (v28 == v13)
        {
          goto LABEL_65;
        }
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_65:
    if (v28 >= v13)
    {
      goto LABEL_83;
    }

    if ((&v28[-a1] & 0x8000000000000000) == 0 && v13 - v28 >= 1)
    {
      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    v27 = String.UTF8View._foreignCount()();
  }

  if ((*v28 | 0x20) != 0x65)
  {
LABEL_83:
    v48 = v28;
    if ((a5 & 1) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_84;
  }

  v37 = v28 + 1;
  v38 = v13 - (v28 + 1);
  if (v13 == v28 + 1)
  {
    v50 = &v37[-a1];
LABEL_109:
    v44 = v62;
    v49 = v63;
    goto LABEL_112;
  }

  if (&v37[-a1] < 0 || v38 < 1)
  {
    __break(1u);
    goto LABEL_124;
  }

  v39 = *v37;
  if (v39 == 43 || v39 == 45)
  {
    v40 = v39 == 45;
    v37 = v28 + 2;
    if (v13 == v28 + 2)
    {
      goto LABEL_90;
    }

LABEL_75:
    v41 = 0;
    v42 = &v37[-a1];
    v43 = a1 + v60 - v37;
    v44 = xmmword_18121B2B0;
    while ((v42 & 0x8000000000000000) == 0)
    {
      v25 = v43-- < 1;
      if (v25)
      {
        break;
      }

      if ((*v37 - 58) < 0xF6u)
      {
        v47 = v37;
        goto LABEL_98;
      }

      v45 = (v41 * 10) >> 64;
      v46 = 10 * v41;
      if (v45 != v46 >> 63)
      {
        goto LABEL_119;
      }

      v41 = v46 + (*v37 - 48);
      if (v41 > 254)
      {
        v49 = 0;
        v50 = 0;
        goto LABEL_111;
      }

      ++v37;
      ++v42;
      if (v37 == v13)
      {
        v47 = (a1 + v60);
        goto LABEL_98;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v40 = 0;
  if (v13 != v37)
  {
    goto LABEL_75;
  }

LABEL_90:
  v47 = v37;
  v41 = 0;
LABEL_98:
  if (v40)
  {
    v51 = -v41;
  }

  else
  {
    v51 = v41;
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  v52 = _So9NSDecimala__exponent_getter(v61);
  v53 = __OFADD__(v51, v52);
  v54 = v51 + v52;
  if (v53)
  {
LABEL_124:
    __break(1u);
  }

  else
  {
    if (v54 != v54)
    {
      v49 = 0;
      v50 = 0;
      v44 = xmmword_18121B2B0;
      goto LABEL_111;
    }

    _So9NSDecimala__exponent_setter(v54, &v62);
    v48 = v47;
    if ((a5 & 1) == 0)
    {
LABEL_105:
      v13 = v48;
      goto LABEL_106;
    }

LABEL_84:
    if (v13 != specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v48, a1, v60))
    {
      v49 = 0;
      v50 = 0;
      v44 = 0uLL;
      goto LABEL_111;
    }

LABEL_106:
    v44 = 0uLL;
    v50 = &v13[-a1];
    if (v13 == a1)
    {
      v49 = 0;
LABEL_111:
      LOBYTE(v38) = 1;
    }

    else
    {
      NSDecimal.compact()();
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__length_getter(v61) || (v61[0] = v62, LODWORD(v61[1]) = v63, !_So9NSDecimala__isNegative_getter(v61)))
      {
        LOBYTE(v38) = 0;
        goto LABEL_109;
      }

      v49 = 0;
      LOBYTE(v38) = 0;
      v44 = 0uLL;
    }

LABEL_112:
    *v59 = v44;
    *(v59 + 16) = v49;
    *(v59 + 24) = v50;
    *(v59 + 32) = v38;
  }
}

uint64_t FloatingPointFormatStyle.Currency.format(_:)(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v75 = *(a2 + 16);
  v72 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v73 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4;
  v5 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[1];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 472);

  v13 = v12(ObjectType, v10);
  *&v80 = v5;
  *(&v80 + 1) = v7;
  *&v81 = v8;
  *(&v81 + 1) = v9;
  v14 = v9;
  *&v82 = v13;
  *(&v82 + 1) = v15;
  v77 = v15;
  if (one-time initialization token for cache != -1)
  {
    v13 = swift_once();
  }

  v16 = qword_1EA7B5100;
  v71 = static ICUCurrencyNumberFormatter.cache;
  v79[0] = v80;
  v79[1] = v81;
  v79[2] = v82;
  MEMORY[0x1EEE9AC00](v13);
  v66[-2] = v79;
  os_unfair_lock_lock((v16 + 24));
  v17 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v16 + 16, &v78);
  os_unfair_lock_unlock((v16 + 24));
  v18 = v78;
  if (v78 != 1)
  {
    goto LABEL_34;
  }

  v70 = 0;
  v19 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v5, v7, v8, v14);
  v21 = v20;
  type metadata accessor for ICUCurrencyNumberFormatter();
  v22 = swift_allocObject();

  v18 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v19, v21);
  os_unfair_lock_lock((v16 + 24));
  v23 = *(v16 + 16);
  if (v71 >= *(v23 + 16))
  {
  }

  else
  {
    *(v16 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v16 + 16);
  v25 = v78;
  *(v16 + 16) = 0x8000000000000000;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(&v80);
  v28 = *(v25 + 16);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v26;
  if (*(v25 + 24) >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v25;
      if (v26)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_16:
    v66[0] = v27;
    v66[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v35 = static _DictionaryStorage.copy(original:)();
    v31 = v35;
    if (*(v25 + 16))
    {
      v36 = (v35 + 64);
      v37 = 1 << *(v31 + 32);
      v67 = (v25 + 64);
      v38 = (v37 + 63) >> 6;
      if (v31 != v25 || v36 >= &v67[8 * v38])
      {
        memmove(v36, v67, 8 * v38);
      }

      v39 = 0;
      *(v31 + 16) = *(v25 + 16);
      v40 = 1 << *(v25 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & *(v25 + 64);
      v43 = (v40 + 63) >> 6;
      v68 = v43;
      if (v42)
      {
        do
        {
          v44 = __clz(__rbit64(v42));
          v71 = (v42 - 1) & v42;
LABEL_29:
          v47 = v44 | (v39 << 6);
          v48 = *(v25 + 56);
          v49 = (*(v25 + 48) + 48 * v47);
          v50 = *v49;
          v51 = v49[1];
          v52 = v49[2];
          v69 = v49[3];
          v53 = v69;
          v54 = *(v48 + 8 * v47);
          v55 = v49[4];
          v56 = v49[5];
          v57 = (*(v31 + 48) + 48 * v47);
          *v57 = v50;
          v57[1] = v51;
          v57[2] = v52;
          v57[3] = v53;
          v57[4] = v55;
          v57[5] = v56;
          *(*(v31 + 56) + 8 * v47) = v54;

          v43 = v68;
          v42 = v71;
        }

        while (v71);
      }

      v45 = v39;
      while (1)
      {
        v39 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v39 >= v43)
        {
          goto LABEL_31;
        }

        v46 = *&v67[8 * v39];
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v71 = (v46 - 1) & v46;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_31:

    v27 = v66[0];
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_32:
    specialized _NativeDictionary._insert(at:key:value:)(v27, &v80, v18, v31);
    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
  v31 = v78;
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v80);
  if ((v22 & 1) != (v33 & 1))
  {
LABEL_42:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v27 = v32;
  if ((v22 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v34 = v27;

  *(*(v31 + 56) + 8 * v34) = v18;

LABEL_33:
  *(v16 + 16) = v31;

  os_unfair_lock_unlock((v16 + 24));

  outlined consume of ICUNumberFormatter??(1);
  v17 = v70;
LABEL_34:

  if (!v18)
  {
    v58 = *(v72 + 16);
    v61 = v75;
    v60 = v74;
    v59 = v73;
    goto LABEL_38;
  }

  v58 = *(v72 + 16);
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v58(v73, v74, v75);
  specialized BinaryFloatingPoint.init<A>(_:)(v59, v61);
  type metadata accessor for ICUNumberFormatterBase.FormatResult();
  swift_initStackObject();
  ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
  if (v17)
  {

LABEL_38:
    v58(v59, v60, v61);
    specialized BinaryFloatingPoint.init<A>(_:)(v59, v61);
    return Double.description.getter();
  }

  v63 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
  v65 = v64;

  if (!v65)
  {
    goto LABEL_38;
  }

  return v63;
}

__n128 FloatingPointFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t FloatingPointFormatStyle.attributed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return FloatingPointFormatStyle.attributed.getter(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style();

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for FloatingPointFormatStyle();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v11 = &v22 + *(v10 + 36) - v8;
  *v11 = 0;
  v11[8] = 1;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0x1FFFFFFFELL;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = 0;
  *(v11 + 18) = 131584;
  *(v11 + 38) = 512;
  v12 = v3[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = &v11[v3[10]];
  *v14 = 0;
  v14[8] = -1;
  v11[v3[11]] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v6;
  v15 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v11, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v29 = v7;
    v16 = v24;
    v17 = v25;
    v31 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v9;
    *v9 = v30;
    LOBYTE(v30) = 1;
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v26, v27);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v17, v11);
    v19 = v22;
    v20 = v29;
    (*(v22 + 16))(v23, v18, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v19 + 8))(v18, v20);
  }
}

uint64_t FloatingPointFormatStyle.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 73) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 77) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  (*(*(a4 - 8) + 16))(a5, v6, a4);
  v12 = a5 + *(a4 + 36);
  v13 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v14 = *(v13 + 36);
  outlined destroy of TermOfAddress?(v12 + v14, &_ss25FloatingPointRoundingRuleOSgMd);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a1, v15);
  result = (*(v16 + 56))(v12 + v14, 0, 1, v15);
  if ((a3 & 1) == 0)
  {
    v18 = v12 + *(v13 + 40);
    *v18 = a2;
    *(v18 + 8) = 1;
  }

  return result;
}

uint64_t FloatingPointFormatStyle.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  result = (*(*(a1 - 8) + 16))(a2, v4, a1);
  v9 = a2 + *(a1 + 36);
  *v9 = a3;
  *(v9 + 8) = 0;
  return result;
}

uint64_t static FloatingPointFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v10 = *a1;
  v14 = *a2;
  v15 = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = specialized static Locale.== infix(_:_:)(&v15, &v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(a5(0, a3, a4) + 36);

  return static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v12, a2 + v12);
}

uint64_t FloatingPointFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  v4 = v3;
  v7 = *(a2 + 16);
  v14[1] = a2;
  a3(255, v7, *(a2 + 24));
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v4;
  v17 = v15;
  v18 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v12)
  {
    LOBYTE(v17) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

void FloatingPointFormatStyle.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v72 = a2;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v74, ObjectType, v9);
    v87 = v80;
    v88[0] = v81[0];
    *(v88 + 12) = *(v81 + 12);
    *v84 = v76;
    *&v84[16] = v77;
    v85 = v78;
    v86 = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      v11 = 0;
      goto LABEL_5;
    }

    v14 = v74;
    v15 = *(&v74 + 1);
    v16 = *(&v75 + 1);
    v59[0] = v75;
    v60 = *(&v76 + 1);
    v59[1] = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v59[2] = *(&v81[0] + 1);
    v65 = *&v81[0];
    v66 = *&v81[1];
    v67 = BYTE8(v81[1]);
    v68 = BYTE9(v81[1]);
    v69 = BYTE10(v81[1]);
    v70 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v14 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v14 & 1;
    }

    Hasher._combine(_:)(v17);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v15 + 16));
      v18 = *(v15 + 16);
      if (v18)
      {
        v19 = v15 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v4;
    v20 = *(&v62 + 1);
    v21 = *(&v61 + 1);
    v13 = v73;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v22 = v61;
      if (v61)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v22 = v61;
      if (v61)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v22, v23, v24, v25, v26, v27, v28);
        v29 = v20;
        if (v21)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v21, v30, v31, v32, v33, v34, v35);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v62)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v29)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v29)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v63)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v63)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v63 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v63 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v64)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v64)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v36 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v36 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v36);
          v37 = v65;
          if (v65)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v37 = v65;
        if (v65)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          if (v66)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v38 = v67;
            if (v67 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v39 = v68;
            if (v68 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v69;
            if (v69 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v40 & 1;
            }

            v42 = v70;
            Hasher._combine(_:)(v41);
            if (v42 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v42 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v66)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v29 = v20;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v11 = 1;
LABEL_5:
  Hasher._combine(_:)(v11);
  v12 = v4;
  v13 = v73;
LABEL_54:
  v44 = (v2 + *(v72 + 36));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  *v84 = *(v44 + 3);
  *&v84[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v8, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v12 + 48))(v8, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v12 + 32))(v71, v8, v13);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v53, v13);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

Swift::Int FloatingPointFormatStyle.hashValue.getter(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v72 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  Hasher.init(_seed:)();
  v9 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v73, ObjectType, v9);
    v83[4] = v79;
    v84[0] = v80[0];
    *(v84 + 12) = *(v80 + 12);
    v83[0] = v75;
    v83[1] = v76;
    v83[2] = v77;
    v83[3] = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v12 = v73;
    v13 = *(&v73 + 1);
    v59[1] = v74;
    v59[2] = v75;
    v60 = *(&v74 + 1);
    v61 = *(&v75 + 1);
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v59[3] = *(&v80[0] + 1);
    v66 = *&v80[0];
    v67 = *&v80[1];
    v68 = BYTE8(v80[1]);
    v69 = BYTE9(v80[1]);
    v70 = BYTE10(v80[1]);
    v14 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v12 == 2)
    {
      v15 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v15 = v12 & 1;
    }

    v71 = v14;
    Hasher._combine(_:)(v15);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = v13 + 40;
        do
        {

          String.hash(into:)();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v60)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v60)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v8;
    v18 = *(&v63 + 1);
    v19 = *(&v62 + 1);
    if (v61)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v20 = v62;
      if (v62)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v20 = v62;
      if (v62)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v20, v21, v22, v23, v24, v25, v26);
        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v19)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v85, v19, v27, v28, v29, v30, v31, v32);
      if (v63)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v33 = v65;
      if (v64)
      {
        v34 = v66;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v66;
        Hasher._combine(_:)(0);
        if (*(&v64 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v35 = v34;
      if (v33)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v36 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v36);
        v37 = v68;
        if (v35)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = v68;
        if (v35)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v85, v35);
          if (v67)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v38 = v70;
            if (v37 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v37 & 1);
            }

            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v71;
            if (v38 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v38 & 1;
            }

            Hasher._combine(_:)(v41);
            if (v40 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v40 & 1;
            }

            Hasher._combine(_:)(v42);
            outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v18)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v11 = v8;
LABEL_56:
  v43 = (v1 + *(a1 + 36));
  if (*(v43 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    MEMORY[0x1865CD090](v45);
  }

  v46 = *(v43 + 2);
  v81 = *(v43 + 1);
  v82 = v46;
  v83[0] = *(v43 + 3);
  *(v83 + 9) = *(v43 + 57);
  specialized Optional<A>.hash(into:)();
  v47 = *(v43 + 73);
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  v48 = *(v43 + 37);
  v49 = v48 | (*(v43 + 76) << 16);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v49) & 1);
  }

  v50 = *(v43 + 77);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = v72;
    (*(v4 + 32))(v72, v11, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v52, v3);
  }

  v53 = (v43 + v51[10]);
  v54 = *(v53 + 8);
  if (v54 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = *v53;
    Hasher._combine(_:)(1u);
    if (v54)
    {
      MEMORY[0x1865CD060](1);
      if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      MEMORY[0x1865CD090](v56);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v55);
    }
  }

  v57 = *(v43 + v51[11]);
  if (v57 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v57);
  }

  return Hasher._finalize()();
}