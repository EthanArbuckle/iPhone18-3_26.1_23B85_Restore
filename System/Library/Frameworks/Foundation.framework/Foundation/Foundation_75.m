uint64_t FloatingPointParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = a5(0, a3, a4);
  (*(*(v9 - 8) + 32))(a6, a1, v9);
  swift_getWitnessTable();
  result = type metadata accessor for FloatingPointParseStrategy();
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t static FloatingPointParseStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v4 = type metadata accessor for FloatingPointParseStrategy();
    v5 = *(a1 + *(v4 + 44)) ^ *(a2 + *(v4 + 44)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointParseStrategy<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointParseStrategy<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = NSDecimal.ParseStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FloatingPointParseStrategy<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for Sequence._customContainsEquatableElement(_:) in conformance AttributedString._InternalRuns();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointParseStrategy.encode(to:)(void *a1, uint64_t a2)
{
  v9[2] = *(a2 + 16);
  v9[0] = *(a2 + 24);
  type metadata accessor for FloatingPointParseStrategy.CodingKeys();
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

Swift::Int FloatingPointParseStrategy.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 44)));
  return Hasher._finalize()();
}

uint64_t FloatingPointParseStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointParseStrategy.CodingKeys();
  swift_getWitnessTable();
  v34 = type metadata accessor for KeyedDecodingContainer();
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v24 - v8;
  v31 = a2;
  v32 = a3;
  v10 = type metadata accessor for FloatingPointParseStrategy();
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointParseStrategy<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  FloatingPointParseStrategy.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v10 = String.UTF16View.distance(from:to:)();
  if (v10)
  {
    v11 = v10;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v10, 0);
    v13 = specialized Sequence._copySequenceContents(initializing:)(v17, (v12 + 4), v11, a1, a2, a3, a4);
    swift_bridgeObjectRetain_n();

    if (v13 != v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v17[0]) = 0;
  if (v12[2] >> 31)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  unum_parseDouble();
  v15 = v14;

  if (SLODWORD(v17[0]) > 0)
  {
    return 0;
  }

  *a5 = 0;
  return v15;
}

uint64_t _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointParseStrategy<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for FloatingPointParseStrategy()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ICULegacyNumberFormatter.__deallocating_deinit()
{
  unum_close();

  return swift_deallocClassInstance();
}

uint64_t ICULegacyNumberFormatter.NumberFormatType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation24ICULegacyNumberFormatterC0F10FormatTypeO18CurrencyCodingKeys33_ADC49A1B068F5C8BE74334B016A6B679LLOGMd);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v43 - v3;
  v46 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v51 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation24ICULegacyNumberFormatterC0F10FormatTypeO10CodingKeys33_ADC49A1B068F5C8BE74334B016A6B679LLOGMd);
  v57 = *(v20 - 8);
  v58 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys();
  v55 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v54, v19, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v19, v13, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v60 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v45;
      v35 = v58;
      v36 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v37 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v52 + 8))(v34, v37);
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v13, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      return (*(v57 + 8))(v36, v35);
    }

    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v19, v16, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    v59 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v24 = v58;
    v25 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    v26 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v11, v26);
    v27 = v16;
    v28 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
    v29 = v47;
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v19, v47, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    v63 = 2;
    lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys();
    v30 = v48;
    v24 = v58;
    v25 = v55;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = 0;
    lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    v31 = v50;
    v32 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v32)
    {

      (*(v49 + 8))(v30, v31);
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v29, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
      return (*(v57 + 8))(v25, v24);
    }

    v61 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v49 + 8))(v30, v31);
    v28 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection;
    v27 = v29;
LABEL_11:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v27, v28);
    return (*(v57 + 8))(v25, v24);
  }

  v38 = *v19;
  v65 = 3;
  lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
  v39 = v44;
  v40 = v58;
  v41 = v55;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v64 = v38;
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection();
  v42 = v53;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v52 + 8))(v39, v42);
  return (*(v57 + 8))(v41, v40);
}

void ICULegacyNumberFormatter.NumberFormatType.hash(into:)()
{
  v76 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v76);
  v2 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v0, v21, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v21, v15, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      MEMORY[0x1865CD060](1);
      v24 = v78;
      if (v15[8] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v39 = *v15;
        Hasher._combine(_:)(1u);
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        MEMORY[0x1865CD090](v40);
      }

      v41 = v79;
      v42 = *(v15 + 2);
      v80 = *(v15 + 1);
      v81 = v42;
      v82[0] = *(v15 + 3);
      *(v82 + 9) = *(v15 + 57);
      specialized Optional<A>.hash(into:)();
      v43 = v15[73];
      if (v43 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v43 & 1);
      }

      v48 = *(v15 + 37);
      v49 = v48 | (v15[76] << 16);
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

      v52 = v15[77];
      if (v52 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v52 & 1);
      }

      outlined init with copy of FloatingPointRoundingRule?(&v15[v13[9]], v9);
      if ((*(v24 + 48))(v9, 1, v41) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v64 = v77;
        (*(v24 + 32))(v77, v9, v41);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*(v24 + 8))(v64, v41);
      }

      v65 = &v15[v13[10]];
      v66 = v65[8];
      if (v66 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v67 = *v65;
        Hasher._combine(_:)(1u);
        if (v66)
        {
          MEMORY[0x1865CD060](1);
          if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v68 = v67;
          }

          else
          {
            v68 = 0;
          }

          MEMORY[0x1865CD090](v68);
        }

        else
        {
          MEMORY[0x1865CD060](0);
          MEMORY[0x1865CD060](v67);
        }
      }

      v73 = v15[v13[11]];
      if (v73 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v73);
      }

      v70 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
      v71 = v15;
    }

    else
    {
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v21, v18, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      MEMORY[0x1865CD060](0);
      v23 = v78;
      if (v18[8] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = *v18;
        Hasher._combine(_:)(1u);
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x1865CD090](v28);
      }

      v29 = v79;
      v30 = *(v18 + 2);
      v80 = *(v18 + 1);
      v81 = v30;
      v82[0] = *(v18 + 3);
      *(v82 + 9) = *(v18 + 57);
      specialized Optional<A>.hash(into:)();
      v31 = v18[73];
      if (v31 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v31 & 1);
      }

      v44 = *(v18 + 37);
      v45 = v44 | (v18[76] << 16);
      if (v44 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v45 & 1);
        MEMORY[0x1865CD060]((v45 >> 8) & 1);
        MEMORY[0x1865CD060](HIWORD(v45) & 1);
      }

      v50 = v18[77];
      if (v50 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v50 & 1);
      }

      outlined init with copy of FloatingPointRoundingRule?(&v18[v13[9]], v12);
      if ((*(v23 + 48))(v12, 1, v29) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v54 = v77;
        (*(v23 + 32))(v77, v12, v29);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*(v23 + 8))(v54, v29);
      }

      v55 = &v18[v13[10]];
      v56 = v55[8];
      if (v56 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v57 = *v55;
        Hasher._combine(_:)(1u);
        if (v56)
        {
          MEMORY[0x1865CD060](1);
          if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v58 = v57;
          }

          else
          {
            v58 = 0;
          }

          MEMORY[0x1865CD090](v58);
        }

        else
        {
          MEMORY[0x1865CD060](0);
          MEMORY[0x1865CD060](v57);
        }
      }

      v69 = v18[v13[11]];
      if (v69 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v69);
      }

      v70 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
      v71 = v18;
    }

LABEL_97:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v71, v70);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v21, v2, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    MEMORY[0x1865CD060](2);
    if (v2[8] == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v32 = *v2;
      Hasher._combine(_:)(1u);
      if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      MEMORY[0x1865CD090](v33);
    }

    v35 = v78;
    v34 = v79;
    v36 = v76;
    v37 = *(v2 + 2);
    v80 = *(v2 + 1);
    v81 = v37;
    v82[0] = *(v2 + 3);
    *(v82 + 9) = *(v2 + 57);
    specialized Optional<A>.hash(into:)();
    v38 = v2[73];
    if (v38 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v38 & 1);
    }

    v46 = *(v2 + 74);
    if (*(v2 + 74) == 2)
    {
      LOBYTE(v47) = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v46 & 1);
      MEMORY[0x1865CD060]((v46 >> 8) & 1);
      MEMORY[0x1865CD060](WORD1(v46) & 1);
      v47 = BYTE3(v46) & 1;
    }

    Hasher._combine(_:)(v47);
    v51 = v2[78];
    if (v51 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v51 & 1);
    }

    v53 = v75;
    outlined init with copy of FloatingPointRoundingRule?(&v2[v36[9]], v75);
    if ((*(v35 + 48))(v53, 1, v34) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v59 = v77;
      (*(v35 + 32))(v77, v53, v34);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v35 + 8))(v59, v34);
    }

    v60 = &v2[v36[10]];
    v61 = v60[8];
    if (v61 == 255)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v62 = *v60;
      Hasher._combine(_:)(1u);
      if (v61)
      {
        MEMORY[0x1865CD060](1);
        if ((v62 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        MEMORY[0x1865CD090](v63);
      }

      else
      {
        MEMORY[0x1865CD060](0);
        MEMORY[0x1865CD060](v62);
      }
    }

    MEMORY[0x1865CD060](v2[v36[11]]);
    v72 = v2[v36[12]];
    if (v72 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v72);
    }

    String.hash(into:)();

    v70 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection;
    v71 = v2;
    goto LABEL_97;
  }

  v25 = *v21;
  v26 = v21[1];
  MEMORY[0x1865CD060](3);
  MEMORY[0x1865CD060](v25 + 1);
  if (v26 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v26);
  }
}

uint64_t ICULegacyNumberFormatter.NumberFormatType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation24ICULegacyNumberFormatterC0F10FormatTypeO18CurrencyCodingKeys33_ADC49A1B068F5C8BE74334B016A6B679LLOGMd);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v7 = *(v6 - 8);
  v73 = v6;
  v74 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v64 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation24ICULegacyNumberFormatterC0F10FormatTypeO10CodingKeys33_ADC49A1B068F5C8BE74334B016A6B679LLOGMd);
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v14 = &v64 - v13;
  v75 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v75);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys();
  v30 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v30)
  {
    v68 = v25;
    v66 = v22;
    v65 = v16;
    v32 = v77;
    v31 = v78;
    v81 = v19;
    v34 = v79;
    v33 = v80;
    v67 = v28;
    v35 = v75;
    v36 = v76;
    v37 = KeyedDecodingContainer.allKeys.getter();
    v38 = (2 * *(v37 + 16)) | 1;
    v83 = v37;
    v84 = v37 + 32;
    v85 = 0;
    v86 = v38;
    v39 = specialized Collection<>.popFirst()();
    if (v39 != 4 && v85 == v86 >> 1)
    {
      if (v39 > 1u)
      {
        if (v39 == 2)
        {
          LOBYTE(v87) = 2;
          lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
          LOBYTE(v87) = 0;
          lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
          v46 = v69;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          LOBYTE(v87) = 1;
          v52 = v33;
          v53 = KeyedDecodingContainer.decode(_:forKey:)();
          v78 = v54;
          v56 = v53;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
          v58 = v46;
          v59 = v14;
          v60 = v81;
          v61 = &v81[*(v57 + 48)];
          (*(v70 + 8))(v52, v58);
          (*(v36 + 8))(v59, v34);
          swift_unknownObjectRelease();
          v62 = v78;
          *v61 = v56;
          v61[1] = v62;
          swift_storeEnumTagMultiPayload();
          v63 = v60;
LABEL_14:
          v55 = v67;
          _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v63, v67, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
          _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v55, v71, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

        LOBYTE(v87) = 3;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v49 = v72;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection();
        v50 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v74 + 8))(v49, v50);
        (*(v36 + 8))(v14, v34);
        swift_unknownObjectRelease();
        v41 = v65;
        *v65 = v87;
      }

      else if (v39)
      {
        LOBYTE(v87) = 1;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v47 = v31;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
        v41 = v66;
        v48 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v74 + 8))(v47, v48);
        (*(v36 + 8))(v14, v34);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v87) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
        v40 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v74 + 8))(v32, v40);
        (*(v36 + 8))(v14, v34);
        swift_unknownObjectRelease();
        v41 = v68;
      }

      swift_storeEnumTagMultiPayload();
      v63 = v41;
      goto LABEL_14;
    }

    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v14;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v45 = v35;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v36 + 8))(v43, v34);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys()
{
  v1 = 0x7265626D756ELL;
  v2 = 0x79636E6572727563;
  if (*v0 != 2)
  {
    v2 = 0x7470697263736564;
  }

  if (*v0)
  {
    v1 = 0x746E6563726570;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ICULegacyNumberFormatter.NumberFormatType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys()
{
  if (*v0)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t setTextAttribute(_:formatter:value:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];

  v6 = MEMORY[0x1865CB200](a3, a4);
  if (v6)
  {
    v7 = v6;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v6, 0);

    v9 = specialized Sequence._copySequenceContents(initializing:)(&v13, (v8 + 4), v7, a3, a4);

    if (v9 != v7)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  if (v8[2] >> 31)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  unum_setTextAttribute();

  v11 = v13;
  if (v13 > 0)
  {
    lazy protocol witness table accessor for type ICUError and conformance ICUError();
    swift_allocError();
    *v12 = v11;
    return swift_willThrow();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICULegacyNumberFormatter.NumberFormatType(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICULegacyNumberFormatter.NumberFormatType(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static ICULegacyNumberFormatter.NumberFormatType.== infix(_:_:)() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v11 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection()
{
  result = lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection;
  if (!lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection;
  if (!lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection;
  if (!lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DescriptiveNumberFormatConfiguration.Collection and conformance DescriptiveNumberFormatConfiguration.Collection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys()
{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys;
  if (!lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys and conformance ICULegacyNumberFormatter.NumberFormatType.CurrencyCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of (ICULegacyNumberFormatter.NumberFormatType, ICULegacyNumberFormatter.NumberFormatType)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeO_AEtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ICULegacyNumberFormatter.formatter(for:locale:lenient:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = *(a2 + 8);
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(a1, &v60 - v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 64))(ObjectType, v15);
  v18 = &v14[*(v6 + 20)];
  *v18 = v17;
  v18[1] = v19;
  v14[*(v6 + 24)] = a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v21 = static ICULegacyNumberFormatter.cache;
  v20 = qword_1EA7AFFA0;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v14, v11, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = v11;
  v24 = swift_allocObject();
  v25 = _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v23, v24 + v22, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v25);
  *(&v60 - 2) = v14;
  os_unfair_lock_lock((v20 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v20 + 16, &v70);
  os_unfair_lock_unlock((v20 + 24));
  v26 = v24;
  v27 = v70;
  if (v70)
  {
    goto LABEL_34;
  }

  v28 = v23;
  v68 = v7;
  v29 = _s10Foundation24ICULegacyNumberFormatterC9formatter3for6locale7lenientACSgAC0C10FormatTypeO_AA6LocaleVSbtFZACyYbKcAC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVYbcfu_ACyYbKcfu0_TA_0();
  v67 = v26;
  os_unfair_lock_lock((v20 + 24));
  if (v21 >= *(*(v20 + 16) + 16))
  {
  }

  else
  {
    *(v20 + 16) = MEMORY[0x1E69E7CC8];
  }

  v30 = v69;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v14, v69, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v20 + 16);
  v32 = v70;
  *(v20 + 16) = 0x8000000000000000;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  v35 = *(v32 + 16);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v32 + 24) >= v37)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v39 = v32;
      if (v33)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_16:
    v61 = v34;
    v62 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v42 = static _DictionaryStorage.copy(original:)();
    v39 = v42;
    if (*(v32 + 16))
    {
      v43 = (v42 + 64);
      v44 = 1 << *(v39 + 32);
      v63 = (v32 + 64);
      v45 = (v44 + 63) >> 6;
      if (v39 != v32 || v43 >= &v63[8 * v45])
      {
        memmove(v43, v63, 8 * v45);
      }

      v46 = 0;
      *(v39 + 16) = *(v32 + 16);
      v47 = 1 << *(v32 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v66 = v48 & *(v32 + 64);
      v60 = (v47 + 63) >> 6;
      for (i = v66; v66; i = v66)
      {
        v50 = __clz(__rbit64(i));
        v66 = (i - 1) & i;
LABEL_29:
        v53 = v50 | (v46 << 6);
        v54 = *(v32 + 48);
        v65 = *(v68 + 72) * v53;
        _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v54 + v65, v28, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v64 = *(*(v32 + 56) + 8 * v53);
        _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v28, *(v39 + 48) + v65, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v39 + 56) + 8 * v53) = v64;
      }

      v51 = v46;
      while (1)
      {
        v46 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v46 >= v60)
        {
          goto LABEL_31;
        }

        v52 = *&v63[8 * v46];
        ++v51;
        if (v52)
        {
          v50 = __clz(__rbit64(v52));
          v66 = (v52 - 1) & v52;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_31:

    v30 = v69;
    v34 = v61;
    if (v62)
    {
      goto LABEL_14;
    }

LABEL_32:
    v55 = v28;
    v56 = v28;
    v57 = v34;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v30, v56, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v58 = v57;
    v27 = v29;
    specialized _NativeDictionary._insert(at:key:value:)(v58, v55, v29, v39);
    goto LABEL_33;
  }

  v38 = v33;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
  v39 = v70;
  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
  if ((v38 & 1) == (v41 & 1))
  {
    v34 = v40;
    if ((v38 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_14:
    v27 = v29;
    *(*(v39 + 56) + 8 * v34) = v29;

LABEL_33:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v30, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v20 + 16) = v39;

    os_unfair_lock_unlock((v20 + 24));

LABEL_34:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v14, type metadata accessor for ICULegacyNumberFormatter.Signature);

    return v27;
  }

LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized ICULegacyNumberFormatter.NumberFormatType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB00000000657669)
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
      return 4;
    }
  }
}

uint64_t ICUNumberFormatter.attributedFormat(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = ICUNumberFormatterBase.attributedFormatPositions(_:)(a1, a2, a3 & 0xFFFFFFFFFFLL);
  if (!v8)
  {
    if (BYTE4(v4) <= 1u)
    {
      if (BYTE4(v4))
      {
        Double.description.getter();
      }

      else
      {
        *&v294 = v6;
        dispatch thunk of CustomStringConvertible.description.getter();
      }

      goto LABEL_207;
    }

    if (BYTE4(v4) == 2)
    {
      *&v294 = v6;
      v158 = HIDWORD(v6);
      v152 = HIWORD(v6);
      v140 = v5 >> 16;
      *(&v294 + 1) = v5;
      v162 = HIDWORD(v5);
      v121 = HIWORD(v5);
      v161 = v4 >> 16;
      v295 = v4;
      if (!_So9NSDecimala__length_getter(&v294))
      {
LABEL_206:
        LODWORD(v294) = v6;
        WORD2(v294) = v158;
        WORD3(v294) = v152;
        WORD4(v294) = v5;
        WORD5(v294) = v140;
        WORD6(v294) = v162;
        HIWORD(v294) = v121;
        LOWORD(v295) = v4;
        HIWORD(v295) = v161;
        if (_So9NSDecimala__isNegative_getter(&v294))
        {
          goto LABEL_207;
        }
      }

      LODWORD(v294) = v6;
      WORD2(v294) = v158;
      WORD3(v294) = v152;
      WORD4(v294) = v5;
      WORD5(v294) = v140;
      WORD6(v294) = v162;
      HIWORD(v294) = v121;
      LOWORD(v295) = v4;
      HIWORD(v295) = v161;
      if (_So9NSDecimala__length_getter(&v294))
      {
        *&v275 = 0;
        *(&v275 + 1) = 0xE000000000000000;
        LODWORD(v294) = v6;
        WORD2(v294) = v158;
        WORD3(v294) = v152;
        WORD4(v294) = v5;
        WORD5(v294) = v140;
        WORD6(v294) = v162;
        HIWORD(v294) = v121;
        LOWORD(v295) = v4;
        HIWORD(v295) = v161;
        v289 = v294;
        LODWORD(v290) = v295;
        if (_So9NSDecimala__exponent_getter(&v289) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v289 = v294;
            LODWORD(v290) = v295;
            v219 = _So9NSDecimala__exponent_getter(&v289);
            _So9NSDecimala__exponent_setter((v219 - 1), &v294);
            v289 = v294;
            LODWORD(v290) = v295;
          }

          while (_So9NSDecimala__exponent_getter(&v289) > 0);
        }

        v289 = v294;
        LODWORD(v290) = v295;
        if (!_So9NSDecimala__exponent_getter(&v289))
        {
          _So9NSDecimala__exponent_setter(1, &v294);
        }

        v289 = v294;
        LODWORD(v290) = v295;
        if (_So9NSDecimala__length_getter(&v289))
        {
          while (1)
          {
            v289 = v294;
            LODWORD(v290) = v295;
            if (!_So9NSDecimala__exponent_getter(&v289))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v289 = v294;
            LODWORD(v290) = v295;
            v220 = _So9NSDecimala__exponent_getter(&v289);
            _So9NSDecimala__exponent_setter((v220 + 1), &v294);
            v221 = WORD3(v294);
            v263 = v294;
            v258 = WORD2(v294);
            v255 = WORD4(v294);
            v252 = WORD5(v294);
            v250 = WORD6(v294);
            v222 = HIWORD(v295);
            v246 = HIWORD(v294);
            v248 = v295;
            NSDecimal.asVariableLengthInteger()(v294 | (WORD2(v294) << 32) | (WORD3(v294) << 48), WORD4(v294) | (WORD5(v294) << 16) | (WORD6(v294) << 32) | (HIWORD(v294) << 48), v295 | (HIWORD(v295) << 16));
            v224 = v223;
            v225 = *(v223 + 16);
            v226._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v225);
            *&v289 = v226;
            if (v225)
            {
              break;
            }

            v231 = 48;
LABEL_193:
            for (i = *(v226._rawValue + 2); i; i = *(v289 + 16))
            {
              if (*(v226._rawValue + i + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v289 + 16) - 1);
              }

              v226._rawValue = v289;
            }

            LODWORD(v289) = v263;
            WORD2(v289) = v258;
            WORD3(v289) = v221;
            WORD4(v289) = v255;
            WORD5(v289) = v252;
            WORD6(v289) = v250;
            HIWORD(v289) = v246;
            LOWORD(v290) = v248;
            WORD1(v290) = v222;
            NSDecimal.copyVariableLengthInteger(_:)(v226);
            if (v233)
            {
              goto LABEL_233;
            }

            v234 = *(v226._rawValue + 2);

            if (HIDWORD(v234))
            {
              goto LABEL_228;
            }

            _So9NSDecimala__length_setter(v234, &v289);
            v294 = v289;
            v295 = v290;
            *&v280 = v231;
            v235 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v235);

            v280 = v294;
            v281 = v295;
            if (!_So9NSDecimala__length_getter(&v280))
            {
              goto LABEL_208;
            }
          }

          v227 = 0;
          v228 = v225 + 15;
          while ((v228 - 15) <= *(v224 + 16))
          {
            v229 = *(v224 + 2 * v228);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v226._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v226._rawValue);
            }

            if ((v228 - 15) > *(v226._rawValue + 2))
            {
              goto LABEL_217;
            }

            v230 = v229 | (v227 << 16);
            *(v226._rawValue + v228) = v230 / 0xA;
            v227 = v230 % 0xA;
            if (--v228 == 15)
            {

              *&v289 = v226;
              v231 = v227 | 0x30;
              goto LABEL_193;
            }
          }

          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_233:

          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

LABEL_208:
        v289 = v294;
        LODWORD(v290) = v295;
        if (_So9NSDecimala__exponent_getter(&v289) <= 0)
        {
          while (1)
          {
            v289 = v294;
            LODWORD(v290) = v295;
            if (!_So9NSDecimala__exponent_getter(&v289))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v289 = v294;
            LODWORD(v290) = v295;
            v236 = _So9NSDecimala__exponent_getter(&v289);
            _So9NSDecimala__exponent_setter((v236 + 1), &v294);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v289 = v294;
        LODWORD(v290) = v295;
        if (_So9NSDecimala__isNegative_getter(&v289))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v289 = v275;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        String.init<A>(_:)();
      }
    }

    else
    {
    }

LABEL_207:
    BigString.init(_:)();
    result = AttributedString.init(_:attributes:)(&v294, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v289);
    *a4 = v289;
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;

  BigString.init(_:)();
  v13 = MEMORY[0x1E69E7CC8];
  AttributedString.init(_:attributes:)(v293, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v294);
  v264 = v294;
  v245 = *(v12 + 16);
  if (v245)
  {
    v14 = 0;
    v244 = v12 + 32;
    v242 = v11;
    v243 = v12;
    v241 = v10;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_218;
      }

      v247 = v14;
      v15 = *(v244 + 24 * v14);
      *&v289 = v10;
      *(&v289 + 1) = v11;
      lazy protocol witness table accessor for type String and conformance String();

      v16 = String.Index.init<A>(utf16Offset:in:)();
      *&v289 = v10;
      *(&v289 + 1) = v11;

      v17 = String.Index.init<A>(utf16Offset:in:)();
      if (v17 >> 14 < v16 >> 14)
      {
        goto LABEL_219;
      }

      v18 = v17;

      _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v16, v18, v264, &v289);
      if (*(&v290 + 1) == 2)
      {
        goto LABEL_227;
      }

      v287 = v13;
      v288 = MEMORY[0x1E69E7CD0];
      v253 = v289;
      v256 = v290;
      v249 = v292;
      v251 = v291;
      if (v15 > 5)
      {
        if (v15 > 7)
        {
          if (v15 == 8)
          {
            v19 = 4;
          }

          else
          {
            if (v15 != 10)
            {
              goto LABEL_94;
            }

            v19 = 1;
          }
        }

        else if (v15 == 6)
        {
          v19 = 0;
        }

        else
        {
          v19 = 3;
        }

LABEL_60:
        v282 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
        v283 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
        LOBYTE(v280) = v19;
        v284 = xmmword_1812187D0;
        v285 = 1;
        v286 = 0;
        outlined init with copy of AttributedString._AttributeValue?(&v280, &v275);
        if (*(&v276 + 1))
        {
          v272 = v277;
          v273 = v278;
          v274 = v279;
          v270 = v275;
          v271 = v276;
          outlined init with copy of AttributedString._AttributeValue(&v270, &v265);
          v72 = v287;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
          v76 = *(v72 + 16);
          v77 = (v75 & 1) == 0;
          v26 = __OFADD__(v76, v77);
          v78 = v76 + v77;
          if (v26)
          {
            goto LABEL_224;
          }

          v79 = v75;
          if (*(v72 + 24) >= v78)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v80 = v72;
              goto LABEL_71;
            }

            v240 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v98 = static _DictionaryStorage.copy(original:)();
            v80 = v98;
            if (*(v72 + 16))
            {
              v99 = (v98 + 64);
              v100 = v72 + 64;
              v101 = ((1 << *(v80 + 32)) + 63) >> 6;
              if (v80 != v72 || v99 >= v100 + 8 * v101)
              {
                memmove(v99, (v72 + 64), 8 * v101);
              }

              v102 = 0;
              *(v80 + 16) = *(v72 + 16);
              v103 = 1 << *(v72 + 32);
              if (v103 < 64)
              {
                v104 = ~(-1 << v103);
              }

              else
              {
                v104 = -1;
              }

              v105 = v104 & *(v72 + 64);
              v106 = (v103 + 63) >> 6;
              if (v105)
              {
                do
                {
                  v107 = __clz(__rbit64(v105));
                  v260 = (v105 - 1) & v105;
LABEL_88:
                  v110 = v107 | (v102 << 6);
                  v111 = 16 * v110;
                  v112 = (*(v72 + 48) + 16 * v110);
                  v114 = *v112;
                  v113 = v112[1];
                  v115 = 72 * v110;
                  outlined init with copy of AttributedString._AttributeValue(*(v72 + 56) + 72 * v110, &v275);
                  v116 = (*(v80 + 48) + v111);
                  *v116 = v114;
                  v116[1] = v113;
                  v117 = *(v80 + 56) + v115;
                  *v117 = v275;
                  v118 = v276;
                  v119 = v277;
                  v120 = v278;
                  *(v117 + 64) = v279;
                  *(v117 + 32) = v119;
                  *(v117 + 48) = v120;
                  *(v117 + 16) = v118;

                  v105 = v260;
                }

                while (v260);
              }

              v108 = v102;
              while (1)
              {
                v102 = v108 + 1;
                if (__OFADD__(v108, 1))
                {
                  goto LABEL_226;
                }

                if (v102 >= v106)
                {
                  break;
                }

                v109 = *(v100 + 8 * v102);
                ++v108;
                if (v109)
                {
                  v107 = __clz(__rbit64(v109));
                  v260 = (v109 - 1) & v109;
                  goto LABEL_88;
                }
              }
            }

            v74 = v240;
            if ((v79 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_72:
            v90 = *(v80 + 56) + 72 * v74;
            v92 = *(v90 + 16);
            v91 = *(v90 + 32);
            v93 = *(v90 + 48);
            v279 = *(v90 + 64);
            v278 = v93;
            v275 = *v90;
            v276 = v92;
            v277 = v91;
            v94 = *(v80 + 56) + 72 * v74;
            v95 = v266;
            v96 = v267;
            v97 = v268;
            *(v94 + 64) = v269;
            *(v94 + 32) = v96;
            *(v94 + 48) = v97;
            *(v94 + 16) = v95;
            *v94 = v265;
            outlined destroy of AttributedString._AttributeValue(&v270);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, isUniquelyReferenced_nonNull_native);
            v80 = v72;
            v74 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
            if ((v79 & 1) != (v81 & 1))
            {
              goto LABEL_232;
            }

LABEL_71:
            if (v79)
            {
              goto LABEL_72;
            }

LABEL_91:
            specialized _NativeDictionary._insert(at:key:value:)(v74, 0xD00000000000001DLL, 0x800000018147EC70, &v265, v80);
            outlined destroy of AttributedString._AttributeValue(&v270);
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0;
          }

LABEL_92:
          v287 = v80;
        }

        else
        {
          outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v82 = v287;
          v83 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
          if (v84)
          {
            v85 = v83;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v80 = v82;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v172 = static _DictionaryStorage.copy(original:)();
              v80 = v172;
              if (*(v82 + 16))
              {
                v173 = (v172 + 64);
                v174 = v82 + 64;
                v175 = ((1 << *(v80 + 32)) + 63) >> 6;
                if (v80 != v82 || v173 >= v174 + 8 * v175)
                {
                  memmove(v173, (v82 + 64), 8 * v175);
                }

                v176 = 0;
                *(v80 + 16) = *(v82 + 16);
                v177 = 1 << *(v82 + 32);
                if (v177 < 64)
                {
                  v178 = ~(-1 << v177);
                }

                else
                {
                  v178 = -1;
                }

                v179 = v178 & *(v82 + 64);
                v180 = (v177 + 63) >> 6;
                if (v179)
                {
                  do
                  {
                    v181 = __clz(__rbit64(v179));
                    v261 = (v179 - 1) & v179;
LABEL_152:
                    v184 = v181 | (v176 << 6);
                    v185 = 16 * v184;
                    v186 = (*(v82 + 48) + 16 * v184);
                    v188 = *v186;
                    v187 = v186[1];
                    v189 = 72 * v184;
                    outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * v184, &v275);
                    v190 = (*(v80 + 48) + v185);
                    *v190 = v188;
                    v190[1] = v187;
                    v191 = *(v80 + 56) + v189;
                    *v191 = v275;
                    v192 = v276;
                    v193 = v277;
                    v194 = v278;
                    *(v191 + 64) = v279;
                    *(v191 + 32) = v193;
                    *(v191 + 48) = v194;
                    *(v191 + 16) = v192;

                    v179 = v261;
                  }

                  while (v261);
                }

                v182 = v176;
                while (1)
                {
                  v176 = v182 + 1;
                  if (__OFADD__(v182, 1))
                  {
                    goto LABEL_229;
                  }

                  if (v176 >= v180)
                  {
                    break;
                  }

                  v183 = *(v174 + 8 * v176);
                  ++v182;
                  if (v183)
                  {
                    v181 = __clz(__rbit64(v183));
                    v261 = (v183 - 1) & v183;
                    goto LABEL_152;
                  }
                }
              }
            }

            v86 = *(v80 + 56) + 72 * v85;
            v275 = *v86;
            v88 = *(v86 + 32);
            v87 = *(v86 + 48);
            v89 = *(v86 + 64);
            v276 = *(v86 + 16);
            v277 = v88;
            v279 = v89;
            v278 = v87;
            specialized _NativeDictionary._delete(at:)(v85, v80);
            goto LABEL_92;
          }

          v279 = 0;
          v277 = 0u;
          v278 = 0u;
          v275 = 0u;
          v276 = 0u;
        }

        AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001DLL, 0x800000018147EC70, &v275, &v280);
        outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        goto LABEL_94;
      }

      if (v15)
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_94;
          }

          v19 = 2;
          goto LABEL_60;
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      v282 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
      v283 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
      LOBYTE(v280) = v20;
      v284 = xmmword_1812187D0;
      v285 = 1;
      v286 = 0;
      outlined init with copy of AttributedString._AttributeValue?(&v280, &v275);
      if (*(&v276 + 1))
      {
        break;
      }

      outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
      if (v32)
      {
        v33 = v31;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = v13;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v195 = static _DictionaryStorage.copy(original:)();
          v29 = v195;
          v196 = *(v13 + 16);
          if (v196)
          {
            v197 = (v195 + 64);
            v198 = ((1 << *(v29 + 32)) + 63) >> 6;
            if (v29 != v13 || v197 >= v13 + 8 * v198 + 64)
            {
              memmove(v197, (v13 + 64), 8 * v198);
            }

            v199 = 0;
            *(v29 + 16) = v196;
            v200 = 1 << *(v13 + 32);
            v201 = *(v13 + 64);
            if (v200 < 64)
            {
              v202 = ~(-1 << v200);
            }

            else
            {
              v202 = -1;
            }

            v203 = v202 & v201;
            v204 = (v200 + 63) >> 6;
            if ((v202 & v201) != 0)
            {
              do
              {
                v205 = __clz(__rbit64(v203));
                v203 &= v203 - 1;
                v206 = v205 | (v199 << 6);
LABEL_168:
                v209 = 16 * v206;
                v210 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v206);
                v211 = v210[1];
                v262 = *v210;
                v212 = 72 * v206;
                outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v206, &v275);
                v213 = (*(v29 + 48) + v209);
                *v213 = v262;
                v213[1] = v211;
                v214 = *(v29 + 56) + v212;
                *v214 = v275;
                v215 = v276;
                v216 = v277;
                v217 = v278;
                *(v214 + 64) = v279;
                *(v214 + 32) = v216;
                *(v214 + 48) = v217;
                *(v214 + 16) = v215;
              }

              while (v203);
            }

            while (1)
            {
              v207 = v199 + 1;
              if (__OFADD__(v199, 1))
              {
                goto LABEL_231;
              }

              if (v207 >= v204)
              {
                break;
              }

              v208 = *(MEMORY[0x1E69E7CC8] + 8 * v207 + 64);
              ++v199;
              if (v208)
              {
                v203 = (v208 - 1) & v208;
                v206 = __clz(__rbit64(v208)) | (v207 << 6);
                v199 = v207;
                goto LABEL_168;
              }
            }
          }
        }

        v34 = *(v29 + 56) + 72 * v33;
        v275 = *v34;
        v36 = *(v34 + 32);
        v35 = *(v34 + 48);
        v37 = *(v34 + 64);
        v276 = *(v34 + 16);
        v277 = v36;
        v279 = v37;
        v278 = v35;
        specialized _NativeDictionary._delete(at:)(v33, v29);
        goto LABEL_56;
      }

      v279 = 0;
      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v276 = 0u;
LABEL_57:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001BLL, 0x800000018147EC90, &v275, &v280);
      outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v71 = v15 - 2;
      if (v15 - 2) < 9 && ((0x171u >> v71))
      {
        v19 = byte_181226FBE[v71];
        goto LABEL_60;
      }

LABEL_94:
      v121 = v287;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = *(v264 + 40);
        v319 = *(v264 + 24);
        v320 = v122;
        v321 = *(v264 + 56);
        v123 = *(v264 + 72);
        v124 = *(v264 + 80);
        v125 = *(v264 + 88);
        v126 = *(v264 + 96);
        type metadata accessor for AttributedString.Guts();
        v127 = swift_allocObject();
        v128 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v319, &v280);
        v129 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v129);
        if (v123)
        {
          v130 = v125 == 0;
        }

        else
        {
          v130 = 1;
        }

        v131 = v130;
        if (v131 != v128)
        {
          goto LABEL_222;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v127 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v132 = v320;
        *(v127 + 24) = v319;
        *(v127 + 40) = v132;
        *(v127 + 56) = v321;
        *(v127 + 72) = v123;
        *(v127 + 80) = v124;
        *(v127 + 88) = v125;
        *(v127 + 96) = v126;
        *(v127 + 104) = MEMORY[0x1E69E7CC0];

        v264 = v127;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v264 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v133 = *(v264 + 24);
      v134 = *(v264 + 56);
      v317 = *(v264 + 40);
      v318 = v134;
      v316 = v133;
      BigString.startIndex.getter();
      BigString.endIndex.getter();
      v309 = v253;
      v310 = v256;
      v312 = v249;
      v311 = v251;
      v135 = *(v264 + 40);
      v313 = *(v264 + 24);
      v314 = v135;
      v315 = *(v264 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v294);
      LOWORD(v4) = v296;
      if (one-time initialization token for currentIdentity != -1)
      {
        swift_once();
      }

      v136 = static AttributedString.currentIdentity;
      os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
      v137 = *(v136 + 16);
      v26 = __OFADD__(v137, 1);
      v138 = v137 + 1;
      if (v26)
      {
        goto LABEL_220;
      }

      *(v136 + 16) = v138;
      os_unfair_lock_unlock((v136 + 24));
      BigString.init()();
      *&v280 = 0;
      MEMORY[0x1865D26B0](&v280, 8);
      v139 = v280;
      type metadata accessor for AttributedString.Guts();
      v140 = swift_allocObject();
      if ((BigString.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_221;
      }

      *(v140 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v141 = v298;
      *(v140 + 24) = v297;
      *(v140 + 40) = v141;
      *(v140 + 56) = v299;
      *(v140 + 72) = 0;
      *(v140 + 80) = 0;
      *(v140 + 88) = 0;
      *(v140 + 96) = v139;
      *(v140 + 104) = MEMORY[0x1E69E7CC0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v238 = v4;
        v142 = *(v264 + 40);
        v306 = *(v264 + 24);
        v307 = v142;
        v308 = *(v264 + 56);
        v144 = *(v264 + 72);
        v143 = *(v264 + 80);
        v145 = *(v264 + 88);
        v4 = *(v264 + 96);
        v146 = swift_allocObject();
        v147 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v306, &v280);
        v148 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v148);
        if (v144)
        {
          v149 = v145 == 0;
        }

        else
        {
          v149 = 1;
        }

        v150 = v149;
        if (v150 != v147)
        {
          goto LABEL_223;
        }

        *(v146 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v151 = v307;
        *(v146 + 24) = v306;
        *(v146 + 40) = v151;
        *(v146 + 56) = v308;
        *(v146 + 72) = v144;
        *(v146 + 80) = v143;
        *(v146 + 88) = v145;
        *(v146 + 96) = v4;
        *(v146 + 104) = MEMORY[0x1E69E7CC0];

        v264 = v146;
        LOWORD(v4) = v238;
      }

      LOWORD(v152) = v264;
      v153 = *(v264 + 40);
      v303 = *(v264 + 24);
      v304 = v153;
      v305 = *(v264 + 56);
      swift_unknownObjectRetain();
      v154 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v155 = *(v264 + 40);
      v300 = *(v264 + 24);
      v301 = v155;
      v302 = *(v264 + 56);
      swift_unknownObjectRetain();
      v156 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v157 = v154 >> 11;
      v158 = v156 >> 11;

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v264, v157, v158, v121, 0);

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v121))
      {
        v257 = v157;
        v159 = 1 << *(v121 + 32);
        if (v159 < 64)
        {
          v160 = ~(-1 << v159);
        }

        else
        {
          v160 = -1;
        }

        v5 = v160 & *(v121 + 64);
        v161 = (v159 + 63) >> 6;

        v6 = 0;
        v162 = MEMORY[0x1E69E7CC0];
        if (!v5)
        {
          goto LABEL_127;
        }

        do
        {
LABEL_125:
          while (1)
          {
            v163 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
            outlined init with copy of AttributedString._AttributeValue(*(v121 + 56) + 72 * (v163 | (v6 << 6)), &v280);
            v152 = *(&v284 + 1);
            v4 = v284;
            outlined copy of AttributedString.AttributeRunBoundaries?(v284, *(&v284 + 1));
            outlined destroy of AttributedString._AttributeValue(&v280);
            if (v152 != 1)
            {
              break;
            }

            if (!v5)
            {
              goto LABEL_127;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v162 + 2) + 1, 1, v162);
          }

          v166 = *(v162 + 2);
          v165 = *(v162 + 3);
          v167 = v166 + 1;
          if (v166 >= v165 >> 1)
          {
            v254 = v166 + 1;
            v169 = v162;
            v170 = *(v162 + 2);
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v169);
            v167 = v254;
            v166 = v170;
            v162 = v171;
          }

          *(v162 + 2) = v167;
          v168 = &v162[16 * v166];
          *(v168 + 4) = v4;
          *(v168 + 5) = v152;
        }

        while (v5);
LABEL_127:
        while (1)
        {
          v164 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v164 >= v161)
          {

            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v257, v158, 0, v162);

            goto LABEL_5;
          }

          v5 = *(v121 + 64 + 8 * v164);
          ++v6;
          if (v5)
          {
            v6 = v164;
            goto LABEL_125;
          }
        }

        __break(1u);
        goto LABEL_206;
      }

LABEL_5:
      v12 = v243;
      v14 = v247 + 1;

      v10 = v241;
      v11 = v242;
      v13 = MEMORY[0x1E69E7CC8];
      if (v247 + 1 == v245)
      {
        goto LABEL_171;
      }
    }

    v272 = v277;
    v273 = v278;
    v274 = v279;
    v270 = v275;
    v271 = v276;
    outlined init with copy of AttributedString._AttributeValue(&v270, &v265);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
    v24 = *(v13 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_225;
    }

    v28 = v23;
    if (*(v13 + 24) >= v27)
    {
      if ((v21 & 1) == 0)
      {
        v239 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v46 = static _DictionaryStorage.copy(original:)();
        v29 = v46;
        v47 = *(v13 + 16);
        if (v47)
        {
          v48 = (v46 + 64);
          v49 = ((1 << *(v29 + 32)) + 63) >> 6;
          if (v29 != v13 || v48 >= v13 + 8 * v49 + 64)
          {
            memmove(v48, (v13 + 64), 8 * v49);
          }

          v50 = 0;
          *(v29 + 16) = v47;
          v51 = 1 << *(v13 + 32);
          v52 = *(v13 + 64);
          if (v51 < 64)
          {
            v53 = ~(-1 << v51);
          }

          else
          {
            v53 = -1;
          }

          v54 = v53 & v52;
          v55 = (v51 + 63) >> 6;
          if ((v53 & v52) != 0)
          {
            do
            {
              v56 = __clz(__rbit64(v54));
              v54 &= v54 - 1;
              v57 = v56 | (v50 << 6);
              v58 = MEMORY[0x1E69E7CC8];
LABEL_52:
              v61 = 16 * v57;
              v62 = *(v58 + 56);
              v63 = (*(v58 + 48) + 16 * v57);
              v64 = v63[1];
              v259 = *v63;
              v65 = 72 * v57;
              outlined init with copy of AttributedString._AttributeValue(v62 + 72 * v57, &v275);
              v66 = (*(v29 + 48) + v61);
              *v66 = v259;
              v66[1] = v64;
              v67 = *(v29 + 56) + v65;
              *v67 = v275;
              v68 = v276;
              v69 = v277;
              v70 = v278;
              *(v67 + 64) = v279;
              *(v67 + 32) = v69;
              *(v67 + 48) = v70;
              *(v67 + 16) = v68;
            }

            while (v54);
          }

          v58 = MEMORY[0x1E69E7CC8];
          while (1)
          {
            v59 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_230;
            }

            if (v59 >= v55)
            {
              break;
            }

            v60 = *(MEMORY[0x1E69E7CC8] + 8 * v59 + 64);
            ++v50;
            if (v60)
            {
              v54 = (v60 - 1) & v60;
              v57 = __clz(__rbit64(v60)) | (v59 << 6);
              v50 = v59;
              goto LABEL_52;
            }
          }
        }

        v22 = v239;
        if (v28)
        {
          goto LABEL_36;
        }

        goto LABEL_55;
      }

      v29 = v13;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v21);
      v29 = v13;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_232;
      }
    }

    if (v28)
    {
LABEL_36:
      v38 = *(v29 + 56) + 72 * v22;
      v40 = *(v38 + 16);
      v39 = *(v38 + 32);
      v41 = *(v38 + 48);
      v279 = *(v38 + 64);
      v278 = v41;
      v275 = *v38;
      v276 = v40;
      v277 = v39;
      v42 = *(v29 + 56) + 72 * v22;
      v43 = v266;
      v44 = v267;
      v45 = v268;
      *(v42 + 64) = v269;
      *(v42 + 32) = v44;
      *(v42 + 48) = v45;
      *(v42 + 16) = v43;
      *v42 = v265;
      outlined destroy of AttributedString._AttributeValue(&v270);
LABEL_56:
      v287 = v29;
      goto LABEL_57;
    }

LABEL_55:
    specialized _NativeDictionary._insert(at:key:value:)(v22, 0xD00000000000001BLL, 0x800000018147EC90, &v265, v29);
    outlined destroy of AttributedString._AttributeValue(&v270);
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0;
    goto LABEL_56;
  }

LABEL_171:

  *a4 = v264;
  return result;
}

uint64_t ICUNumberFormatterBase.attributedFormatPositions(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) > 1u)
  {
    v6 = *(v3 + 16);
    v7 = a3;
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v6, a1, a2, v7);
  }

  else if (BYTE4(a3))
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
  }

  else
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
  }

  v8 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
  if (v9)
  {
    v18 = v8;
    type metadata accessor for ICU.FieldPositer();
    inited = swift_initStackObject();
    result = ufieldpositer_open();
    if (result)
    {
      *(inited + 16) = result;
      unumf_resultGetAllFieldPositions();
      v12 = ufieldpositer_next();
      if ((v12 & 0x80000000) == 0)
      {
        v13 = v12;
        v14 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
          }

          v16 = *(v14 + 2);
          v15 = *(v14 + 3);
          if (v16 >= v15 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
          }

          *(v14 + 2) = v16 + 1;
          v17 = &v14[24 * v16];
          *(v17 + 8) = v13;
          *(v17 + 5) = 0;
          *(v17 + 6) = 0;
          v13 = ufieldpositer_next();
        }

        while ((v13 & 0x80000000) == 0);
      }

      swift_setDeallocating();
      ufieldpositer_close();

      return v18;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ICUNumberFormatterBase.FormatResult.init(formatter:value:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = unumf_openResult();
  if (!v8)
  {
LABEL_14:
    __break(1u);
  }

  *(v4 + 16) = v8;
  v18[0] = a2;
  v18[1] = a3;
  v19 = a4;
  memset(v20, 0, sizeof(v20));
  v9._rawValue = v18;
  v10 = __NSDecimalString(_:_:)(v9, v20);
  v12 = v11;
  outlined destroy of TermOfAddress?(v20, &_sypSgMd);
  if ((v12 & 0x1000000000000000) != 0)
  {
    v10 = static String._copying(_:)();
    v15 = v14;

    v12 = v15;
    if ((v15 & 0x2000000000000000) == 0)
    {
LABEL_4:
      if ((v10 & 0x1000000000000000) != 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        _StringObject.sharedUTF8.getter();
        if (v17 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v13 = v17;
      }

      if (v13 <= 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else if ((v12 & 0x2000000000000000) == 0)
  {
    goto LABEL_4;
  }

  *&v20[0] = v10;
  *(&v20[0] + 1) = v12 & 0xFFFFFFFFFFFFFFLL;
LABEL_10:
  unumf_formatDecimal();

  return v4;
}

uint64_t ICUNumberFormatterBase.FormatResult.init(formatter:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = unumf_openResult();
  if (!v6)
  {
LABEL_13:
    __break(1u);
  }

  *(v3 + 16) = v6;
  if ((a3 & 0x1000000000000000) != 0)
  {
    a2 = static String._copying(_:)();
    v9 = v8;

    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_4:
      if ((a2 & 0x1000000000000000) != 0)
      {
        v7 = a2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        _StringObject.sharedUTF8.getter();
        if (v11 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

        v7 = v11;
      }

      if (v7 <= 0x7FFFFFFF)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 0x2000000000000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  unumf_formatDecimal();

  return v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUCurrencyNumberFormatter.Signature()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ICUCurrencyNumberFormatter.Signature()
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUCurrencyNumberFormatter.Signature()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ICUCurrencyNumberFormatter.Signature(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t ICUByteCountNumberFormatter.attributedFormat(_:unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = ICUNumberFormatterBase.attributedFormatPositions(_:)(a1, a2, a3 & 0xFFFFFFFFFFLL);
  if (!v9)
  {
    if (BYTE4(v5) <= 1u)
    {
      if (BYTE4(v5))
      {
        Double.description.getter();
      }

      else
      {
        *&v372 = v7;
        dispatch thunk of CustomStringConvertible.description.getter();
      }

      goto LABEL_261;
    }

    if (BYTE4(v5) == 2)
    {
      *&v372 = v7;
      v205 = HIDWORD(v7);
      v15 = HIWORD(v7);
      v206 = v6 >> 16;
      *(&v372 + 1) = v6;
      v211 = HIDWORD(v6);
      v207 = HIWORD(v6);
      v210 = v5 >> 16;
      v373 = v5;
      if (!_So9NSDecimala__length_getter(&v372))
      {
LABEL_260:
        LODWORD(v372) = v7;
        WORD2(v372) = v205;
        WORD3(v372) = v15;
        WORD4(v372) = v6;
        WORD5(v372) = v206;
        WORD6(v372) = v211;
        HIWORD(v372) = v207;
        LOWORD(v373) = v5;
        HIWORD(v373) = v210;
        if (_So9NSDecimala__isNegative_getter(&v372))
        {
          goto LABEL_261;
        }
      }

      LODWORD(v372) = v7;
      WORD2(v372) = v205;
      WORD3(v372) = v15;
      WORD4(v372) = v6;
      WORD5(v372) = v206;
      WORD6(v372) = v211;
      HIWORD(v372) = v207;
      LOWORD(v373) = v5;
      HIWORD(v373) = v210;
      if (_So9NSDecimala__length_getter(&v372))
      {
        *&v353 = 0;
        *(&v353 + 1) = 0xE000000000000000;
        LODWORD(v372) = v7;
        WORD2(v372) = v205;
        WORD3(v372) = v15;
        WORD4(v372) = v6;
        WORD5(v372) = v206;
        WORD6(v372) = v211;
        HIWORD(v372) = v207;
        LOWORD(v373) = v5;
        HIWORD(v373) = v210;
        v367 = v372;
        LODWORD(v368) = v373;
        if (_So9NSDecimala__exponent_getter(&v367) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v367 = v372;
            LODWORD(v368) = v373;
            v292 = _So9NSDecimala__exponent_getter(&v367);
            _So9NSDecimala__exponent_setter((v292 - 1), &v372);
            v367 = v372;
            LODWORD(v368) = v373;
          }

          while (_So9NSDecimala__exponent_getter(&v367) > 0);
        }

        v367 = v372;
        LODWORD(v368) = v373;
        if (!_So9NSDecimala__exponent_getter(&v367))
        {
          _So9NSDecimala__exponent_setter(1, &v372);
        }

        v367 = v372;
        LODWORD(v368) = v373;
        if (_So9NSDecimala__length_getter(&v367))
        {
          while (1)
          {
            v367 = v372;
            LODWORD(v368) = v373;
            if (!_So9NSDecimala__exponent_getter(&v367))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v367 = v372;
            LODWORD(v368) = v373;
            v293 = _So9NSDecimala__exponent_getter(&v367);
            _So9NSDecimala__exponent_setter((v293 + 1), &v372);
            v294 = WORD3(v372);
            v332 = WORD2(v372);
            v335 = v372;
            v328 = WORD4(v372);
            v325 = WORD5(v372);
            v323 = WORD6(v372);
            v295 = HIWORD(v373);
            v319 = HIWORD(v372);
            v321 = v373;
            NSDecimal.asVariableLengthInteger()(v372 | (WORD2(v372) << 32) | (WORD3(v372) << 48), WORD4(v372) | (WORD5(v372) << 16) | (WORD6(v372) << 32) | (HIWORD(v372) << 48), v373 | (HIWORD(v373) << 16));
            v297 = v296;
            v298 = *(v296 + 16);
            v299._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v298);
            *&v367 = v299;
            if (v298)
            {
              break;
            }

            v304 = 48;
LABEL_247:
            for (i = *(v299._rawValue + 2); i; i = *(v367 + 16))
            {
              if (*(v299._rawValue + i + 15))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v367 + 16) - 1);
              }

              v299._rawValue = v367;
            }

            LODWORD(v367) = v335;
            WORD2(v367) = v332;
            WORD3(v367) = v294;
            WORD4(v367) = v328;
            WORD5(v367) = v325;
            WORD6(v367) = v323;
            HIWORD(v367) = v319;
            LOWORD(v368) = v321;
            WORD1(v368) = v295;
            NSDecimal.copyVariableLengthInteger(_:)(v299);
            if (v306)
            {
              goto LABEL_290;
            }

            v307 = *(v299._rawValue + 2);

            if (HIDWORD(v307))
            {
              goto LABEL_284;
            }

            _So9NSDecimala__length_setter(v307, &v367);
            v372 = v367;
            v373 = v368;
            *&v358 = v304;
            v308 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v308);

            v358 = v372;
            v359 = v373;
            if (!_So9NSDecimala__length_getter(&v358))
            {
              goto LABEL_262;
            }
          }

          v300 = 0;
          v301 = v298 + 15;
          while ((v301 - 15) <= *(v297 + 16))
          {
            v302 = *(v297 + 2 * v301);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v299._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v299._rawValue);
            }

            if ((v301 - 15) > *(v299._rawValue + 2))
            {
              goto LABEL_271;
            }

            v303 = v302 | (v300 << 16);
            *(v299._rawValue + v301) = v303 / 0xA;
            v300 = v303 % 0xA;
            if (--v301 == 15)
            {

              *&v367 = v299;
              v304 = v300 | 0x30;
              goto LABEL_247;
            }
          }

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
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_290:

          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

LABEL_262:
        v367 = v372;
        LODWORD(v368) = v373;
        if (_So9NSDecimala__exponent_getter(&v367) <= 0)
        {
          while (1)
          {
            v367 = v372;
            LODWORD(v368) = v373;
            if (!_So9NSDecimala__exponent_getter(&v367))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v367 = v372;
            LODWORD(v368) = v373;
            v309 = _So9NSDecimala__exponent_getter(&v367);
            _So9NSDecimala__exponent_setter((v309 + 1), &v372);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v367 = v372;
        LODWORD(v368) = v373;
        if (_So9NSDecimala__isNegative_getter(&v367))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v367 = v353;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        String.init<A>(_:)();
      }
    }

    else
    {
    }

LABEL_261:
    BigString.init(_:)();
    result = AttributedString.init(_:attributes:)(&v372, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v367);
    *a5 = v367;
    return result;
  }

  v11 = v8;
  v12 = v10;
  v13 = v9;

  v315 = v11;
  v317 = v13;
  BigString.init(_:)();
  v14 = MEMORY[0x1E69E7CC8];
  AttributedString.init(_:attributes:)(v371, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v372);
  v15 = v372;
  v314 = *(v12 + 16);
  if (v314)
  {
    v16 = 0;
    v313 = v12 + 32;
    v312 = v12;
    while (1)
    {
      if (v16 >= *(v12 + 16))
      {
        goto LABEL_272;
      }

      v333 = v15;
      v318 = v16;
      v17 = *(v313 + 24 * v16);
      *&v367 = v315;
      *(&v367 + 1) = v317;
      lazy protocol witness table accessor for type String and conformance String();

      v18 = String.Index.init<A>(utf16Offset:in:)();
      *&v367 = v315;
      *(&v367 + 1) = v317;

      v19 = String.Index.init<A>(utf16Offset:in:)();
      if (v19 >> 14 < v18 >> 14)
      {
        goto LABEL_273;
      }

      v20 = v19;

      _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v18, v20, v15, &v367);
      if (*(&v368 + 1) == 2)
      {
        goto LABEL_282;
      }

      v365 = v14;
      v366 = MEMORY[0x1E69E7CD0];
      v324 = v367;
      v326 = v368;
      v320 = v370;
      v322 = v369;
      if (v17 > 5)
      {
        if (v17 > 7)
        {
          if (v17 == 8)
          {
            v21 = 4;
          }

          else
          {
            if (v17 != 10)
            {
              goto LABEL_94;
            }

            v21 = 1;
          }
        }

        else if (v17 == 6)
        {
          v21 = 0;
        }

        else
        {
          v21 = 3;
        }

LABEL_60:
        v360 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
        v361 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
        LOBYTE(v358) = v21;
        v362 = xmmword_1812187D0;
        v363 = 1;
        v364 = 0;
        outlined init with copy of AttributedString._AttributeValue?(&v358, &v353);
        if (*(&v354 + 1))
        {
          v350 = v355;
          v351 = v356;
          v352 = v357;
          v348 = v353;
          v349 = v354;
          outlined init with copy of AttributedString._AttributeValue(&v348, &v343);
          v73 = v365;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
          v77 = *(v73 + 16);
          v78 = (v76 & 1) == 0;
          v28 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v28)
          {
            goto LABEL_278;
          }

          v80 = v76;
          if (*(v73 + 24) >= v79)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v81 = v73;
              goto LABEL_71;
            }

            v311 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v99 = static _DictionaryStorage.copy(original:)();
            v81 = v99;
            if (*(v73 + 16))
            {
              v100 = (v99 + 64);
              v101 = v73 + 64;
              v102 = ((1 << *(v81 + 32)) + 63) >> 6;
              if (v81 != v73 || v100 >= v101 + 8 * v102)
              {
                memmove(v100, (v73 + 64), 8 * v102);
              }

              v103 = 0;
              *(v81 + 16) = *(v73 + 16);
              v104 = 1 << *(v73 + 32);
              if (v104 < 64)
              {
                v105 = ~(-1 << v104);
              }

              else
              {
                v105 = -1;
              }

              v106 = v105 & *(v73 + 64);
              v107 = (v104 + 63) >> 6;
              if (v106)
              {
                do
                {
                  v108 = __clz(__rbit64(v106));
                  v337 = (v106 - 1) & v106;
LABEL_88:
                  v111 = v108 | (v103 << 6);
                  v112 = 16 * v111;
                  v113 = (*(v73 + 48) + 16 * v111);
                  v114 = v113[1];
                  v330 = *v113;
                  v115 = 72 * v111;
                  outlined init with copy of AttributedString._AttributeValue(*(v73 + 56) + 72 * v111, &v353);
                  v116 = (*(v81 + 48) + v112);
                  *v116 = v330;
                  v116[1] = v114;
                  v117 = *(v81 + 56) + v115;
                  *v117 = v353;
                  v118 = v354;
                  v119 = v355;
                  v120 = v356;
                  *(v117 + 64) = v357;
                  *(v117 + 32) = v119;
                  *(v117 + 48) = v120;
                  *(v117 + 16) = v118;

                  v15 = v333;
                  v106 = v337;
                }

                while (v337);
              }

              v109 = v103;
              while (1)
              {
                v103 = v109 + 1;
                if (__OFADD__(v109, 1))
                {
                  goto LABEL_281;
                }

                if (v103 >= v107)
                {
                  break;
                }

                v110 = *(v101 + 8 * v103);
                ++v109;
                if (v110)
                {
                  v108 = __clz(__rbit64(v110));
                  v337 = (v110 - 1) & v110;
                  goto LABEL_88;
                }
              }
            }

            v75 = v311;
            if ((v80 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_72:
            v91 = *(v81 + 56) + 72 * v75;
            v93 = *(v91 + 16);
            v92 = *(v91 + 32);
            v94 = *(v91 + 48);
            v357 = *(v91 + 64);
            v356 = v94;
            v353 = *v91;
            v354 = v93;
            v355 = v92;
            v95 = *(v81 + 56) + 72 * v75;
            v96 = v344;
            v97 = v345;
            v98 = v346;
            *(v95 + 64) = v347;
            *(v95 + 32) = v97;
            *(v95 + 48) = v98;
            *(v95 + 16) = v96;
            *v95 = v343;
            outlined destroy of AttributedString._AttributeValue(&v348);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, isUniquelyReferenced_nonNull_native);
            v81 = v73;
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
            if ((v80 & 1) != (v82 & 1))
            {
              goto LABEL_289;
            }

LABEL_71:
            if (v80)
            {
              goto LABEL_72;
            }

LABEL_91:
            specialized _NativeDictionary._insert(at:key:value:)(v75, 0xD00000000000001DLL, 0x800000018147EC70, &v343, v81);
            outlined destroy of AttributedString._AttributeValue(&v348);
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
            v356 = 0u;
            v357 = 0;
          }

LABEL_92:
          v365 = v81;
        }

        else
        {
          outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v83 = v365;
          v84 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147EC70);
          if (v85)
          {
            v86 = v84;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v81 = v83;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v223 = static _DictionaryStorage.copy(original:)();
              v81 = v223;
              if (*(v83 + 16))
              {
                v224 = (v223 + 64);
                v225 = (v83 + 64);
                v226 = ((1 << *(v81 + 32)) + 63) >> 6;
                if (v81 != v83 || v224 >= &v225[8 * v226])
                {
                  memmove(v224, v225, 8 * v226);
                }

                v227 = 0;
                *(v81 + 16) = *(v83 + 16);
                v228 = 1 << *(v83 + 32);
                v229 = *(v83 + 64);
                if (v228 < 64)
                {
                  v230 = ~(-1 << v228);
                }

                else
                {
                  v230 = -1;
                }

                v231 = v230 & v229;
                v232 = (v228 + 63) >> 6;
                if ((v230 & v229) != 0)
                {
                  do
                  {
                    v233 = __clz(__rbit64(v231));
                    v231 &= v231 - 1;
LABEL_188:
                    v236 = v233 | (v227 << 6);
                    v237 = 16 * v236;
                    v238 = (*(v83 + 48) + 16 * v236);
                    v239 = v238[1];
                    v340 = *v238;
                    v240 = 72 * v236;
                    outlined init with copy of AttributedString._AttributeValue(*(v83 + 56) + 72 * v236, &v353);
                    v241 = (*(v81 + 48) + v237);
                    *v241 = v340;
                    v241[1] = v239;
                    v242 = *(v81 + 56) + v240;
                    *v242 = v353;
                    v243 = v354;
                    v244 = v355;
                    v245 = v356;
                    *(v242 + 64) = v357;
                    *(v242 + 32) = v244;
                    *(v242 + 48) = v245;
                    *(v242 + 16) = v243;

                    v15 = v333;
                  }

                  while (v231);
                }

                v234 = v227;
                while (1)
                {
                  v227 = v234 + 1;
                  if (__OFADD__(v234, 1))
                  {
                    goto LABEL_285;
                  }

                  if (v227 >= v232)
                  {
                    break;
                  }

                  v235 = *(v83 + 64 + 8 * v227);
                  ++v234;
                  if (v235)
                  {
                    v233 = __clz(__rbit64(v235));
                    v231 = (v235 - 1) & v235;
                    goto LABEL_188;
                  }
                }
              }
            }

            v87 = *(v81 + 56) + 72 * v86;
            v353 = *v87;
            v89 = *(v87 + 32);
            v88 = *(v87 + 48);
            v90 = *(v87 + 64);
            v354 = *(v87 + 16);
            v355 = v89;
            v357 = v90;
            v356 = v88;
            specialized _NativeDictionary._delete(at:)(v86, v81);
            goto LABEL_92;
          }

          v357 = 0;
          v355 = 0u;
          v356 = 0u;
          v353 = 0u;
          v354 = 0u;
        }

        AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001DLL, 0x800000018147EC70, &v353, &v358);
        outlined destroy of TermOfAddress?(&v358, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        goto LABEL_94;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          if (v17 != 2)
          {
            goto LABEL_94;
          }

          v21 = 2;
          goto LABEL_60;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      v360 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
      v361 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
      LOBYTE(v358) = v22;
      v362 = xmmword_1812187D0;
      v363 = 1;
      v364 = 0;
      outlined init with copy of AttributedString._AttributeValue?(&v358, &v353);
      if (*(&v354 + 1))
      {
        break;
      }

      outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
      if (v34)
      {
        v35 = v33;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v14;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v269 = static _DictionaryStorage.copy(original:)();
          v36 = v269;
          v270 = *(v14 + 16);
          if (v270)
          {
            v271 = (v269 + 64);
            v272 = ((1 << *(v36 + 32)) + 63) >> 6;
            if (v36 != v14 || v271 >= v14 + 8 * v272 + 64)
            {
              memmove(v271, (v14 + 64), 8 * v272);
            }

            v273 = 0;
            *(v36 + 16) = v270;
            v274 = 1 << *(v14 + 32);
            if (v274 < 64)
            {
              v275 = ~(-1 << v274);
            }

            else
            {
              v275 = -1;
            }

            v276 = v275 & *(v14 + 64);
            v277 = (v274 + 63) >> 6;
            if (v276)
            {
              do
              {
                v342 = (v276 - 1) & v276;
                v278 = __clz(__rbit64(v276)) | (v273 << 6);
LABEL_221:
                v281 = 16 * v278;
                v282 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v278);
                v284 = *v282;
                v283 = v282[1];
                v285 = 72 * v278;
                outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v278, &v353);
                v286 = (*(v36 + 48) + v281);
                *v286 = v284;
                v286[1] = v283;
                v287 = *(v36 + 56) + v285;
                *v287 = v353;
                v288 = v354;
                v289 = v355;
                v290 = v356;
                *(v287 + 64) = v357;
                *(v287 + 32) = v289;
                *(v287 + 48) = v290;
                *(v287 + 16) = v288;

                v276 = v342;
              }

              while (v342);
            }

            while (1)
            {
              v279 = v273 + 1;
              if (__OFADD__(v273, 1))
              {
                goto LABEL_288;
              }

              if (v279 >= v277)
              {
                v15 = v333;
                break;
              }

              v280 = *(MEMORY[0x1E69E7CC8] + 8 * v279 + 64);
              ++v273;
              if (v280)
              {
                v342 = (v280 - 1) & v280;
                v278 = __clz(__rbit64(v280)) | (v279 << 6);
                v273 = v279;
                goto LABEL_221;
              }
            }
          }
        }

        v37 = *(v36 + 56) + 72 * v35;
        v353 = *v37;
        v39 = *(v37 + 32);
        v38 = *(v37 + 48);
        v40 = *(v37 + 64);
        v354 = *(v37 + 16);
        v355 = v39;
        v357 = v40;
        v356 = v38;
        specialized _NativeDictionary._delete(at:)(v35, v36);
        v365 = v36;
      }

      else
      {
        v357 = 0;
        v355 = 0u;
        v356 = 0u;
        v353 = 0u;
        v354 = 0u;
      }

LABEL_57:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001BLL, 0x800000018147EC90, &v353, &v358);
      outlined destroy of TermOfAddress?(&v358, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v72 = v17 - 2;
      if (v17 - 2) < 9 && ((0x171u >> v72))
      {
        v21 = byte_181226FBE[v72];
        goto LABEL_60;
      }

LABEL_94:
      AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.init(unumberFormatField:unit:)(v17, a4, &v358);
      v121 = v358;
      if (v358 == 12)
      {
        goto LABEL_129;
      }

      v360 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
      v361 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component();
      LOBYTE(v358) = v121;
      v362 = xmmword_1812187D0;
      v363 = 1;
      v364 = 0;
      outlined init with copy of AttributedString._AttributeValue?(&v358, &v353);
      if (*(&v354 + 1))
      {
        v350 = v355;
        v351 = v356;
        v352 = v357;
        v348 = v353;
        v349 = v354;
        outlined init with copy of AttributedString._AttributeValue(&v348, &v343);
        v122 = v365;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0);
        v126 = *(v122 + 16);
        v127 = (v125 & 1) == 0;
        v28 = __OFADD__(v126, v127);
        v128 = v126 + v127;
        if (v28)
        {
          goto LABEL_279;
        }

        v129 = v125;
        if (*(v122 + 24) >= v128)
        {
          if (v123)
          {
            v130 = v122;
            goto LABEL_106;
          }

          v331 = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v148 = static _DictionaryStorage.copy(original:)();
          v130 = v148;
          if (*(v122 + 16))
          {
            v149 = (v148 + 64);
            v150 = v122 + 64;
            v151 = ((1 << *(v130 + 32)) + 63) >> 6;
            if (v130 != v122 || v149 >= v150 + 8 * v151)
            {
              memmove(v149, (v122 + 64), 8 * v151);
            }

            v152 = 0;
            *(v130 + 16) = *(v122 + 16);
            v153 = 1 << *(v122 + 32);
            if (v153 < 64)
            {
              v154 = ~(-1 << v153);
            }

            else
            {
              v154 = -1;
            }

            v155 = v154 & *(v122 + 64);
            v156 = (v153 + 63) >> 6;
            if (v155)
            {
              do
              {
                v157 = __clz(__rbit64(v155));
                v338 = (v155 - 1) & v155;
LABEL_123:
                v160 = v157 | (v152 << 6);
                v161 = 16 * v160;
                v162 = (*(v122 + 48) + 16 * v160);
                v164 = *v162;
                v163 = v162[1];
                v165 = 72 * v160;
                outlined init with copy of AttributedString._AttributeValue(*(v122 + 56) + 72 * v160, &v353);
                v166 = (*(v130 + 48) + v161);
                *v166 = v164;
                v166[1] = v163;
                v167 = *(v130 + 56) + v165;
                *v167 = v353;
                v168 = v354;
                v169 = v355;
                v170 = v356;
                *(v167 + 64) = v357;
                *(v167 + 32) = v169;
                *(v167 + 48) = v170;
                *(v167 + 16) = v168;

                v15 = v333;
                v155 = v338;
              }

              while (v338);
            }

            v158 = v152;
            while (1)
            {
              v152 = v158 + 1;
              if (__OFADD__(v158, 1))
              {
                goto LABEL_283;
              }

              if (v152 >= v156)
              {
                break;
              }

              v159 = *(v150 + 8 * v152);
              ++v158;
              if (v159)
              {
                v157 = __clz(__rbit64(v159));
                v338 = (v159 - 1) & v159;
                goto LABEL_123;
              }
            }
          }

          v124 = v331;
          if ((v129 & 1) == 0)
          {
            goto LABEL_126;
          }

LABEL_107:
          v140 = *(v130 + 56) + 72 * v124;
          v142 = *(v140 + 16);
          v141 = *(v140 + 32);
          v143 = *(v140 + 48);
          v357 = *(v140 + 64);
          v356 = v143;
          v353 = *v140;
          v354 = v142;
          v355 = v141;
          v144 = *(v130 + 56) + 72 * v124;
          v145 = v344;
          v146 = v345;
          v147 = v346;
          *(v144 + 64) = v347;
          *(v144 + 32) = v146;
          *(v144 + 48) = v147;
          *(v144 + 16) = v145;
          *v144 = v343;
          outlined destroy of AttributedString._AttributeValue(&v348);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v128, v123);
          v130 = v122;
          v124 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0);
          if ((v129 & 1) != (v131 & 1))
          {
            goto LABEL_289;
          }

LABEL_106:
          if (v129)
          {
            goto LABEL_107;
          }

LABEL_126:
          specialized _NativeDictionary._insert(at:key:value:)(v124, 0xD00000000000001DLL, 0x800000018147CCB0, &v343, v130);
          outlined destroy of AttributedString._AttributeValue(&v348);
          v353 = 0u;
          v354 = 0u;
          v355 = 0u;
          v356 = 0u;
          v357 = 0;
        }

LABEL_127:
        v365 = v130;
        goto LABEL_128;
      }

      outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v132 = v365;
      v133 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0);
      if (v134)
      {
        v135 = v133;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v130 = v132;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v246 = static _DictionaryStorage.copy(original:)();
          v130 = v246;
          if (*(v132 + 16))
          {
            v247 = (v246 + 64);
            v248 = (v132 + 64);
            v249 = ((1 << *(v130 + 32)) + 63) >> 6;
            if (v130 != v132 || v247 >= &v248[8 * v249])
            {
              memmove(v247, v248, 8 * v249);
            }

            v250 = 0;
            *(v130 + 16) = *(v132 + 16);
            v251 = 1 << *(v132 + 32);
            if (v251 < 64)
            {
              v252 = ~(-1 << v251);
            }

            else
            {
              v252 = -1;
            }

            v253 = v252 & *(v132 + 64);
            v254 = (v251 + 63) >> 6;
            if (v253)
            {
              do
              {
                v255 = __clz(__rbit64(v253));
                v341 = (v253 - 1) & v253;
LABEL_204:
                v258 = v255 | (v250 << 6);
                v259 = 16 * v258;
                v260 = (*(v132 + 48) + 16 * v258);
                v262 = *v260;
                v261 = v260[1];
                v263 = 72 * v258;
                outlined init with copy of AttributedString._AttributeValue(*(v132 + 56) + 72 * v258, &v353);
                v264 = (*(v130 + 48) + v259);
                *v264 = v262;
                v264[1] = v261;
                v265 = *(v130 + 56) + v263;
                *v265 = v353;
                v266 = v354;
                v267 = v355;
                v268 = v356;
                *(v265 + 64) = v357;
                *(v265 + 32) = v267;
                *(v265 + 48) = v268;
                *(v265 + 16) = v266;

                v15 = v333;
                v253 = v341;
              }

              while (v341);
            }

            v256 = v250;
            while (1)
            {
              v250 = v256 + 1;
              if (__OFADD__(v256, 1))
              {
                goto LABEL_286;
              }

              if (v250 >= v254)
              {
                break;
              }

              v257 = *(v132 + 64 + 8 * v250);
              ++v256;
              if (v257)
              {
                v255 = __clz(__rbit64(v257));
                v341 = (v257 - 1) & v257;
                goto LABEL_204;
              }
            }
          }
        }

        v136 = *(v130 + 56) + 72 * v135;
        v353 = *v136;
        v138 = *(v136 + 32);
        v137 = *(v136 + 48);
        v139 = *(v136 + 64);
        v354 = *(v136 + 16);
        v355 = v138;
        v357 = v139;
        v356 = v137;
        specialized _NativeDictionary._delete(at:)(v135, v130);
        goto LABEL_127;
      }

      v357 = 0;
      v355 = 0u;
      v356 = 0u;
      v353 = 0u;
      v354 = 0u;
LABEL_128:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001DLL, 0x800000018147CCB0, &v353, &v358);
      outlined destroy of TermOfAddress?(&v358, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v353, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
LABEL_129:
      v339 = v365;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = *(v15 + 40);
        v396 = *(v15 + 24);
        v397 = v171;
        v398 = *(v15 + 56);
        v172 = *(v15 + 72);
        v173 = *(v15 + 80);
        v174 = *(v15 + 88);
        v175 = *(v15 + 96);
        type metadata accessor for AttributedString.Guts();
        v176 = swift_allocObject();
        v177 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v396, &v358);
        v178 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v178);
        if (v172)
        {
          v179 = v174 == 0;
        }

        else
        {
          v179 = 1;
        }

        v180 = v179;
        if (v180 != v177)
        {
          goto LABEL_276;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v176 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v181 = v397;
        *(v176 + 24) = v396;
        *(v176 + 40) = v181;
        *(v176 + 56) = v398;
        *(v176 + 72) = v172;
        *(v176 + 80) = v173;
        *(v176 + 88) = v174;
        *(v176 + 96) = v175;
        *(v176 + 104) = MEMORY[0x1E69E7CC0];

        v15 = v176;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v15 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v182 = *(v15 + 24);
      v183 = *(v15 + 56);
      v394 = *(v15 + 40);
      v395 = v183;
      v393 = v182;
      BigString.startIndex.getter();
      BigString.endIndex.getter();
      v386 = v324;
      v387 = v326;
      v389 = v320;
      v388 = v322;
      v184 = *(v15 + 40);
      v390 = *(v15 + 24);
      v391 = v184;
      v392 = *(v15 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v372);
      if (one-time initialization token for currentIdentity != -1)
      {
        swift_once();
      }

      v185 = static AttributedString.currentIdentity;
      os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
      v186 = *(v185 + 16);
      v28 = __OFADD__(v186, 1);
      v187 = v186 + 1;
      if (v28)
      {
        goto LABEL_274;
      }

      *(v185 + 16) = v187;
      os_unfair_lock_unlock((v185 + 24));
      BigString.init()();
      *&v358 = 0;
      MEMORY[0x1865D26B0](&v358, 8);
      v188 = v358;
      type metadata accessor for AttributedString.Guts();
      v7 = swift_allocObject();
      if ((BigString.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_275;
      }

      *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v189 = v375;
      *(v7 + 24) = v374;
      *(v7 + 40) = v189;
      *(v7 + 56) = v376;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = v188;
      *(v7 + 104) = MEMORY[0x1E69E7CC0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = *(v15 + 40);
        v383 = *(v15 + 24);
        v384 = v190;
        v385 = *(v15 + 56);
        v192 = *(v15 + 72);
        v191 = *(v15 + 80);
        v193 = *(v15 + 88);
        v194 = *(v15 + 96);
        v195 = swift_allocObject();
        v196 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v383, &v358);
        v197 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v197);
        if (v192)
        {
          v198 = v193 == 0;
        }

        else
        {
          v198 = 1;
        }

        v199 = v198;
        if (v199 != v196)
        {
          goto LABEL_277;
        }

        *(v195 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v200 = v384;
        *(v195 + 24) = v383;
        *(v195 + 40) = v200;
        *(v195 + 56) = v385;
        *(v195 + 72) = v192;
        *(v195 + 80) = v191;
        *(v195 + 88) = v193;
        *(v195 + 96) = v194;
        *(v195 + 104) = MEMORY[0x1E69E7CC0];

        v15 = v195;
      }

      v201 = *(v15 + 40);
      v380 = *(v15 + 24);
      v381 = v201;
      v382 = *(v15 + 56);
      swift_unknownObjectRetain();
      v202 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v203 = *(v15 + 40);
      v377 = *(v15 + 24);
      v378 = v203;
      v379 = *(v15 + 56);
      swift_unknownObjectRetain();
      v204 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v6 = v202 >> 11;
      v205 = v204 >> 11;
      LOWORD(v206) = v339;

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v15, v202 >> 11, v205, v339, 0);

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v339))
      {
        v334 = v15;
        v207 = v339 + 64;
        v208 = 1 << *(v339 + 32);
        if (v208 < 64)
        {
          v209 = ~(-1 << v208);
        }

        else
        {
          v209 = -1;
        }

        v210 = v209 & *(v339 + 64);
        v211 = (v208 + 63) >> 6;

        v5 = 0;
        for (j = MEMORY[0x1E69E7CC0]; v210; *(v219 + 5) = v206)
        {
LABEL_160:
          while (1)
          {
            v213 = __clz(__rbit64(v210));
            v210 &= v210 - 1;
            outlined init with copy of AttributedString._AttributeValue(*(v339 + 56) + 72 * (v213 | (v5 << 6)), &v358);
            v206 = *(&v362 + 1);
            v214 = v362;
            outlined copy of AttributedString.AttributeRunBoundaries?(v362, *(&v362 + 1));
            outlined destroy of AttributedString._AttributeValue(&v358);
            if (v206 != 1)
            {
              break;
            }

            if (!v210)
            {
              goto LABEL_162;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            j = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(j + 2) + 1, 1, j);
          }

          v217 = *(j + 2);
          v216 = *(j + 3);
          v218 = v217 + 1;
          if (v217 >= v216 >> 1)
          {
            v327 = v217 + 1;
            v220 = j;
            v221 = *(j + 2);
            v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v220);
            v218 = v327;
            v217 = v221;
            j = v222;
          }

          *(j + 2) = v218;
          v219 = &j[16 * v217];
          *(v219 + 4) = v214;
        }

LABEL_162:
        v15 = v334;
        while (1)
        {
          v215 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v215 >= v211)
          {

            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v6, v205, 0, j);

            goto LABEL_5;
          }

          v210 = *(v207 + 8 * v215);
          ++v5;
          if (v210)
          {
            v5 = v215;
            goto LABEL_160;
          }
        }

        __break(1u);
        goto LABEL_260;
      }

LABEL_5:
      v12 = v312;
      v16 = v318 + 1;

      v14 = MEMORY[0x1E69E7CC8];
      if (v318 + 1 == v314)
      {
        goto LABEL_225;
      }
    }

    v350 = v355;
    v351 = v356;
    v352 = v357;
    v348 = v353;
    v349 = v354;
    outlined init with copy of AttributedString._AttributeValue(&v348, &v343);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
    v26 = *(v14 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_280;
    }

    v30 = v25;
    if (*(v14 + 24) >= v29)
    {
      if ((v23 & 1) == 0)
      {
        v329 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v49 = MEMORY[0x1E69E7CC8];
        v50 = static _DictionaryStorage.copy(original:)();
        v31 = v50;
        v51 = *(v49 + 16);
        if (v51)
        {
          v52 = (v50 + 64);
          v53 = ((1 << *(v31 + 32)) + 63) >> 6;
          if (v31 != v49 || v52 >= v49 + 8 * v53 + 64)
          {
            memmove(v52, (v49 + 64), 8 * v53);
          }

          v54 = 0;
          *(v31 + 16) = v51;
          v55 = 1 << *(v49 + 32);
          if (v55 < 64)
          {
            v56 = ~(-1 << v55);
          }

          else
          {
            v56 = -1;
          }

          v57 = v56 & *(v49 + 64);
          v58 = (v55 + 63) >> 6;
          if (v57)
          {
            do
            {
              v336 = (v57 - 1) & v57;
              v59 = __clz(__rbit64(v57)) | (v54 << 6);
LABEL_51:
              v62 = 16 * v59;
              v63 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v59);
              v65 = *v63;
              v64 = v63[1];
              v66 = 72 * v59;
              outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v59, &v353);
              v67 = (*(v31 + 48) + v62);
              *v67 = v65;
              v67[1] = v64;
              v68 = *(v31 + 56) + v66;
              *v68 = v353;
              v69 = v354;
              v70 = v355;
              v71 = v356;
              *(v68 + 64) = v357;
              *(v68 + 32) = v70;
              *(v68 + 48) = v71;
              *(v68 + 16) = v69;

              v57 = v336;
            }

            while (v336);
          }

          while (1)
          {
            v60 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_287;
            }

            if (v60 >= v58)
            {
              v15 = v333;
              break;
            }

            v61 = *(MEMORY[0x1E69E7CC8] + 8 * v60 + 64);
            ++v54;
            if (v61)
            {
              v336 = (v61 - 1) & v61;
              v59 = __clz(__rbit64(v61)) | (v60 << 6);
              v54 = v60;
              goto LABEL_51;
            }
          }
        }

        v24 = v329;
        if (v30)
        {
          goto LABEL_36;
        }

        goto LABEL_55;
      }

      v31 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v23);
      v31 = v14;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x800000018147EC90);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_289;
      }
    }

    if (v30)
    {
LABEL_36:
      v41 = *(v31 + 56) + 72 * v24;
      v43 = *(v41 + 16);
      v42 = *(v41 + 32);
      v44 = *(v41 + 48);
      v357 = *(v41 + 64);
      v356 = v44;
      v353 = *v41;
      v354 = v43;
      v355 = v42;
      v45 = *(v31 + 56) + 72 * v24;
      v46 = v344;
      v47 = v345;
      v48 = v346;
      *(v45 + 64) = v347;
      *(v45 + 32) = v47;
      *(v45 + 48) = v48;
      *(v45 + 16) = v46;
      *v45 = v343;
      outlined destroy of AttributedString._AttributeValue(&v348);
LABEL_56:
      v365 = v31;
      goto LABEL_57;
    }

LABEL_55:
    specialized _NativeDictionary._insert(at:key:value:)(v24, 0xD00000000000001BLL, 0x800000018147EC90, &v343, v31);
    outlined destroy of AttributedString._AttributeValue(&v348);
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v357 = 0;
    goto LABEL_56;
  }

LABEL_225:

  *a5 = v15;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUNumberFormatter.Signature()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ICUNumberFormatter.Signature()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUNumberFormatter.Signature()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ICUNumberFormatter.Signature(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t ICUNumberFormatterBase.__deallocating_deinit()
{
  unumf_close();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ICUCurrencyNumberFormatter.Signature and conformance ICUCurrencyNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUCurrencyNumberFormatter.Signature and conformance ICUCurrencyNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUCurrencyNumberFormatter.Signature and conformance ICUCurrencyNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUCurrencyNumberFormatter.Signature and conformance ICUCurrencyNumberFormatter.Signature);
  }

  return result;
}

uint64_t specialized static ICUCurrencyNumberFormatter.skeleton(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1865CB0E0](a3, a4);
  if (String.count.getter() >= 1)
  {
    MEMORY[0x1865CB0E0](a1, a2);
    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  }

  return 0x79636E6572727563;
}

char *specialized static ICUCurrencyNumberFormatter._create(with:)(uint64_t a1)
{
  v1 = a1;
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v3 = static ICUCurrencyNumberFormatter.cache;
  v2 = qword_1EA7B5100;
  v4 = *(v1 + 16);
  v46 = *v1;
  v47 = v4;
  v48 = *(v1 + 32);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v2 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v2 + 16, &v45);
  os_unfair_lock_unlock((v2 + 24));
  v5 = v45;
  if (v45 != 1)
  {
    return v5;
  }

  v6 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v8 = v7;
  type metadata accessor for ICUCurrencyNumberFormatter();
  v9 = swift_allocObject();

  v5 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v6, v8);
  os_unfair_lock_lock((v2 + 24));
  if (v3 >= *(*(v2 + 16) + 16))
  {
  }

  else
  {
    *(v2 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v2 + 16);
  v11 = v45;
  *(v2 + 16) = 0x8000000000000000;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v9 = v13;
    if (*(v11 + 24) < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v18 = v45;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
      if ((v9 & 1) == (v19 & 1))
      {
        goto LABEL_13;
      }

      v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v11;
LABEL_13:
      if (v9)
      {
LABEL_14:
        v20 = v12;

        *(*(v18 + 56) + 8 * v20) = v5;

LABEL_33:
        *(v2 + 16) = v18;

        os_unfair_lock_unlock((v2 + 24));

        outlined consume of ICUNumberFormatter??(1);
        return v5;
      }

LABEL_32:
      specialized _NativeDictionary._insert(at:key:value:)(v12, v1, v5, v18);
      goto LABEL_33;
    }
  }

  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
  v21 = static _DictionaryStorage.copy(original:)();
  v18 = v21;
  if (!*(v11 + 16))
  {
LABEL_31:

    v12 = v40;
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  result = (v21 + 64);
  v41 = (v11 + 64);
  v23 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v11 || result >= &v41[8 * v23])
  {
    result = memmove(result, v41, 8 * v23);
  }

  v24 = 0;
  *(v18 + 16) = *(v11 + 16);
  v25 = 1 << *(v11 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v11 + 64);
  v28 = (v25 + 63) >> 6;
  v42 = v28;
  if (v27)
  {
    do
    {
      v29 = __clz(__rbit64(v27));
      v44 = (v27 - 1) & v27;
LABEL_29:
      v32 = v29 | (v24 << 6);
      v33 = (*(v11 + 48) + 48 * v32);
      v35 = v33[2];
      v34 = v33[1];
      v43 = v33[3];
      v36 = *(*(v11 + 56) + 8 * v32);
      v37 = v33[4];
      v38 = v33[5];
      v39 = (*(v18 + 48) + 48 * v32);
      *v39 = *v33;
      v39[1] = v34;
      v39[2] = v35;
      v39[3] = v43;
      v39[4] = v37;
      v39[5] = v38;
      *(*(v18 + 56) + 8 * v32) = v36;

      v28 = v42;
      v27 = v44;
    }

    while (v44);
  }

  v30 = v24;
  while (1)
  {
    v24 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v24 >= v28)
    {
      goto LABEL_31;
    }

    v31 = *&v41[8 * v24];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v44 = (v31 - 1) & v31;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

char *specialized static ICUPercentNumberFormatter._create(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v9 = static ICUPercentNumberFormatter.cache;
  v8 = *algn_1EA7B0228;
  v49 = v7;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v8 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v8 + 16, &v47);
  os_unfair_lock_unlock((v8 + 24));
  v10 = v47;
  if (v47 != 1)
  {
    return v10;
  }

  v11 = 0x746E6563726570;
  v12 = 0xE700000000000000;
  v47 = 0x746E6563726570;
  v48 = 0xE700000000000000;
  if (String.count.getter() >= 1)
  {
    MEMORY[0x1865CB0E0](v7, a2);
    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    v11 = v47;
    v12 = v48;
  }

  type metadata accessor for ICUPercentNumberFormatter();
  v13 = swift_allocObject();

  v10 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v11, v12);
  os_unfair_lock_lock((v8 + 24));
  if (v9 >= *(*(v8 + 16) + 16))
  {
  }

  else
  {
    *(v8 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v8 + 16);
  v15 = v47;
  *(v8 + 16) = 0x8000000000000000;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a2, a3, a4);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v13 = v17;
    if (*(v15 + 24) < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v22 = v47;
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a2, a3, a4);
      if ((v13 & 1) == (v23 & 1))
      {
        goto LABEL_15;
      }

      v16 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v15;
LABEL_15:
      if (v13)
      {
LABEL_16:
        v24 = v16;

        *(*(v22 + 56) + 8 * v24) = v10;

LABEL_35:
        *(v8 + 16) = v22;

        os_unfair_lock_unlock((v8 + 24));

        outlined consume of ICUNumberFormatter??(1);
        return v10;
      }

LABEL_34:
      specialized _NativeDictionary._insert(at:key:value:)(v16, v7, a2, a3, a4, v10, v22);
      goto LABEL_35;
    }
  }

  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
  v25 = static _DictionaryStorage.copy(original:)();
  v22 = v25;
  if (!*(v15 + 16))
  {
LABEL_33:

    v16 = v42;
    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  result = (v25 + 64);
  v43 = (v15 + 64);
  v27 = ((1 << *(v22 + 32)) + 63) >> 6;
  if (v22 != v15 || result >= &v43[8 * v27])
  {
    result = memmove(result, v43, 8 * v27);
  }

  v28 = 0;
  *(v22 + 16) = *(v15 + 16);
  v29 = 1 << *(v15 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v15 + 64);
  v32 = (v29 + 63) >> 6;
  v44 = v32;
  if (v31)
  {
    do
    {
      v33 = __clz(__rbit64(v31));
      v46 = (v31 - 1) & v31;
LABEL_31:
      v36 = v33 | (v28 << 6);
      v37 = (*(v15 + 48) + 32 * v36);
      v39 = v37[2];
      v38 = v37[1];
      v45 = v37[3];
      v40 = *(*(v15 + 56) + 8 * v36);
      v41 = (*(v22 + 48) + 32 * v36);
      *v41 = *v37;
      v41[1] = v38;
      v41[2] = v39;
      v41[3] = v45;
      *(*(v22 + 56) + 8 * v36) = v40;

      v32 = v44;
      v31 = v46;
    }

    while (v46);
  }

  v34 = v28;
  while (1)
  {
    v28 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v28 >= v32)
    {
      goto LABEL_33;
    }

    v35 = *&v43[8 * v28];
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v46 = (v35 - 1) & v35;
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

void *specialized static ICUByteCountNumberFormatter.create(for:locale:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58[5] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 472);

  v52 = v7;
  v8 = (v7)(ObjectType, v5);
  v10 = v9;
  if (one-time initialization token for cache != -1)
  {
    v28 = v8;
    swift_once();
    v8 = v28;
  }

  v11 = qword_1EA7AEDE0;
  v50 = static ICUByteCountNumberFormatter.cache;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v11 + 6);
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v11[4], v58);
  v55 = v11;
  os_unfair_lock_unlock(v11 + 6);
  v12 = v58[0];
  if (v58[0] == 1)
  {
    v57 = v10;
    v52(ObjectType, v5);
    type metadata accessor for ICUByteCountNumberFormatter();
    v12 = swift_allocObject();
    v12[3] = a1;
    v12[4] = a2;

    v13 = MEMORY[0x1865CB200](a1, a2);
    if (v13)
    {
      v14 = v13;
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v13, 0);

      v16 = specialized Sequence._copySequenceContents(initializing:)(v58, (v15 + 4), v14, a1, a2);

      if (v16 == v14)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_8:
    LODWORD(v58[0]) = 0;
    v17 = v15[2];
    if (v17 >> 31)
    {
      __break(1u);
      goto LABEL_26;
    }

    String.utf8CString.getter();

    v18 = unumf_openForSkeletonAndLocale();

    if (v18)
    {
      if (SLODWORD(v58[0]) < 1)
      {
        v12[2] = v18;
LABEL_14:
        os_unfair_lock_lock(v55 + 6);
        if (v50 >= *(*&v55[4]._os_unfair_lock_opaque + 16))
        {
        }

        else
        {
          *&v55[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = *&v55[4]._os_unfair_lock_opaque;
        v17 = v58[0];
        *&v55[4]._os_unfair_lock_opaque = 0x8000000000000000;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, v56, v10);
        v21 = *(v17 + 16);
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (!v23)
        {
          LOBYTE(v15) = v20;
          if (*(v17 + 24) < v24)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
            v25 = v58[0];
            v10 = a2;
            v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, v56, v57);
            if ((v15 & 1) == (v26 & 1))
            {
              goto LABEL_23;
            }

            v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          v10 = a2;
          if (isUniquelyReferenced_nonNull_native)
          {
            v25 = v17;
LABEL_23:
            if (v15)
            {
LABEL_24:
              v27 = v13;

              *(*(v25 + 56) + 8 * v27) = v12;

LABEL_44:
              *&v55[4]._os_unfair_lock_opaque = v25;

              os_unfair_lock_unlock(v55 + 6);

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_45;
            }

LABEL_43:
            specialized _NativeDictionary._insert(at:key:value:)(v13, a1, v10, v56, v57, v12, v25);
            goto LABEL_44;
          }

LABEL_27:
          v49 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v29 = static _DictionaryStorage.copy(original:)();
          v25 = v29;
          if (*(v17 + 16))
          {
            v48 = a1;
            v30 = (v29 + 64);
            v51 = (v17 + 64);
            v31 = ((1 << *(v25 + 32)) + 63) >> 6;
            if (v25 != v17 || v30 >= &v51[8 * v31])
            {
              memmove(v30, v51, 8 * v31);
            }

            v32 = 0;
            *(v25 + 16) = *(v17 + 16);
            v33 = 1 << *(v17 + 32);
            v34 = -1;
            if (v33 < 64)
            {
              v34 = ~(-1 << v33);
            }

            v35 = v34 & *(v17 + 64);
            v36 = (v33 + 63) >> 6;
            v53 = v36;
            if (v35)
            {
              do
              {
                v37 = __clz(__rbit64(v35));
                v54 = (v35 - 1) & v35;
LABEL_40:
                v40 = v37 | (v32 << 6);
                v41 = (*(v17 + 48) + 32 * v40);
                v42 = v41[1];
                v43 = v41[2];
                v44 = v41[3];
                v45 = *(*(v17 + 56) + 8 * v40);
                v46 = (*(v25 + 48) + 32 * v40);
                *v46 = *v41;
                v46[1] = v42;
                v46[2] = v43;
                v46[3] = v44;
                *(*(v25 + 56) + 8 * v40) = v45;

                v36 = v53;
                v35 = v54;
              }

              while (v54);
            }

            v38 = v32;
            a1 = v48;
            while (1)
            {
              v32 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                __break(1u);
              }

              if (v32 >= v36)
              {
                break;
              }

              v39 = *&v51[8 * v32];
              ++v38;
              if (v39)
              {
                v37 = __clz(__rbit64(v39));
                v54 = (v39 - 1) & v39;
                goto LABEL_40;
              }
            }
          }

          v13 = v49;
          if (v15)
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v12 = 0;
    goto LABEL_14;
  }

LABEL_45:

  return v12;
}

void *specialized static ICUMeasurementNumberFormatter.create(for:locale:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58[5] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 472);

  v52 = v7;
  v8 = (v7)(ObjectType, v5);
  v10 = v9;
  if (one-time initialization token for cache != -1)
  {
    v28 = v8;
    swift_once();
    v8 = v28;
  }

  v11 = *algn_1EA7B1588;
  v50 = static ICUMeasurementNumberFormatter.cache;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v11 + 6);
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v11[4], v58);
  v55 = v11;
  os_unfair_lock_unlock(v11 + 6);
  v12 = v58[0];
  if (v58[0] == 1)
  {
    v57 = v10;
    v52(ObjectType, v5);
    type metadata accessor for ICUMeasurementNumberFormatter();
    v12 = swift_allocObject();
    v12[3] = a1;
    v12[4] = a2;

    v13 = MEMORY[0x1865CB200](a1, a2);
    if (v13)
    {
      v14 = v13;
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v13, 0);

      v16 = specialized Sequence._copySequenceContents(initializing:)(v58, (v15 + 4), v14, a1, a2);

      if (v16 == v14)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_8:
    LODWORD(v58[0]) = 0;
    v17 = v15[2];
    if (v17 >> 31)
    {
      __break(1u);
      goto LABEL_26;
    }

    String.utf8CString.getter();

    v18 = unumf_openForSkeletonAndLocale();

    if (v18)
    {
      if (SLODWORD(v58[0]) < 1)
      {
        v12[2] = v18;
LABEL_14:
        os_unfair_lock_lock(v55 + 6);
        if (v50 >= *(*&v55[4]._os_unfair_lock_opaque + 16))
        {
        }

        else
        {
          *&v55[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58[0] = *&v55[4]._os_unfair_lock_opaque;
        v17 = v58[0];
        *&v55[4]._os_unfair_lock_opaque = 0x8000000000000000;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, v56, v10);
        v21 = *(v17 + 16);
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (!v23)
        {
          LOBYTE(v15) = v20;
          if (*(v17 + 24) < v24)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
            v25 = v58[0];
            v10 = a2;
            v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, v56, v57);
            if ((v15 & 1) == (v26 & 1))
            {
              goto LABEL_23;
            }

            v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          v10 = a2;
          if (isUniquelyReferenced_nonNull_native)
          {
            v25 = v17;
LABEL_23:
            if (v15)
            {
LABEL_24:
              v27 = v13;

              *(*(v25 + 56) + 8 * v27) = v12;

LABEL_44:
              *&v55[4]._os_unfair_lock_opaque = v25;

              os_unfair_lock_unlock(v55 + 6);

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_45;
            }

LABEL_43:
            specialized _NativeDictionary._insert(at:key:value:)(v13, a1, v10, v56, v57, v12, v25);
            goto LABEL_44;
          }

LABEL_27:
          v49 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v29 = static _DictionaryStorage.copy(original:)();
          v25 = v29;
          if (*(v17 + 16))
          {
            v48 = a1;
            v30 = (v29 + 64);
            v51 = (v17 + 64);
            v31 = ((1 << *(v25 + 32)) + 63) >> 6;
            if (v25 != v17 || v30 >= &v51[8 * v31])
            {
              memmove(v30, v51, 8 * v31);
            }

            v32 = 0;
            *(v25 + 16) = *(v17 + 16);
            v33 = 1 << *(v17 + 32);
            v34 = -1;
            if (v33 < 64)
            {
              v34 = ~(-1 << v33);
            }

            v35 = v34 & *(v17 + 64);
            v36 = (v33 + 63) >> 6;
            v53 = v36;
            if (v35)
            {
              do
              {
                v37 = __clz(__rbit64(v35));
                v54 = (v35 - 1) & v35;
LABEL_40:
                v40 = v37 | (v32 << 6);
                v41 = (*(v17 + 48) + 32 * v40);
                v42 = v41[1];
                v43 = v41[2];
                v44 = v41[3];
                v45 = *(*(v17 + 56) + 8 * v40);
                v46 = (*(v25 + 48) + 32 * v40);
                *v46 = *v41;
                v46[1] = v42;
                v46[2] = v43;
                v46[3] = v44;
                *(*(v25 + 56) + 8 * v40) = v45;

                v36 = v53;
                v35 = v54;
              }

              while (v54);
            }

            v38 = v32;
            a1 = v48;
            while (1)
            {
              v32 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                __break(1u);
              }

              if (v32 >= v36)
              {
                break;
              }

              v39 = *&v51[8 * v32];
              ++v38;
              if (v39)
              {
                v37 = __clz(__rbit64(v39));
                v54 = (v39 - 1) & v39;
                goto LABEL_40;
              }
            }
          }

          v13 = v49;
          if (v15)
          {
            goto LABEL_24;
          }

          goto LABEL_43;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v12 = 0;
    goto LABEL_14;
  }

LABEL_45:

  return v12;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICUByteCountNumberFormatter.Signature and conformance ICUByteCountNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUByteCountNumberFormatter.Signature and conformance ICUByteCountNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUByteCountNumberFormatter.Signature and conformance ICUByteCountNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUByteCountNumberFormatter.Signature and conformance ICUByteCountNumberFormatter.Signature);
  }

  return result;
}

uint64_t IntegerFormatStyle.Currency.format(_:)(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v99 = &v90 - v5;
  v106 = v3;
  v98 = *(*(v3 + 24) + 16);
  v97 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v90 - v6;
  v108 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v90 - v10;
  v11 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v13 = v12;
  v15 = v2[2];
  v14 = v2[3];
  v16 = v2[1];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 472);

  v19 = v18(ObjectType, v16);
  *&v112 = v11;
  *(&v112 + 1) = v13;
  v109 = v13;
  *&v113 = v15;
  *(&v113 + 1) = v14;
  *&v114 = v19;
  *(&v114 + 1) = v20;
  v107 = v20;
  if (one-time initialization token for cache != -1)
  {
    v19 = swift_once();
  }

  v22 = static ICUCurrencyNumberFormatter.cache;
  v21 = qword_1EA7B5100;
  v111[0] = v112;
  v111[1] = v113;
  v111[2] = v114;
  MEMORY[0x1EEE9AC00](v19);
  *(&v90 - 2) = v111;
  os_unfair_lock_lock((v21 + 24));
  _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA017ICUCurrencyNumberB0C9Signature33_1C58B5D80AA37B9371410D3343C91B53LLV_AJSgTG5TA_0(v21 + 16, &v110);
  v102 = 0;
  os_unfair_lock_unlock((v21 + 24));
  v23 = v110;
  if (v110 != 1)
  {
LABEL_34:

    if (!v23)
    {
      (*(v108 + 16))(v104, v105, v4);
      return String.init<A>(_:radix:uppercase:)();
    }

    v109 = v23;
    v63 = *(v108 + 16);
    v64 = v103;
    v65 = v105;
    v63(v103, v105, v4);
    v66 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v67 = v104;
    if ((v66 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      *&v111[0] = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
LABEL_48:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_49;
        }
      }

      else
      {
        v68 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v69 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v68 & 1) == 0)
        {
          if (v69 >= 64)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (v69 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v72 = dispatch thunk of static Comparable.< infix(_:_:)();
          v71 = *(v108 + 8);
          v71(v67, v4);
          if (v72)
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }
      }

      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v70 = dispatch thunk of static Comparable.< infix(_:_:)();
      v71 = *(v108 + 8);
      v71(v67, v4);
      if (v70)
      {
        goto LABEL_53;
      }
    }

LABEL_49:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_61:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v108 + 8))(v64, v4);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v85 = v102;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      if (v85)
      {
        goto LABEL_62;
      }

      goto LABEL_54;
    }

    *&v111[0] = 0x7FFFFFFFFFFFFFFFLL;
    v73 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v74 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v73)
    {
      if (v74 > 64)
      {
        goto LABEL_52;
      }
    }

    else if (v74 > 63)
    {
LABEL_52:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v75 = dispatch thunk of static Comparable.< infix(_:_:)();
      v71 = *(v108 + 8);
      v71(v67, v4);
      if ((v75 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_53:
      v71(v64, v4);
      v76 = v99;
      dispatch thunk of BinaryInteger.words.getter();
      v77 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v78 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v80 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v76, v77 & 1, v78, *(*(AssociatedConformanceWitness + 8) + 8));
      v82 = v81;
      (*(v100 + 8))(v76, v78);
      v83 = *(v109 + 16);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v84 = v82;
      v85 = v102;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v83, v80, v84);
      if (v85)
      {
LABEL_62:

LABEL_63:
        v63(v67, v65, v4);
        return String.init<A>(_:radix:uppercase:)();
      }

LABEL_54:

      v86 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v88 = v87;

      if (v88)
      {
        return v86;
      }

      goto LABEL_63;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_61;
  }

  v24 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v11, v109, v15, v14);
  v26 = v25;
  type metadata accessor for ICUCurrencyNumberFormatter();
  swift_allocObject();

  v27 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v24, v26);
  os_unfair_lock_lock((v21 + 24));
  if (v22 >= *(*(v21 + 16) + 16))
  {
  }

  else
  {
    *(v21 + 16) = MEMORY[0x1E69E7CC8];
  }

  v28 = v27;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v21 + 16);
  v30 = v110;
  *(v21 + 16) = 0x8000000000000000;
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(&v112);
  v33 = *(v30 + 16);
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v27) = v31;
  if (*(v30 + 24) >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v30;
      if (v31)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_16:
    v90 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v40 = static _DictionaryStorage.copy(original:)();
    v36 = v40;
    if (*(v30 + 16))
    {
      v41 = (v40 + 64);
      v42 = 1 << *(v36 + 32);
      v91 = (v30 + 64);
      v43 = (v42 + 63) >> 6;
      if (v36 != v30 || v41 >= &v91[8 * v43])
      {
        memmove(v41, v91, 8 * v43);
      }

      v44 = 0;
      *(v36 + 16) = *(v30 + 16);
      v45 = 1 << *(v30 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v30 + 64);
      v48 = (v45 + 63) >> 6;
      v92 = v48;
      if (v47)
      {
        do
        {
          v49 = __clz(__rbit64(v47));
          v95 = (v47 - 1) & v47;
LABEL_29:
          v52 = v49 | (v44 << 6);
          v53 = *(v30 + 56);
          v54 = (*(v30 + 48) + 48 * v52);
          v55 = *v54;
          v56 = v54[1];
          v57 = v54[2];
          v93 = v54[3];
          v58 = v93;
          v59 = *(v53 + 8 * v52);
          v60 = v54[4];
          v94 = v54[5];
          v61 = v94;
          v62 = (*(v36 + 48) + 48 * v52);
          *v62 = v55;
          v62[1] = v56;
          v62[2] = v57;
          v62[3] = v58;
          v62[4] = v60;
          v62[5] = v61;
          *(*(v36 + 56) + 8 * v52) = v59;

          v48 = v92;
          v47 = v95;
        }

        while (v95);
      }

      v50 = v44;
      while (1)
      {
        v44 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v44 >= v48)
        {
          goto LABEL_31;
        }

        v51 = *&v91[8 * v44];
        ++v50;
        if (v51)
        {
          v49 = __clz(__rbit64(v51));
          v95 = (v51 - 1) & v51;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_31:

    v32 = v90;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_32:
    v23 = v28;
    specialized _NativeDictionary._insert(at:key:value:)(v32, &v112, v28, v36);
    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
  v36 = v110;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(&v112);
  if ((v27 & 1) == (v38 & 1))
  {
    v32 = v37;
    if ((v27 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_14:
    v39 = v32;

    v23 = v28;
    *(*(v36 + 56) + 8 * v39) = v28;

LABEL_33:
    *(v21 + 16) = v36;

    os_unfair_lock_unlock((v21 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_34;
  }

LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t IntegerFormatStyle.Percent.format(_:)(uint64_t a1, uint64_t a2)
{
  v102 = a1;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96 = &v86 - v5;
  v103 = v3;
  v95 = *(*(v3 + 24) + 16);
  v94 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v86 - v6;
  v105 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v86 - v10;
  v11 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v13 = v12;
  v14 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 472))(ObjectType, v14);
  v17 = v16;
  v19 = v18;
  if (one-time initialization token for cache != -1)
  {
    v16 = swift_once();
  }

  v21 = static ICUPercentNumberFormatter.cache;
  v20 = *algn_1EA7B0228;
  v110[0] = v11;
  v110[1] = v13;
  v110[2] = v17;
  v110[3] = v19;
  MEMORY[0x1EEE9AC00](v16);
  *(&v86 - 2) = v110;
  os_unfair_lock_lock((v20 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v20 + 16, &v108);
  v99 = 0;
  os_unfair_lock_unlock((v20 + 24));
  v22 = v108;
  if (v108 != 1)
  {
LABEL_36:

    if (!v22)
    {
      (*(v105 + 16))(v101, v102, v4);
      return String.init<A>(_:radix:uppercase:)();
    }

    v104 = v22;
    v59 = *(v105 + 16);
    v60 = v100;
    v61 = v102;
    v59(v100, v102, v4);
    v62 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v63 = v101;
    if ((v62 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v110[0] = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
LABEL_50:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_51;
        }
      }

      else
      {
        v64 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v65 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v64 & 1) == 0)
        {
          if (v65 >= 64)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v65 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v68 = dispatch thunk of static Comparable.< infix(_:_:)();
          v67 = *(v105 + 8);
          v67(v63, v4);
          if (v68)
          {
            goto LABEL_55;
          }

          goto LABEL_50;
        }
      }

      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v66 = dispatch thunk of static Comparable.< infix(_:_:)();
      v67 = *(v105 + 8);
      v67(v63, v4);
      if (v66)
      {
        goto LABEL_55;
      }
    }

LABEL_51:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_63:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v105 + 8))(v60, v4);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v81 = v99;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      if (v81)
      {
        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v110[0] = 0x7FFFFFFFFFFFFFFFLL;
    v69 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v70 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v69)
    {
      if (v70 > 64)
      {
        goto LABEL_54;
      }
    }

    else if (v70 > 63)
    {
LABEL_54:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v71 = dispatch thunk of static Comparable.< infix(_:_:)();
      v67 = *(v105 + 8);
      v67(v63, v4);
      if ((v71 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_55:
      v67(v60, v4);
      v72 = v96;
      dispatch thunk of BinaryInteger.words.getter();
      v73 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v74 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v76 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v72, v73 & 1, v74, *(*(AssociatedConformanceWitness + 8) + 8));
      v78 = v77;
      (*(v97 + 8))(v72, v74);
      v79 = v104[2];
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      v80 = v78;
      v81 = v99;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v79, v76, v80);
      if (v81)
      {
LABEL_64:

LABEL_65:
        v59(v63, v61, v4);
        return String.init<A>(_:radix:uppercase:)();
      }

LABEL_56:

      v82 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v84 = v83;

      if (v84)
      {
        return v82;
      }

      goto LABEL_65;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_63;
  }

  v108 = 0x746E6563726570;
  v109 = 0xE700000000000000;
  if (String.count.getter() > 0)
  {
    v106 = 32;
    v107 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v11, v13);
    MEMORY[0x1865CB0E0](v106, v107);
  }

  v23 = v108;
  v24 = v109;
  type metadata accessor for ICUPercentNumberFormatter();
  swift_allocObject();

  v25 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v23, v24);
  os_unfair_lock_lock((v20 + 24));
  v26 = *(*(v20 + 16) + 16);
  v92 = *(v20 + 16);
  if (v21 < v26)
  {
    *(v20 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v104 = v25;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v20 + 16);
  v28 = v108;
  *(v20 + 16) = 0x8000000000000000;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13, v17, v19);
  v31 = *(v28 + 16);
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
LABEL_18:
    v86 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v38 = static _DictionaryStorage.copy(original:)();
    v34 = v38;
    if (!*(v28 + 16))
    {
LABEL_33:

      v30 = v86;
      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v39 = (v38 + 64);
    v40 = 1 << *(v34 + 32);
    v87 = (v28 + 64);
    v41 = (v40 + 63) >> 6;
    if (v34 != v28 || v39 >= &v87[8 * v41])
    {
      memmove(v39, v87, 8 * v41);
    }

    v42 = 0;
    *(v34 + 16) = *(v28 + 16);
    v43 = 1 << *(v28 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v28 + 64);
    v46 = (v43 + 63) >> 6;
    v88 = v46;
    if (v45)
    {
      do
      {
        v47 = __clz(__rbit64(v45));
        v91 = (v45 - 1) & v45;
LABEL_31:
        v50 = v47 | (v42 << 6);
        v51 = *(v28 + 56);
        v52 = (*(v28 + 48) + 32 * v50);
        v53 = *v52;
        v89 = v52[1];
        v54 = v89;
        v55 = v52[2];
        v90 = v52[3];
        v56 = v90;
        v57 = *(v51 + 8 * v50);
        v58 = (*(v34 + 48) + 32 * v50);
        *v58 = v53;
        v58[1] = v54;
        v58[2] = v55;
        v58[3] = v56;
        *(*(v34 + 56) + 8 * v50) = v57;

        v46 = v88;
        v45 = v91;
      }

      while (v91);
    }

    v48 = v42;
    while (1)
    {
      v42 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v42 >= v46)
      {
        goto LABEL_33;
      }

      v49 = *&v87[8 * v42];
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v91 = (v49 - 1) & v49;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  LOBYTE(v25) = v29;
  if (*(v28 + 24) >= v33)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v28;
LABEL_15:
      if (v25)
      {
LABEL_16:
        v37 = v30;

        v22 = v104;
        *(*(v34 + 56) + 8 * v37) = v104;

LABEL_35:
        *(v20 + 16) = v34;

        os_unfair_lock_unlock((v20 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_36;
      }

LABEL_34:
      v22 = v104;
      specialized _NativeDictionary._insert(at:key:value:)(v30, v11, v13, v17, v19, v104, v34);
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
  v34 = v108;
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13, v17, v19);
  if ((v25 & 1) == (v36 & 1))
  {
    v30 = v35;
    goto LABEL_15;
  }

LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 IntegerFormatStyle.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for IntegerFormatStyle() + 36);
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

__n128 IntegerFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t IntegerFormatStyle.attributed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return IntegerFormatStyle.attributed.getter(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  type metadata accessor for IntegerFormatStyle.Attributed.Style();

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatStyle.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntegerFormatStyle();
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
    return outlined destroy of NumberFormatStyleConfiguration.Collection(v11);
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
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
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

__n128 IntegerFormatStyle.Percent.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for IntegerFormatStyle.Percent() + 36);
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
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t IntegerFormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
    *(v18 + 8) = 0;
  }

  return result;
}

uint64_t static IntegerFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerFormatStyle<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
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
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

void IntegerFormatStyle.hash(into:)(Swift::Int a1, uint64_t a2)
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
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v8);
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

Swift::Int IntegerFormatStyle.hashValue.getter(uint64_t a1)
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
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11);
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

uint64_t IntegerFormatStyle.Percent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatStyle.Percent.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntegerFormatStyle.Percent();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v11 = &v22 + *(v10 + 36) - v8;
  v12 = v3[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *v11 = 0x3FF0000000000000;
  v11[8] = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0x1FFFFFFFELL;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = 0;
  *(v11 + 18) = 131584;
  *(v11 + 38) = 512;
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
    return outlined destroy of NumberFormatStyleConfiguration.Collection(v11);
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
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
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

uint64_t IntegerFormatStyle.Currency.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntegerFormatStyle.Currency.init(code:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v4 = a4 + *(type metadata accessor for IntegerFormatStyle.Currency() + 40);
  v5 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0x1FFFFFFFELL;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 512;
  *(v4 + 74) = 2;
  *(v4 + 78) = 2;
  v9 = v4 + v5[10];
  *v9 = 0;
  *(v9 + 8) = -1;
  *(v4 + v5[11]) = 1;
  *(v4 + v5[12]) = 3;
  return result;
}

uint64_t IntegerFormatStyle.Currency.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 73) = v6;
  return result;
}

__n128 IntegerFormatStyle.Currency.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v7 + 57) = result;
  return result;
}

uint64_t IntegerFormatStyle.Currency.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  if (v7)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v6;
  if (v8)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  *(a3 + *(a2 + 40) + 74) = v12 | v13 | v14;
  return result;
}

uint64_t IntegerFormatStyle.Currency.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 78) = v6;
  return result;
}

uint64_t IntegerFormatStyle.Currency.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  (*(*(a4 - 8) + 16))(a5, v6, a4);
  v12 = a5 + *(a4 + 40);
  v13 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
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
    *(v18 + 8) = 0;
  }

  return result;
}

uint64_t IntegerFormatStyle.Currency.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  result = (*(*(a1 - 8) + 16))(a2, v4, a1);
  v9 = a2 + *(a1 + 40);
  *v9 = a3;
  *(v9 + 8) = 0;
  return result;
}

uint64_t IntegerFormatStyle.Currency.presentation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 44)) = v6;
  return result;
}

uint64_t IntegerFormatStyle.Currency.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 48)) = v6;
  return result;
}

uint64_t static IntegerFormatStyle.Currency.== infix(_:_:)(__int128 *a1, __int128 *a2)
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

  v6 = *(type metadata accessor for IntegerFormatStyle.Currency() + 40);

  return static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.Currency.encode(to:)(void *a1)
{
  type metadata accessor for IntegerFormatStyle.Currency.CodingKeys();
  swift_getWitnessTable();
  v2 = type metadata accessor for KeyedEncodingContainer();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v10;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v6;
  v12 = v9;
  v13 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  v7 = v11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v3 + 8))(v5, v2);
}

void IntegerFormatStyle.Currency.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v75 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v61 - v8;
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v76, ObjectType, v10);
    v89 = v82;
    v90[0] = v83[0];
    *(v90 + 12) = *(v83 + 12);
    *v86 = v78;
    *&v86[16] = v79;
    v87 = v80;
    v88 = v81;
    v84 = v76;
    v85 = v77;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v84) == 1)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v15 = v76;
    v16 = *(&v76 + 1);
    v17 = *(&v77 + 1);
    v61[0] = v77;
    v62 = *(&v78 + 1);
    v61[1] = v78;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v61[2] = *(&v83[0] + 1);
    v67 = *&v83[0];
    v68 = *&v83[1];
    v69 = BYTE8(v83[1]);
    v70 = BYTE9(v83[1]);
    v71 = BYTE10(v83[1]);
    v72 = BYTE11(v83[1]);
    Hasher._combine(_:)(1u);
    if (v15 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v15 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v16)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v16 + 16));
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = v16 + 40;
        do
        {

          String.hash(into:)();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v17)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v13 = v5;
    v21 = *(&v64 + 1);
    v22 = *(&v63 + 1);
    v14 = v75;
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v23 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v23 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v23, v24, v25, v26, v27, v28, v29);
        v30 = v21;
        if (v22)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v22, v31, v32, v33, v34, v35, v36);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v64)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v30)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v30)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v65)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v65 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v66)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v66)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v37 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v37 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          v38 = v67;
          if (v67)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v38 = v67;
        if (v67)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v38);
          if (v68)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
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

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v71;
            if (v71 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v41 & 1;
            }

            v43 = v72;
            Hasher._combine(_:)(v42);
            if (v43 == 2)
            {
              v44 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v44 = v43 & 1;
            }

            Hasher._combine(_:)(v44);
            outlined destroy of TermOfAddress?(&v76, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v30 = v21;
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v12 = 1;
LABEL_5:
  Hasher._combine(_:)(v12);
  v13 = v5;
  v14 = v75;
LABEL_54:
  v45 = v74;
  String.hash(into:)();
  v46 = (v3 + *(v45 + 40));
  if (v46[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = *v46;
    Hasher._combine(_:)(1u);
    if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    MEMORY[0x1865CD090](v48);
  }

  v49 = *(v46 + 2);
  v84 = *(v46 + 1);
  v85 = v49;
  *v86 = *(v46 + 3);
  *&v86[9] = *(v46 + 57);
  specialized Optional<A>.hash(into:)();
  v50 = *(v46 + 73);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = *(v46 + 74);
  if (*(v46 + 74) == 2)
  {
    LOBYTE(v52) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
    MEMORY[0x1865CD060]((v51 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v51) & 1);
    v52 = BYTE3(v51) & 1;
  }

  Hasher._combine(_:)(v52);
  v53 = *(v46 + 78);
  if (v53 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v53 & 1);
  }

  v54 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v46 + v54[9], v9);
  if ((*(v13 + 48))(v9, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = v73;
    (*(v13 + 32))(v73, v9, v14);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v13 + 8))(v55, v14);
  }

  v56 = (v46 + v54[10]);
  v57 = *(v56 + 8);
  if (v57 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v58 = *v56;
    Hasher._combine(_:)(1u);
    if (v57)
    {
      MEMORY[0x1865CD060](1);
      if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      MEMORY[0x1865CD090](v59);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v58);
    }
  }

  MEMORY[0x1865CD060](*(v46 + v54[11]));
  v60 = *(v46 + v54[12]);
  if (v60 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v60);
  }
}

Swift::Int IntegerFormatStyle.Currency.hashValue.getter(uint64_t a1)
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
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
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
  String.hash(into:)();
  v43 = (v1 + *(a1 + 40));
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

  v48 = *(v43 + 74);
  if (*(v43 + 74) == 2)
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
    MEMORY[0x1865CD060]((v48 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v48) & 1);
    v49 = BYTE3(v48) & 1;
  }

  Hasher._combine(_:)(v49);
  v50 = *(v43 + 78);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11);
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

  MEMORY[0x1865CD060](*(v43 + v51[11]));
  v57 = *(v43 + v51[12]);
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

uint64_t IntegerFormatStyle.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatStyle.Currency.CodingKeys();
  swift_getWitnessTable();
  v23 = type metadata accessor for KeyedDecodingContainer();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - v4;
  v6 = type metadata accessor for IntegerFormatStyle.Currency();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v8;
  v24 = v6;
  v11 = v20;
  v12 = v21;
  v26 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v10 = v25;
  LOBYTE(v25) = 1;
  *(v10 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 3) = v13;
  LOBYTE(v25) = 2;
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 8))(v5, v23);
  v14 = v24;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v12, &v10[*(v24 + 40)]);
  v15 = v18;
  (*(v18 + 16))(v19, v10, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v15 + 8))(v10, v14);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance IntegerFormatStyle<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = IntegerFormatStyle.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance IntegerFormatStyle<A>.Percent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = IntegerFormatStyle.Percent.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance IntegerFormatStyle<A>.Currency@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = IntegerFormatStyle.Currency.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t IntegerFormatStyle.parseStrategy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return IntegerFormatStyle.parseStrategy.getter(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  swift_getWitnessTable();
  result = type metadata accessor for IntegerParseStrategy();
  *(a2 + *(result + 44)) = 1;
  return result;
}

uint64_t static FormatStyle.currency<A>(code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v7 = _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a3 = inited;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  v8 = a3 + *(type metadata accessor for IntegerFormatStyle.Currency() + 40);
  v9 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v10 = v9[9];
  v11 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0x1FFFFFFFELL;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  *(v8 + 36) = 512;
  *(v8 + 74) = 2;
  v8[78] = 2;
  v12 = &v8[v9[10]];
  *v12 = 0;
  v12[8] = -1;
  v8[v9[11]] = 1;
  v8[v9[12]] = 3;
}

uint64_t static IntegerFormatStyle.Attributed.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  *&v64 = a2;
  v2 = type metadata accessor for IntegerFormatStyle.Currency();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v52 - v3;
  v4 = type metadata accessor for IntegerFormatStyle.Percent();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v52 - v5;
  v6 = type metadata accessor for IntegerFormatStyle();
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for IntegerFormatStyle.Attributed.Style();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v52 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v52 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v52 - v20;
  v23 = *(v22 + 48);
  v61 = v10;
  v24 = *(v10 + 16);
  v24(&v52 - v20, v63, v9, v19);
  (v24)(&v21[v23], v64, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = v8;
    v37 = v59;
    (v24)(v17, v21, v9);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v37 + 32))(v36, &v21[v23], v6);
      v48 = *v17;
      v64 = *v36;
      v65 = v64;
      v66 = v48;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v49 = specialized static Locale.== infix(_:_:)(&v66, &v65);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v49)
      {
        v50 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v17 + *(v6 + 36), v36 + *(v6 + 36));
        v51 = *(v37 + 8);
        v51(v36, v6);
        v34 = v61;
        if (v50)
        {
          v51(v17, v6);
          v35 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        v51 = *(v37 + 8);
        v51(v36, v6);
        v34 = v61;
      }

      v51(v17, v6);
      v35 = 0;
      goto LABEL_19;
    }

    (*(v37 + 8))(v17, v6);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v24)(v14, v21, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v55;
      v27 = &v21[v23];
      v28 = v53;
      v29 = v56;
      (*(v55 + 32))(v53, v27, v56);
      v30 = *v14;
      v64 = *v28;
      v65 = v64;
      v66 = v30;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = specialized static Locale.== infix(_:_:)(&v66, &v65);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v31)
      {
        v32 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v14 + *(v29 + 36), v28 + *(v29 + 36));
        v33 = *(v26 + 8);
        v33(v28, v29);
        v34 = v61;
        if (v32)
        {
          v33(v14, v29);
          v35 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        v33 = *(v26 + 8);
        v33(v28, v29);
        v34 = v61;
      }

      v33(v14, v29);
      v35 = 0;
      goto LABEL_19;
    }

    (*(v55 + 8))(v14, v56);
LABEL_18:
    v35 = 0;
    v34 = v62;
    v9 = TupleTypeMetadata2;
    goto LABEL_19;
  }

  v38 = v60;
  (v24)(v60, v21, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v57 + 8))(v38, v58);
    goto LABEL_18;
  }

  v40 = v57;
  v39 = v58;
  v41 = &v21[v23];
  v42 = v54;
  (*(v57 + 32))(v54, v41, v58);
  v43 = *v38;
  v64 = *v42;
  v65 = v64;
  v66 = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v44 = specialized static Locale.== infix(_:_:)(&v66, &v65);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v44 & 1) != 0 && (*(v38 + 2) == *(v42 + 2) && *(v38 + 3) == *(v42 + 3) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (specialized static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v38[*(v39 + 40)], &v42[*(v39 + 40)]))
  {
    v45 = *(v40 + 8);
    v45(v42, v39);
    v45(v38, v39);
    v35 = 1;
    v34 = v61;
  }

  else
  {
    v47 = *(v40 + 8);
    v47(v42, v39);
    v47(v38, v39);
    v35 = 0;
    v34 = v61;
  }

LABEL_19:
  (*(v34 + 8))(v21, v9);
  return v35;
}

uint64_t IntegerFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000)
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

uint64_t IntegerFormatStyle.Attributed.Style.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x72656765746E69;
  }

  if (a1 == 1)
  {
    return 0x746E6563726570;
  }

  return 0x79636E6572727563;
}

uint64_t IntegerFormatStyle.Attributed.Style.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IntegerFormatStyle.Currency();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v32 - v5;
  v6 = type metadata accessor for IntegerFormatStyle.Percent();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v13;
  v14 = type metadata accessor for IntegerFormatStyle();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerFormatStyle.Attributed.Style.CodingKeys();
  swift_getWitnessTable();
  v20 = type metadata accessor for KeyedEncodingContainer();
  v47 = *(v20 - 8);
  v48 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v16 + 16))(v19, v45, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v39;
      v24 = v40;
      v26 = v41;
      (*(v40 + 32))(v39, v19, v41);
      v52 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v27 = v37;
    }

    else
    {
      v25 = v42;
      v24 = v43;
      v26 = v44;
      (*(v43 + 32))(v42, v19, v44);
      v53 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v27 = v38;
    }

    v28 = v48;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  else
  {
    v24 = v35;
    v26 = v36;
    v25 = v33;
    (*(v35 + 32))(v33, v19, v36);
    v51 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v27 = v34;
    v28 = v48;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  swift_getWitnessTable();
  v30 = v50;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v49 + 8))(v27, v30);
  (*(v24 + 8))(v25, v26);
  return (*(v47 + 8))(v29, v28);
}

uint64_t IntegerFormatStyle.Attributed.Style.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v3 = v2;
  v212 = type metadata accessor for IntegerFormatStyle.Currency();
  v216 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v205 - v6;
  v217 = type metadata accessor for IntegerFormatStyle.Percent();
  v215 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v8 = &v205 - v7;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v218 = *(v9 - 8);
  v219 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v213 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v211 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v210 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v205 - v16);
  v18 = type metadata accessor for IntegerFormatStyle();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v205 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v3, a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v8;
      (*(v215 + 32))(v8, v25, v217);
      MEMORY[0x1865CD060](1);
      v29 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 48))(ObjectType, v29);
      v33 = v218;
      v32 = v219;
      if (v31)
      {
        v34 = 1;
LABEL_11:
        Hasher._combine(_:)(v34);
        goto LABEL_83;
      }

      Hasher._combine(_:)(0);
      (*(v29 + 64))(ObjectType, v29);
      String.hash(into:)();

      (*(v29 + 464))(&v220, ObjectType, v29);
      v233 = v226;
      v234[0] = v227[0];
      *(v234 + 12) = *(v227 + 12);
      *v230 = v222;
      *&v230[16] = v223;
      v231 = v224;
      v232 = v225;
      v228 = v220;
      v229 = v221;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v228) == 1)
      {
        v34 = 0;
        goto LABEL_11;
      }

      v48 = v220;
      v49 = *(&v220 + 1);
      v50 = *(&v221 + 1);
      v206 = v221;
      v51 = *(&v222 + 1);
      v207 = v222;
      *&v208[24] = *(&v223 + 1);
      *&v208[32] = v224;
      *&v208[48] = v225;
      *&v208[64] = v226;
      *v208 = *(&v227[0] + 1);
      v209 = *&v227[0];
      *&v208[8] = v223;
      v211 = *&v227[1];
      v212 = BYTE8(v227[1]);
      v214 = BYTE9(v227[1]);
      v52 = BYTE10(v227[1]);
      v53 = BYTE11(v227[1]);
      Hasher._combine(_:)(1u);
      if (v48 == 2)
      {
        v54 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v54 = v48 & 1;
      }

      LODWORD(v216) = v53;
      Hasher._combine(_:)(v54);
      if (v49)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v49 + 16));
        v67 = *(v49 + 16);
        if (v67)
        {
          v68 = v49 + 40;
          do
          {

            String.hash(into:)();

            v68 += 16;
            --v67;
          }

          while (v67);
        }

        if (v50)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v50)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v33 = v218;
      v32 = v219;
      v73 = *&v208[32];
      *&v208[16] = v52;
      if (v51)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v74 = v211;
      v75 = *&v208[48];
      v76 = *&v208[8];
      if (*&v208[8])
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v76, v77, v78, v79, v80, v81, v82);
        v83 = *&v208[24];
        if (*&v208[24])
        {
          goto LABEL_51;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v83 = *&v208[24];
        if (*&v208[24])
        {
LABEL_51:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v83, v84, v85, v86, v87, v88, v89);
          if (v73)
          {
            goto LABEL_52;
          }

          goto LABEL_57;
        }
      }

      Hasher._combine(_:)(0);
      if (v73)
      {
LABEL_52:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v208[40])
        {
          goto LABEL_53;
        }

        goto LABEL_58;
      }

LABEL_57:
      Hasher._combine(_:)(0);
      if (*&v208[40])
      {
LABEL_53:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v75)
        {
LABEL_54:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_60;
        }

LABEL_59:
        Hasher._combine(_:)(0);
LABEL_60:
        v90 = *&v208[16];
        if (*&v208[56])
        {
          v91 = v214;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*&v208[64])
          {
LABEL_62:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_65;
          }
        }

        else
        {
          v91 = v214;
          Hasher._combine(_:)(0);
          if (*&v208[64])
          {
            goto LABEL_62;
          }
        }

        Hasher._combine(_:)(0);
LABEL_65:
        v92 = v91;
        v93 = v90;
        v94 = *&v208[72];
        if (*&v208[72])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v94);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v95 = v74;
        v96 = v209;
        if (v209)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v96);
          v97 = v212;
          if (v95)
          {
            goto LABEL_70;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v97 = v212;
          if (v95)
          {
LABEL_70:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            if (v97 == 2)
            {
              goto LABEL_71;
            }

            goto LABEL_76;
          }
        }

        Hasher._combine(_:)(0);
        if (v97 == 2)
        {
LABEL_71:
          Hasher._combine(_:)(0);
          if (v92 != 2)
          {
            goto LABEL_72;
          }

          goto LABEL_77;
        }

LABEL_76:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v97 & 1);
        if (v92 != 2)
        {
LABEL_72:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v92 & 1);
          if (v93 != 2)
          {
LABEL_73:
            Hasher._combine(_:)(1u);
            v98 = v93 & 1;
LABEL_79:
            Hasher._combine(_:)(v98);
            v99 = v216;
            if (v216 == 2)
            {
              v100 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v100 = v99 & 1;
            }

            Hasher._combine(_:)(v100);
            outlined destroy of TermOfAddress?(&v220, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_83:
            v101 = &v28[*(v217 + 36)];
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
            v228 = *(v101 + 1);
            v229 = v104;
            *v230 = *(v101 + 3);
            *&v230[9] = *(v101 + 57);
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

            v106 = *(v101 + 37);
            v107 = v106 | (v101[76] << 16);
            if (v106 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v107 & 1);
              MEMORY[0x1865CD060]((v107 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v107) & 1);
            }

            v108 = v101[77];
            if (v108 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v108 & 1);
            }

            v109 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v110 = v210;
            outlined init with copy of FloatingPointRoundingRule?(&v101[v109[9]], v210);
            if ((*(v33 + 48))(v110, 1, v32) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v111 = v213;
              (*(v33 + 32))(v213, v110, v32);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v33 + 8))(v111, v32);
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

            v116 = v101[v109[11]];
            if (v116 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v116);
            }

            return (*(v215 + 8))(v28, v217);
          }

LABEL_78:
          v98 = 0;
          goto LABEL_79;
        }

LABEL_77:
        Hasher._combine(_:)(0);
        if (v93 != 2)
        {
          goto LABEL_73;
        }

        goto LABEL_78;
      }

LABEL_58:
      Hasher._combine(_:)(0);
      if (v75)
      {
        goto LABEL_54;
      }

      goto LABEL_59;
    }

    v39 = v214;
    v40 = v212;
    v216[4](v214, v25, v212);
    MEMORY[0x1865CD060](2);
    v41 = *(v39 + 1);
    v42 = swift_getObjectType();
    v43 = (*(v41 + 48))(v42, v41);
    v44 = v218;
    v45 = v219;
    if (v43)
    {
      v46 = 1;
LABEL_16:
      Hasher._combine(_:)(v46);
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v41 + 64))(v42, v41);
    String.hash(into:)();

    (*(v41 + 464))(&v220, v42, v41);
    v233 = v226;
    v234[0] = v227[0];
    *(v234 + 12) = *(v227 + 12);
    *v230 = v222;
    *&v230[16] = v223;
    v231 = v224;
    v232 = v225;
    v228 = v220;
    v229 = v221;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v228) == 1)
    {
      v46 = 0;
      goto LABEL_16;
    }

    v61 = v220;
    v62 = *(&v220 + 1);
    v63 = *(&v221 + 1);
    v205 = v221;
    v64 = *(&v222 + 1);
    v206 = v222;
    *v208 = v223;
    *&v208[16] = v224;
    *&v208[32] = v225;
    *&v208[48] = v226;
    v207 = *(&v227[0] + 1);
    *&v208[64] = *&v227[0];
    v209 = *&v227[1];
    v210 = BYTE8(v227[1]);
    v215 = BYTE9(v227[1]);
    LODWORD(v217) = BYTE10(v227[1]);
    v65 = BYTE11(v227[1]);
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

      *&v208[72] = v65;
      if (v63)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      *&v208[72] = v65;
      if (v63)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_186;
      }
    }

    Hasher._combine(_:)(0);
LABEL_186:
    v161 = *&v208[56];
    v162 = *v208;
    if (v64)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v44 = v218;
    v45 = v219;
    v40 = v212;
    v163 = *&v208[16];
    if (v162)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v162, v164, v165, v166, v167, v168, v169);
      v170 = *&v208[8];
      if (*&v208[8])
      {
        goto LABEL_191;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v170 = *&v208[8];
      if (*&v208[8])
      {
LABEL_191:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v170, v171, v172, v173, v174, v175, v176);
        if (v163)
        {
LABEL_192:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_196;
        }

LABEL_195:
        Hasher._combine(_:)(0);
LABEL_196:
        v177 = v161;
        if (*&v208[24])
        {
          v178 = v209;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*&v208[32])
          {
LABEL_198:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_201;
          }
        }

        else
        {
          v178 = v209;
          Hasher._combine(_:)(0);
          if (*&v208[32])
          {
            goto LABEL_198;
          }
        }

        Hasher._combine(_:)(0);
LABEL_201:
        v179 = v178;
        v180 = v177;
        if (*&v208[40])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*&v208[48])
          {
            goto LABEL_203;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*&v208[48])
          {
LABEL_203:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            v181 = v215;
            if (v180)
            {
              goto LABEL_204;
            }

            goto LABEL_209;
          }
        }

        Hasher._combine(_:)(0);
        v181 = v215;
        if (v180)
        {
LABEL_204:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v180);
          v182 = *&v208[64];
          if (*&v208[64])
          {
            goto LABEL_205;
          }

          goto LABEL_210;
        }

LABEL_209:
        Hasher._combine(_:)(0);
        v182 = *&v208[64];
        if (*&v208[64])
        {
LABEL_205:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v182);
          v183 = v217;
          if (v179)
          {
LABEL_206:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_212;
          }

LABEL_211:
          Hasher._combine(_:)(0);
LABEL_212:
          v184 = v210;
          if (v210 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v184 & 1);
          }

          v185 = *&v208[72];
          if (v181 == 2)
          {
            Hasher._combine(_:)(0);
            if (v183 != 2)
            {
LABEL_217:
              Hasher._combine(_:)(1u);
              v186 = v183 & 1;
LABEL_220:
              Hasher._combine(_:)(v186);
              if (v185 == 2)
              {
                v187 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v187 = v185 & 1;
              }

              Hasher._combine(_:)(v187);
              outlined destroy of TermOfAddress?(&v220, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_224:
              String.hash(into:)();
              v188 = &v39[*(v40 + 40)];
              if (v188[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v189 = *v188;
                Hasher._combine(_:)(1u);
                if ((v189 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v190 = v189;
                }

                else
                {
                  v190 = 0;
                }

                MEMORY[0x1865CD090](v190);
              }

              v191 = *(v188 + 2);
              v228 = *(v188 + 1);
              v229 = v191;
              *v230 = *(v188 + 3);
              *&v230[9] = *(v188 + 57);
              specialized Optional<A>.hash(into:)();
              v192 = v188[73];
              if (v192 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v192 & 1);
              }

              v193 = *(v188 + 74);
              if (*(v188 + 74) == 2)
              {
                LOBYTE(v194) = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v193 & 1);
                MEMORY[0x1865CD060]((v193 >> 8) & 1);
                MEMORY[0x1865CD060](WORD1(v193) & 1);
                v194 = BYTE3(v193) & 1;
              }

              Hasher._combine(_:)(v194);
              v195 = v188[78];
              if (v195 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v195 & 1);
              }

              v196 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
              v197 = v211;
              outlined init with copy of FloatingPointRoundingRule?(&v188[v196[9]], v211);
              v198 = v40;
              if ((*(v44 + 48))(v197, 1, v45) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v199 = v213;
                (*(v44 + 32))(v213, v197, v45);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v44 + 8))(v199, v45);
              }

              v200 = &v188[v196[10]];
              v201 = v200[8];
              if (v201 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v202 = *v200;
                Hasher._combine(_:)(1u);
                if (v201)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v202 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v203 = v202;
                  }

                  else
                  {
                    v203 = 0;
                  }

                  MEMORY[0x1865CD090](v203);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v202);
                }
              }

              MEMORY[0x1865CD060](v188[v196[11]]);
              v204 = v188[v196[12]];
              if (v204 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v204);
              }

              return (v216[1])(v214, v198);
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v181 & 1);
            if (v183 != 2)
            {
              goto LABEL_217;
            }
          }

          v186 = 0;
          goto LABEL_220;
        }

LABEL_210:
        Hasher._combine(_:)(0);
        v183 = v217;
        if (v179)
        {
          goto LABEL_206;
        }

        goto LABEL_211;
      }
    }

    Hasher._combine(_:)(0);
    if (v163)
    {
      goto LABEL_192;
    }

    goto LABEL_195;
  }

  v216 = v17;
  v217 = v19;
  (*(v19 + 32))(v21, v25, v18);
  MEMORY[0x1865CD060](0);
  v35 = *(v21 + 1);
  v36 = swift_getObjectType();
  if ((*(v35 + 48))(v36, v35))
  {
    Hasher._combine(_:)(1u);
    v38 = v218;
    v37 = v219;
    goto LABEL_154;
  }

  Hasher._combine(_:)(0);
  (*(v35 + 64))(v36, v35);
  String.hash(into:)();

  (*(v35 + 464))(&v220, v36, v35);
  v233 = v226;
  v234[0] = v227[0];
  *(v234 + 12) = *(v227 + 12);
  *v230 = v222;
  *&v230[16] = v223;
  v231 = v224;
  v232 = v225;
  v228 = v220;
  v229 = v221;
  v47 = _s10Foundation17LocalePreferencesVSgWOg(&v228);
  v38 = v218;
  v37 = v219;
  if (v47 == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_154;
  }

  v55 = v220;
  v56 = *(&v220 + 1);
  v57 = *(&v221 + 1);
  v206 = v221;
  v58 = *(&v222 + 1);
  v207 = v222;
  *&v208[8] = v223;
  *&v208[24] = v224;
  *&v208[40] = v225;
  *&v208[56] = v226;
  *v208 = *(&v227[0] + 1);
  *&v208[72] = *&v227[0];
  v210 = *&v227[1];
  v211 = BYTE8(v227[1]);
  v212 = BYTE9(v227[1]);
  LODWORD(v214) = BYTE10(v227[1]);
  v59 = BYTE11(v227[1]);
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

  v215 = v18;
  Hasher._combine(_:)(v60);
  if (v56)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v56 + 16));
    v69 = *(v56 + 16);
    if (v69)
    {
      v70 = v56 + 40;
      do
      {

        String.hash(into:)();

        v70 += 16;
        --v69;
      }

      while (v69);
    }

    LODWORD(v209) = v59;
    if (v57)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    LODWORD(v209) = v59;
    if (v57)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_115;
    }
  }

  Hasher._combine(_:)(0);
LABEL_115:
  v118 = *&v208[64];
  v119 = *&v208[8];
  if (v58)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v218;
  v37 = v219;
  v18 = v215;
  if (v119)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v119, v120, v121, v122, v123, v124, v125);
    v126 = *&v208[16];
    if (*&v208[16])
    {
      goto LABEL_120;
    }

LABEL_123:
    Hasher._combine(_:)(0);
    if (*&v208[24])
    {
      goto LABEL_121;
    }

    goto LABEL_124;
  }

  Hasher._combine(_:)(0);
  v126 = *&v208[16];
  if (!*&v208[16])
  {
    goto LABEL_123;
  }

LABEL_120:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v126, v127, v128, v129, v130, v131, v132);
  if (*&v208[24])
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_125;
  }

LABEL_124:
  Hasher._combine(_:)(0);
LABEL_125:
  v133 = v118;
  if (*&v208[32])
  {
    v134 = v210;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v208[40])
    {
LABEL_127:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_130;
    }
  }

  else
  {
    v134 = v210;
    Hasher._combine(_:)(0);
    if (*&v208[40])
    {
      goto LABEL_127;
    }
  }

  Hasher._combine(_:)(0);
LABEL_130:
  v135 = v134;
  if (*&v208[48])
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v208[56])
    {
      goto LABEL_132;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*&v208[56])
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v133)
      {
        goto LABEL_133;
      }

      goto LABEL_138;
    }
  }

  Hasher._combine(_:)(0);
  if (v133)
  {
LABEL_133:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v133);
    v136 = *&v208[72];
    if (*&v208[72])
    {
      goto LABEL_134;
    }

LABEL_139:
    Hasher._combine(_:)(0);
    v137 = v214;
    if (v135)
    {
      goto LABEL_135;
    }

LABEL_140:
    Hasher._combine(_:)(0);
    goto LABEL_141;
  }

LABEL_138:
  Hasher._combine(_:)(0);
  v136 = *&v208[72];
  if (!*&v208[72])
  {
    goto LABEL_139;
  }

LABEL_134:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v136);
  v137 = v214;
  if (!v135)
  {
    goto LABEL_140;
  }

LABEL_135:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_141:
  v138 = v211;
  if (v211 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v138 & 1);
  }

  v139 = v212;
  if (v212 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v139 & 1);
  }

  v140 = v209;
  if (v137 == 2)
  {
    v141 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v141 = v137 & 1;
  }

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
  outlined destroy of TermOfAddress?(&v220, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_154:
  v143 = &v21[*(v18 + 36)];
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

  v146 = *(v143 + 2);
  v228 = *(v143 + 1);
  v229 = v146;
  *v230 = *(v143 + 3);
  *&v230[9] = *(v143 + 57);
  specialized Optional<A>.hash(into:)();
  v147 = v143[73];
  if (v147 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v147 & 1);
  }

  v148 = *(v143 + 37);
  v149 = v148 | (v143[76] << 16);
  if (v148 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v149 & 1);
    MEMORY[0x1865CD060]((v149 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v149) & 1);
  }

  v150 = v143[77];
  if (v150 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v150 & 1);
  }

  v151 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v152 = v216;
  outlined init with copy of FloatingPointRoundingRule?(&v143[v151[9]], v216);
  if ((*(v38 + 48))(v152, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v153 = v18;
    v154 = v213;
    (*(v38 + 32))(v213, v152, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v155 = v154;
    v18 = v153;
    (*(v38 + 8))(v155, v37);
  }

  v156 = &v143[v151[10]];
  v157 = v156[8];
  if (v157 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v158 = *v156;
    Hasher._combine(_:)(1u);
    if (v157)
    {
      MEMORY[0x1865CD060](1);
      if ((v158 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v159 = v158;
      }

      else
      {
        v159 = 0;
      }

      MEMORY[0x1865CD090](v159);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v158);
    }
  }

  v160 = v143[v151[11]];
  if (v160 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v160);
  }

  return (*(v217 + 8))(v21, v18);
}