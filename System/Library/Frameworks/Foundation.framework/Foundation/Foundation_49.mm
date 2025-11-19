uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v13[5];
    a2[4] = v13[4];
    a2[5] = v9;
    a2[6] = v14[0];
    *(a2 + 106) = *(v14 + 10);
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v32 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v40, v14, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v39 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v36;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v36, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      v44 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v33;
      v23 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Currency and conformance IntegerFormatStyle<A>.Currency, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      v24 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      outlined destroy of TermOfAddress?(v21, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      return (*v20)(v17, v23);
    }

    else
    {
      v28 = v38;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v38, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      v45 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v34;
      v30 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      v31 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v31);
      outlined destroy of TermOfAddress?(v28, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      return (*v20)(v17, v30);
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation18IntegerFormatStyleVySiGMd);
    v43 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, &_s10Foundation18IntegerFormatStyleVySiGMd);
    v27 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of TermOfAddress?(v11, &_s10Foundation18IntegerFormatStyleVySiGMd);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v50 - v8;
  v10 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v52 = v15;
  v53 = v18;
  v54 = v12;
  v55 = v21;
  v25 = v57;
  v24 = v58;
  v27 = v59;
  v26 = v60;
  v64 = v10;
  v28 = v61;
  v29 = v62;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v66 = v30;
  v67 = v30 + 32;
  v68 = 0;
  v69 = v31;
  v32 = specialized Collection<>.popFirst()();
  v33 = v26;
  if (v32 == 3 || v68 != v69 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v40 = v64;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v70 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v9;
      v36 = v29;
      v57 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Currency and conformance IntegerFormatStyle<A>.Currency, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      v37 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v51 = 0;
      (*(v56 + 8))(v34, v28);
      (*(v63 + 8))(v57, v33);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v37;
    }

    else
    {
      v70 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v26;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v9;
      v36 = v29;
      v57 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int>.Percent and conformance IntegerFormatStyle<A>.Percent, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      v45 = v54;
      v46 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = v63;
      v51 = 0;
      (*(v56 + 8))(v46, v28);
      (*(v47 + 8))(v57, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v45;
    }
  }

  else
  {
    v70 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, &_s10Foundation18IntegerFormatStyleVySiGMd);
    v44 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 8))(v25, v28);
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    v51 = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v29;
    v48 = v44;
  }

  v49 = v55;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v48, v55, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v49, v36, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle()
{
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle()
{
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v34, v46);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v40, v46);
  v18 = specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v46);
  return v18 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.format(_:)(Swift::Int a1)
{
  v181 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v163 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v163 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v163 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v14, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v172 = a1;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation18IntegerFormatStyleVySiGMd);
    v29 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v35 = v34;
    v36 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    v38 = (*(v36 + 472))(ObjectType, v36);
    v21 = v38;
    v40 = v39;
    if (one-time initialization token for cache != -1)
    {
      v38 = swift_once();
    }

    v41 = *algn_1EA7B1D98;
    v170 = static ICUNumberFormatter.cache;
    *&v173 = v29;
    *(&v173 + 1) = v35;
    *&v174 = v21;
    *(&v174 + 1) = v40;
    MEMORY[0x1EEE9AC00](v38);
    *(&v163 - 2) = &v173;
    os_unfair_lock_lock((v41 + 24));
    v42 = 0;
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v41 + 16, &v178);
    os_unfair_lock_unlock((v41 + 24));
    v43 = v178;
    if (v178 != 1)
    {
LABEL_130:

      v157 = v172;
      if (v43)
      {
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
        if (v42)
        {
        }

        else
        {

          v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v150 = v161;

          if (v150)
          {
            goto LABEL_134;
          }
        }
      }

      *&v178 = v157;
      lazy protocol witness table accessor for type Int and conformance Int();
      v148 = String.init<A>(_:radix:uppercase:)();
      v150 = v158;
LABEL_134:
      v151 = &_s10Foundation18IntegerFormatStyleVySiGMd;
      v152 = v11;
      goto LABEL_135;
    }

    type metadata accessor for ICUNumberFormatter();
    v43 = swift_allocObject();
    v43[3] = v29;
    v43[4] = v35;
    swift_bridgeObjectRetain_n();
    v44 = MEMORY[0x1865CB200](v29, v35);
    v171 = v21;
    if (v44)
    {
      v167 = v40;
      LOBYTE(v21) = 0;
      v45 = v44;
      v46 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v44, 0);

      v47 = specialized Sequence._copySequenceContents(initializing:)(&v178, (v46 + 4), v45, v29, v35);

      if (v47 != v45)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v164 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
        v166 = static _DictionaryStorage.copy(original:)();
        if (v46[2])
        {
          v92 = v166 + 64;
          v93 = 1 << v166[32];
          v165 = (v46 + 8);
          v94 = (v93 + 63) >> 6;
          if (v166 != v46 || v92 >= &v165[8 * v94])
          {
            memmove(v92, v165, 8 * v94);
          }

          v95 = 0;
          *(v166 + 2) = v46[2];
          v96 = 1 << *(v46 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v168 = v97 & v46[8];
          v163 = (v96 + 63) >> 6;
          while (v168)
          {
            v98 = __clz(__rbit64(v168));
            v168 &= v168 - 1;
LABEL_76:
            v101 = v98 | (v95 << 6);
            v102 = (v46[6] + 48 * v101);
            v103 = v102[1];
            v104 = v102[2];
            v105 = v102[3];
            v106 = *(v46[7] + 8 * v101);
            v107 = v102[4];
            v108 = v102[5];
            v109 = v166;
            v110 = (*(v166 + 6) + 48 * v101);
            *v110 = *v102;
            v110[1] = v103;
            v110[2] = v104;
            v110[3] = v105;
            v110[4] = v107;
            v110[5] = v108;
            *(*(v109 + 7) + 8 * v101) = v106;
          }

          v99 = v95;
          while (1)
          {
            v95 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (v95 >= v163)
            {
              goto LABEL_107;
            }

            v100 = *&v165[8 * v95];
            ++v99;
            if (v100)
            {
              v98 = __clz(__rbit64(v100));
              v168 = (v100 - 1) & v100;
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_142;
        }

LABEL_107:

        v48 = v164;
        v65 = v166;
        if ((v21 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_34;
      }

      LOBYTE(v21) = v171;
      v40 = v167;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    v169 = 0;
    LODWORD(v178) = 0;
    if (v46[2] >> 31)
    {
      goto LABEL_59;
    }

    String.utf8CString.getter();
    v78 = unumf_openForSkeletonAndLocale();

    if (v78)
    {
      if (v178 < 1)
      {
        v43[2] = v78;
LABEL_46:
        os_unfair_lock_lock((v41 + 24));
        v46 = *(v41 + 16);
        v79 = v46[2];
        v168 = v46;
        if (v170 < v79)
        {
          v46 = MEMORY[0x1E69E7CC8];
          *(v41 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
        *&v178 = *(v41 + 16);
        v80 = v178;
        *(v41 + 16) = 0x8000000000000000;
        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v35, v171, v40);
        v83 = *(v80 + 16);
        v84 = (v81 & 1) == 0;
        v48 = v83 + v84;
        if (__OFADD__(v83, v84))
        {
          goto LABEL_60;
        }

        v85 = v81;
        if (*(v80 + 24) >= v48)
        {
          if (v21)
          {
            v86 = v80;
            v42 = v169;
            v87 = v171;
            if ((v81 & 1) == 0)
            {
LABEL_128:
              specialized _NativeDictionary._insert(at:key:value:)(v82, v29, v35, v87, v40, v43, v86);
              goto LABEL_129;
            }
          }

          else
          {
            v165 = v82;
            v167 = v40;
            v164 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v130 = static _DictionaryStorage.copy(original:)();
            v86 = v130;
            if (*(v80 + 16))
            {
              v131 = (v130 + 64);
              v132 = 1 << *(v86 + 32);
              v166 = (v80 + 64);
              v133 = (v132 + 63) >> 6;
              if (v86 != v80 || v131 >= &v166[8 * v133])
              {
                memmove(v131, v166, 8 * v133);
              }

              v134 = 0;
              *(v86 + 16) = *(v80 + 16);
              v135 = 1 << *(v80 + 32);
              v136 = -1;
              if (v135 < 64)
              {
                v136 = ~(-1 << v135);
              }

              v170 = v136 & *(v80 + 64);
              v163 = (v135 + 63) >> 6;
              while (v170)
              {
                v137 = __clz(__rbit64(v170));
                v170 &= v170 - 1;
LABEL_106:
                v140 = v137 | (v134 << 6);
                v141 = (*(v80 + 48) + 32 * v140);
                v142 = v141[1];
                v143 = v141[2];
                v144 = v141[3];
                v145 = *(*(v80 + 56) + 8 * v140);
                v146 = (*(v86 + 48) + 32 * v140);
                *v146 = *v141;
                v146[1] = v142;
                v146[2] = v143;
                v146[3] = v144;
                *(*(v86 + 56) + 8 * v140) = v145;
              }

              v138 = v134;
              while (1)
              {
                v134 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_140;
                }

                if (v134 >= v163)
                {
                  break;
                }

                v139 = *&v166[8 * v134];
                ++v138;
                if (v139)
                {
                  v137 = __clz(__rbit64(v139));
                  v170 = (v139 - 1) & v139;
                  goto LABEL_106;
                }
              }
            }

            v42 = v169;
            v87 = v171;
            v29 = v164;
            v40 = v167;
            v82 = v165;
            if ((v85 & 1) == 0)
            {
              goto LABEL_128;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v21);
          v86 = v178;
          v87 = v171;
          v88 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v35, v171, v40);
          if ((v85 & 1) != (v89 & 1))
          {
LABEL_142:
            v159 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_143;
          }

          v82 = v88;
          v42 = v169;
          if ((v85 & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v90 = v82;

        *(*(v86 + 56) + 8 * v90) = v43;

LABEL_129:
        *(v41 + 16) = v86;

        os_unfair_lock_unlock((v41 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_130;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v43 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v5, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
    v30 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v11 = v49;
    v50 = *(v5 + 1);
    v51 = swift_getObjectType();
    v52 = (*(v50 + 472))(v51, v50);
    v27 = v53;
    if (one-time initialization token for cache != -1)
    {
      v91 = v52;
      swift_once();
      v52 = v91;
    }

    v54 = static ICUPercentNumberFormatter.cache;
    v29 = *algn_1EA7B0228;
    *&v178 = v30;
    *(&v178 + 1) = v11;
    v171 = v52;
    *&v179 = v52;
    *(&v179 + 1) = v27;
    MEMORY[0x1EEE9AC00](v52);
    *(&v163 - 2) = &v178;
    os_unfair_lock_lock((v29 + 24));
    v55 = 0;
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v29 + 16, &v173);
    os_unfair_lock_unlock((v29 + 24));
    isUniquelyReferenced_nonNull_native = v173;
    if (v173 != 1)
    {
LABEL_120:

      v154 = v172;
      if (isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
        if (v55)
        {
        }

        else
        {

          v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v150 = v156;

          if (v150)
          {
            goto LABEL_124;
          }
        }
      }

      *&v178 = v154;
      lazy protocol witness table accessor for type Int and conformance Int();
      v148 = String.init<A>(_:radix:uppercase:)();
      v150 = v155;
LABEL_124:
      v151 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
      v152 = v5;
      goto LABEL_135;
    }

    v170 = 0;
    *&v173 = 0x746E6563726570;
    *(&v173 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v176 = 32;
      v177 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v30, v11);
      MEMORY[0x1865CB0E0](v176, v177);
    }

    v58 = *(&v173 + 1);
    v57 = v173;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    isUniquelyReferenced_nonNull_native = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v57, v58);
    os_unfair_lock_lock((v29 + 24));
    v46 = *(v29 + 16);
    v59 = v46[2];
    v169 = v46;
    if (v54 < v59)
    {
      v46 = MEMORY[0x1E69E7CC8];
      *(v29 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

LABEL_27:

    LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
    *&v173 = *(v29 + 16);
    v67 = v173;
    *(v29 + 16) = 0x8000000000000000;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v11, v171, v27);
    v70 = *(v67 + 16);
    v71 = (v68 & 1) == 0;
    v48 = v70 + v71;
    if (!__OFADD__(v70, v71))
    {
      v72 = v68;
      if (*(v67 + 24) < v48)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v21);
        v73 = v173;
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v11, v171, v27);
        if ((v72 & 1) == (v75 & 1))
        {
          v69 = v74;
          goto LABEL_37;
        }

        goto LABEL_141;
      }

      if (v21)
      {
        v73 = v67;
LABEL_37:
        v55 = v170;
        if (v72)
        {
LABEL_38:
          v77 = v69;

          *(*(v73 + 56) + 8 * v77) = isUniquelyReferenced_nonNull_native;

LABEL_119:
          *(v29 + 16) = v73;

          os_unfair_lock_unlock((v29 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_120;
        }

LABEL_118:
        specialized _NativeDictionary._insert(at:key:value:)(v69, v30, v11, v171, v27, isUniquelyReferenced_nonNull_native, v73);
        goto LABEL_119;
      }

      v164 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v111 = static _DictionaryStorage.copy(original:)();
      v73 = v111;
      if (!*(v67 + 16))
      {
LABEL_117:

        v55 = v170;
        v69 = v164;
        if (v72)
        {
          goto LABEL_38;
        }

        goto LABEL_118;
      }

      v112 = (v111 + 64);
      v113 = 1 << *(v73 + 32);
      v165 = (v67 + 64);
      v114 = (v113 + 63) >> 6;
      if (v73 != v67 || v112 >= &v165[8 * v114])
      {
        memmove(v112, v165, 8 * v114);
      }

      v115 = 0;
      *(v73 + 16) = *(v67 + 16);
      v116 = 1 << *(v67 + 32);
      v117 = -1;
      if (v116 < 64)
      {
        v117 = ~(-1 << v116);
      }

      v168 = v117 & *(v67 + 64);
      v163 = (v116 + 63) >> 6;
      while (v168)
      {
        v118 = __clz(__rbit64(v168));
        v168 &= v168 - 1;
LABEL_91:
        v121 = v118 | (v115 << 6);
        v122 = *(v67 + 56);
        v123 = (*(v67 + 48) + 32 * v121);
        v124 = *v123;
        v166 = v123[1];
        v125 = v166;
        v126 = v123[2];
        v167 = v123[3];
        v127 = v167;
        v128 = *(v122 + 8 * v121);
        v129 = (*(v73 + 48) + 32 * v121);
        *v129 = v124;
        v129[1] = v125;
        v129[2] = v126;
        v129[3] = v127;
        *(*(v73 + 56) + 8 * v121) = v128;
      }

      v119 = v115;
      while (1)
      {
        v115 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_139;
        }

        if (v115 >= v163)
        {
          goto LABEL_117;
        }

        v120 = *&v165[8 * v115];
        ++v119;
        if (v120)
        {
          v118 = __clz(__rbit64(v120));
          v168 = (v120 - 1) & v120;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v8, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  v16 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v18 = v17;
  v19 = v8;
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  v22 = *(v19 + 1);
  v169 = v19;
  v23 = swift_getObjectType();
  v24 = *(v22 + 472);

  v25 = v24(v23, v22);
  *&v178 = v16;
  *(&v178 + 1) = v18;
  v171 = v18;
  *&v179 = v21;
  *(&v179 + 1) = v20;
  v170 = v20;
  *&v180 = v25;
  *(&v180 + 1) = v26;
  v27 = v26;
  if (one-time initialization token for cache != -1)
  {
    v25 = swift_once();
  }

  v11 = qword_1EA7B5100;
  v168 = static ICUCurrencyNumberFormatter.cache;
  v173 = v178;
  v174 = v179;
  v175 = v180;
  MEMORY[0x1EEE9AC00](v25);
  *(&v163 - 2) = &v173;
  os_unfair_lock_lock(v11 + 6);
  v28 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)((v11 + 16), &v176);
  os_unfair_lock_unlock(v11 + 6);
  v29 = v176;
  v5 = v171;
  v30 = v170;
  if (v176 == 1)
  {
    v167 = 0;
    v31 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v16, v171, v21, v170);
    v33 = v32;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();

    v29 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v31, v33);
    os_unfair_lock_lock(v11 + 6);
    if (v168 >= *(*(v11 + 2) + 16))
    {
    }

    else
    {
      *(v11 + 2) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = *(v11 + 2);
    v46 = v176;
    *(v11 + 2) = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v178);
    v61 = v46[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    LOBYTE(v21) = v60;
    if (v46[3] >= v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      v65 = v46;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v64, isUniquelyReferenced_nonNull_native);
      v65 = v176;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v178);
      if ((v21 & 1) != (v66 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_26;
      }
    }

    if ((v21 & 1) == 0)
    {
LABEL_108:
      specialized _NativeDictionary._insert(at:key:value:)(v48, &v178, v29, v65);
      goto LABEL_109;
    }

LABEL_34:
    v76 = v48;

    *(v65[7] + 8 * v76) = v29;

LABEL_109:
    *(v11 + 2) = v65;

    os_unfair_lock_unlock(v11 + 6);

    outlined consume of ICUNumberFormatter??(1);
    v28 = v167;
  }

  v147 = v172;
  if (v29)
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
    if (v28)
    {
    }

    else
    {

      v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v150 = v153;

      if (v150)
      {
        goto LABEL_114;
      }
    }
  }

  *&v173 = v147;
  lazy protocol witness table accessor for type Int and conformance Int();
  v148 = String.init<A>(_:radix:uppercase:)();
  v150 = v149;
LABEL_114:
  v151 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
  v152 = v169;
LABEL_135:
  outlined destroy of TermOfAddress?(v152, v151);
  v159 = v148;
  v160 = v150;
LABEL_143:
  result._object = v160;
  result._countAndFlagsBits = v159;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v24 - v12);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v10, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      v20 = v10;
      v21 = a2;
      v22 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
    }

    else
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v7, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v20 = v7;
      v21 = a2;
      v22 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v13, &_s10Foundation18IntegerFormatStyleVySiGMd);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v20 = v13;
    v21 = a2;
    v22 = &_s10Foundation18IntegerFormatStyleVySiGMd;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v20, v21, v22);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v32 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v32 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v32 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v40, v14, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v39 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v36;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v36, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      v44 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v33;
      v23 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Currency and conformance FloatingPointFormatStyle<A>.Currency, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      v24 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      outlined destroy of TermOfAddress?(v21, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      return (*v20)(v17, v23);
    }

    else
    {
      v28 = v38;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v38, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      v45 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v34;
      v30 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      v31 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v31);
      outlined destroy of TermOfAddress?(v28, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      return (*v20)(v17, v30);
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v43 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v27 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format.hash(into:)(Swift::Int a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(void, double), uint64_t (*a9)(void))
{
  v229 = a1;
  v223 = a2;
  v224 = a3;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v210 - v15;
  v225 = a4;
  v226 = a5;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v210 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v227 = *(v17 - 8);
  v228 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v222 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v220 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v221 = &v210 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v210 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v210 - v28;
  v30 = a8(0, v27);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v210 - v31;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v9, &v210 - v31, a9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v216;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v216, v225);
      v35 = v229;
      MEMORY[0x1865CD060](1);
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      if ((*(v36 + 48))(ObjectType, v36))
      {
        v38 = 1;
LABEL_11:
        Hasher._combine(_:)(v38);
        v50 = v227;
        v49 = v228;
        v51 = v217;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v36 + 64))(ObjectType, v36);
      String.hash(into:)();

      (*(v36 + 464))(&v230, ObjectType, v36);
      v243 = v236;
      v244[0] = v237[0];
      *(v244 + 12) = *(v237 + 12);
      *v240 = v232;
      *&v240[16] = v233;
      v241 = v234;
      v242 = v235;
      v238 = v230;
      v239 = v231;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v238) == 1)
      {
        v38 = 0;
        goto LABEL_11;
      }

      v57 = v230;
      v58 = *(&v230 + 1);
      v59 = *(&v231 + 1);
      v210 = v231;
      v60 = *(&v232 + 1);
      v211 = v232;
      *v213 = v233;
      *&v213[16] = v234;
      *&v213[32] = v235;
      v215 = *(&v236 + 1);
      *&v213[48] = v236;
      v212 = *(&v237[0] + 1);
      v218 = *&v237[0];
      v219 = *&v237[1];
      v220 = BYTE8(v237[1]);
      v223 = BYTE9(v237[1]);
      v61 = BYTE10(v237[1]);
      LODWORD(v224) = BYTE11(v237[1]);
      Hasher._combine(_:)(1u);
      if (v57 == 2)
      {
        v62 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v62 = v57 & 1;
      }

      Hasher._combine(_:)(v62);
      if (v58)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v58 + 16));
        v76 = *(v58 + 16);
        if (v76)
        {
          v77 = v58 + 40;
          do
          {

            String.hash(into:)();

            v77 += 16;
            --v76;
          }

          while (v76);
        }

        LODWORD(v214) = v61;
        if (v59)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v214) = v61;
        if (v59)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v50 = v227;
      v49 = v228;
      v82 = *v213;
      if (v60)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v83 = *&v213[24];
      if (v82)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v35, v82, v84, v85, v86, v87, v88, v89);
        v51 = v217;
        if (*(&v82 + 1))
        {
          goto LABEL_52;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v51 = v217;
        if (*(&v82 + 1))
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v35, *(&v82 + 1), v90, v91, v92, v93, v94, v95);
          if (*&v213[16])
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      Hasher._combine(_:)(0);
      if (*&v213[16])
      {
LABEL_53:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v83)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      }

LABEL_59:
      Hasher._combine(_:)(0);
      if (v83)
      {
LABEL_54:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v213[32])
        {
          goto LABEL_55;
        }

        goto LABEL_61;
      }

LABEL_60:
      Hasher._combine(_:)(0);
      if (*&v213[32])
      {
LABEL_55:
        v96 = v218;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v213[40])
        {
LABEL_56:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_63;
        }

LABEL_62:
        Hasher._combine(_:)(0);
LABEL_63:
        v97 = v96;
        if (*&v213[48])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v98 = v215;
          if (v215)
          {
            goto LABEL_65;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v98 = v215;
          if (v215)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v35, v98);
            v99 = v220;
            if (v97)
            {
              goto LABEL_66;
            }

            goto LABEL_70;
          }
        }

        Hasher._combine(_:)(0);
        v99 = v220;
        if (v97)
        {
LABEL_66:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v35, v97);
          if (v219)
          {
LABEL_67:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v100 = v214;
            if (v99 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v99 & 1);
            }

            v101 = v223;
            if (v223 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v101 & 1);
            }

            v102 = v224;
            if (v100 == 2)
            {
              v103 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v103 = v100 & 1;
            }

            Hasher._combine(_:)(v103);
            if (v102 == 2)
            {
              v104 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v104 = v102 & 1;
            }

            Hasher._combine(_:)(v104);
            outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
            String.hash(into:)();
            v105 = v34 + *(v51 + 40);
            if (*(v105 + 8) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v106 = *v105;
              Hasher._combine(_:)(1u);
              if ((v106 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v107 = v106;
              }

              else
              {
                v107 = 0;
              }

              MEMORY[0x1865CD090](v107);
            }

            v108 = *(v105 + 32);
            v238 = *(v105 + 16);
            v239 = v108;
            *v240 = *(v105 + 48);
            *&v240[9] = *(v105 + 57);
            specialized Optional<A>.hash(into:)();
            v109 = *(v105 + 73);
            if (v109 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v109 & 1);
            }

            v110 = *(v105 + 74);
            if (*(v105 + 74) == 2)
            {
              LOBYTE(v111) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v110 & 1);
              MEMORY[0x1865CD060]((v110 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v110) & 1);
              v111 = BYTE3(v110) & 1;
            }

            Hasher._combine(_:)(v111);
            v112 = *(v105 + 78);
            if (v112 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v112 & 1);
            }

            v113 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v114 = v221;
            outlined init with copy of FloatingPointRoundingRule?(v105 + v113[9], v221, &_ss25FloatingPointRoundingRuleOSgMd);
            if ((*(v50 + 48))(v114, 1, v49) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v115 = v222;
              (*(v50 + 32))(v222, v114, v49);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v50 + 8))(v115, v49);
            }

            v116 = v105 + v113[10];
            v117 = *(v116 + 8);
            if (v117 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v118 = *v116;
              Hasher._combine(_:)(1u);
              if (v117)
              {
                MEMORY[0x1865CD060](1);
                if ((v118 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v119 = v118;
                }

                else
                {
                  v119 = 0;
                }

                MEMORY[0x1865CD090](v119);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v118);
              }
            }

            MEMORY[0x1865CD060](*(v105 + v113[11]));
            v120 = *(v105 + v113[12]);
            if (v120 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v120);
            }

            v121 = v34;
            v122 = v225;
            return outlined destroy of TermOfAddress?(v121, v122);
          }

LABEL_71:
          Hasher._combine(_:)(0);
          goto LABEL_72;
        }

LABEL_70:
        Hasher._combine(_:)(0);
        if (v219)
        {
          goto LABEL_67;
        }

        goto LABEL_71;
      }

LABEL_61:
      v96 = v218;
      Hasher._combine(_:)(0);
      if (*&v213[40])
      {
        goto LABEL_56;
      }

      goto LABEL_62;
    }

    v44 = v219;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v219, v223);
    v45 = v229;
    MEMORY[0x1865CD060](2);
    v46 = *(v44 + 8);
    v47 = swift_getObjectType();
    if ((*(v46 + 48))(v47, v46))
    {
      v48 = 1;
LABEL_17:
      Hasher._combine(_:)(v48);
      v55 = v227;
      v54 = v228;
      v56 = v218;
      goto LABEL_226;
    }

    Hasher._combine(_:)(0);
    (*(v46 + 64))(v47, v46);
    String.hash(into:)();

    (*(v46 + 464))(&v230, v47, v46);
    v243 = v236;
    v244[0] = v237[0];
    *(v244 + 12) = *(v237 + 12);
    *v240 = v232;
    *&v240[16] = v233;
    v241 = v234;
    v242 = v235;
    v238 = v230;
    v239 = v231;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v238) == 1)
    {
      v48 = 0;
      goto LABEL_17;
    }

    v70 = v230;
    v71 = *(&v230 + 1);
    v72 = *(&v231 + 1);
    v210 = v231;
    v73 = *(&v232 + 1);
    v211 = v232;
    *v213 = v233;
    *&v213[16] = v234;
    *&v213[32] = v235;
    v215 = *(&v236 + 1);
    *&v213[48] = v236;
    v212 = *(&v237[0] + 1);
    v216 = *&v237[0];
    v217 = *&v237[1];
    v221 = BYTE8(v237[1]);
    v225 = BYTE9(v237[1]);
    v74 = BYTE10(v237[1]);
    LODWORD(v226) = BYTE11(v237[1]);
    Hasher._combine(_:)(1u);
    if (v70 == 2)
    {
      v75 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v75 = v70 & 1;
    }

    Hasher._combine(_:)(v75);
    if (v71)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v71 + 16));
      v80 = *(v71 + 16);
      if (v80)
      {
        v81 = v71 + 40;
        do
        {

          String.hash(into:)();

          v81 += 16;
          --v80;
        }

        while (v80);
      }

      LODWORD(v214) = v74;
      if (v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      LODWORD(v214) = v74;
      if (v72)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_188;
      }
    }

    Hasher._combine(_:)(0);
LABEL_188:
    v55 = v227;
    v54 = v228;
    v169 = *v213;
    if (v73)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v170 = *&v213[24];
    if (v169)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v45, v169, v171, v172, v173, v174, v175, v176);
      v56 = v218;
      if (*(&v169 + 1))
      {
        goto LABEL_193;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v56 = v218;
      if (*(&v169 + 1))
      {
LABEL_193:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v45, *(&v169 + 1), v177, v178, v179, v180, v181, v182);
        if (*&v213[16])
        {
          goto LABEL_194;
        }

        goto LABEL_200;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v213[16])
    {
LABEL_194:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v183 = *&v213[32];
      if (v170)
      {
        goto LABEL_195;
      }

      goto LABEL_201;
    }

LABEL_200:
    Hasher._combine(_:)(0);
    v183 = *&v213[32];
    if (v170)
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v183)
      {
        goto LABEL_196;
      }

      goto LABEL_202;
    }

LABEL_201:
    Hasher._combine(_:)(0);
    if (v183)
    {
LABEL_196:
      v184 = v216;
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*&v213[40])
      {
LABEL_197:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_204;
      }

LABEL_203:
      Hasher._combine(_:)(0);
LABEL_204:
      v185 = v184;
      if (*&v213[48])
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v186 = v215;
        if (v215)
        {
          goto LABEL_206;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v186 = v215;
        if (v215)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v45, v186);
          v187 = v221;
          if (v185)
          {
            goto LABEL_207;
          }

          goto LABEL_211;
        }
      }

      Hasher._combine(_:)(0);
      v187 = v221;
      if (v185)
      {
LABEL_207:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v45, v185);
        if (v217)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_213:
          v188 = v226;
          if (v187 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v187 & 1);
          }

          v189 = v225;
          if (v225 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v189 & 1);
          }

          v190 = v214;
          if (v214 == 2)
          {
            v191 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v191 = v190 & 1;
          }

          Hasher._combine(_:)(v191);
          if (v188 == 2)
          {
            v192 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v192 = v188 & 1;
          }

          Hasher._combine(_:)(v192);
          outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_226:
          v193 = v44 + *(v56 + 36);
          if (*(v193 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v194 = *v193;
            Hasher._combine(_:)(1u);
            if ((v194 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v195 = v194;
            }

            else
            {
              v195 = 0;
            }

            MEMORY[0x1865CD090](v195);
          }

          v196 = *(v193 + 32);
          v238 = *(v193 + 16);
          v239 = v196;
          *v240 = *(v193 + 48);
          *&v240[9] = *(v193 + 57);
          specialized Optional<A>.hash(into:)();
          v197 = *(v193 + 73);
          if (v197 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v197 & 1);
          }

          v198 = *(v193 + 74);
          v199 = v198 | (*(v193 + 76) << 16);
          if (v198 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v199 & 1);
            MEMORY[0x1865CD060]((v199 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v199) & 1);
          }

          v200 = *(v193 + 77);
          if (v200 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v200 & 1);
          }

          v201 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          v202 = v220;
          outlined init with copy of FloatingPointRoundingRule?(v193 + v201[9], v220, &_ss25FloatingPointRoundingRuleOSgMd);
          if ((*(v55 + 48))(v202, 1, v54) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v203 = v222;
            (*(v55 + 32))(v222, v202, v54);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v55 + 8))(v203, v54);
          }

          v204 = v193 + v201[10];
          v205 = *(v204 + 8);
          if (v205 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v206 = *v204;
            Hasher._combine(_:)(1u);
            if (v205)
            {
              MEMORY[0x1865CD060](1);
              if ((v206 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v207 = v206;
              }

              else
              {
                v207 = 0;
              }

              MEMORY[0x1865CD090](v207);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v206);
            }
          }

          v208 = *(v193 + v201[11]);
          if (v208 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v208);
          }

          v121 = v44;
          v122 = v223;
          return outlined destroy of TermOfAddress?(v121, v122);
        }

LABEL_212:
        Hasher._combine(_:)(0);
        goto LABEL_213;
      }

LABEL_211:
      Hasher._combine(_:)(0);
      if (v217)
      {
        goto LABEL_208;
      }

      goto LABEL_212;
    }

LABEL_202:
    v184 = v216;
    Hasher._combine(_:)(0);
    if (*&v213[40])
    {
      goto LABEL_197;
    }

    goto LABEL_203;
  }

  v224 = v26;
  v225 = v25;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v32, v29, a6);
  MEMORY[0x1865CD060](0);
  v39 = *(v29 + 1);
  v226 = v29;
  v40 = swift_getObjectType();
  v41 = (*(v39 + 48))(v40, v39);
  v214 = a7;
  v215 = a6;
  if (v41)
  {
    Hasher._combine(_:)(1u);
    v43 = v227;
    v42 = v228;
LABEL_14:
    v52 = v226;
    v53 = v224;
    goto LABEL_156;
  }

  Hasher._combine(_:)(0);
  (*(v39 + 64))(v40, v39);
  String.hash(into:)();

  (*(v39 + 464))(&v230, v40, v39);
  v243 = v236;
  v244[0] = v237[0];
  *(v244 + 12) = *(v237 + 12);
  *v240 = v232;
  *&v240[16] = v233;
  v241 = v234;
  v242 = v235;
  v238 = v230;
  v239 = v231;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v238) == 1)
  {
    Hasher._combine(_:)(0);
    v43 = v227;
    v42 = v228;
    goto LABEL_14;
  }

  v63 = v230;
  v64 = *(&v230 + 1);
  v65 = *(&v231 + 1);
  v211 = v231;
  v66 = *(&v232 + 1);
  v212 = v232;
  *&v213[8] = v233;
  *&v213[24] = v234;
  *&v213[40] = v235;
  v218 = *(&v236 + 1);
  v216 = v236;
  *v213 = *(&v237[0] + 1);
  v219 = *&v237[0];
  v220 = *&v237[1];
  v221 = BYTE8(v237[1]);
  v223 = BYTE9(v237[1]);
  v67 = BYTE10(v237[1]);
  v68 = BYTE11(v237[1]);
  Hasher._combine(_:)(1u);
  if (v63 == 2)
  {
    v69 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v69 = v63 & 1;
  }

  Hasher._combine(_:)(v69);
  if (v64)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v64 + 16));
    v78 = *(v64 + 16);
    if (v78)
    {
      v79 = v64 + 40;
      do
      {

        String.hash(into:)();

        v79 += 16;
        --v78;
      }

      while (v78);
    }

    LODWORD(v217) = v67;
    if (v65)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    LODWORD(v217) = v67;
    if (v65)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v52 = v226;
  v123 = v218;
  LODWORD(v218) = v68;
  if (v66)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v43 = v227;
  v42 = v228;
  v124 = *&v213[16];
  v125 = *&v213[8];
  if (*&v213[8])
  {
    v126 = v229;
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v126, v125, v127, v128, v129, v130, v131, v132);
    if (v124)
    {
      goto LABEL_122;
    }

LABEL_125:
    Hasher._combine(_:)(0);
    if (*(&v124 + 1))
    {
      goto LABEL_123;
    }

    goto LABEL_126;
  }

  Hasher._combine(_:)(0);
  if (!v124)
  {
    goto LABEL_125;
  }

LABEL_122:
  v133 = v229;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v133, v124, v134, v135, v136, v137, v138, v139);
  if (*(&v124 + 1))
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_127;
  }

LABEL_126:
  Hasher._combine(_:)(0);
LABEL_127:
  v140 = v123;
  if (*&v213[32])
  {
    v141 = v220;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v213[40])
    {
LABEL_129:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_132;
    }
  }

  else
  {
    v141 = v220;
    Hasher._combine(_:)(0);
    if (*&v213[40])
    {
      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
LABEL_132:
  v142 = v141;
  if (*&v213[48])
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v216)
    {
      goto LABEL_134;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v216)
    {
LABEL_134:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v53 = v224;
      if (v140)
      {
        goto LABEL_135;
      }

      goto LABEL_140;
    }
  }

  Hasher._combine(_:)(0);
  v53 = v224;
  if (v140)
  {
LABEL_135:
    v143 = v229;
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v143, v140);
    v144 = v219;
    if (v219)
    {
      goto LABEL_136;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    v146 = v217;
    if (v142)
    {
      goto LABEL_137;
    }

LABEL_142:
    Hasher._combine(_:)(0);
    goto LABEL_143;
  }

LABEL_140:
  Hasher._combine(_:)(0);
  v144 = v219;
  if (!v219)
  {
    goto LABEL_141;
  }

LABEL_136:
  v145 = v229;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v145, v144);
  v146 = v217;
  if (!v142)
  {
    goto LABEL_142;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_143:
  v147 = v221;
  if (v221 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v147 & 1);
  }

  v148 = v223;
  if (v223 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v148 & 1);
  }

  v149 = v218;
  if (v146 == 2)
  {
    v150 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v150 = v146 & 1;
  }

  Hasher._combine(_:)(v150);
  if (v149 == 2)
  {
    v151 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v151 = v149 & 1;
  }

  Hasher._combine(_:)(v151);
  outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_156:
  v152 = &v52[*(v53 + 36)];
  if (v152[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v153 = *v152;
    Hasher._combine(_:)(1u);
    if ((v153 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v154 = v153;
    }

    else
    {
      v154 = 0;
    }

    MEMORY[0x1865CD090](v154);
  }

  v155 = *(v152 + 2);
  v238 = *(v152 + 1);
  v239 = v155;
  *v240 = *(v152 + 3);
  *&v240[9] = *(v152 + 57);
  specialized Optional<A>.hash(into:)();
  v156 = v152[73];
  if (v156 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v156 & 1);
  }

  v157 = v225;
  v158 = *(v152 + 37);
  v159 = v158 | (v152[76] << 16);
  if (v158 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v159 & 1);
    MEMORY[0x1865CD060]((v159 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v159) & 1);
  }

  v160 = v152[77];
  if (v160 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v160 & 1);
  }

  v161 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v152[v161[9]], v157, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v43 + 48))(v157, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v162 = v222;
    (*(v43 + 32))(v222, v157, v42);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v43 + 8))(v162, v42);
  }

  v163 = v215;
  v164 = &v152[v161[10]];
  v165 = *(v164 + 8);
  if (v165 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v166 = *v164;
    Hasher._combine(_:)(1u);
    if (v165)
    {
      MEMORY[0x1865CD060](1);
      if ((v166 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v167 = v166;
      }

      else
      {
        v167 = 0;
      }

      MEMORY[0x1865CD090](v167);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v166);
    }
  }

  v168 = v152[v161[11]];
  if (v168 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v168);
  }

  v121 = v226;
  v122 = v163;
  return outlined destroy of TermOfAddress?(v121, v122);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v50 - v8;
  v10 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v52 = v15;
  v53 = v18;
  v54 = v12;
  v55 = v21;
  v25 = v57;
  v24 = v58;
  v27 = v59;
  v26 = v60;
  v64 = v10;
  v28 = v61;
  v29 = v62;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v66 = v30;
  v67 = v30 + 32;
  v68 = 0;
  v69 = v31;
  v32 = specialized Collection<>.popFirst()();
  v33 = v26;
  if (v32 == 3 || v68 != v69 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v40 = v64;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v70 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v9;
      v36 = v29;
      v57 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Currency and conformance FloatingPointFormatStyle<A>.Currency, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      v37 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v51 = 0;
      (*(v56 + 8))(v34, v28);
      (*(v63 + 8))(v57, v33);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v37;
    }

    else
    {
      v70 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v26;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v9;
      v36 = v29;
      v57 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      v45 = v54;
      v46 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = v63;
      v51 = 0;
      (*(v56 + 8))(v46, v28);
      (*(v47 + 8))(v57, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v48 = v45;
    }
  }

  else
  {
    v70 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v44 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 8))(v25, v28);
    (*(v63 + 8))(v9, v26);
    swift_unknownObjectRelease();
    v51 = 0;
    swift_storeEnumTagMultiPayload();
    v36 = v29;
    v48 = v44;
  }

  v49 = v55;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v48, v55, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v49, v36, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle@<X0>(Swift::Int *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07IntegerhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t *, void *, uint64_t *, void *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a3(v5, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t *, void *, uint64_t *, char *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a4(v6, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, _s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(Swift::Double a1)
{
  v2 = v1;
  v179 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v161 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v161 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v161 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v14, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v30 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v35 = v34;
    v36 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    v38 = (*(v36 + 472))(ObjectType, v36);
    v27 = v39;
    if (one-time initialization token for cache != -1)
    {
      v88 = v38;
      swift_once();
      v38 = v88;
    }

    v16 = &v161;
    v41 = static ICUNumberFormatter.cache;
    v40 = *algn_1EA7B1D98;
    *&v171 = v30;
    *(&v171 + 1) = v35;
    v170 = v38;
    *&v172 = v38;
    *(&v172 + 1) = v27;
    MEMORY[0x1EEE9AC00](v38);
    *(&v161 - 2) = &v171;
    os_unfair_lock_lock((v40 + 24));
    v42 = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v40 + 16, &v176);
    os_unfair_lock_unlock((v40 + 24));
    v43 = v176;
    if (v176 != 1)
    {
LABEL_130:

      if (v43)
      {
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
        if (v42)
        {
        }

        else
        {

          v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v150 = v159;

          if (v150)
          {
            goto LABEL_134;
          }
        }
      }

      v148 = Double.description.getter();
      v150 = v156;
LABEL_134:
      v151 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
      v152 = v11;
      goto LABEL_135;
    }

    v169 = 0;
    type metadata accessor for ICUNumberFormatter();
    v43 = swift_allocObject();
    v43[3] = v30;
    v43[4] = v35;
    swift_bridgeObjectRetain_n();
    v44 = MEMORY[0x1865CB200](v30, v35);
    if (v44)
    {
      v45 = v44;
      v46 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v44, 0);

      v16 = specialized Sequence._copySequenceContents(initializing:)(&v176, (v46 + 4), v45, v30, v35);

      if (v16 != v45)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v163 = v27;
        v164 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
        v165 = static _DictionaryStorage.copy(original:)();
        if (*(v41 + 16))
        {
          v90 = v165 + 64;
          v91 = v41 + 64;
          v92 = ((1 << v165[32]) + 63) >> 6;
          if (v165 != v41 || v90 >= v91 + 8 * v92)
          {
            memmove(v90, (v41 + 64), 8 * v92);
          }

          v93 = 0;
          *(v165 + 2) = *(v41 + 16);
          v94 = 1 << *(v41 + 32);
          v95 = -1;
          if (v94 < 64)
          {
            v95 = ~(-1 << v94);
          }

          v166 = v95 & *(v41 + 64);
          v162 = (v94 + 63) >> 6;
          while (v166)
          {
            v96 = __clz(__rbit64(v166));
            v166 &= v166 - 1;
LABEL_76:
            v99 = v96 | (v93 << 6);
            v100 = (*(v41 + 48) + 48 * v99);
            v101 = v100[1];
            v102 = v100[2];
            v103 = v100[3];
            v104 = *(*(v41 + 56) + 8 * v99);
            v105 = v100[4];
            v106 = v100[5];
            v107 = v165;
            v108 = (*(v165 + 6) + 48 * v99);
            *v108 = *v100;
            v108[1] = v101;
            v108[2] = v102;
            v108[3] = v103;
            v108[4] = v105;
            v108[5] = v106;
            *(*(v107 + 7) + 8 * v99) = v104;
          }

          v97 = v93;
          while (1)
          {
            v93 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              break;
            }

            if (v93 >= v162)
            {
              goto LABEL_107;
            }

            v98 = *(v91 + 8 * v93);
            ++v97;
            if (v98)
            {
              v96 = __clz(__rbit64(v98));
              v166 = (v98 - 1) & v98;
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_142;
        }

LABEL_107:

        v47 = v164;
        v58 = v165;
        if ((v16 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v176) = 0;
    if (v46[2] >> 31)
    {
      goto LABEL_59;
    }

    String.utf8CString.getter();
    v76 = unumf_openForSkeletonAndLocale();

    if (v76)
    {
      if (v176 < 1)
      {
        v43[2] = v76;
LABEL_46:
        os_unfair_lock_lock((v40 + 24));
        v77 = *(*(v40 + 16) + 16);
        v168 = *(v40 + 16);
        if (v41 < v77)
        {
          *(v40 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
        *&v176 = *(v40 + 16);
        v78 = v176;
        *(v40 + 16) = 0x8000000000000000;
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v35, v170, v27);
        v81 = *(v78 + 16);
        v82 = (v79 & 1) == 0;
        v47 = (v81 + v82);
        if (__OFADD__(v81, v82))
        {
          goto LABEL_60;
        }

        v83 = v79;
        if (*(v78 + 24) >= v47)
        {
          if ((v16 & 1) == 0)
          {
            v163 = v80;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v128 = static _DictionaryStorage.copy(original:)();
            v84 = v128;
            if (*(v78 + 16))
            {
              v129 = (v128 + 64);
              v130 = 1 << *(v84 + 32);
              v164 = (v78 + 64);
              v131 = (v130 + 63) >> 6;
              if (v84 != v78 || v129 >= &v164[8 * v131])
              {
                memmove(v129, v164, 8 * v131);
              }

              v132 = 0;
              *(v84 + 16) = *(v78 + 16);
              v133 = 1 << *(v78 + 32);
              v134 = -1;
              if (v133 < 64)
              {
                v134 = ~(-1 << v133);
              }

              v167 = v134 & *(v78 + 64);
              v162 = (v133 + 63) >> 6;
              while (v167)
              {
                v135 = __clz(__rbit64(v167));
                v167 &= v167 - 1;
LABEL_106:
                v138 = v135 | (v132 << 6);
                v139 = *(v78 + 56);
                v140 = (*(v78 + 48) + 32 * v138);
                v141 = *v140;
                v165 = v140[1];
                v142 = v165;
                v143 = v140[2];
                v166 = v140[3];
                v144 = v166;
                v145 = *(v139 + 8 * v138);
                v146 = (*(v84 + 48) + 32 * v138);
                *v146 = v141;
                v146[1] = v142;
                v146[2] = v143;
                v146[3] = v144;
                *(*(v84 + 56) + 8 * v138) = v145;
              }

              v136 = v132;
              while (1)
              {
                v132 = v136 + 1;
                if (__OFADD__(v136, 1))
                {
                  goto LABEL_140;
                }

                if (v132 >= v162)
                {
                  break;
                }

                v137 = *&v164[8 * v132];
                ++v136;
                if (v137)
                {
                  v135 = __clz(__rbit64(v137));
                  v167 = (v137 - 1) & v137;
                  goto LABEL_106;
                }
              }
            }

            v42 = v169;
            v80 = v163;
            if (v83)
            {
              goto LABEL_56;
            }

            goto LABEL_128;
          }

          v84 = v78;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v16);
          v84 = v176;
          v85 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v35, v170, v27);
          if ((v83 & 1) != (v86 & 1))
          {
LABEL_142:
            v157 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_143;
          }

          v80 = v85;
        }

        v42 = v169;
        if (v83)
        {
LABEL_56:
          v87 = v80;

          *(*(v84 + 56) + 8 * v87) = v43;

LABEL_129:
          *(v40 + 16) = v84;

          os_unfair_lock_unlock((v40 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_130;
        }

LABEL_128:
        specialized _NativeDictionary._insert(at:key:value:)(v80, v30, v35, v170, v27, v43, v84);
        goto LABEL_129;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v43 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v5, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
    v28 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v11 = v48;
    v49 = *(v5 + 1);
    v50 = swift_getObjectType();
    v51 = (*(v49 + 472))(v50, v49);
    v27 = v52;
    if (one-time initialization token for cache != -1)
    {
      v89 = v51;
      swift_once();
      v51 = v89;
    }

    v53 = static ICUPercentNumberFormatter.cache;
    v41 = *algn_1EA7B0228;
    *&v176 = v28;
    *(&v176 + 1) = v11;
    v170 = v51;
    *&v177 = v51;
    *(&v177 + 1) = v27;
    MEMORY[0x1EEE9AC00](v51);
    *(&v161 - 2) = &v176;
    os_unfair_lock_lock((v41 + 24));
    v54 = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v41 + 16, &v171);
    os_unfair_lock_unlock((v41 + 24));
    isUniquelyReferenced_nonNull_native = v171;
    if (v171 != 1)
    {
LABEL_120:

      if (isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
        if (v54)
        {
        }

        else
        {

          v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v150 = v155;

          if (v150)
          {
            goto LABEL_124;
          }
        }
      }

      v148 = Double.description.getter();
      v150 = v154;
LABEL_124:
      v151 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
      v152 = v5;
      goto LABEL_135;
    }

    v169 = 0;
    *&v171 = 0x746E6563726570;
    *(&v171 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v174 = 32;
      v175 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v28, v11);
      MEMORY[0x1865CB0E0](v174, v175);
    }

    v57 = *(&v171 + 1);
    v56 = v171;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    isUniquelyReferenced_nonNull_native = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v56, v57);
    os_unfair_lock_lock((v41 + 24));
    v58 = *(v41 + 16);
    if (v53 < v58[2])
    {
      v30 = *(v41 + 16);
      *(v41 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

    v30 = v58;
LABEL_27:

    LOBYTE(v16) = swift_isUniquelyReferenced_nonNull_native();
    *&v171 = *(v41 + 16);
    v65 = v171;
    *(v41 + 16) = 0x8000000000000000;
    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v11, v170, v27);
    v68 = *(v65 + 16);
    v69 = (v66 & 1) == 0;
    v47 = (v68 + v69);
    if (!__OFADD__(v68, v69))
    {
      if (*(v65 + 24) < v47)
      {
        v70 = v66;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v16);
        v71 = v171;
        v72 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v11, v170, v27);
        if ((v70 & 1) == (v73 & 1))
        {
          v67 = v72;
          LOBYTE(v66) = v70;
          goto LABEL_37;
        }

        goto LABEL_141;
      }

      if (v16)
      {
        v71 = v65;
LABEL_37:
        v54 = v169;
        if (v66)
        {
LABEL_38:
          v75 = v67;

          *(*(v71 + 56) + 8 * v75) = isUniquelyReferenced_nonNull_native;

LABEL_119:
          *(v41 + 16) = v71;

          os_unfair_lock_unlock((v41 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_120;
        }

LABEL_118:
        specialized _NativeDictionary._insert(at:key:value:)(v67, v28, v11, v170, v27, isUniquelyReferenced_nonNull_native, v71);
        goto LABEL_119;
      }

      v163 = v67;
      LODWORD(v164) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v109 = static _DictionaryStorage.copy(original:)();
      v71 = v109;
      if (!*(v65 + 16))
      {
LABEL_117:

        v54 = v169;
        v67 = v163;
        if (v164)
        {
          goto LABEL_38;
        }

        goto LABEL_118;
      }

      v110 = (v109 + 64);
      v111 = 1 << *(v71 + 32);
      v165 = (v65 + 64);
      v112 = (v111 + 63) >> 6;
      if (v71 != v65 || v110 >= &v165[8 * v112])
      {
        memmove(v110, v165, 8 * v112);
      }

      v113 = 0;
      *(v71 + 16) = *(v65 + 16);
      v114 = 1 << *(v65 + 32);
      v115 = -1;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      v168 = v115 & *(v65 + 64);
      v162 = (v114 + 63) >> 6;
      while (v168)
      {
        v116 = __clz(__rbit64(v168));
        v168 &= v168 - 1;
LABEL_91:
        v119 = v116 | (v113 << 6);
        v120 = *(v65 + 56);
        v121 = (*(v65 + 48) + 32 * v119);
        v122 = *v121;
        v166 = v121[1];
        v123 = v166;
        v124 = v121[2];
        v167 = v121[3];
        v125 = v167;
        v126 = *(v120 + 8 * v119);
        v127 = (*(v71 + 48) + 32 * v119);
        *v127 = v122;
        v127[1] = v123;
        v127[2] = v124;
        v127[3] = v125;
        *(*(v71 + 56) + 8 * v119) = v126;
      }

      v117 = v113;
      while (1)
      {
        v113 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_139;
        }

        if (v113 >= v162)
        {
          goto LABEL_117;
        }

        v118 = *&v165[8 * v113];
        ++v117;
        if (v118)
        {
          v116 = __clz(__rbit64(v118));
          v168 = (v118 - 1) & v118;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v14, v8, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  v16 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v18 = v17;
  v19 = v8;
  v21 = *(v8 + 2);
  v20 = *(v8 + 3);
  v22 = *(v19 + 8);
  v168 = v19;
  v23 = swift_getObjectType();
  v24 = *(v22 + 472);

  v25 = v24(v23, v22);
  *&v176 = v16;
  *(&v176 + 1) = v18;
  v169 = v18;
  *&v177 = v21;
  *(&v177 + 1) = v20;
  v170 = v20;
  v27 = v26;
  *&v178 = v25;
  *(&v178 + 1) = v26;
  if (one-time initialization token for cache != -1)
  {
    v25 = swift_once();
  }

  v28 = static ICUCurrencyNumberFormatter.cache;
  v11 = qword_1EA7B5100;
  v171 = v176;
  v172 = v177;
  v173 = v178;
  MEMORY[0x1EEE9AC00](v25);
  *(&v161 - 2) = &v171;
  os_unfair_lock_lock(v11 + 6);
  v29 = 0;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply((v11 + 16), &v174);
  os_unfair_lock_unlock(v11 + 6);
  v30 = v174;
  v5 = v169;
  if (v174 == 1)
  {
    v167 = 0;
    v31 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v16, v169, v21, v170);
    v33 = v32;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();

    v30 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v31, v33);
    os_unfair_lock_lock(v11 + 6);
    if (v28 >= *(*(v11 + 2) + 16))
    {
    }

    else
    {
      *(v11 + 2) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174 = *(v11 + 2);
    v41 = v174;
    *(v11 + 2) = 0x8000000000000000;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v176);
    v60 = *(v41 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    LOBYTE(v16) = v59;
    if (*(v41 + 24) >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      v58 = v41;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
      v58 = v174;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v176);
      if ((v16 & 1) != (v64 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_26;
      }
    }

    if ((v16 & 1) == 0)
    {
LABEL_108:
      specialized _NativeDictionary._insert(at:key:value:)(v47, &v176, v30, v58);
      goto LABEL_109;
    }

LABEL_34:
    v74 = v47;

    *(v58[7] + 8 * v74) = v30;

LABEL_109:
    *(v11 + 2) = v58;

    os_unfair_lock_unlock(v11 + 6);

    outlined consume of ICUNumberFormatter??(1);
    v29 = v167;
  }

  v147 = v168;
  if (v30)
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
    if (v29)
    {
    }

    else
    {

      v148 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v150 = v153;

      if (v150)
      {
        goto LABEL_114;
      }
    }
  }

  v148 = Double.description.getter();
  v150 = v149;
LABEL_114:
  v151 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
  v152 = v147;
LABEL_135:
  outlined destroy of TermOfAddress?(v152, v151);
  v157 = v148;
  v158 = v150;
LABEL_143:
  result._object = v158;
  result._countAndFlagsBits = v157;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v24 - v12);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v10, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      v20 = v10;
      v21 = a2;
      v22 = &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd;
    }

    else
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v7, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v20 = v7;
      v21 = a2;
      v22 = &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd;
    }
  }

  else
  {
    outlined init with take of IntegerFormatStyle<Int>.Percent(v16, v13, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v20 = v13;
    v21 = a2;
    v22 = &_s10Foundation24FloatingPointFormatStyleVySdGMd;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v20, v21, v22);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.hash(into:)(Swift::Int a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, double), uint64_t (*a9)(void))
{
  v216 = a1;
  v214 = a9;
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v217 = *(v16 - 8);
  v218 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v211 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v207 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v199 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v199 - v23);
  v212 = a2;
  v210 = a3;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x1EEE9AC00](v206);
  *(&v205 + 1) = &v199 - v25;
  v213 = a4;
  v209 = a5;
  *&v205 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x1EEE9AC00](v205);
  v27 = &v199 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v199 - v30;
  v32 = a8(0, v29);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v199 - v33;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v215, &v199 - v33, v214);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of IntegerFormatStyle<Int>.Percent(v34, v27, v213);
      v36 = v216;
      MEMORY[0x1865CD060](1);
      v37 = *(v27 + 1);
      ObjectType = swift_getObjectType();
      v39 = (*(v37 + 48))(ObjectType, v37);
      v41 = v217;
      v40 = v218;
      if (v39)
      {
        Hasher._combine(_:)(1u);
        goto LABEL_82;
      }

      Hasher._combine(_:)(0);
      (*(v37 + 64))(ObjectType, v37);
      String.hash(into:)();

      (*(v37 + 464))(&v219, ObjectType, v37);
      v232 = v225;
      v233[0] = v226[0];
      *(v233 + 12) = *(v226 + 12);
      *v229 = v221;
      *&v229[16] = v222;
      v230 = v223;
      v231 = v224;
      v227 = v219;
      v228 = v220;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v227) == 1)
      {
        Hasher._combine(_:)(0);
        goto LABEL_82;
      }

      v55 = v219;
      v56 = *(&v219 + 1);
      v57 = *(&v220 + 1);
      v201 = v220;
      v58 = *(&v221 + 1);
      v202 = v221;
      *v204 = *(&v222 + 1);
      v59 = v222;
      *&v204[8] = v223;
      *&v204[24] = v224;
      *(&v205 + 1) = *(&v225 + 1);
      *&v204[40] = v225;
      v203 = *(&v226[0] + 1);
      v206 = *&v226[0];
      v207 = *&v226[1];
      v210 = BYTE8(v226[1]);
      v212 = BYTE9(v226[1]);
      LODWORD(v214) = BYTE10(v226[1]);
      LODWORD(v215) = BYTE11(v226[1]);
      Hasher._combine(_:)(1u);
      if (v55 == 2)
      {
        v60 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v60 = v55 & 1;
      }

      Hasher._combine(_:)(v60);
      if (v56)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v56 + 16));
        v73 = *(v56 + 16);
        if (v73)
        {
          v74 = v56 + 40;
          do
          {

            String.hash(into:)();

            v74 += 16;
            --v73;
          }

          while (v73);
        }

        if (v57)
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          v41 = v217;
          v40 = v218;
          if (v58)
          {
LABEL_29:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_47;
          }

LABEL_46:
          Hasher._combine(_:)(0);
LABEL_47:
          if (v59)
          {
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(v36, v59, v79, v80, v81, v82, v83, v84);
            v85 = *v204;
            if (*v204)
            {
              goto LABEL_49;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            v85 = *v204;
            if (*v204)
            {
LABEL_49:
              Hasher._combine(_:)(1u);
              specialized Dictionary<>.hash(into:)(v36, v85, v86, v87, v88, v89, v90, v91);
              if (*&v204[8])
              {
LABEL_50:
                Hasher._combine(_:)(1u);
                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                _CFObject.hash(into:)();
                goto LABEL_54;
              }

LABEL_53:
              Hasher._combine(_:)(0);
LABEL_54:
              if (*&v204[16])
              {
                Hasher._combine(_:)(1u);
                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                _CFObject.hash(into:)();
                if (*&v204[24])
                {
                  goto LABEL_56;
                }
              }

              else
              {
                Hasher._combine(_:)(0);
                if (*&v204[24])
                {
LABEL_56:
                  Hasher._combine(_:)(1u);
                  type metadata accessor for CFDictionaryRef(0);
                  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                  _CFObject.hash(into:)();
                  if (*&v204[32])
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_64;
                }
              }

              Hasher._combine(_:)(0);
              if (*&v204[32])
              {
LABEL_57:
                Hasher._combine(_:)(1u);
                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                _CFObject.hash(into:)();
                if (*&v204[40])
                {
                  goto LABEL_58;
                }

                goto LABEL_65;
              }

LABEL_64:
              Hasher._combine(_:)(0);
              if (*&v204[40])
              {
LABEL_58:
                Hasher._combine(_:)(1u);
                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                _CFObject.hash(into:)();
                v92 = *(&v205 + 1);
                if (*(&v205 + 1))
                {
                  goto LABEL_59;
                }

                goto LABEL_66;
              }

LABEL_65:
              Hasher._combine(_:)(0);
              v92 = *(&v205 + 1);
              if (*(&v205 + 1))
              {
LABEL_59:
                Hasher._combine(_:)(1u);
                specialized Dictionary<>.hash(into:)(v36, v92);
                v93 = v206;
                if (v206)
                {
                  goto LABEL_60;
                }

                goto LABEL_67;
              }

LABEL_66:
              Hasher._combine(_:)(0);
              v93 = v206;
              if (v206)
              {
LABEL_60:
                Hasher._combine(_:)(1u);
                specialized Dictionary<>.hash(into:)(v36, v93);
                if (v207)
                {
LABEL_61:
                  Hasher._combine(_:)(1u);
                  String.hash(into:)();
LABEL_69:
                  v94 = v210;
                  if (v210 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v94 & 1);
                  }

                  v95 = v212;
                  if (v212 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v95 & 1);
                  }

                  v96 = v214;
                  if (v214 == 2)
                  {
                    v97 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v97 = v96 & 1;
                  }

                  v98 = v215;
                  Hasher._combine(_:)(v97);
                  if (v98 == 2)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v99 = v98 & 1;
                  }

                  Hasher._combine(_:)(v99);
                  outlined destroy of TermOfAddress?(&v219, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_82:
                  v100 = v205;
                  String.hash(into:)();
                  v101 = &v27[*(v100 + 40)];
                  if (v101[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v102 = *v101;
                    Hasher._combine(_:)(1u);
                    if ((v102 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v103 = v102;
                    }

                    else
                    {
                      v103 = 0;
                    }

                    MEMORY[0x1865CD090](v103);
                  }

                  v104 = *(v101 + 2);
                  v227 = *(v101 + 1);
                  v228 = v104;
                  *v229 = *(v101 + 3);
                  *&v229[9] = *(v101 + 57);
                  specialized Optional<A>.hash(into:)();
                  v105 = v101[73];
                  if (v105 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v105 & 1);
                  }

                  v106 = *(v101 + 74);
                  if (*(v101 + 74) == 2)
                  {
                    LOBYTE(v107) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v106 & 1);
                    MEMORY[0x1865CD060]((v106 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v106) & 1);
                    v107 = BYTE3(v106) & 1;
                  }

                  Hasher._combine(_:)(v107);
                  v108 = v101[78];
                  if (v108 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v108 & 1);
                  }

                  v109 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  v110 = v208;
                  outlined init with copy of FloatingPointRoundingRule?(&v101[v109[9]], v208, &_ss25FloatingPointRoundingRuleOSgMd);
                  if ((*(v41 + 48))(v110, 1, v40) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v111 = v211;
                    (*(v41 + 32))(v211, v110, v40);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v41 + 8))(v111, v40);
                  }

                  v112 = &v101[v109[10]];
                  v113 = v112[8];
                  if (v113 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v114 = *v112;
                    Hasher._combine(_:)(1u);
                    if (v113)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v114 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v115 = v114;
                      }

                      else
                      {
                        v115 = 0;
                      }

                      MEMORY[0x1865CD090](v115);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v114);
                    }
                  }

                  MEMORY[0x1865CD060](v101[v109[11]]);
                  v116 = v101[v109[12]];
                  if (v116 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v116);
                  }

                  v117 = v27;
                  v118 = v213;
                  return outlined destroy of TermOfAddress?(v117, v118);
                }

LABEL_68:
                Hasher._combine(_:)(0);
                goto LABEL_69;
              }

LABEL_67:
              Hasher._combine(_:)(0);
              if (v207)
              {
                goto LABEL_61;
              }

              goto LABEL_68;
            }
          }

          Hasher._combine(_:)(0);
          if (*&v204[8])
          {
            goto LABEL_50;
          }

          goto LABEL_53;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v57)
        {
          goto LABEL_28;
        }
      }

      Hasher._combine(_:)(0);
      v41 = v217;
      v40 = v218;
      if (v58)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    }

    v47 = *(&v205 + 1);
    outlined init with take of IntegerFormatStyle<Int>.Percent(v34, *(&v205 + 1), v212);
    v48 = v216;
    MEMORY[0x1865CD060](2);
    v49 = *(v47 + 8);
    v50 = swift_getObjectType();
    v51 = (*(v49 + 48))(v50, v49);
    v53 = v217;
    v52 = v218;
    if (v51)
    {
      Hasher._combine(_:)(1u);
LABEL_15:
      v54 = v206;
      goto LABEL_222;
    }

    Hasher._combine(_:)(0);
    (*(v49 + 64))(v50, v49);
    String.hash(into:)();

    (*(v49 + 464))(&v219, v50, v49);
    v232 = v225;
    v233[0] = v226[0];
    *(v233 + 12) = *(v226 + 12);
    *v229 = v221;
    *&v229[16] = v222;
    v230 = v223;
    v231 = v224;
    v227 = v219;
    v228 = v220;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v227) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_15;
    }

    v67 = v219;
    v68 = *(&v219 + 1);
    v69 = *(&v220 + 1);
    v200 = v220;
    v70 = *(&v221 + 1);
    v201 = v221;
    v71 = *(&v222 + 1);
    v203 = v222;
    *v204 = v223;
    *&v204[16] = v224;
    *&v204[32] = v225;
    v202 = *(&v226[0] + 1);
    *&v205 = *&v226[0];
    v208 = *&v226[1];
    v209 = BYTE8(v226[1]);
    v213 = BYTE9(v226[1]);
    LODWORD(v214) = BYTE10(v226[1]);
    LODWORD(v215) = BYTE11(v226[1]);
    Hasher._combine(_:)(1u);
    if (v67 == 2)
    {
      v72 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v72 = v67 & 1;
    }

    Hasher._combine(_:)(v72);
    if (v68)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v68 + 16));
      v77 = *(v68 + 16);
      if (v77)
      {
        v78 = v68 + 40;
        do
        {

          String.hash(into:)();

          v78 += 16;
          --v77;
        }

        while (v77);
      }

      if (v69)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v69)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_184;
      }
    }

    Hasher._combine(_:)(0);
LABEL_184:
    v53 = v217;
    v52 = v218;
    v160 = v71;
    if (v70)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v161 = v203;
    if (v203)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v48, v161, v162, v163, v164, v165, v166, v167);
      v54 = v206;
      if (v160)
      {
        goto LABEL_189;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v54 = v206;
      if (v160)
      {
LABEL_189:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v48, v160, v168, v169, v170, v171, v172, v173);
        if (*v204)
        {
LABEL_190:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_194;
        }

LABEL_193:
        Hasher._combine(_:)(0);
LABEL_194:
        if (*&v204[8])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*&v204[16])
          {
            goto LABEL_196;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*&v204[16])
          {
LABEL_196:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (*&v204[24])
            {
              goto LABEL_197;
            }

            goto LABEL_204;
          }
        }

        Hasher._combine(_:)(0);
        if (*&v204[24])
        {
LABEL_197:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*&v204[32])
          {
            goto LABEL_198;
          }

          goto LABEL_205;
        }

LABEL_204:
        Hasher._combine(_:)(0);
        if (*&v204[32])
        {
LABEL_198:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v174 = *&v204[40];
          if (*&v204[40])
          {
            goto LABEL_199;
          }

          goto LABEL_206;
        }

LABEL_205:
        Hasher._combine(_:)(0);
        v174 = *&v204[40];
        if (*&v204[40])
        {
LABEL_199:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v48, v174);
          v175 = v205;
          if (v205)
          {
            goto LABEL_200;
          }

          goto LABEL_207;
        }

LABEL_206:
        Hasher._combine(_:)(0);
        v175 = v205;
        if (v205)
        {
LABEL_200:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v48, v175);
          if (v208)
          {
LABEL_201:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_209:
            v176 = v209;
            if (v209 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v176 & 1);
            }

            v177 = v213;
            if (v213 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v177 & 1);
            }

            v178 = v214;
            if (v214 == 2)
            {
              v179 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v179 = v178 & 1;
            }

            v180 = v215;
            Hasher._combine(_:)(v179);
            if (v180 == 2)
            {
              v181 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v181 = v180 & 1;
            }

            Hasher._combine(_:)(v181);
            outlined destroy of TermOfAddress?(&v219, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_222:
            v182 = v47 + *(v54 + 36);
            if (*(v182 + 8) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v183 = *v182;
              Hasher._combine(_:)(1u);
              if ((v183 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v184 = v183;
              }

              else
              {
                v184 = 0;
              }

              MEMORY[0x1865CD090](v184);
            }

            v185 = *(v182 + 32);
            v227 = *(v182 + 16);
            v228 = v185;
            *v229 = *(v182 + 48);
            *&v229[9] = *(v182 + 57);
            specialized Optional<A>.hash(into:)();
            v186 = *(v182 + 73);
            if (v186 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v186 & 1);
            }

            v187 = *(v182 + 74);
            v188 = v187 | (*(v182 + 76) << 16);
            if (v187 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v188 & 1);
              MEMORY[0x1865CD060]((v188 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v188) & 1);
            }

            v189 = *(v182 + 77);
            if (v189 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v189 & 1);
            }

            v190 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v191 = v207;
            outlined init with copy of FloatingPointRoundingRule?(v182 + v190[9], v207, &_ss25FloatingPointRoundingRuleOSgMd);
            if ((*(v53 + 48))(v191, 1, v52) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v192 = v211;
              (*(v53 + 32))(v211, v191, v52);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v53 + 8))(v192, v52);
            }

            v193 = (v182 + v190[10]);
            v194 = *(v193 + 8);
            if (v194 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v195 = *v193;
              Hasher._combine(_:)(1u);
              if (v194)
              {
                MEMORY[0x1865CD060](1);
                if ((v195 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v196 = v195;
                }

                else
                {
                  v196 = 0;
                }

                MEMORY[0x1865CD090](v196);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v195);
              }
            }

            v197 = *(v182 + v190[11]);
            if (v197 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v197);
            }

            v117 = v47;
            v118 = v212;
            return outlined destroy of TermOfAddress?(v117, v118);
          }

LABEL_208:
          Hasher._combine(_:)(0);
          goto LABEL_209;
        }

LABEL_207:
        Hasher._combine(_:)(0);
        if (v208)
        {
          goto LABEL_201;
        }

        goto LABEL_208;
      }
    }

    Hasher._combine(_:)(0);
    if (*v204)
    {
      goto LABEL_190;
    }

    goto LABEL_193;
  }

  v42 = v28;
  v214 = v24;
  v215 = a6;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v34, v31, a6);
  v43 = v216;
  MEMORY[0x1865CD060](0);
  v44 = *(v31 + 1);
  v45 = swift_getObjectType();
  if ((*(v44 + 48))(v45, v44))
  {
    Hasher._combine(_:)(1u);
    v46 = v218;
    goto LABEL_152;
  }

  Hasher._combine(_:)(0);
  (*(v44 + 64))(v45, v44);
  String.hash(into:)();

  (*(v44 + 464))(&v219, v45, v44);
  v232 = v225;
  v233[0] = v226[0];
  *(v233 + 12) = *(v226 + 12);
  *v229 = v221;
  *&v229[16] = v222;
  v230 = v223;
  v231 = v224;
  v227 = v219;
  v228 = v220;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v227) == 1)
  {
    Hasher._combine(_:)(0);
    v46 = v218;
    goto LABEL_152;
  }

  v213 = a7;
  v61 = v219;
  v62 = *(&v219 + 1);
  v63 = *(&v220 + 1);
  v200 = v220;
  v64 = *(&v221 + 1);
  v201 = v221;
  *v204 = v222;
  *&v204[16] = v223;
  *&v204[32] = v224;
  v205 = v225;
  v202 = *(&v226[0] + 1);
  v206 = *&v226[0];
  v207 = *&v226[1];
  v208 = BYTE8(v226[1]);
  v209 = BYTE9(v226[1]);
  LODWORD(v210) = BYTE10(v226[1]);
  v65 = BYTE11(v226[1]);
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

  LODWORD(v212) = v65;
  Hasher._combine(_:)(v66);
  if (v62)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v62 + 16));
    v75 = *(v62 + 16);
    if (v75)
    {
      v76 = v62 + 40;
      do
      {

        String.hash(into:)();

        v76 += 16;
        --v75;
      }

      while (v75);
    }

    v203 = v42;
    if (v63)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v203 = v42;
    if (v63)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_114;
    }
  }

  Hasher._combine(_:)(0);
LABEL_114:
  v119 = *&v204[24];
  v120 = *&v204[8];
  if (v64)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v46 = v218;
  v121 = *v204;
  if (*v204)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v43, v121, v122, v123, v124, v125, v126, v127);
    if (v120)
    {
      goto LABEL_119;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v120)
    {
LABEL_119:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v43, v120, v128, v129, v130, v131, v132, v133);
      if (*&v204[16])
      {
        goto LABEL_120;
      }

      goto LABEL_126;
    }
  }

  Hasher._combine(_:)(0);
  if (*&v204[16])
  {
LABEL_120:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v119)
    {
      goto LABEL_121;
    }

    goto LABEL_127;
  }

LABEL_126:
  Hasher._combine(_:)(0);
  if (v119)
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v204[32])
    {
      goto LABEL_122;
    }

LABEL_128:
    v134 = v206;
    Hasher._combine(_:)(0);
    if (*&v204[40])
    {
      goto LABEL_123;
    }

    goto LABEL_129;
  }

LABEL_127:
  Hasher._combine(_:)(0);
  if (!*&v204[32])
  {
    goto LABEL_128;
  }

LABEL_122:
  v134 = v206;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*&v204[40])
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
LABEL_130:
  v135 = v134;
  if (v205)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v136 = *(&v205 + 1);
    if (*(&v205 + 1))
    {
      goto LABEL_132;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v136 = *(&v205 + 1);
    if (*(&v205 + 1))
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v43, v136);
      v137 = v208;
      if (v135)
      {
        goto LABEL_133;
      }

LABEL_137:
      Hasher._combine(_:)(0);
      if (v207)
      {
        goto LABEL_134;
      }

LABEL_138:
      Hasher._combine(_:)(0);
      goto LABEL_139;
    }
  }

  Hasher._combine(_:)(0);
  v137 = v208;
  if (!v135)
  {
    goto LABEL_137;
  }

LABEL_133:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v43, v135);
  if (!v207)
  {
    goto LABEL_138;
  }

LABEL_134:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_139:
  v138 = v210;
  if (v137 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v137 & 1);
  }

  v139 = v209;
  if (v209 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v139 & 1);
  }

  v140 = v212;
  if (v138 == 2)
  {
    v141 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v141 = v138 & 1;
  }

  v42 = v203;
  Hasher._combine(_:)(v141);
  if (v140 == 2)
  {
    v142 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v142 = v140 & 1;
  }

  Hasher._combine(_:)(v142);
  outlined destroy of TermOfAddress?(&v219, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_152:
  v143 = &v31[*(v42 + 36)];
  if (v143[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v144 = *v143;
    Hasher._combine(_:)(1u);
    if ((v144 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v145 = v144;
    }

    else
    {
      v145 = 0;
    }

    MEMORY[0x1865CD090](v145);
  }

  v146 = v217;
  v147 = *(v143 + 2);
  v227 = *(v143 + 1);
  v228 = v147;
  *v229 = *(v143 + 3);
  *&v229[9] = *(v143 + 57);
  specialized Optional<A>.hash(into:)();
  v148 = v143[73];
  if (v148 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v148 & 1);
  }

  v149 = *(v143 + 37);
  v150 = v149 | (v143[76] << 16);
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

  v151 = v143[77];
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
  v153 = v214;
  outlined init with copy of FloatingPointRoundingRule?(&v143[v152[9]], v214, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v146 + 48))(v153, 1, v46) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v154 = v211;
    (*(v146 + 32))(v211, v153, v46);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v146 + 8))(v154, v46);
  }

  v155 = &v143[v152[10]];
  v156 = v155[8];
  if (v156 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v157 = *v155;
    Hasher._combine(_:)(1u);
    if (v156)
    {
      MEMORY[0x1865CD060](1);
      if ((v157 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v158 = v157;
      }

      else
      {
        v158 = 0;
      }

      MEMORY[0x1865CD090](v158);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v157);
    }
  }

  v159 = v143[v152[11]];
  if (v159 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v159);
  }

  v118 = v215;
  v117 = v31;
  return outlined destroy of TermOfAddress?(v117, v118);
}

uint64_t String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v11, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v36 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v31 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v39, v14, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v38 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v35, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v43 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v32;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v24 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    }

    else
    {
      v21 = v37;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v37, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v44 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v33;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v30 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v30);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    }

    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v25);
    return (*v20)(v17, v23);
  }

  else
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v14, v11, type metadata accessor for NSDecimal.FormatStyle);
    v42 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
    v27 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v11, type metadata accessor for NSDecimal.FormatStyle);
    return (*v20)(v17, v26);
  }
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.hash(into:)(Swift::Int a1)
{
  v194 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v193);
  v5 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v198 = *(v6 - 8);
  v199 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v196 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v184 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v184 - v14;
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v21, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v5, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v36 = v198;
        v35 = v199;
        v37 = v193;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v200, ObjectType, v23);
      v213 = v206;
      v214[0] = v207[0];
      *(v214 + 12) = *(v207 + 12);
      *v210 = v202;
      *&v210[16] = v203;
      v211 = v204;
      v212 = v205;
      v208 = v200;
      v209 = v201;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v41 = v200;
      v42 = *(&v200 + 1);
      v43 = *(&v201 + 1);
      v184 = v201;
      v44 = *(&v202 + 1);
      v185 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v45 = *&v207[0];
      *&v190[8] = v206;
      v186 = *(&v207[0] + 1);
      v191 = *&v207[1];
      v192 = BYTE8(v207[1]);
      v194 = BYTE9(v207[1]);
      v46 = BYTE10(v207[1]);
      LODWORD(v197) = BYTE11(v207[1]);
      Hasher._combine(_:)(1u);
      if (v41 == 2)
      {
        v47 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v47 = v41 & 1;
      }

      *&v190[24] = v45;
      Hasher._combine(_:)(v47);
      if (v42)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v42 + 16));
        v59 = *(v42 + 16);
        if (v59)
        {
          v60 = v42 + 40;
          do
          {

            String.hash(into:)();

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v43)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v36 = v198;
      v35 = v199;
      *v190 = v46;
      if (v44)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v65 = v188;
      v66 = v187;
      if (v187)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v66, v67, v68, v69, v70, v71, v72);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = v193;
      v73 = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v73, v74, v75, v76, v77, v78, v79);
        if (v65)
        {
          goto LABEL_54;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_54:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v188 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }
      }

      Hasher._combine(_:)(0);
      if (*(&v188 + 1))
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v189)
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      }

LABEL_62:
      Hasher._combine(_:)(0);
      if (v189)
      {
LABEL_56:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v189 + 1))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }

LABEL_63:
      Hasher._combine(_:)(0);
      if (*(&v189 + 1))
      {
LABEL_57:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v190[8])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

LABEL_64:
      Hasher._combine(_:)(0);
      if (*&v190[8])
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v80 = *&v190[16];
        if (*&v190[16])
        {
LABEL_59:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v80);
          goto LABEL_67;
        }

LABEL_66:
        Hasher._combine(_:)(0);
LABEL_67:
        v81 = v192;
        v82 = *&v190[24];
        if (*&v190[24])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v82);
          if (v191)
          {
LABEL_69:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v83 = *v190;
            if (v81 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v81 & 1);
            }

            v84 = v194;
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v84 & 1);
            }

            v85 = v197;
            if (v83 == 2)
            {
              v86 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v86 = v83 & 1;
            }

            Hasher._combine(_:)(v86);
            if (v85 == 2)
            {
              v87 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v87 = v85 & 1;
            }

            Hasher._combine(_:)(v87);
            outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
            String.hash(into:)();
            v88 = &v5[*(v37 + 24)];
            if (v88[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v89 = *v88;
              Hasher._combine(_:)(1u);
              if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v90 = v89;
              }

              else
              {
                v90 = 0;
              }

              MEMORY[0x1865CD090](v90);
            }

            v91 = *(v88 + 2);
            v208 = *(v88 + 1);
            v209 = v91;
            *v210 = *(v88 + 3);
            *&v210[9] = *(v88 + 57);
            specialized Optional<A>.hash(into:)();
            v92 = v88[73];
            if (v92 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v92 & 1);
            }

            v93 = *(v88 + 74);
            if (*(v88 + 74) == 2)
            {
              LOBYTE(v94) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v93 & 1);
              MEMORY[0x1865CD060]((v93 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v93) & 1);
              v94 = BYTE3(v93) & 1;
            }

            Hasher._combine(_:)(v94);
            v95 = v88[78];
            if (v95 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v95 & 1);
            }

            v96 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v97 = v195;
            outlined init with copy of FloatingPointRoundingRule?(&v88[v96[9]], v195, &_ss25FloatingPointRoundingRuleOSgMd);
            if ((*(v36 + 48))(v97, 1, v35) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v98 = v196;
              (*(v36 + 32))(v196, v97, v35);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v36 + 8))(v98, v35);
            }

            v99 = &v88[v96[10]];
            v100 = v99[8];
            if (v100 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v101 = *v99;
              Hasher._combine(_:)(1u);
              if (v100)
              {
                MEMORY[0x1865CD060](1);
                if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = 0;
                }

                MEMORY[0x1865CD090](v102);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v101);
              }
            }

            MEMORY[0x1865CD060](v88[v96[11]]);
            v103 = v88[v96[12]];
            if (v103 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v103);
            }

            v104 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            v105 = v5;
            return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v191)
          {
            goto LABEL_69;
          }
        }

        Hasher._combine(_:)(0);
        goto LABEL_72;
      }

LABEL_65:
      Hasher._combine(_:)(0);
      v80 = *&v190[16];
      if (*&v190[16])
      {
        goto LABEL_59;
      }

      goto LABEL_66;
    }

    v30 = v197;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v197, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v30 + 8);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      Hasher._combine(_:)(1u);
      v34 = v198;
      v33 = v199;
LABEL_16:
      v39 = v10;
      v40 = v194;
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v200, v32, v31);
    v213 = v206;
    v214[0] = v207[0];
    *(v214 + 12) = *(v207 + 12);
    *v210 = v202;
    *&v210[16] = v203;
    v211 = v204;
    v212 = v205;
    v208 = v200;
    v209 = v201;
    v38 = _s10Foundation17LocalePreferencesVSgWOg(&v208);
    v34 = v198;
    v33 = v199;
    if (v38 == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v53 = v200;
    v54 = *(&v200 + 1);
    v55 = *(&v201 + 1);
    v56 = *(&v202 + 1);
    v185 = v202;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    *v190 = v206;
    *&v190[8] = v201;
    *&v190[16] = *(&v206 + 1);
    v186 = *(&v207[0] + 1);
    *&v190[24] = *&v207[0];
    v191 = *&v207[1];
    v192 = BYTE8(v207[1]);
    v193 = BYTE9(v207[1]);
    v57 = BYTE10(v207[1]);
    LODWORD(v195) = BYTE11(v207[1]);
    Hasher._combine(_:)(1u);
    if (v53 == 2)
    {
      v58 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v58 = v53 & 1;
    }

    Hasher._combine(_:)(v58);
    if (v54)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v54 + 16));
      v63 = *(v54 + 16);
      if (v63)
      {
        v64 = v54 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }

      if (v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v55)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_185;
      }
    }

    Hasher._combine(_:)(0);
LABEL_185:
    v39 = v10;
    *&v190[8] = v57;
    v143 = *(&v187 + 1);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v34 = v198;
    v33 = v199;
    v144 = *(&v188 + 1);
    v145 = v189;
    v146 = v187;
    if (v187)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v146, v147, v148, v149, v150, v151, v152);
      v40 = v194;
      if (v143)
      {
        goto LABEL_190;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v40 = v194;
      if (v143)
      {
LABEL_190:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v143, v153, v154, v155, v156, v157, v158);
        if (v188)
        {
          goto LABEL_191;
        }

        goto LABEL_196;
      }
    }

    Hasher._combine(_:)(0);
    if (v188)
    {
LABEL_191:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v144)
      {
        goto LABEL_192;
      }

      goto LABEL_197;
    }

LABEL_196:
    Hasher._combine(_:)(0);
    if (v144)
    {
LABEL_192:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v145)
      {
LABEL_193:
        v159 = *&v190[24];
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      v159 = *&v190[24];
      Hasher._combine(_:)(0);
LABEL_199:
      if (*(&v189 + 1))
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v160 = v159;
      if (*v190)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v161 = *&v190[16];
        if (*&v190[16])
        {
          goto LABEL_204;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v161 = *&v190[16];
        if (*&v190[16])
        {
LABEL_204:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v161);
          v162 = v192;
          if (v160)
          {
            goto LABEL_205;
          }

          goto LABEL_209;
        }
      }

      Hasher._combine(_:)(0);
      v162 = v192;
      if (v160)
      {
LABEL_205:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v160);
        if (v191)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_211:
          v163 = v195;
          if (v162 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v162 & 1);
          }

          v164 = v193;
          if (v193 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v164 & 1);
          }

          v165 = v190[8];
          if (*&v190[8] == 2)
          {
            v166 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v166 = v165 & 1;
          }

          Hasher._combine(_:)(v166);
          if (v163 == 2)
          {
            v167 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v167 = v163 & 1;
          }

          Hasher._combine(_:)(v167);
          outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_224:
          v168 = (v197 + *(v40 + 20));
          if (*(v168 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v169 = *v168;
            Hasher._combine(_:)(1u);
            if ((v169 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v170 = v169;
            }

            else
            {
              v170 = 0;
            }

            MEMORY[0x1865CD090](v170);
          }

          v171 = *(v168 + 2);
          v208 = *(v168 + 1);
          v209 = v171;
          *v210 = *(v168 + 3);
          *&v210[9] = *(v168 + 57);
          specialized Optional<A>.hash(into:)();
          v172 = *(v168 + 73);
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
          }

          v173 = *(v168 + 37);
          v174 = v173 | (*(v168 + 76) << 16);
          if (v173 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v174 & 1);
            MEMORY[0x1865CD060]((v174 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v174) & 1);
          }

          v175 = *(v168 + 77);
          if (v175 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v175 & 1);
          }

          v176 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          outlined init with copy of FloatingPointRoundingRule?(v168 + v176[9], v39, &_ss25FloatingPointRoundingRuleOSgMd);
          if ((*(v34 + 48))(v39, 1, v33) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v177 = v196;
            (*(v34 + 32))(v196, v39, v33);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v34 + 8))(v177, v33);
          }

          v178 = (v168 + v176[10]);
          v179 = *(v178 + 8);
          if (v179 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v180 = *v178;
            Hasher._combine(_:)(1u);
            if (v179)
            {
              MEMORY[0x1865CD060](1);
              if ((v180 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v181 = v180;
              }

              else
              {
                v181 = 0;
              }

              MEMORY[0x1865CD090](v181);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v180);
            }
          }

          v182 = *(v168 + v176[11]);
          if (v182 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v182);
          }

          v104 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v105 = v197;
          return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
        }

LABEL_210:
        Hasher._combine(_:)(0);
        goto LABEL_211;
      }

LABEL_209:
      Hasher._combine(_:)(0);
      if (v191)
      {
        goto LABEL_206;
      }

      goto LABEL_210;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    if (v145)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v26 = *(v18 + 1);
  v27 = swift_getObjectType();
  if ((*(v26 + 48))(v27, v26))
  {
    Hasher._combine(_:)(1u);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  Hasher._combine(_:)(0);
  (*(v26 + 64))(v27, v26);
  String.hash(into:)();

  (*(v26 + 464))(&v200, v27, v26);
  v213 = v206;
  v214[0] = v207[0];
  *(v214 + 12) = *(v207 + 12);
  *v210 = v202;
  *&v210[16] = v203;
  v211 = v204;
  v212 = v205;
  v208 = v200;
  v209 = v201;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
  {
    Hasher._combine(_:)(0);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  v48 = v200;
  v49 = *(&v200 + 1);
  v50 = *(&v201 + 1);
  v185 = v201;
  v51 = *(&v202 + 1);
  v186 = v202;
  v188 = v203;
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  *&v187 = *(&v207[0] + 1);
  v191 = *&v207[0];
  v192 = *&v207[1];
  v193 = BYTE8(v207[1]);
  v194 = BYTE9(v207[1]);
  LODWORD(v195) = BYTE10(v207[1]);
  LODWORD(v197) = BYTE11(v207[1]);
  Hasher._combine(_:)(1u);
  if (v48 == 2)
  {
    v52 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v52 = v48 & 1;
  }

  *(&v187 + 1) = v51;
  Hasher._combine(_:)(v52);
  if (v49)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v49 + 16));
    v61 = *(v49 + 16);
    if (v61)
    {
      v62 = v49 + 40;
      do
      {

        String.hash(into:)();

        v62 += 16;
        --v61;
      }

      while (v61);
    }

    if (v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v50)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v29 = v198;
  v28 = v199;
  v106 = *(&v188 + 1);
  if (*(&v187 + 1))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v107 = v188;
    if (v188)
    {
      goto LABEL_119;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v107 = v188;
    if (v188)
    {
LABEL_119:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v107, v108, v109, v110, v111, v112, v113);
      if (v106)
      {
        goto LABEL_120;
      }

      goto LABEL_131;
    }
  }

  Hasher._combine(_:)(0);
  if (v106)
  {
LABEL_120:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v106, v114, v115, v116, v117, v118, v119);
    if (v189)
    {
      goto LABEL_121;
    }

    goto LABEL_132;
  }

LABEL_131:
  Hasher._combine(_:)(0);
  if (v189)
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v189 + 1))
    {
      goto LABEL_122;
    }

    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
  if (*(&v189 + 1))
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v190)
    {
      goto LABEL_123;
    }

    goto LABEL_134;
  }

LABEL_133:
  Hasher._combine(_:)(0);
  if (*v190)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[8])
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_134:
  Hasher._combine(_:)(0);
  if (*&v190[8])
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[16])
    {
      goto LABEL_125;
    }

    goto LABEL_136;
  }

LABEL_135:
  Hasher._combine(_:)(0);
  if (*&v190[16])
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v120 = *&v190[24];
    if (*&v190[24])
    {
      goto LABEL_126;
    }

    goto LABEL_137;
  }

LABEL_136:
  Hasher._combine(_:)(0);
  v120 = *&v190[24];
  if (*&v190[24])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v120);
    v121 = v191;
    if (v191)
    {
      goto LABEL_127;
    }

LABEL_138:
    Hasher._combine(_:)(0);
    if (v192)
    {
      goto LABEL_128;
    }

LABEL_139:
    Hasher._combine(_:)(0);
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(0);
  v121 = v191;
  if (!v191)
  {
    goto LABEL_138;
  }

LABEL_127:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v121);
  if (!v192)
  {
    goto LABEL_139;
  }

LABEL_128:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_140:
  v122 = v193;
  if (v193 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v122 & 1);
  }

  v123 = v194;
  if (v194 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v123 & 1);
  }

  v124 = v195;
  if (v195 == 2)
  {
    v125 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v125 = v124 & 1;
  }

  v126 = v197;
  Hasher._combine(_:)(v125);
  if (v126 == 2)
  {
    v127 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v127 = v126 & 1;
  }

  Hasher._combine(_:)(v127);
  outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_153:
  v128 = &v18[*(v16 + 20)];
  if (v128[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v129 = *v128;
    Hasher._combine(_:)(1u);
    if ((v129 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    MEMORY[0x1865CD090](v130);
  }

  v131 = *(v128 + 2);
  v208 = *(v128 + 1);
  v209 = v131;
  *v210 = *(v128 + 3);
  *&v210[9] = *(v128 + 57);
  specialized Optional<A>.hash(into:)();
  v132 = v128[73];
  if (v132 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v132 & 1);
  }

  v133 = *(v128 + 37);
  v134 = v133 | (v128[76] << 16);
  if (v133 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v134 & 1);
    MEMORY[0x1865CD060]((v134 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v134) & 1);
  }

  v135 = v128[77];
  if (v135 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v135 & 1);
  }

  v136 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v128[v136[9]], v15, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v137 = v196;
    (*(v29 + 32))(v196, v15, v28);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v137, v28);
  }

  v138 = &v128[v136[10]];
  v139 = v138[8];
  if (v139 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v140 = *v138;
    Hasher._combine(_:)(1u);
    if (v139)
    {
      MEMORY[0x1865CD060](1);
      if ((v140 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v141 = v140;
      }

      else
      {
        v141 = 0;
      }

      MEMORY[0x1865CD090](v141);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v140);
    }
  }

  v142 = v128[v136[11]];
  if (v142 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142);
  }

  v104 = type metadata accessor for NSDecimal.FormatStyle;
  v105 = v18;
  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v105, v104);
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalhG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v47 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();
  v25 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v47 = v17;
  v48 = v20;
  v49 = v14;
  v50 = v12;
  v26 = v53;
  v27 = v54;
  v29 = v55;
  v28 = v56;
  v59 = v23;
  v30 = v57;
  v31 = KeyedDecodingContainer.allKeys.getter();
  v32 = (2 * *(v31 + 16)) | 1;
  v61 = v31;
  v62 = v31 + 32;
  v63 = 0;
  v64 = v32;
  v33 = specialized Collection<>.popFirst()();
  if (v33 == 3 || v63 != v64 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v40 = v50;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v65 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v58;
      v35 = v30;
      type metadata accessor for NSDecimal.FormatStyle.Currency(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v36 = v47;
      v37 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v27, v37);
      (*(v34 + 8))(v11, v28);
    }

    else
    {
      v65 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v30;
      v43 = v58;
      type metadata accessor for NSDecimal.FormatStyle.Percent(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v36 = v49;
      v44 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v42, v44);
      (*(v43 + 8))(v11, v28);
    }

    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
    v36 = v48;
    v45 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v26, v45);
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v35 = v30;
  }

  v46 = v59;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v36, v59, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v46, v35, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle@<X0>(Swift::Double *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointhG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t *, void *, uint64_t *, void *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a3(v5, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t *, void *, uint64_t *, const char *, uint64_t *, void *, uint64_t (*)(uint64_t a1), uint64_t (*)(uint64_t a1)))
{
  Hasher.init(_seed:)();
  a4(v6, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &_s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMd, _s10Foundation24FloatingPointFormatStyleV8CurrencyVySd_GMR, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.format(_:)(NSDecimal *a1)
{
  v4 = v2;
  v5 = v1;
  v242 = a1;
  v254 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v6);
  v239 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v3, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v241 = v4;
  v240 = v5;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    v35 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v37 = v36;
    v38 = *(v13 + 1);
    v238 = v13;
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 472))(ObjectType, v38);
    v41 = v40;
    v43 = v42;
    if (one-time initialization token for cache != -1)
    {
      v40 = swift_once();
    }

    v28 = static ICUNumberFormatter.cache;
    v44 = *algn_1EA7B1D98;
    *&v246 = v35;
    *(&v246 + 1) = v37;
    *&v247 = v41;
    *(&v247 + 1) = v43;
    MEMORY[0x1EEE9AC00](v40);
    *(&v230 - 2) = &v246;
    os_unfair_lock_lock((v44 + 24));
    LOBYTE(v34) = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v44 + 16, &v251);
    v239 = 0;
    os_unfair_lock_unlock((v44 + 24));
    v30 = v251;
    if (v251 != 1)
    {
LABEL_208:

      if (v30)
      {
        v199 = *(v30 + 16);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_allocObject();
        v200 = v242;
        v201 = v240;
        v202 = v241;
        v203 = v239;
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v199, v242, v240, v241);
        v239 = v203;
        if (v203)
        {

          v239 = 0;
        }

        else
        {

          v171 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v172 = v226;

          if (v172)
          {
            goto LABEL_250;
          }
        }
      }

      else
      {
        v202 = v241;
        v201 = v240;
        v200 = v242;
      }

      *&v251 = v200;
      *(&v251 + 1) = v201;
      LODWORD(v252) = v202;
      if (_So9NSDecimala__length_getter(&v251) || (*&v251 = v200, *(&v251 + 1) = v201, LODWORD(v252) = v202, !_So9NSDecimala__isNegative_getter(&v251)))
      {
        *&v251 = v200;
        *(&v251 + 1) = v201;
        LODWORD(v252) = v202;
        if (_So9NSDecimala__length_getter(&v251))
        {
          *&v244 = 0;
          *(&v244 + 1) = 0xE000000000000000;
          *&v251 = v200;
          *(&v251 + 1) = v201;
          LODWORD(v252) = v202;
          v246 = v251;
          LODWORD(v247) = v202;
          if (_So9NSDecimala__exponent_getter(&v246) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v246 = v251;
              LODWORD(v247) = v252;
              v204 = _So9NSDecimala__exponent_getter(&v246);
              _So9NSDecimala__exponent_setter((v204 - 1), &v251);
              v246 = v251;
              LODWORD(v247) = v252;
            }

            while (_So9NSDecimala__exponent_getter(&v246) > 0);
          }

          v246 = v251;
          LODWORD(v247) = v252;
          v205 = _So9NSDecimala__exponent_getter(&v246);
          v160 = v238;
          if (!v205)
          {
            _So9NSDecimala__exponent_setter(1, &v251);
          }

          v246 = v251;
          LODWORD(v247) = v252;
          if (_So9NSDecimala__length_getter(&v246))
          {
            do
            {
              v246 = v251;
              LODWORD(v247) = v252;
              if (!_So9NSDecimala__exponent_getter(&v246))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v246 = v251;
              LODWORD(v247) = v252;
              v206 = _So9NSDecimala__exponent_getter(&v246);
              _So9NSDecimala__exponent_setter((v206 + 1), &v251);
              v207 = v251;
              v208 = WORD2(v251);
              v209 = WORD4(v251);
              v210 = WORD5(v251);
              v236 = WORD3(v251);
              v242 = WORD6(v251);
              v240 = HIWORD(v251);
              v241 = v252;
              LODWORD(v237) = WORD1(v252);
              NSDecimal.asVariableLengthInteger()(v251 | (WORD2(v251) << 32) | (WORD3(v251) << 48), WORD4(v251) | (WORD5(v251) << 16) | (WORD6(v251) << 32) | (HIWORD(v251) << 48), v252 | (WORD1(v252) << 16));
              v212 = v211;
              v213 = *(v211 + 16);
              v214._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v213);
              *&v246 = v214;
              if (!v213)
              {

                v233 = 48;
                goto LABEL_231;
              }

              v234 = v210;
              i = v209;
              v215 = v208;
              v216 = v207;
              LODWORD(v210) = 0;
              v217 = v213 + 15;
              do
              {
                if ((v217 - 15) > *(v212 + 16))
                {
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
                }

                v218 = *(v212 + 2 * v217);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v214._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v214._rawValue);
                }

                if ((v217 - 15) > *(v214._rawValue + 2))
                {
                  goto LABEL_255;
                }

                v219 = v218 | (v210 << 16);
                *(v214._rawValue + v217) = v219 / 0xA;
                LODWORD(v210) = v219 % 0xA;
                --v217;
              }

              while (v217 != 15);

              *&v246 = v214;
              v233 = v210 | 0x30;
              v207 = v216;
              v208 = v215;
              LOWORD(v209) = i;
              LOWORD(v210) = v234;
LABEL_231:
              while (1)
              {
                v220 = *(v214._rawValue + 2);
                if (!v220 || *(v214._rawValue + v220 + 15))
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v246 + 16) - 1);
                }

                v214._rawValue = v246;
              }

              LODWORD(v246) = v207;
              WORD2(v246) = v208;
              WORD3(v246) = v236;
              WORD4(v246) = v209;
              WORD5(v246) = v210;
              WORD6(v246) = v242;
              HIWORD(v246) = v240;
              LOWORD(v247) = v241;
              WORD1(v247) = v237;
              NSDecimal.copyVariableLengthInteger(_:)(v214);
              v239 = v221;
              if (v221)
              {
                goto LABEL_262;
              }

              v222 = *(v214._rawValue + 2);

              v160 = v238;
              if (HIDWORD(v222))
              {
                goto LABEL_258;
              }

              _So9NSDecimala__length_setter(v222, &v246);
              v251 = v246;
              LODWORD(v252) = v247;
              *&v249 = v233;
              v223 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v223);

              v249 = v251;
              v250 = v252;
            }

            while (_So9NSDecimala__length_getter(&v249));
          }

          v246 = v251;
          LODWORD(v247) = v252;
          if (_So9NSDecimala__exponent_getter(&v246) <= 0)
          {
            while (1)
            {
              v246 = v251;
              LODWORD(v247) = v252;
              if (!_So9NSDecimala__exponent_getter(&v246))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v246 = v251;
              LODWORD(v247) = v252;
              v224 = _So9NSDecimala__exponent_getter(&v246);
              _So9NSDecimala__exponent_setter((v224 + 1), &v251);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          v246 = v251;
          LODWORD(v247) = v252;
          if (_So9NSDecimala__isNegative_getter(&v246))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v246 = v244;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
          v171 = String.init<A>(_:)();
          v172 = v225;
          goto LABEL_251;
        }

        v172 = 0xE100000000000000;
        v171 = 48;
      }

      else
      {
        v171 = 5136718;
        v172 = 0xE300000000000000;
      }

LABEL_250:
      v160 = v238;
LABEL_251:
      v174 = type metadata accessor for NSDecimal.FormatStyle;
      goto LABEL_252;
    }

    type metadata accessor for ICUNumberFormatter();
    v30 = swift_allocObject();
    *(v30 + 24) = v35;
    *(v30 + 32) = v37;
    swift_bridgeObjectRetain_n();
    v45 = MEMORY[0x1865CB200](v35, v37);
    if (v45)
    {
      v46 = v45;
      v47 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v45, 0);

      v34 = specialized Sequence._copySequenceContents(initializing:)(&v251, (v47 + 4), v46, v35, v37);

      if (v34 != v46)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        v232 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
        v94 = static _DictionaryStorage.copy(original:)();
        v67 = v94;
        if (!*(v35 + 16))
        {
LABEL_107:

          v48 = v232;
          if (v34)
          {
            goto LABEL_35;
          }

          goto LABEL_108;
        }

        v95 = (v94 + 64);
        v96 = 1 << *(v67 + 32);
        v233 = v35 + 64;
        v97 = (v96 + 63) >> 6;
        if (v67 != v35 || v95 >= v233 + 8 * v97)
        {
          memmove(v95, v233, 8 * v97);
        }

        v98 = 0;
        *(v67 + 16) = *(v35 + 16);
        v99 = 1 << *(v35 + 32);
        v100 = -1;
        if (v99 < 64)
        {
          v100 = ~(-1 << v99);
        }

        i = v100 & *(v35 + 64);
        v231 = (v99 + 63) >> 6;
        while (i)
        {
          v101 = __clz(__rbit64(i));
          i &= i - 1;
LABEL_76:
          v104 = v101 | (v98 << 6);
          v105 = *(v35 + 56);
          v106 = (*(v35 + 48) + 48 * v104);
          v107 = *v106;
          v108 = v106[1];
          v109 = v106[2];
          v234 = v106[3];
          v110 = v234;
          v111 = *(v105 + 8 * v104);
          v112 = v106[4];
          v113 = v106[5];
          v114 = (*(v67 + 48) + 48 * v104);
          *v114 = v107;
          v114[1] = v108;
          v114[2] = v109;
          v114[3] = v110;
          v114[4] = v112;
          v114[5] = v113;
          *(*(v67 + 56) + 8 * v104) = v111;
        }

        v102 = v98;
        while (1)
        {
          v98 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          if (v98 >= v231)
          {
            goto LABEL_107;
          }

          v103 = *(v233 + 8 * v98);
          ++v102;
          if (v103)
          {
            v101 = __clz(__rbit64(v103));
            i = (v103 - 1) & v103;
            goto LABEL_76;
          }
        }

        __break(1u);
        goto LABEL_260;
      }
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v251) = 0;
    if (v47[2] >> 31)
    {
      goto LABEL_59;
    }

    LOBYTE(v34) = String.utf8CString.getter();
    v81 = unumf_openForSkeletonAndLocale();

    if (v81)
    {
      if (v251 < 1)
      {
        *(v30 + 16) = v81;
LABEL_46:
        os_unfair_lock_lock((v44 + 24));
        v82 = v28 < *(*(v44 + 16) + 16);
        v237 = *(v44 + 16);
        v28 = v41;
        if (v82)
        {
          *(v44 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v251 = *(v44 + 16);
        v84 = v251;
        *(v44 + 16) = 0x8000000000000000;
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37, v28, v43);
        v86 = *(v84 + 16);
        v87 = (v85 & 1) == 0;
        v88 = v86 + v87;
        if (!__OFADD__(v86, v87))
        {
          LOBYTE(v89) = v85;
          if (*(v84 + 24) >= v88)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v232 = v48;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
              v134 = static _DictionaryStorage.copy(original:)();
              v90 = v134;
              if (!*(v84 + 16))
              {
                goto LABEL_205;
              }

              v135 = (v134 + 64);
              v136 = 1 << *(v90 + 32);
              v233 = v84 + 64;
              v137 = (v136 + 63) >> 6;
              if (v90 != v84 || v135 >= v233 + 8 * v137)
              {
                memmove(v135, v233, 8 * v137);
              }

              v138 = 0;
              *(v90 + 16) = *(v84 + 16);
              v139 = 1 << *(v84 + 32);
              v140 = -1;
              if (v139 < 64)
              {
                v140 = ~(-1 << v139);
              }

              v236 = v140 & *(v84 + 64);
              v231 = (v139 + 63) >> 6;
              while (v236)
              {
                v141 = __clz(__rbit64(v236));
                v236 &= v236 - 1;
LABEL_106:
                v144 = v141 | (v138 << 6);
                v145 = *(v84 + 56);
                v146 = (*(v84 + 48) + 32 * v144);
                v147 = *v146;
                v234 = v146[1];
                v148 = v234;
                v149 = v146[2];
                i = v146[3];
                v150 = i;
                v151 = *(v145 + 8 * v144);
                v152 = (*(v90 + 48) + 32 * v144);
                *v152 = v147;
                v152[1] = v148;
                v152[2] = v149;
                v152[3] = v150;
                *(*(v90 + 56) + 8 * v144) = v151;
              }

              v142 = v138;
              while (1)
              {
                v138 = v142 + 1;
                if (__OFADD__(v142, 1))
                {
                  goto LABEL_261;
                }

                if (v138 >= v231)
                {
                  goto LABEL_205;
                }

                v143 = *(v233 + 8 * v138);
                ++v142;
                if (v143)
                {
                  v141 = __clz(__rbit64(v143));
                  v236 = (v143 - 1) & v143;
                  goto LABEL_106;
                }
              }
            }

            v90 = v84;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, isUniquelyReferenced_nonNull_native);
            v90 = v251;
            v91 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37, v28, v43);
            if ((v89 & 1) != (v92 & 1))
            {
LABEL_265:
              v227 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_266;
            }

            v48 = v91;
          }

          if ((v89 & 1) == 0)
          {
LABEL_206:
            specialized _NativeDictionary._insert(at:key:value:)(v48, v35, v37, v28, v43, v30, v90);
            goto LABEL_207;
          }

LABEL_56:
          v93 = v48;

          *(*(v90 + 56) + 8 * v93) = v30;

LABEL_207:
          *(v44 + 16) = v90;

          os_unfair_lock_unlock((v44 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_208;
        }

        goto LABEL_60;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v30 = 0;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
    v18 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v20 = v19;
    v21 = v10[2];
    v22 = v10[3];
    v23 = v10[1];
    v237 = v10;
    v24 = swift_getObjectType();
    v25 = *(v23 + 472);

    v26 = v25(v24, v23);
    *&v251 = v18;
    *(&v251 + 1) = v20;
    v238 = v20;
    *&v252 = v21;
    *(&v252 + 1) = v22;
    *&v253 = v26;
    *(&v253 + 1) = v27;
    v236 = v27;
    if (one-time initialization token for cache != -1)
    {
      v26 = swift_once();
    }

    v29 = static ICUCurrencyNumberFormatter.cache;
    v28 = qword_1EA7B5100;
    v246 = v251;
    v247 = v252;
    v248 = v253;
    MEMORY[0x1EEE9AC00](v26);
    *(&v230 - 2) = &v246;
    os_unfair_lock_lock((v28 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v28 + 16, &v249);
    v239 = 0;
    os_unfair_lock_unlock((v28 + 24));
    v30 = v249;
    if (v249 != 1)
    {
      goto LABEL_110;
    }

    v31 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v18, v238, v21, v22);
    v33 = v32;
    type metadata accessor for ICUCurrencyNumberFormatter();
    LOBYTE(v34) = swift_allocObject();

    v30 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v31, v33);
    os_unfair_lock_lock((v28 + 24));
    if (v29 >= *(*(v28 + 16) + 16))
    {
    }

    else
    {
      *(v28 + 16) = MEMORY[0x1E69E7CC8];
    }

    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v249 = *(v28 + 16);
    v35 = v249;
    *(v28 + 16) = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v251);
    v64 = *(v35 + 16);
    v65 = (v63 & 1) == 0;
    v66 = v64 + v65;
    if (!__OFADD__(v64, v65))
    {
      LOBYTE(v34) = v63;
      if (*(v35 + 24) < v66)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v62);
        v67 = v249;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(&v251);
        if ((v34 & 1) == (v69 & 1))
        {
          v48 = v68;
          if ((v34 & 1) == 0)
          {
            goto LABEL_108;
          }

LABEL_35:
          v79 = v48;

          *(*(v67 + 56) + 8 * v79) = v30;

LABEL_109:
          *(v28 + 16) = v67;

          os_unfair_lock_unlock((v28 + 24));

          outlined consume of ICUNumberFormatter??(1);
LABEL_110:

          if (v30)
          {
            v153 = *(v30 + 16);
            type metadata accessor for ICUNumberFormatterBase.FormatResult();
            swift_allocObject();
            v154 = v242;
            v155 = v240;
            v156 = v241;
            v157 = v239;
            ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v153, v242, v240, v241);
            if (v157)
            {

              v239 = 0;
            }

            else
            {
              v239 = 0;

              v171 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
              v172 = v173;

              if (v172)
              {
                goto LABEL_145;
              }
            }
          }

          else
          {
            v156 = v241;
            v155 = v240;
            v154 = v242;
          }

          *&v246 = v154;
          *(&v246 + 1) = v155;
          LODWORD(v247) = v156;
          if (!_So9NSDecimala__length_getter(&v246))
          {
            *&v246 = v154;
            *(&v246 + 1) = v155;
            LODWORD(v247) = v156;
            if (_So9NSDecimala__isNegative_getter(&v246))
            {
              v171 = 5136718;
              v172 = 0xE300000000000000;
LABEL_145:
              v160 = v237;
              v174 = type metadata accessor for NSDecimal.FormatStyle.Currency;
LABEL_252:
              v197 = v174;
              v198 = v160;
              goto LABEL_253;
            }
          }

          *&v246 = v154;
          *(&v246 + 1) = v155;
          LODWORD(v247) = v156;
          if (!_So9NSDecimala__length_getter(&v246))
          {
            v172 = 0xE100000000000000;
            v171 = 48;
            goto LABEL_145;
          }

          *&v243 = 0;
          *(&v243 + 1) = 0xE000000000000000;
          *&v246 = v154;
          *(&v246 + 1) = v155;
          LODWORD(v247) = v156;
          v249 = v246;
          v250 = v156;
          if (_So9NSDecimala__exponent_getter(&v249) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v249 = v246;
              v250 = v247;
              v158 = _So9NSDecimala__exponent_getter(&v249);
              _So9NSDecimala__exponent_setter((v158 - 1), &v246);
              v249 = v246;
              v250 = v247;
            }

            while (_So9NSDecimala__exponent_getter(&v249) > 0);
          }

          v249 = v246;
          v250 = v247;
          v159 = _So9NSDecimala__exponent_getter(&v249);
          v160 = v237;
          if (!v159)
          {
            _So9NSDecimala__exponent_setter(1, &v246);
          }

          v249 = v246;
          v250 = v247;
          if (!_So9NSDecimala__length_getter(&v249))
          {
LABEL_146:
            v249 = v246;
            v250 = v247;
            if (_So9NSDecimala__exponent_getter(&v249) <= 0)
            {
              while (1)
              {
                v249 = v246;
                v250 = v247;
                if (!_So9NSDecimala__exponent_getter(&v249))
                {
                  break;
                }

                MEMORY[0x1865CB0E0](48, 0xE100000000000000);
                v249 = v246;
                v250 = v247;
                v175 = _So9NSDecimala__exponent_getter(&v249);
                _So9NSDecimala__exponent_setter((v175 + 1), &v246);
              }

              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            }

            v249 = v246;
            v250 = v247;
            if (_So9NSDecimala__isNegative_getter(&v249))
            {
              MEMORY[0x1865CB0E0](45, 0xE100000000000000);
            }

            v249 = v243;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
            lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
            v171 = String.init<A>(_:)();
            v172 = v176;
            v174 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            goto LABEL_252;
          }

          while (1)
          {
            v249 = v246;
            v250 = v247;
            if (!_So9NSDecimala__exponent_getter(&v249))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v249 = v246;
            v250 = v247;
            v161 = _So9NSDecimala__exponent_getter(&v249);
            _So9NSDecimala__exponent_setter((v161 + 1), &v246);
            v50 = v246;
            v30 = WORD2(v246);
            v57 = WORD4(v246);
            v35 = WORD5(v246);
            v236 = WORD3(v246);
            v242 = WORD6(v246);
            v240 = HIWORD(v246);
            v241 = v247;
            LODWORD(v238) = WORD1(v247);
            NSDecimal.asVariableLengthInteger()(v246 | (WORD2(v246) << 32) | (WORD3(v246) << 48), WORD4(v246) | (WORD5(v246) << 16) | (WORD6(v246) << 32) | (HIWORD(v246) << 48), v247 | (WORD1(v247) << 16));
            v76 = v162;
            v163 = *(v162 + 16);
            v52._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v163);
            *&v249 = v52;
            if (v163)
            {
              break;
            }

            v166 = 48;
LABEL_131:
            v167 = *(v52._rawValue + 2);
            for (i = v166; v167; v167 = *(v249 + 16))
            {
              if (*(v52._rawValue + v167 + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v249 + 16) - 1);
              }

              v52._rawValue = v249;
            }

            LODWORD(v249) = v50;
            WORD2(v249) = v30;
            WORD3(v249) = v236;
            WORD4(v249) = v57;
            WORD5(v249) = v35;
            WORD6(v249) = v242;
            HIWORD(v249) = v240;
            LOWORD(v250) = v241;
            HIWORD(v250) = v238;
            NSDecimal.copyVariableLengthInteger(_:)(v52);
            v239 = v168;
            if (v168)
            {
              goto LABEL_262;
            }

            v169 = *(v52._rawValue + 2);

            if (HIDWORD(v169))
            {
              goto LABEL_256;
            }

            _So9NSDecimala__length_setter(v169, &v249);
            v246 = v249;
            LODWORD(v247) = v250;
            *&v244 = i;
            v170 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v170);

            v244 = v246;
            v245 = v247;
            if (!_So9NSDecimala__length_getter(&v244))
            {
              goto LABEL_146;
            }
          }

          v234 = v35;
          i = v57;
          v57 = v30;
          v35 = v50;
          v50 = 0;
          v164 = v163 + 15;
          while (1)
          {
            v59 = v164 - 15;
            if ((v164 - 15) > *(v76 + 16))
            {
              break;
            }

            v30 = *(v76 + 2 * v164);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v52._rawValue);
            }

            if (v59 > *(v52._rawValue + 2))
            {
              goto LABEL_155;
            }

            v165 = v30 | (v50 << 16);
            *(v52._rawValue + v164) = v165 / 0xA;
            v50 = v165 % 0xA;
            if (--v164 == 15)
            {

              *&v249 = v52;
              v166 = v50 | 0x30;
              v160 = v237;
              LODWORD(v50) = v35;
              LOWORD(v30) = v57;
              LOWORD(v57) = i;
              LOWORD(v35) = v234;
              goto LABEL_131;
            }
          }

          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        goto LABEL_263;
      }

      if (v62)
      {
        v67 = v35;
        if (v63)
        {
          goto LABEL_35;
        }

LABEL_108:
        specialized _NativeDictionary._insert(at:key:value:)(v48, &v251, v30, v67);
        goto LABEL_109;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_58;
  }

  v49 = v239;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v239, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v50 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v52._rawValue = v51;
  v53 = *(v49 + 1);
  v54 = swift_getObjectType();
  v55 = (*(v53 + 472))(v54, v53);
  v30 = v55;
  v57 = v56;
  if (one-time initialization token for cache != -1)
  {
    v55 = swift_once();
  }

  v58 = static ICUPercentNumberFormatter.cache;
  v59 = *algn_1EA7B0228;
  *&v251 = v50;
  *(&v251 + 1) = v52;
  *&v252 = v30;
  *(&v252 + 1) = v57;
  MEMORY[0x1EEE9AC00](v55);
  *(&v230 - 2) = &v251;
  os_unfair_lock_lock((v59 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v59 + 16, &v246);
  v238 = 0;
  os_unfair_lock_unlock((v59 + 24));
  v35 = v246;
  if (v246 == 1)
  {
    *&v246 = 0x746E6563726570;
    *(&v246 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v249 = 32;
      *(&v249 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v50, v52._rawValue);
      MEMORY[0x1865CB0E0](v249, *(&v249 + 1));
    }

    v60 = v246;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v35 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v60, *(&v60 + 1));
    os_unfair_lock_lock((v59 + 24));
    v61 = *(v59 + 16);
    if (v58 >= *(v61 + 16))
    {

      v28 = v61;
    }

    else
    {
      v28 = *(v59 + 16);
      *(v59 + 16) = MEMORY[0x1E69E7CC8];
    }

    v70 = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = *(v59 + 16);
    v34 = v246;
    *(v59 + 16) = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52._rawValue, v30, v57);
    v72 = *(v34 + 16);
    v73 = (v71 & 1) == 0;
    v74 = v72 + v73;
    if (!__OFADD__(v72, v73))
    {
      if (*(v34 + 24) < v74)
      {
        v75 = v71;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, v70);
        v76 = v246;
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52._rawValue, v30, v57);
        if ((v75 & 1) == (v78 & 1))
        {
          v48 = v77;
          if ((v75 & 1) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_38;
        }

        goto LABEL_264;
      }

      if (v70)
      {
        v76 = v34;
        if ((v71 & 1) == 0)
        {
LABEL_157:
          specialized _NativeDictionary._insert(at:key:value:)(v48, v50, v52._rawValue, v30, v57, v35, v76);
          goto LABEL_158;
        }

LABEL_38:
        v80 = v48;

        *(*(v76 + 56) + 8 * v80) = v35;

LABEL_158:
        *(v59 + 16) = v76;

        os_unfair_lock_unlock((v59 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_159;
      }

      v232 = v48;
      LODWORD(v233) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v115 = static _DictionaryStorage.copy(original:)();
      v76 = v115;
      if (!*(v34 + 16))
      {
LABEL_156:

        v48 = v232;
        if ((v233 & 1) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_38;
      }

      v116 = (v115 + 64);
      v117 = 1 << *(v76 + 32);
      v234 = (v34 + 64);
      v118 = (v117 + 63) >> 6;
      if (v76 != v34 || v116 >= &v234[8 * v118])
      {
        memmove(v116, v234, 8 * v118);
      }

      v119 = 0;
      *(v76 + 16) = *(v34 + 16);
      v120 = 1 << *(v34 + 32);
      v121 = -1;
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      v237 = v121 & *(v34 + 64);
      v231 = (v120 + 63) >> 6;
      while (v237)
      {
        v122 = __clz(__rbit64(v237));
        v237 &= v237 - 1;
LABEL_91:
        v125 = v122 | (v119 << 6);
        v126 = *(v34 + 56);
        v127 = (*(v34 + 48) + 32 * v125);
        v128 = *v127;
        i = v127[1];
        v129 = i;
        v130 = v127[2];
        v236 = v127[3];
        v131 = v236;
        v132 = *(v126 + 8 * v125);
        v133 = (*(v76 + 48) + 32 * v125);
        *v133 = v128;
        v133[1] = v129;
        v133[2] = v130;
        v133[3] = v131;
        *(*(v76 + 56) + 8 * v125) = v132;
      }

      v123 = v119;
      while (1)
      {
        v119 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          break;
        }

        if (v119 >= v231)
        {
          goto LABEL_156;
        }

        v124 = *&v234[8 * v119];
        ++v123;
        if (v124)
        {
          v122 = __clz(__rbit64(v124));
          v237 = (v124 - 1) & v124;
          goto LABEL_91;
        }
      }

LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:

      swift_unexpectedError();
      __break(1u);
LABEL_263:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_264:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_265;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_159:

  if (v35)
  {
    v177 = *(v35 + 16);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v178 = v240;
    v179 = v241;
    v180 = v238;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v177, v242, v240, v241);
    if (v180)
    {

      v238 = 0;
    }

    else
    {
      v238 = 0;

      v171 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v172 = v196;

      if (v172)
      {
        goto LABEL_202;
      }
    }
  }

  else
  {
    v179 = v241;
    v178 = v240;
  }

  v181 = v242;
  *&v251 = v242;
  v182 = HIDWORD(v242);
  v183 = HIWORD(v242);
  *(&v251 + 1) = v178;
  LODWORD(v252) = v179;
  if (_So9NSDecimala__length_getter(&v251) || (LODWORD(v251) = v181, WORD2(v251) = v182, WORD3(v251) = v183, *(&v251 + 1) = v178, LODWORD(v252) = v179, !_So9NSDecimala__isNegative_getter(&v251)))
  {
    LODWORD(v251) = v181;
    WORD2(v251) = v182;
    WORD3(v251) = v183;
    *(&v251 + 1) = v178;
    LODWORD(v252) = v179;
    if (!_So9NSDecimala__length_getter(&v251))
    {
      v172 = 0xE100000000000000;
      v171 = 48;
      goto LABEL_202;
    }

    *&v244 = 0;
    *(&v244 + 1) = 0xE000000000000000;
    LODWORD(v251) = v181;
    WORD2(v251) = v182;
    WORD3(v251) = v183;
    *(&v251 + 1) = v178;
    LODWORD(v252) = v179;
    v246 = v251;
    LODWORD(v247) = v179;
    if (_So9NSDecimala__exponent_getter(&v246) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v246 = v251;
        LODWORD(v247) = v252;
        v184 = _So9NSDecimala__exponent_getter(&v246);
        _So9NSDecimala__exponent_setter((v184 - 1), &v251);
        v246 = v251;
        LODWORD(v247) = v252;
      }

      while (_So9NSDecimala__exponent_getter(&v246) > 0);
    }

    v246 = v251;
    LODWORD(v247) = v252;
    if (!_So9NSDecimala__exponent_getter(&v246))
    {
      _So9NSDecimala__exponent_setter(1, &v251);
    }

    v246 = v251;
    LODWORD(v247) = v252;
    if (!_So9NSDecimala__length_getter(&v246))
    {
LABEL_190:
      v246 = v251;
      LODWORD(v247) = v252;
      if (_So9NSDecimala__exponent_getter(&v246) <= 0)
      {
        while (1)
        {
          v246 = v251;
          LODWORD(v247) = v252;
          if (!_So9NSDecimala__exponent_getter(&v246))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v246 = v251;
          LODWORD(v247) = v252;
          v194 = _So9NSDecimala__exponent_getter(&v246);
          _So9NSDecimala__exponent_setter((v194 + 1), &v251);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v246 = v251;
      LODWORD(v247) = v252;
      if (_So9NSDecimala__isNegative_getter(&v246))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v246 = v244;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
      v171 = String.init<A>(_:)();
      v172 = v195;
      goto LABEL_202;
    }

    v28 = 3435973837;
    while (1)
    {
      v246 = v251;
      LODWORD(v247) = v252;
      if (!_So9NSDecimala__exponent_getter(&v246))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v246 = v251;
      LODWORD(v247) = v252;
      v185 = _So9NSDecimala__exponent_getter(&v246);
      _So9NSDecimala__exponent_setter((v185 + 1), &v251);
      v37 = v251;
      v43 = WORD2(v251);
      v30 = WORD4(v251);
      v35 = WORD5(v251);
      v236 = WORD3(v251);
      v242 = WORD6(v251);
      v240 = HIWORD(v251);
      v241 = v252;
      LODWORD(v237) = WORD1(v252);
      NSDecimal.asVariableLengthInteger()(v251 | (WORD2(v251) << 32) | (WORD3(v251) << 48), WORD4(v251) | (WORD5(v251) << 16) | (WORD6(v251) << 32) | (HIWORD(v251) << 48), v252 | (WORD1(v252) << 16));
      v90 = v186;
      v187 = *(v186 + 16);
      v188._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v187);
      *&v246 = v188;
      if (v187)
      {
        break;
      }

      v233 = 48;
LABEL_183:
      while (1)
      {
        v190 = *(v188._rawValue + 2);
        if (!v190 || *(v188._rawValue + v190 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v246 + 16) - 1);
        }

        v188._rawValue = v246;
      }

      LODWORD(v246) = v37;
      WORD2(v246) = v43;
      WORD3(v246) = v236;
      WORD4(v246) = v30;
      WORD5(v246) = v35;
      WORD6(v246) = v242;
      HIWORD(v246) = v240;
      LOWORD(v247) = v241;
      WORD1(v247) = v237;
      NSDecimal.copyVariableLengthInteger(_:)(v188);
      v238 = v191;
      if (v191)
      {
        goto LABEL_262;
      }

      v192 = *(v188._rawValue + 2);

      if (HIDWORD(v192))
      {
        goto LABEL_257;
      }

      _So9NSDecimala__length_setter(v192, &v246);
      v251 = v246;
      LODWORD(v252) = v247;
      *&v249 = v233;
      v193 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v193);

      v249 = v251;
      v250 = v252;
      if (!_So9NSDecimala__length_getter(&v249))
      {
        goto LABEL_190;
      }
    }

    v234 = v35;
    i = v30;
    v30 = v43;
    v43 = v37;
    v35 = 0;
    v89 = v187 + 15;
    while (1)
    {
      v44 = v89 - 15;
      if ((v89 - 15) > *(v90 + 16))
      {
        break;
      }

      v37 = *(v90 + 2 * v89);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v188._rawValue);
      }

      if (v44 > *(v188._rawValue + 2))
      {
        goto LABEL_204;
      }

      v189 = v37 | (v35 << 16);
      *(v188._rawValue + v89) = v189 / 0xA;
      v35 = v189 % 0xA;
      if (--v89 == 15)
      {

        *&v246 = v188;
        v233 = v35 | 0x30;
        LODWORD(v37) = v43;
        LOWORD(v43) = v30;
        LOWORD(v30) = i;
        LOWORD(v35) = v234;
        goto LABEL_183;
      }
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:

    v48 = v232;
    if ((v89 & 1) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_56;
  }

  v171 = 5136718;
  v172 = 0xE300000000000000;
LABEL_202:
  v197 = type metadata accessor for NSDecimal.FormatStyle.Percent;
  v198 = v239;
LABEL_253:
  outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v198, v197);
  v227 = v171;
  v228 = v172;
LABEL_266:
  result._object = v228;
  result._countAndFlagsBits = v227;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v2, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v7, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      v21 = v7;
      v22 = a2;
      v23 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      goto LABEL_7;
    }

    v20 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v10 = v17;
    v10[1] = v18;
    v21 = v10;
  }

  else
  {
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    v21 = v13;
  }

  v22 = a2;
  v23 = v20;
LABEL_7:
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v22, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v213 = *(v3 - 8);
  v214 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v212 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v198 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v198 - v10;
  v208 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v208);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v209);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v1, v21, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v34 = v214;
        v35 = v209;
        v36 = v210;
        goto LABEL_84;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v215, ObjectType, v23);
      v228 = v221;
      v229[0] = v222[0];
      *(v229 + 12) = *(v222 + 12);
      *v225 = v217;
      *&v225[16] = v218;
      v226 = v219;
      v227 = v220;
      v223 = v215;
      v224 = v216;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v43 = v215;
      v44 = *(&v215 + 1);
      v45 = *(&v216 + 1);
      v198 = v216;
      v46 = *(&v217 + 1);
      v199 = v217;
      v201 = v218;
      v202 = v219;
      v203 = v220;
      *&v204[8] = v221;
      v200 = *(&v222[0] + 1);
      v205 = *&v222[0];
      v206 = *&v222[1];
      v47 = BYTE8(v222[1]);
      v208 = BYTE9(v222[1]);
      LODWORD(v207) = BYTE10(v222[1]);
      LODWORD(v211) = BYTE11(v222[1]);
      Hasher._combine(_:)(1u);
      if (v43 == 2)
      {
        v48 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v48 = v43 & 1;
      }

      Hasher._combine(_:)(v48);
      if (v44)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v44 + 16));
        v61 = *(v44 + 16);
        if (v61)
        {
          v62 = v44 + 40;
          do
          {

            String.hash(into:)();

            v62 += 16;
            --v61;
          }

          while (v61);
        }

        *v204 = v47;
        if (v45)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        *v204 = v47;
        if (v45)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v34 = v214;
      v35 = v209;
      v36 = v210;
      v67 = *(&v202 + 1);
      v68 = *(&v201 + 1);
      if (v46)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v69 = v201;
        if (v201)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v69 = v201;
        if (v201)
        {
LABEL_49:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v69, v70, v71, v72, v73, v74, v75);
          if (v68)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
LABEL_50:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v68, v76, v77, v78, v79, v80, v81);
        if (v202)
        {
          goto LABEL_51;
        }

        goto LABEL_56;
      }

LABEL_55:
      Hasher._combine(_:)(0);
      if (v202)
      {
LABEL_51:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v67)
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_58;
        }

LABEL_57:
        Hasher._combine(_:)(0);
LABEL_58:
        v82 = v205;
        if (v203)
        {
          v83 = v208;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v203 + 1))
          {
LABEL_60:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_63;
          }
        }

        else
        {
          v83 = v208;
          Hasher._combine(_:)(0);
          if (*(&v203 + 1))
          {
            goto LABEL_60;
          }
        }

        Hasher._combine(_:)(0);
LABEL_63:
        v84 = v83;
        if (*&v204[8])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v85 = v82;
        v86 = *&v204[16];
        if (*&v204[16])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v86);
          v87 = *v204;
          if (v85)
          {
            goto LABEL_68;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v87 = *v204;
          if (v85)
          {
LABEL_68:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v85);
            if (v206)
            {
LABEL_69:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v88 = v207;
            if (v87 == 2)
            {
              Hasher._combine(_:)(0);
              if (v84 != 2)
              {
                goto LABEL_75;
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v87 & 1);
              if (v84 != 2)
              {
LABEL_75:
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v84 & 1);
                if (v88 != 2)
                {
LABEL_76:
                  Hasher._combine(_:)(1u);
                  v89 = v88 & 1;
LABEL_80:
                  Hasher._combine(_:)(v89);
                  v90 = v211;
                  if (v211 == 2)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v91 = v90 & 1;
                  }

                  Hasher._combine(_:)(v91);
                  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_84:
                  String.hash(into:)();
                  v92 = &v15[*(v35 + 24)];
                  if (v92[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v93 = *v92;
                    Hasher._combine(_:)(1u);
                    if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    MEMORY[0x1865CD090](v94);
                  }

                  v95 = v213;
                  v96 = *(v92 + 2);
                  v223 = *(v92 + 1);
                  v224 = v96;
                  *v225 = *(v92 + 3);
                  *&v225[9] = *(v92 + 57);
                  specialized Optional<A>.hash(into:)();
                  v97 = v92[73];
                  if (v97 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v97 & 1);
                  }

                  v98 = *(v92 + 74);
                  if (*(v92 + 74) == 2)
                  {
                    LOBYTE(v99) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v98 & 1);
                    MEMORY[0x1865CD060]((v98 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v98) & 1);
                    v99 = BYTE3(v98) & 1;
                  }

                  Hasher._combine(_:)(v99);
                  v100 = v92[78];
                  if (v100 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v100 & 1);
                  }

                  v101 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  outlined init with copy of FloatingPointRoundingRule?(&v92[v101[9]], v36, &_ss25FloatingPointRoundingRuleOSgMd);
                  if ((*(v95 + 48))(v36, 1, v34) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v102 = v212;
                    (*(v95 + 32))(v212, v36, v34);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v95 + 8))(v102, v34);
                  }

                  v103 = &v92[v101[10]];
                  v104 = v103[8];
                  if (v104 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v105 = *v103;
                    Hasher._combine(_:)(1u);
                    if (v104)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      MEMORY[0x1865CD090](v106);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v105);
                    }
                  }

                  MEMORY[0x1865CD060](v92[v101[11]]);
                  v107 = v92[v101[12]];
                  if (v107 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v107);
                  }

                  v108 = type metadata accessor for NSDecimal.FormatStyle.Currency;
                  v109 = v15;
                  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
                }

LABEL_79:
                v89 = 0;
                goto LABEL_80;
              }
            }

            Hasher._combine(_:)(0);
            if (v88 != 2)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }

        Hasher._combine(_:)(0);
        if (v206)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

LABEL_56:
      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v30 = v13;
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v13, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v13 + 1);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      v33 = 1;
LABEL_17:
      Hasher._combine(_:)(v33);
      v40 = v213;
      v41 = v214;
      v42 = v208;
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v215, v32, v31);
    v228 = v221;
    v229[0] = v222[0];
    *(v229 + 12) = *(v222 + 12);
    *v225 = v217;
    *&v225[16] = v218;
    v226 = v219;
    v227 = v220;
    v223 = v215;
    v224 = v216;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
    {
      v33 = 0;
      goto LABEL_17;
    }

    v55 = v215;
    v56 = *(&v215 + 1);
    v57 = *(&v216 + 1);
    v198 = v216;
    v58 = *(&v217 + 1);
    v199 = v217;
    v201 = v218;
    v202 = v219;
    v203 = v220;
    *&v204[16] = *(&v221 + 1);
    *v204 = v221;
    v200 = *(&v222[0] + 1);
    v205 = *&v222[0];
    v206 = *&v222[1];
    v207 = BYTE8(v222[1]);
    v209 = BYTE9(v222[1]);
    v59 = BYTE10(v222[1]);
    LODWORD(v210) = BYTE11(v222[1]);
    Hasher._combine(_:)(1u);
    if (v55 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v55 & 1;
    }

    Hasher._combine(_:)(v60);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v56 + 16));
      v65 = *(v56 + 16);
      if (v65)
      {
        v66 = v56 + 40;
        do
        {

          String.hash(into:)();

          v66 += 16;
          --v65;
        }

        while (v65);
      }

      *&v204[8] = v59;
      if (v57)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      *&v204[8] = v59;
      if (v57)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_186;
      }
    }

    Hasher._combine(_:)(0);
LABEL_186:
    v40 = v213;
    v42 = v208;
    v153 = v203;
    v154 = v202;
    if (v58)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v30 = v13;
    v155 = v201;
    if (v201)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v155, v156, v157, v158, v159, v160, v161);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v41 = v214;
    v162 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v162, v163, v164, v165, v166, v167, v168);
      if (v154)
      {
        goto LABEL_194;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v154)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v202 + 1))
        {
          goto LABEL_195;
        }

        goto LABEL_199;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v202 + 1))
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v169 = v206;
      if (v153)
      {
LABEL_196:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_201;
      }

LABEL_200:
      Hasher._combine(_:)(0);
LABEL_201:
      v170 = v169;
      if (*(&v203 + 1))
      {
        v171 = v209;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*v204)
        {
LABEL_203:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_206;
        }
      }

      else
      {
        v171 = v209;
        Hasher._combine(_:)(0);
        if (*v204)
        {
          goto LABEL_203;
        }
      }

      Hasher._combine(_:)(0);
LABEL_206:
      v172 = v171;
      v173 = v170;
      v174 = *&v204[16];
      if (*&v204[16])
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v174);
        v175 = v205;
        if (v205)
        {
          goto LABEL_208;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v175 = v205;
        if (v205)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v175);
          v176 = v210;
          if (v173)
          {
LABEL_209:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_213;
          }

LABEL_212:
          Hasher._combine(_:)(0);
LABEL_213:
          v177 = v207;
          if (v207 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v177 & 1);
          }

          v178 = *&v204[8];
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
            if (v178 != 2)
            {
LABEL_218:
              Hasher._combine(_:)(1u);
              v179 = v178 & 1;
LABEL_221:
              Hasher._combine(_:)(v179);
              if (v176 == 2)
              {
                v180 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v180 = v176 & 1;
              }

              Hasher._combine(_:)(v180);
              outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_225:
              v181 = &v30[*(v42 + 20)];
              if (v181[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v182 = *v181;
                Hasher._combine(_:)(1u);
                if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v183 = v182;
                }

                else
                {
                  v183 = 0;
                }

                MEMORY[0x1865CD090](v183);
              }

              v184 = *(v181 + 2);
              v223 = *(v181 + 1);
              v224 = v184;
              *v225 = *(v181 + 3);
              *&v225[9] = *(v181 + 57);
              specialized Optional<A>.hash(into:)();
              v185 = v181[73];
              if (v185 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v185 & 1);
              }

              v186 = *(v181 + 37);
              v187 = v186 | (v181[76] << 16);
              if (v186 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v187 & 1);
                MEMORY[0x1865CD060]((v187 >> 8) & 1);
                MEMORY[0x1865CD060](HIWORD(v187) & 1);
              }

              v188 = v181[77];
              if (v188 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v188 & 1);
              }

              v189 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
              v190 = v211;
              outlined init with copy of FloatingPointRoundingRule?(&v181[v189[9]], v211, &_ss25FloatingPointRoundingRuleOSgMd);
              if ((*(v40 + 48))(v190, 1, v41) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v191 = v212;
                (*(v40 + 32))(v212, v190, v41);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v40 + 8))(v191, v41);
              }

              v192 = &v181[v189[10]];
              v193 = v192[8];
              if (v193 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v194 = *v192;
                Hasher._combine(_:)(1u);
                if (v193)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v194 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v195 = v194;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  MEMORY[0x1865CD090](v195);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v194);
                }
              }

              v196 = v181[v189[11]];
              if (v196 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v196);
              }

              v108 = type metadata accessor for NSDecimal.FormatStyle.Percent;
              v109 = v30;
              return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
            if (v178 != 2)
            {
              goto LABEL_218;
            }
          }

          v179 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      v176 = v210;
      if (v173)
      {
        goto LABEL_209;
      }

      goto LABEL_212;
    }

LABEL_199:
    Hasher._combine(_:)(0);
    v169 = v206;
    if (v153)
    {
      goto LABEL_196;
    }

    goto LABEL_200;
  }

  v26 = v16;
  v211 = v11;
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v27 = *(v18 + 1);
  v28 = swift_getObjectType();
  if ((*(v27 + 48))(v28, v27))
  {
    v29 = 1;
LABEL_14:
    Hasher._combine(_:)(v29);
    v38 = v213;
    v37 = v214;
    v39 = v26;
    goto LABEL_154;
  }

  Hasher._combine(_:)(0);
  (*(v27 + 64))(v28, v27);
  String.hash(into:)();

  (*(v27 + 464))(&v215, v28, v27);
  v228 = v221;
  v229[0] = v222[0];
  *(v229 + 12) = *(v222 + 12);
  *v225 = v217;
  *&v225[16] = v218;
  v226 = v219;
  v227 = v220;
  v223 = v215;
  v224 = v216;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v210 = v18;
  v49 = v215;
  v50 = *(&v215 + 1);
  v51 = *(&v216 + 1);
  v198 = v216;
  v52 = *(&v217 + 1);
  v199 = v217;
  v201 = v218;
  v202 = v219;
  v203 = v220;
  *v204 = v221;
  v200 = *(&v222[0] + 1);
  v205 = *&v222[0];
  v206 = *&v222[1];
  v207 = BYTE8(v222[1]);
  v208 = BYTE9(v222[1]);
  LODWORD(v209) = BYTE10(v222[1]);
  v53 = BYTE11(v222[1]);
  Hasher._combine(_:)(1u);
  if (v49 == 2)
  {
    v54 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v54 = v49 & 1;
  }

  Hasher._combine(_:)(v54);
  if (v50)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v50 + 16));
    v63 = *(v50 + 16);
    if (v63)
    {
      v64 = v50 + 40;
      do
      {

        String.hash(into:)();

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    *&v204[16] = v53;
    if (v51)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *&v204[16] = v53;
    if (v51)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_116;
    }
  }

  Hasher._combine(_:)(0);
LABEL_116:
  v37 = v214;
  v39 = v26;
  v110 = v202;
  v18 = v210;
  v111 = v203;
  if (v52)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v213;
  v112 = v201;
  if (v201)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v112, v113, v114, v115, v116, v117, v118);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      goto LABEL_121;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
LABEL_121:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v119, v120, v121, v122, v123, v124, v125);
      if (v110)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  Hasher._combine(_:)(0);
  if (v110)
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v202 + 1))
    {
      goto LABEL_123;
    }

LABEL_128:
    Hasher._combine(_:)(0);
    if (v111)
    {
      goto LABEL_124;
    }

    goto LABEL_129;
  }

LABEL_127:
  Hasher._combine(_:)(0);
  if (!*(&v202 + 1))
  {
    goto LABEL_128;
  }

LABEL_123:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v111)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
LABEL_130:
  v126 = v206;
  if (*(&v203 + 1))
  {
    v127 = v208;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v204)
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_135;
    }
  }

  else
  {
    v127 = v208;
    Hasher._combine(_:)(0);
    if (*v204)
    {
      goto LABEL_132;
    }
  }

  Hasher._combine(_:)(0);
LABEL_135:
  v128 = v127;
  v129 = v126;
  v130 = *&v204[8];
  if (*&v204[8])
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v130);
    v131 = v205;
    if (v205)
    {
      goto LABEL_137;
    }

LABEL_140:
    Hasher._combine(_:)(0);
    v132 = v209;
    if (v129)
    {
      goto LABEL_138;
    }

    goto LABEL_141;
  }

  Hasher._combine(_:)(0);
  v131 = v205;
  if (!v205)
  {
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v131);
  v132 = v209;
  if (v129)
  {
LABEL_138:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_142;
  }

LABEL_141:
  Hasher._combine(_:)(0);
LABEL_142:
  v133 = v207;
  if (v207 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v133 & 1);
  }

  v134 = *&v204[16];
  if (v128 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v128 & 1);
    if (v132 != 2)
    {
      goto LABEL_147;
    }

LABEL_149:
    v135 = 0;
    goto LABEL_150;
  }

  Hasher._combine(_:)(0);
  if (v132 == 2)
  {
    goto LABEL_149;
  }

LABEL_147:
  Hasher._combine(_:)(1u);
  v135 = v132 & 1;
LABEL_150:
  Hasher._combine(_:)(v135);
  if (v134 == 2)
  {
    v136 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v136 = v134 & 1;
  }

  Hasher._combine(_:)(v136);
  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_154:
  v137 = &v18[*(v39 + 20)];
  if (v137[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v138 = *v137;
    Hasher._combine(_:)(1u);
    if ((v138 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    MEMORY[0x1865CD090](v139);
  }

  v140 = v211;
  v141 = *(v137 + 2);
  v223 = *(v137 + 1);
  v224 = v141;
  *v225 = *(v137 + 3);
  *&v225[9] = *(v137 + 57);
  specialized Optional<A>.hash(into:)();
  v142 = v137[73];
  if (v142 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142 & 1);
  }

  v143 = *(v137 + 37);
  v144 = v143 | (v137[76] << 16);
  if (v143 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v144 & 1);
    MEMORY[0x1865CD060]((v144 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v144) & 1);
  }

  v145 = v137[77];
  if (v145 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v145 & 1);
  }

  v146 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v137[v146[9]], v140, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v38 + 48))(v140, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v147 = v212;
    (*(v38 + 32))(v212, v140, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v38 + 8))(v147, v37);
  }

  v148 = &v137[v146[10]];
  v149 = v148[8];
  if (v149 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v150 = *v148;
    Hasher._combine(_:)(1u);
    if (v149)
    {
      MEMORY[0x1865CD060](1);
      if ((v150 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x1865CD090](v151);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v150);
    }
  }

  v152 = v137[v146[11]];
  if (v152 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v152);
  }

  v108 = type metadata accessor for NSDecimal.FormatStyle;
  v109 = v18;
  return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v109, v108);
}