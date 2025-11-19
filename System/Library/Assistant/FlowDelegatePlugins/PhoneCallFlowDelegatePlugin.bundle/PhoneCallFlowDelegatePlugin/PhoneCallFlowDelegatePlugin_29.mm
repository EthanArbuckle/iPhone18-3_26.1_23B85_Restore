uint64_t PhoneCallProvider.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0x72656469766F7270;
  }

  return 0xD000000000000010;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallProvider.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallProvider.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallProvider.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallProvider.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallProvider.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerBundleId);
  return v0;
}

uint64_t PhoneCallProvider.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t PhoneCallProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_66();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(v12, v13);
  OUTLINED_FUNCTION_11_9();
  if (!v1)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_11_9();
    v15[13] = 2;
    OUTLINED_FUNCTION_11_9();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallProvider.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.init(from:)(a1);
  return v2;
}

id *PhoneCallProvider.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v34[3] = v34 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v35);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  v3[2] = 0;
  v19 = a1[3];
  v20 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallProvider(0);
    v23 = *(*v3 + 12);
    v24 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34[1] = v10;
    v34[2] = v15;
    type metadata accessor for SpeakableString();
    v39 = 0;
    OUTLINED_FUNCTION_5_66();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(v21, v22);
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v26, v27);
    v38 = 1;
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v28, v29);
    v37 = 2;
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = OUTLINED_FUNCTION_1_85();
    v31(v30);
    v32 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v32, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v3;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallProvider(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallProvider()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallProvider.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallProviderProperties.isFirstPartyPhone.getter(uint64_t a1, uint64_t a2)
{
  return PhoneCallProviderProperties.isFirstPartyPhone.getter(a1, a2);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - v7;
  (*(a2 + 8))(a1, a2, v6);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v8);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = SpeakableString.print.getter();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13 = INPreferredCallProviderGetBackingType();
  switch(v13)
  {
    case 4:
      v14 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v14 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v14 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v15 = v14;
      goto LABEL_12;
  }

  v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
LABEL_12:
  v16 = v14;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v11)
  {
    if (v10 == v17 && v11 == v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, uint64_t *a3, void (**a4)(uint64_t, char *))
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(*(v9 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(a1, a2, v15, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

uint64_t PhoneCallRecord.Options.description.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v2 = v3;
  v4 = v3[2];
  if (v4 >= v3[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = v10;
  }

  v2[2] = v4 + 1;
  v5 = &v2[2 * v4];
  v5[4] = 0xD000000000000016;
  v5[5] = 0x800000000045EBE0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = v2[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v12;
    }

    v6 = v2[2];
    if (v6 >= v2[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v13;
    }

    v2[2] = v6 + 1;
    v7 = &v2[2 * v6];
    strcpy(v7 + 32, ".announceCalls");
    v7[47] = -18;
  }

LABEL_12:
  v8 = Array.description.getter();

  return v8;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.union(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.symmetricDifference(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.remove(_:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.update(with:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SetAlgebra.subtracting(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X8>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)();
  *a1 = result;
  return result;
}

uint64_t static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, void *a3, void (**a4)(uint64_t, char *))
{
  v8 = a3[3];
  v9 = a3[4];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);

  return specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(a1, a2, v10, a4, v4, v8, v9);
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t PhoneCallRecord.description.getter()
{
  type metadata accessor for PhoneCallRecord(0);
  lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord();
  CATType.toDictionary.getter();
  v0 = Dictionary.description.getter();

  return v0;
}

uint64_t outlined bridged method (ob) of @objc INPerson.alternatives.getter(void *a1)
{
  v2 = [a1 alternatives];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, char *), uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 32))(v17, v18, v19, v15);
  v20 = specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(a1, a2, v17, a4, a5, a6, a7);
  v21 = (*(a5 + 320))(v20);

  v22 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_23_5(v22);
  (*(v23 + 8))(a4);
  (*(v13 + 8))(v17, a6);
  return v21;
}

uint64_t specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, char *), uint64_t a5, uint64_t a6, void *a7)
{
  v257 = a7;
  v254 = a4;
  v251 = a2;
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v231 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for Locale();
  v252 = *(v256 - 1);
  v13 = *(v252 + 64);
  __chkstk_darwin(v256);
  v255 = (&v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = type metadata accessor for SpeakableString();
  v240 = *(v241 - 8);
  v15 = *(v240 + 64);
  __chkstk_darwin(v241);
  v232 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v233 = &v217 - v18;
  __chkstk_darwin(v19);
  v245 = &v217 - v20;
  __chkstk_darwin(v21);
  v253 = &v217 - v22;
  __chkstk_darwin(v23);
  v244 = &v217 - v24;
  __chkstk_darwin(v25);
  v243 = &v217 - v26;
  __chkstk_darwin(v27);
  v242 = &v217 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v217 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v250 = &v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v217 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v218 = &v217 - v45;
  __chkstk_darwin(v46);
  v246 = &v217 - v47;
  __chkstk_darwin(v48);
  v229 = &v217 - v49;
  __chkstk_darwin(v50);
  v237 = &v217 - v51;
  __chkstk_darwin(v52);
  v236 = &v217 - v53;
  __chkstk_darwin(v54);
  v228 = &v217 - v55;
  __chkstk_darwin(v56);
  v249 = &v217 - v57;
  __chkstk_darwin(v58);
  v60 = &v217 - v59;
  v61 = *(*(a6 - 8) + 64);
  v63 = __chkstk_darwin(v62);
  v65 = &v217 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v66;
  (*(v66 + 16))(v65, a3, a6, v63);
  type metadata accessor for App();
  v247 = a1;
  outlined bridged method (pb) of @objc INCallRecord.providerBundleId.getter(a1);
  v234 = App.__allocating_init(appIdentifier:)();
  v225 = v65;
  AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(v234, v254, a6, v257);
  if (v67)
  {
    SpeakableString.init(print:speak:)();
    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v235 = v60;
  __swift_storeEnumTagSinglePayload(v60, v68, 1, v241);
  v69 = [v247 dateCreated];
  if (v69)
  {
    v70 = v69;
    v71 = v250;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = *(v34 + 32);
    v72(v32, v71, v33);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    v72(v39, v32, v33);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    Date.init()();
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      outlined destroy of PhoneCallNLIntent?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  type metadata accessor for DialogCalendar();
  v238 = static DialogCalendar.make(date:)();
  (*(v34 + 8))(v39, v33);
  v73 = [v247 callRecordType];
  v227 = a6;
  v219 = v43;
  if (v73)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v75 = @"OUTGOING";
        goto LABEL_20;
      case 3:
        v75 = @"MISSED";
        goto LABEL_20;
      case 4:
        v75 = @"RECEIVED";
        goto LABEL_20;
      case 5:
        v75 = @"LATEST";
        goto LABEL_20;
      case 7:
        v75 = @"VOICEMAIL";
        goto LABEL_20;
      case 8:
        v75 = @"RINGING";
        goto LABEL_20;
      case 9:
        v75 = @"IN_PROGRESS";
        goto LABEL_20;
      case 10:
        v75 = @"ON_HOLD";
LABEL_20:
        v77 = v75;
        break;
      default:
        v75 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v76 = v252;
    v78 = v75;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v76 = v252;
  }

  SpeakableString.init(serializedValue:)();
  SpeakableString.init(print:speak:)();
  SpeakableString.init(print:speak:)();
  v79 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v247);
  if (v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  v258[0] = _swiftEmptyArrayStorage;
  v81 = specialized Array.count.getter(v80);
  v82 = 0;
  v217 = 0;
  v252 = v80 & 0xC000000000000001;
  v248 = v80 & 0xFFFFFFFFFFFFFF8;
  v254 = (v76 + 8);
  v257 = _swiftEmptyArrayStorage;
  v250 = _swiftEmptyArrayStorage;
  v83 = v255;
  while (v81 != v82)
  {
    if (v252)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v82 >= *(v248 + 16))
      {
        goto LABEL_129;
      }

      v84 = *(v80 + 8 * v82 + 32);
    }

    v85 = v84;
    v86 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v260, v260[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v260);
    v32 = static PhonePerson.make(phonePerson:options:locale:)(v85, v251 & 2, v83);

    (*v254)(v83, v256);
    ++v82;
    if (v32)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v258[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v258[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v250 = v258[0];
      v82 = v86;
    }
  }

  v87 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v247);
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = _swiftEmptyArrayStorage;
  }

  v89 = specialized Array.count.getter(v88);
  v90 = 0;
  v83 = v240;
  v252 = v240 + 32;
  v32 = v241;
  while (v89 != v90)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v90 >= *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_131;
      }

      v91 = *(v88 + 8 * v90 + 32);
    }

    v92 = v91;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_130;
    }

    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v91);
    SpeakableString.init(print:speak:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = v257[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v257 = v96;
    }

    v93 = v257[2];
    if (v93 >= v257[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v257 = v97;
    }

    v94 = v257;
    v257[2] = v93 + 1;
    (*(v83 + 32))(v94 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v93, v253, v32);
    ++v90;
  }

  v98 = v250;
  v253 = specialized Array.count.getter(v250);
  if (!v253)
  {
    v99 = 0;
    goto LABEL_55;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v98 & 0xC000000000000001) == 0, v98);
  if ((v98 & 0xC000000000000001) == 0)
  {
    v99 = *(v98 + 4);

    goto LABEL_55;
  }

LABEL_136:
  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
  static Device.current.getter();
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  v100 = CATWrapper.__allocating_init(options:globals:)();
  v260[0] = v247;
  v260[6] = v100;
  v101 = v247;
  CallRecordDisplayTextComponents.callDateText.getter();
  v102 = v245;
  static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)(v245);

  v105 = *(v83 + 8);
  v104 = v83 + 8;
  v103 = v105;
  v106 = v243;
  v105(v243, v32);
  v239 = *(v104 + 24);
  v239(v106, v102, v32);
  v245 = v101;
  v107 = INCallRecord.callDuration.getter();
  v230 = v105;
  if ((v108 & 1) == 0)
  {
    v109 = *&v107;
    v110 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v110 setUnitsStyle:0];
    [v110 setAllowedUnits:192];
    [v110 setZeroFormattingBehavior:0x10000];
    v111 = [v110 stringFromTimeInterval:ceil(v109)];
    if (v111)
    {
      v112 = v111;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v113._countAndFlagsBits = 48;
      v113._object = 0xE100000000000000;
      v114 = String.hasPrefix(_:)(v113);

      if (v114)
      {
        specialized Collection.dropFirst(_:)(1uLL);
        static String._fromSubstring(_:)();
      }
    }

    v103 = v230;
  }

  v115 = v233;
  SpeakableString.init(print:speak:)();
  v116 = v244;
  v103(v244, v32);
  v239(v116, v115, v32);
  v117 = v245;
  if ([v245 callRecordType] != &dword_4 + 1)
  {
    if (![v117 preferredCallProvider])
    {
      v224 = 0xE700000000000000;
      v223 = 0x4E574F4E4B4E55;
      goto LABEL_64;
    }

    v140 = INPreferredCallProviderGetBackingType();
    if (v140 == 4)
    {
      v118 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_62;
    }

    if (v140 == 3)
    {
      v118 = @"FACETIME_PROVIDER";
      goto LABEL_62;
    }

    if (v140 != 2)
    {
      v118 = [NSString stringWithFormat:@"(unknown: %i)", v140];
      goto LABEL_63;
    }
  }

  v118 = @"TELEPHONY_PROVIDER";
LABEL_62:
  v119 = v118;
LABEL_63:
  v120 = v118;
  v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v224 = v121;

LABEL_64:
  v122 = type metadata accessor for PhoneCallRecord.Builder(0);
  v123 = *(v122 + 48);
  v124 = *(v122 + 52);
  swift_allocObject();
  v125 = PhoneCallRecord.Builder.init()();
  v126 = v245;
  v127 = [v245 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v128 = v249;
  SpeakableString.init(serializedValue:)();
  __swift_storeEnumTagSinglePayload(v128, 0, 1, v32);
  v129 = (*(*v125 + 856))(v128);

  outlined destroy of PhoneCallNLIntent?(v128, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v130 = *(*v129 + 872);

  v132 = v130(v131);

  v133 = (*(*v132 + 888))(v99);

  v134 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v126);
  v221 = v99;
  v220 = v104;
  v222 = v133;
  if (v134)
  {
    v135 = v134;
    if (specialized Array.count.getter(v134))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v135 & 0xC000000000000001) == 0, v135);
      if ((v135 & 0xC000000000000001) != 0)
      {
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v136 = *(v135 + 32);
      }

      v137 = v136;

      v138 = outlined bridged method (ob) of @objc INPerson.alternatives.getter(v137);
      if (v138)
      {
        v139 = v138;
      }

      else
      {
        v139 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v139 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v139 = _swiftEmptyArrayStorage;
  }

  v233 = _swiftEmptyArrayStorage;
  v259 = _swiftEmptyArrayStorage;
  v141 = specialized Array.count.getter(v139);
  v142 = 0;
  v248 = v139 & 0xC000000000000001;
  v247 = (v139 & 0xFFFFFFFFFFFFFF8);
  v83 = v255;
  while (v141 != v142)
  {
    if (v248)
    {
      v143 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v142 >= *(v247 + 2))
      {
        goto LABEL_133;
      }

      v143 = *(v139 + 8 * v142 + 32);
    }

    v144 = v143;
    v145 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      goto LABEL_132;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v258, v258[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v258);
    v32 = static PhonePerson.make(phonePerson:options:locale:)(v144, 0, v83);

    (*v254)(v83, v256);
    ++v142;
    if (v32)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v259 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v259 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v233 = v259;
      v142 = v145;
    }
  }

  v146 = (*(*v222 + 904))(v233);

  v147 = (v240 + 16);
  v148 = *(v240 + 16);
  v149 = v249;
  v83 = v241;
  v148(v249, v242, v241);
  __swift_storeEnumTagSinglePayload(v149, 0, 1, v83);
  v150 = (*(*v146 + 912))(v149);

  outlined destroy of PhoneCallNLIntent?(v149, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v151 = v245;
  v152 = INCallRecord.refinedCallDurationAsDouble.getter();
  LOBYTE(v149) = v153;
  type metadata accessor for PhoneCallMetrics();
  if (v149)
  {
    v154 = 0;
  }

  else
  {
    v154 = v152;
  }

  v155 = PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(0, 0, v154, 0);
  v156 = (*(*v150 + 928))(v155);

  v157 = INCallRecord.refinedUnseenAsBool.getter();
  v158 = (*(*v156 + 944))(v157 & 1);

  if ([v151 callCapability])
  {
    v159 = INCallCapabilityGetBackingType();
    if (v159 == 2)
    {
      v160 = @"VIDEO_CALL";
    }

    else
    {
      if (v159 != 1)
      {
        v160 = [NSString stringWithFormat:@"(unknown: %i)", v159];
        goto LABEL_100;
      }

      v160 = @"AUDIO_CALL";
    }

    v161 = v160;
LABEL_100:
    v162 = v160;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v163 = v228;
  SpeakableString.init(serializedValue:)();
  v164 = 1;
  __swift_storeEnumTagSinglePayload(v163, 0, 1, v83);
  v165 = (*(*v158 + 952))(v163);

  outlined destroy of PhoneCallNLIntent?(v163, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v166 = INCallRecord.refinedNumberOfCallsAsInt.getter();
  if (v167)
  {
    v166 = 0;
  }

  v168 = _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(v166);
  v170 = (*(*v165 + 968))(v168, v169 & 1);

  v171 = v236;
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v171, 0, 1, v83);
  outlined init with copy of SpeakableString?(v235, v237);
  App.appIdentifier.getter();
  v173 = v229;
  if (v172)
  {
    SpeakableString.init(print:speak:)();
    v164 = 0;
  }

  __swift_storeEnumTagSinglePayload(v173, v164, 1, v83);
  type metadata accessor for PhoneCallProvider(0);
  v174 = PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(v236, v237, v173);
  v175 = (*(*v170 + 976))(v174);

  v176 = v245;
  IsCallerIDBlockedAs = INCallRecord.refinedIsCallerIDBlockedAsBool.getter();
  v178 = (*(*v175 + 992))(IsCallerIDBlockedAs & 1);

  v179 = v249;
  v148(v249, v243, v83);
  __swift_storeEnumTagSinglePayload(v179, 0, 1, v83);
  v180 = (*(*v178 + 1016))(v179);

  v256 = v147;
  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v181 = SpeakableString.print.getter();
  v255 = v148;
  v32 = v251;
  static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(v181, v182);

  v183 = (*(*v180 + 1032))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v184 = SpeakableString.print.getter();
  static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(v184, v185);

  v186 = (*(*v183 + 1048))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static Device.current.getter();
  static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(v176, v32 & 1);
  __swift_destroy_boxed_opaque_existential_1(v258);
  v187 = (*(*v186 + 1080))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(v176, v32 & 1);
  v188 = (*(*v187 + 1096))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static CallRecordViewUtils.generatedActionForOpeningCallRecord(callRecord:forCallHistoryDisplay:)(v176, v32 & 1);
  v189 = (*(*v188 + 1112))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v255(v179, v244, v83);
  __swift_storeEnumTagSinglePayload(v179, 0, 1, v83);
  v190 = (*(*v189 + 1128))(v179);

  outlined destroy of PhoneCallNLIntent?(v179, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v191 = INCallRecord.refinedCallDurationAsDouble.getter();
  v193 = (*(*v190 + 1168))(v191, v192 & 1);

  v194 = v250;
  v255 = (*(*v193 + 1144))(v250);

  v195 = 0;
  v196 = v194 & 0xC000000000000001;
  v197 = v194 & 0xFFFFFFFFFFFFFF8;
  v256 = _swiftEmptyArrayStorage;
  while (v253 != v195)
  {
    if (v196)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v195 >= *(v197 + 16))
      {
        goto LABEL_135;
      }

      v198 = *&v194[8 * v195 + 32];
    }

    v32 = v195 + 1;
    if (__OFADD__(v195, 1))
    {
      goto LABEL_134;
    }

    v199 = v249;
    dispatch thunk of DialogPerson.toString.getter();
    v200 = v246;
    outlined init with take of SpeakableString?(v199, v246);

    if (__swift_getEnumTagSinglePayload(v200, 1, v83) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v200, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v195;
      v194 = v250;
    }

    else
    {
      v239(v232, v200, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v203 = *(v256 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v256 = v204;
      }

      v194 = v250;
      v201 = *(v256 + 2);
      if (v201 >= *(v256 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v256 = v205;
      }

      v202 = v256;
      *(v256 + 2) = v201 + 1;
      v239(&v202[((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v201], v232, v83);
      v195 = v32;
    }
  }

  v206 = (*(*v255 + 1152))(v256);

  v207 = (*(*v206 + 1160))(v257);

  if (v251)
  {
    v208 = type metadata accessor for PhoneCallRecord(0);
    v209 = *(v208 + 48);
    v210 = *(v208 + 52);
    swift_allocObject();

    PhoneCallRecord.init(builder:)(v211);
    type metadata accessor for SearchCallHistoryCATs();
    static CATOption.defaultMode.getter();
    CATWrapper.__allocating_init(options:globals:)();
    v212 = v218;
    v213 = v217;
    static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)(v218);
    if (v213)
    {

      __swift_storeEnumTagSinglePayload(v212, 1, 1, v83);
    }

    v214 = v219;
    (*(*v207 + 1000))(v212);

    outlined destroy of PhoneCallNLIntent?(v212, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)(v214);
    (*(*v207 + 1064))(v214);

    outlined destroy of PhoneCallNLIntent?(v214, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
  }

  v215 = v230;
  outlined destroy of CallRecordDisplayTextComponents(v260);
  v215(v244, v83);
  v215(v243, v83);
  v215(v242, v83);
  outlined destroy of PhoneCallNLIntent?(v235, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v226 + 8))(v225, v227);
  return v207;
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord)
  {
    type metadata accessor for PhoneCallRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

uint64_t PhoneCallRecord.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PhoneCallRecord.Builder.init()();
  return v3;
}

uint64_t PhoneCallRecord.__allocating_init(builder:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PhoneCallRecord.init(builder:)(a1);
  return v5;
}

uint64_t key path setter for PhoneCallRecord.Builder.identifier : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 280))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.dateCreated : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);

  return v3(v4);
}

uint64_t key path setter for PhoneCallRecord.Builder.caller : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);

  return v3(v4);
}

uint64_t key path setter for PhoneCallRecord.Builder.aliases : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t key path setter for PhoneCallRecord.Builder.callRecordType : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 376))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.callMetrics : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 400);

  return v3(v4);
}

uint64_t PhoneCallRecord.Builder.unseen.getter()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen;
  OUTLINED_FUNCTION_146();
  return *(v0 + v1);
}

uint64_t PhoneCallRecord.Builder.unseen.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.callCapability : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 448))(v7);
}

uint64_t PhoneCallRecord.Builder.numberOfCalls.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_64_10();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.callProvider : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 496);

  return v3(v4);
}

uint64_t PhoneCallRecord.Builder.dateCreated.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_146();
  v3 = *(v1 + v2);
}

uint64_t PhoneCallRecord.Builder.dateCreated.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_78_3();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t PhoneCallRecord.Builder.isCallerIdBlocked.getter()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked;
  OUTLINED_FUNCTION_146();
  return *(v0 + v1);
}

uint64_t PhoneCallRecord.Builder.isCallerIdBlocked.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.displayName : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 544))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayDateTime : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 568))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayTextColor : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 592))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.displaySymbolIcon : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 616))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayCallDetail : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 640))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.selectAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 664))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.playVoicemailAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 688))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.openCallRecordAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 712))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.callDuration : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 736))(v7);
}

uint64_t key path setter for PhoneCallRecord.Builder.participants : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 760);

  return v3(v4);
}

uint64_t key path setter for PhoneCallRecord.Builder.participantsNames : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 784);

  return v3(v4);
}

uint64_t key path setter for PhoneCallRecord.Builder.contactIds : PhoneCallRecord.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 808);

  return v3(v4);
}

uint64_t PhoneCallRecord.Builder.aliases.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_146();
  v3 = *(v1 + v2);
}

uint64_t PhoneCallRecord.Builder.aliases.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_78_3();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t PhoneCallRecord.Builder.numberOfCalls.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t PhoneCallRecord.Builder.callDurationInterval.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_64_10();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PhoneCallRecord.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_identifier;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_dateCreated) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_caller) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_aliases) = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callRecordType);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callMetrics) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen) = 0;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callCapability);
  v3 = v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_numberOfCalls;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callProvider) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked) = 0;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayName);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayDateTime);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayTextColor);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displaySymbolIcon);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayCallDetail);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_selectAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_playVoicemailAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_openCallRecordAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDuration);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participants) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participantsNames) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_contactIds) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDurationInterval;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t PhoneCallRecord.Builder.withIdentifier(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 280))(v0);
}

uint64_t PhoneCallRecord.Builder.withIdentifier(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 280))(v0);
}

uint64_t PhoneCallRecord.Builder.withDateCreated(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 304);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withDateCreated(_:)(uint64_t a1)
{
  if (a1)
  {
    dispatch thunk of DialogCalendar.Builder.build()();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 304))();
}

uint64_t PhoneCallRecord.Builder.withCaller(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 328);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCaller(_:)(uint64_t a1)
{
  if (a1)
  {
    dispatch thunk of DialogPerson.Builder.build()();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 328))();
}

uint64_t PhoneCallRecord.Builder.withAliases(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 352);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallRecordType(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 376))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallRecordType(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 376))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallMetrics(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 400);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallMetrics(_:)(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 168))();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 400))();
}

uint64_t PhoneCallRecord.Builder.withUnseen(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 424))();
}

uint64_t PhoneCallRecord.Builder.withCallCapability(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 448))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallCapability(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 448))(v0);
}

uint64_t PhoneCallRecord.Builder.withNumberOfCalls(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 472))();
}

uint64_t PhoneCallRecord.Builder.withCallProvider(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 496);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallProvider(_:)(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 240))();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 496))();
}

uint64_t PhoneCallRecord.Builder.withIsCallerIdBlocked(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 520))();
}

uint64_t PhoneCallRecord.Builder.withDisplayName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 544))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 544))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayDateTime(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 568))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayDateTime(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 568))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayTextColor(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 592))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayTextColor(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 592))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplaySymbolIcon(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 616))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplaySymbolIcon(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 616))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayCallDetail(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 640))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayCallDetail(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 640))(v0);
}

uint64_t PhoneCallRecord.Builder.withSelectAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 664))(v0);
}

uint64_t PhoneCallRecord.Builder.withSelectAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 664))(v0);
}

uint64_t PhoneCallRecord.Builder.withPlayVoicemailAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 688))(v0);
}

uint64_t PhoneCallRecord.Builder.withPlayVoicemailAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 688))(v0);
}

uint64_t PhoneCallRecord.Builder.withOpenCallRecordAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 712))(v0);
}

uint64_t PhoneCallRecord.Builder.withOpenCallRecordAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 712))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallDuration(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_35_0();
  (*(v6 + 736))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallDuration(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v5);
  (*(v6 + 736))(v0);
}

uint64_t PhoneCallRecord.Builder.withParticipants(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 760);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withParticipantsNames(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 784);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withContactIds(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 808);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallDurationInterval(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 832))();
}

uint64_t PhoneCallRecord.Builder.build()()
{
  v0 = type metadata accessor for PhoneCallRecord(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  PhoneCallRecord.init(builder:)(v4);
  return v3;
}

uint64_t PhoneCallRecord.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_identifier);
  v1 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_dateCreated);

  v2 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_caller);

  v3 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_aliases);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callRecordType);
  v4 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callMetrics);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callCapability);
  v5 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callProvider);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayDateTime);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayTextColor);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displaySymbolIcon);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayCallDetail);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_selectAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_playVoicemailAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_openCallRecordAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDuration);
  v6 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participants);

  v7 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participantsNames);

  v8 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_contactIds);

  return v0;
}

uint64_t key path setter for PhoneCallRecord.mockGlobals : PhoneCallRecord(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);
  v4 = *a1;
  return v3(v2);
}

uint64_t PhoneCallRecord.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  *(v2 + 16) = 0;
  (*(*a1 + 272))(v8);
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated) = (*(v9 + 296))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller) = (*(*a1 + 320))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases) = (*(*a1 + 344))();
  (*(*a1 + 368))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics) = (*(v10 + 392))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen) = (*(*a1 + 416))() & 1;
  (*(*a1 + 440))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
  OUTLINED_FUNCTION_35_0();
  v12 = (*(v11 + 464))();
  v13 = v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
  *v13 = v12;
  *(v13 + 8) = v14 & 1;
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) = (*(*a1 + 488))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked) = (*(*a1 + 512))() & 1;
  (*(*a1 + 536))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
  OUTLINED_FUNCTION_35_0();
  (*(v15 + 560))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  OUTLINED_FUNCTION_35_0();
  (*(v16 + 584))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
  OUTLINED_FUNCTION_35_0();
  (*(v17 + 608))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  OUTLINED_FUNCTION_35_0();
  (*(v18 + 632))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
  OUTLINED_FUNCTION_35_0();
  (*(v19 + 656))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  OUTLINED_FUNCTION_35_0();
  (*(v20 + 680))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
  OUTLINED_FUNCTION_35_0();
  (*(v21 + 704))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  OUTLINED_FUNCTION_35_0();
  (*(v22 + 728))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants) = (*(v23 + 752))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames) = (*(*a1 + 776))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds) = (*(*a1 + 800))();
  v24 = (*(*a1 + 824))();
  v26 = v25;

  v27 = v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
  *v27 = v24;
  *(v27 + 8) = v26 & 1;
  return v2;
}

uint64_t PhoneCallRecord.__allocating_init(identifier:dateCreated:caller:aliases:callRecordType:callMetrics:unseen:callCapability:numberOfCalls:callProvider:isCallerIdBlocked:displayName:displayDateTime:displayTextColor:displaySymbolIcon:displayCallDetail:selectAction:playVoicemailAction:openCallRecordAction:callDuration:participants:participantsNames:contactIds:callDurationInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v33 = type metadata accessor for PhoneCallRecord.Builder(0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  PhoneCallRecord.Builder.init()();
  OUTLINED_FUNCTION_35_0();
  v37 = (*(v36 + 856))(a1);

  (*(*v37 + 872))(a2);

  OUTLINED_FUNCTION_35_0();
  v39 = (*(v38 + 888))(a3);

  (*(*v39 + 904))(a4);

  OUTLINED_FUNCTION_35_0();
  v41 = (*(v40 + 912))(a5);

  (*(*v41 + 928))(a6);

  OUTLINED_FUNCTION_35_0();
  v43 = (*(v42 + 944))(a7);

  (*(*v43 + 952))(a8);

  OUTLINED_FUNCTION_35_0();
  v45 = (*(v44 + 968))(a9, a10 & 1);

  (*(*v45 + 976))(a11);

  OUTLINED_FUNCTION_35_0();
  (*(v46 + 992))(a12);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v47 + 1000))(a13);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v48 + 1016))(a14);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v49 + 1032))(a15);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v50 + 1048))(a16);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v51 + 1064))(a17);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v52 + 1080))(a18);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v53 + 1096))(a19);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v54 + 1112))(a20);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v55 + 1128))(a21);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v56 + 1144))(a22);
  OUTLINED_FUNCTION_65_13();

  OUTLINED_FUNCTION_26_1();
  (*(v57 + 1152))(a23);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  v59 = (*(v58 + 1160))(a24);

  v60 = (*(*v59 + 1168))(a25, a26 & 1);

  v61 = (*(v64 + 320))(v60);

  outlined destroy of SpeakableString?(a21);
  outlined destroy of SpeakableString?(a20);
  outlined destroy of SpeakableString?(a19);
  outlined destroy of SpeakableString?(a18);
  outlined destroy of SpeakableString?(a17);
  outlined destroy of SpeakableString?(a16);
  outlined destroy of SpeakableString?(a15);
  outlined destroy of SpeakableString?(a14);
  outlined destroy of SpeakableString?(a13);
  outlined destroy of SpeakableString?(a8);
  outlined destroy of SpeakableString?(a5);
  outlined destroy of SpeakableString?(a1);
  return v61;
}

void PhoneCallRecord.getProperty(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  v153 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  v152 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v151 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  v150 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v149 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v148 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v23);
  v25 = &v148 - v24;
  __chkstk_darwin(v26);
  v28 = &v148 - v27;
  __chkstk_darwin(v29);
  v31 = &v148 - v30;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_77_11();
  __chkstk_darwin(v33);
  v35 = &v148 - v34;
  v154 = a1;
  v155 = a2;
  v36 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v36 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v37 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
    outlined init with copy of SpeakableString?(v37, v35);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v35);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v35;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_38_19();
  v42 = v36 && v41 == v40;
  if (v42 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated);
    if (!v3)
    {
      goto LABEL_10;
    }

    v43 = type metadata accessor for DialogCalendar();
    goto LABEL_19;
  }

  v44 = v154 == 0x72656C6C6163 && v155 == 0xE600000000000000;
  if (v44 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);
    if (!v3)
    {
      goto LABEL_10;
    }

    v43 = type metadata accessor for PhonePerson(0);
    goto LABEL_19;
  }

  v45 = v154 == 0x73657361696C61 && v155 == 0xE700000000000000;
  if (v45 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v46 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases;
LABEL_35:
    OUTLINED_FUNCTION_56_9(v46);
    v47 = &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd;
    v48 = &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR;
LABEL_36:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
    OUTLINED_FUNCTION_59_10(v49);

    return;
  }

  OUTLINED_FUNCTION_62_17();
  OUTLINED_FUNCTION_38_19();
  v52 = v36 && v51 == v50;
  if (v52 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v53 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
    outlined init with copy of SpeakableString?(v53, v4);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v4);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_38_19();
  v56 = v36 && v55 == v54;
  if (v56 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics);
    if (!v3)
    {
      goto LABEL_10;
    }

    v43 = type metadata accessor for PhoneCallMetrics();
    goto LABEL_19;
  }

  v57 = v154 == 0x6E6565736E75 && v155 == 0xE600000000000000;
  if (v57 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v58 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
LABEL_60:
    v59 = v157;
    v60 = *(v156 + v58);
    *(v157 + 24) = &type metadata for Bool;
    *v59 = v60;
    return;
  }

  OUTLINED_FUNCTION_61_17();
  OUTLINED_FUNCTION_38_19();
  v63 = v36 && v62 == v61;
  if (v63 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v64 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
    outlined init with copy of SpeakableString?(v64, v31);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v31);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v31;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_60_12();
  OUTLINED_FUNCTION_38_19();
  v67 = v36 && v66 == v65;
  if (v67 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v68 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_38_19();
  v74 = v36 && v73 == v72;
  if (v74 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
    if (!v3)
    {
      goto LABEL_10;
    }

    v43 = type metadata accessor for PhoneCallProvider(0);
LABEL_19:
    OUTLINED_FUNCTION_59_10(v43);

    return;
  }

  OUTLINED_FUNCTION_28_19();
  v77 = v36 && v75 == v76;
  if (v77 || (OUTLINED_FUNCTION_37_22() & 1) != 0)
  {
    v58 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_70_6();
  OUTLINED_FUNCTION_38_19();
  v80 = v36 && v79 == v78;
  if (v80 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v81 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
    outlined init with copy of SpeakableString?(v81, v28);
    v82 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v82);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v28;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_38_19();
  v85 = v36 && v84 == v83;
  if (v85 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v86 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
    outlined init with copy of SpeakableString?(v86, v25);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v25);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v25;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v89 = v36 && v87 == v88;
  if (v89 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v90 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
    outlined init with copy of SpeakableString?(v90, v3);
    v91 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v3, 1, v91) != 1)
    {
      v92 = v157;
      *(v157 + 24) = v91;
      __swift_allocate_boxed_opaque_existential_1(v92);
      v93 = *(*(v91 - 8) + 32);
LABEL_11:
      v93();
      return;
    }

    v38 = v3;
LABEL_9:
    outlined destroy of SpeakableString?(v38);
LABEL_10:
    v39 = v157;
    *v157 = 0u;
    *(v39 + 16) = 0u;
    return;
  }

  OUTLINED_FUNCTION_28_19();
  v96 = v36 && v94 == v95;
  if (v96 || (OUTLINED_FUNCTION_37_22() & 1) != 0)
  {
    v97 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
    outlined init with copy of SpeakableString?(v97, v148);
    v98 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v98);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v148;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_28_19();
  v101 = v36 && v99 == v100;
  if (v101 || (OUTLINED_FUNCTION_37_22() & 1) != 0)
  {
    v102 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
    outlined init with copy of SpeakableString?(v102, v149);
    v103 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v103);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v149;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v105 = v36 && v104 == 0xEC0000006E6F6974;
  if (v105 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v106 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
    outlined init with copy of SpeakableString?(v106, v150);
    v107 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v107);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v150;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v110 = v36 && v108 == v109;
  if (v110 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v111 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
    outlined init with copy of SpeakableString?(v111, v151);
    v112 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v112);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v151;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_73_6();
  v115 = v36 && v113 == v114;
  if (v115 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v116 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
    outlined init with copy of SpeakableString?(v116, v152);
    v117 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v117);
    if (!v36)
    {
      goto LABEL_160;
    }

    v38 = v152;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v119 = v36 && v118 == 0xEC0000006E6F6974;
  if (v119 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v120 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
    outlined init with copy of SpeakableString?(v120, v153);
    v121 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v121);
    if (!v36)
    {
LABEL_160:
      OUTLINED_FUNCTION_58_10();
      OUTLINED_FUNCTION_6_0();
      v93 = *(v122 + 32);
      goto LABEL_11;
    }

    v38 = v153;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_38_19();
  v125 = v36 && v124 == v123;
  if (v125 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v46 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_28_19();
  v128 = v36 && v126 == v127;
  if (v128 || (OUTLINED_FUNCTION_37_22() & 1) != 0)
  {
    v129 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames;
LABEL_180:
    OUTLINED_FUNCTION_56_9(v129);
    v47 = &_sSay16SiriDialogEngine15SpeakableStringVGMd;
    v48 = &_sSay16SiriDialogEngine15SpeakableStringVGMR;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_38_19();
  v132 = v36 && v131 == v130;
  if (v132 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
  {
    v129 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds;
    goto LABEL_180;
  }

  OUTLINED_FUNCTION_73_6();
  v135 = v36 && v133 == v134;
  if (!v135 && (OUTLINED_FUNCTION_52_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_28_19();
    v138 = v36 && v136 == v137;
    if (v138 || (OUTLINED_FUNCTION_37_22() & 1) != 0)
    {
      if (!specialized PhoneCallRecordProperties<>.callerWithAliases.getter())
      {
        goto LABEL_10;
      }

      v139 = type metadata accessor for PhonePersonWithAliasesList();
      OUTLINED_FUNCTION_59_10(v139);
    }

    else
    {
      OUTLINED_FUNCTION_73_6();
      v142 = v36 && v141 == v140;
      if (v142 || (OUTLINED_FUNCTION_52_16() & 1) != 0)
      {
        v143 = specialized PhoneCallRecordProperties<>.isFaceTimeVideo.getter();
      }

      else
      {
        OUTLINED_FUNCTION_73_6();
        v146 = v36 && v145 == v144;
        if (!v146 && (OUTLINED_FUNCTION_52_16() & 1) == 0)
        {
          goto LABEL_10;
        }

        v143 = specialized PhoneCallRecordProperties<>.isFaceTimeAudio.getter();
      }

      v147 = v157;
      *(v157 + 24) = &type metadata for Bool;
      *v147 = v143 & 1;
    }

    return;
  }

  v68 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
LABEL_75:
  v69 = (v156 + v68);
  if (v69[1])
  {
    goto LABEL_10;
  }

  v70 = *v69;
  v71 = v157;
  *(v157 + 24) = &type metadata for Double;
  *v71 = v70;
}

uint64_t specialized PhoneCallRecordProperties<>.callerWithAliases.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);

  v3 = specialized closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(v2, v0);

  type metadata accessor for PhonePersonWithAliasesList.Builder();
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  *(v4 + 16) = v3;
  type metadata accessor for PhonePersonWithAliasesList();
  swift_allocObject();
  return PhonePersonList.init(builder:)(v4);
}

uint64_t specialized PhoneCallRecordProperties<>.isFaceTimeVideo.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) || (specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    return 0;
  }

  return specialized PhoneCallRecordProperties<>.isVideo.getter();
}

uint64_t specialized PhoneCallRecordProperties<>.isFaceTimeAudio.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
  if (!v6)
  {
    return v6 & 1;
  }

  if ((specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, v5);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    outlined destroy of SpeakableString?(v5);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = SpeakableString.print.getter();
    v9 = v10;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v12 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_13;
    }

    v12 = @"AUDIO_CALL";
  }

  v13 = v12;
LABEL_13:
  v14 = v12;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v9)
  {
    if (v8 == v15 && v9 == v17)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional __swiftcall PhoneCallRecord.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v1;
  }
}

uint64_t PhoneCallRecord.CodingKeys.rawValue.getter(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_69_10();
      break;
    case 2:
      result = 0x72656C6C6163;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = OUTLINED_FUNCTION_62_17();
      break;
    case 5:
      result = OUTLINED_FUNCTION_67_11();
      break;
    case 6:
      result = 0x6E6565736E75;
      break;
    case 7:
      result = OUTLINED_FUNCTION_61_17();
      break;
    case 8:
      result = OUTLINED_FUNCTION_60_12();
      break;
    case 9:
      result = OUTLINED_FUNCTION_71_6();
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = OUTLINED_FUNCTION_70_6();
      break;
    case 12:
      result = OUTLINED_FUNCTION_63_11();
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x63417463656C6573;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
    case 23:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x617275446C6C6163;
      break;
    case 20:
      result = OUTLINED_FUNCTION_68_8();
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x49746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallRecord.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallRecord.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallRecord.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallRecord.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallRecord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallRecord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallRecord.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated);

  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);

  v3 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
  v4 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
  v5 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants);

  v7 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames);

  v8 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);

  return v0;
}

uint64_t PhoneCallRecord.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_35_0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t PhoneCallRecord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = v35 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_25_26();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v14, v15);
  OUTLINED_FUNCTION_8_55();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated);
    OUTLINED_FUNCTION_75_9(1);
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_44_14();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v16, v17);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);
    v18 = OUTLINED_FUNCTION_75_9(2);
    type metadata accessor for PhonePerson(v18);
    OUTLINED_FUNCTION_23_23();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v19, v20);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);
    v36 = 3;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    v22 = _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson);
    OUTLINED_FUNCTION_29_23();
    v35[2] = v21;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35[1] = v22;
    v37 = 4;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics);
    OUTLINED_FUNCTION_75_9(5);
    type metadata accessor for PhoneCallMetrics();
    OUTLINED_FUNCTION_43_21();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v23, v24);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
    OUTLINED_FUNCTION_39_17(6);
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = 7;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls);
    v27 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls + 8);
    v37 = 8;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
    v28 = OUTLINED_FUNCTION_75_9(9);
    type metadata accessor for PhoneCallProvider(v28);
    OUTLINED_FUNCTION_42_19();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v29, v30);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked);
    OUTLINED_FUNCTION_39_17(10);
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = 11;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 12;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 13;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 14;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 15;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 16;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 17;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 18;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = 19;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants);
    v36 = 20;
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames);
    v36 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
    v36 = 22;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval);
    v33 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval + 8);
    v37 = 23;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    OUTLINED_FUNCTION_25_26();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(a2, v5);
    result = OUTLINED_FUNCTION_82_6();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    OUTLINED_FUNCTION_0_95();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_3(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhoneCallRecord.__allocating_init(from:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_61();
  PhoneCallRecord.init(from:)(v3);
  return v0;
}

uint64_t PhoneCallRecord.init(from:)(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_2();
  v151 = v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  v148 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  v150 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v149 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  v152 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v153 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v154 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v24 = v144 - v23;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_77_11();
  __chkstk_darwin(v26);
  v28 = v144 - v27;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v30);
  v155 = v144 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMR);
  v33 = OUTLINED_FUNCTION_7(v32);
  v156 = v34;
  v157 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v37);
  v39 = v144 - v38;
  v160 = a1;
  v161 = v2;
  *(v2 + 16) = 0;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();
  v158 = v39;
  v41 = v159;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    v49 = v161;

    v50 = v160;
    goto LABEL_4;
  }

  v42 = v1;
  v159 = v3;
  v147 = v24;
  v43 = type metadata accessor for SpeakableString();
  LOBYTE(v163) = 0;
  OUTLINED_FUNCTION_25_26();
  v46 = _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v44, v45);
  v47 = v155;
  v48 = v157;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v146 = v46;
  v54 = v161;
  outlined init with take of SpeakableString?(v47, v161 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  type metadata accessor for DialogCalendar();
  v162 = 1;
  OUTLINED_FUNCTION_44_14();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v55, v56);
  OUTLINED_FUNCTION_48_18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated) = v163;
  type metadata accessor for PhonePerson(0);
  v162 = 2;
  OUTLINED_FUNCTION_23_23();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v57, v58);
  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_81_6();
  v145 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller) = v163;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  v162 = 3;
  v60 = _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson);
  OUTLINED_FUNCTION_50_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v144[2] = v60;
  *(v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases) = v163;
  OUTLINED_FUNCTION_39_17(4);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of SpeakableString?(v42, v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
  type metadata accessor for PhoneCallMetrics();
  v162 = 5;
  OUTLINED_FUNCTION_43_21();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v61, v62);
  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_81_6();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v144[1] = v43;
  *(v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics) = v163;
  OUTLINED_FUNCTION_72_7(6);
  v63 = v158;
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v156;
  *(v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen) = v64 & 1;
  OUTLINED_FUNCTION_39_17(7);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of SpeakableString?(v28, v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
  OUTLINED_FUNCTION_72_7(8);
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v155 = 0;
  v76 = v54 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
  *v76 = v74;
  *(v76 + 8) = v75 & 1;
  type metadata accessor for PhoneCallProvider(0);
  v162 = 9;
  OUTLINED_FUNCTION_42_19();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v77, v78);
  OUTLINED_FUNCTION_48_18();
  v79 = v155;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v155 = v79;
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_16_42();
    v81(v80);
    LODWORD(v28) = 0;
    v48 = 0;
    LODWORD(v148) = 0;
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_60();
  }

  else
  {
    OUTLINED_FUNCTION_80_7(v163);
    OUTLINED_FUNCTION_72_7(10);
    v63 = v158;
    v82 = v155;
    v83 = KeyedDecodingContainer.decode(_:forKey:)();
    v155 = v82;
    if (v82 || (*(v161 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked) = v83 & 1, OUTLINED_FUNCTION_39_17(11), v63 = v158, v84 = v155, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v155 = v84) != 0))
    {
      v85 = OUTLINED_FUNCTION_16_42();
      v86(v85);
      v48 = 0;
      LODWORD(v148) = 0;
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_60();
      LODWORD(v28) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
      outlined init with take of SpeakableString?(v159, v88);
      OUTLINED_FUNCTION_39_17(12);
      v63 = v158;
      v89 = v155;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v155 = v89;
      if (v89)
      {
        v90 = OUTLINED_FUNCTION_16_42();
        v91(v90);
        LODWORD(v148) = 0;
        OUTLINED_FUNCTION_0_84();
        OUTLINED_FUNCTION_3_72();
      }

      else
      {
        OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
        outlined init with take of SpeakableString?(v147, v92);
        OUTLINED_FUNCTION_39_17(13);
        v93 = v155;
        OUTLINED_FUNCTION_17_35();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v155 = v93;
        if (v93)
        {
          v94 = OUTLINED_FUNCTION_16_42();
          v95(v94);
          OUTLINED_FUNCTION_0_84();
          OUTLINED_FUNCTION_3_72();
          LODWORD(v148) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
          outlined init with take of SpeakableString?(v154, v96);
          OUTLINED_FUNCTION_39_17(14);
          OUTLINED_FUNCTION_17_35();
          v97 = v155;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v155 = v97;
          if (v97)
          {
            v98 = OUTLINED_FUNCTION_16_42();
            v99(v98);
            LODWORD(v150) = 0;
            OUTLINED_FUNCTION_2_82();
            OUTLINED_FUNCTION_1_86();
          }

          else
          {
            OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
            outlined init with take of SpeakableString?(v153, v100);
            OUTLINED_FUNCTION_39_17(15);
            OUTLINED_FUNCTION_17_35();
            v101 = v155;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v155 = v101;
            if (v101)
            {
              v102 = OUTLINED_FUNCTION_16_42();
              v103(v102);
              OUTLINED_FUNCTION_2_82();
              OUTLINED_FUNCTION_1_86();
              LODWORD(v150) = v104;
            }

            else
            {
              OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
              outlined init with take of SpeakableString?(v152, v105);
              OUTLINED_FUNCTION_39_17(16);
              OUTLINED_FUNCTION_17_35();
              v106 = v155;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v155 = v106;
              if (v106)
              {
                v107 = OUTLINED_FUNCTION_16_42();
                v108(v107);
                LODWORD(v152) = 0;
                OUTLINED_FUNCTION_4_58();
                OUTLINED_FUNCTION_1_86();
                LODWORD(v150) = v109;
                LODWORD(v151) = v109;
              }

              else
              {
                OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
                outlined init with take of SpeakableString?(v149, v110);
                OUTLINED_FUNCTION_39_17(17);
                OUTLINED_FUNCTION_17_35();
                v111 = v155;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v155 = v111;
                if (v111)
                {
                  v112 = OUTLINED_FUNCTION_16_42();
                  v113(v112);
                  OUTLINED_FUNCTION_4_58();
                  OUTLINED_FUNCTION_1_86();
                  LODWORD(v150) = v114;
                  LODWORD(v151) = v114;
                  LODWORD(v152) = v114;
                }

                else
                {
                  OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
                  outlined init with take of SpeakableString?(v150, v115);
                  OUTLINED_FUNCTION_39_17(18);
                  OUTLINED_FUNCTION_17_35();
                  v116 = v155;
                  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                  v155 = v116;
                  if (v116)
                  {
                    v117 = OUTLINED_FUNCTION_16_42();
                    v118(v117);
                    LODWORD(v154) = 0;
                    OUTLINED_FUNCTION_9_55();
                    OUTLINED_FUNCTION_1_86();
                    LODWORD(v150) = v119;
                    LODWORD(v151) = v119;
                    LODWORD(v152) = v119;
                    LODWORD(v153) = v119;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
                    outlined init with take of SpeakableString?(v148, v120);
                    OUTLINED_FUNCTION_39_17(19);
                    OUTLINED_FUNCTION_17_35();
                    v121 = v155;
                    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                    v155 = v121;
                    if (v121)
                    {
                      v122 = OUTLINED_FUNCTION_16_42();
                      v123(v122);
                      OUTLINED_FUNCTION_9_55();
                      OUTLINED_FUNCTION_1_86();
                      OUTLINED_FUNCTION_19_31(v124);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_49_18(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
                      outlined init with take of SpeakableString?(v151, v125);
                      v162 = 20;
                      OUTLINED_FUNCTION_50_19();
                      v63 = v158;
                      v126 = v155;
                      KeyedDecodingContainer.decode<A>(_:forKey:)();
                      v155 = v126;
                      if (v126)
                      {
                        v127 = OUTLINED_FUNCTION_16_42();
                        v128(v127);
                        LODWORD(v157) = 0;
                        LODWORD(v158) = 0;
                        LODWORD(v159) = 0;
                        OUTLINED_FUNCTION_1_86();
                        OUTLINED_FUNCTION_19_31(v129);
                        LODWORD(v156) = v130;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_80_7(v163);
                        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
                        v162 = 21;
                        v59 = lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
                        OUTLINED_FUNCTION_50_19();
                        OUTLINED_FUNCTION_66_12();
                        v155 = 0;
                        OUTLINED_FUNCTION_80_7(v163);
                        v162 = 22;
                        OUTLINED_FUNCTION_50_19();
                        OUTLINED_FUNCTION_66_12();
                        v155 = 0;
                        OUTLINED_FUNCTION_80_7(v163);
                        OUTLINED_FUNCTION_72_7(23);
                        v63 = v158;
                        v131 = v155;
                        v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                        v155 = v131;
                        if (!v131)
                        {
                          v138 = v132;
                          v139 = v133;
                          v140 = OUTLINED_FUNCTION_16_42();
                          v141(v140);
                          v142 = v160;
                          v49 = v161;
                          v143 = v161 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
                          *v143 = v138;
                          *(v143 + 8) = v139 & 1;
                          __swift_destroy_boxed_opaque_existential_1(v142);
                          return v49;
                        }

                        v134 = OUTLINED_FUNCTION_16_42();
                        v135(v134);
                        OUTLINED_FUNCTION_1_86();
                        OUTLINED_FUNCTION_19_31(v136);
                        LODWORD(v156) = v137;
                        LODWORD(v157) = v137;
                        LODWORD(v158) = v137;
                        LODWORD(v159) = v137;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v87 = v145;
  v49 = v161;

  outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  if (v87)
  {
    if (v42)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v68 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated);

    if (v42)
    {
LABEL_8:
      v66 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);

      if ((v59 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  if (!v59)
  {
LABEL_9:
    if (v63)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v69 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);

  if (v63)
  {
LABEL_10:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
    if ((v65 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v65)
  {
LABEL_11:
    v50 = v160;
    if (v60)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v70 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics);

  v50 = v160;
  if (v60)
  {
LABEL_12:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v28)
  {
LABEL_13:
    if (v48)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v71 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);

  if (v48)
  {
LABEL_14:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
    if ((v148 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v148)
  {
LABEL_15:
    if (v149)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  if (v149)
  {
LABEL_16:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
    if ((v150 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v150)
  {
LABEL_17:
    if (v151)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  if (v151)
  {
LABEL_18:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
    if ((v152 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v152)
  {
LABEL_19:
    if (v153)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  if (v153)
  {
LABEL_20:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
    if ((v154 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v154)
  {
LABEL_21:
    if (v156)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  if (v156)
  {
LABEL_22:
    outlined destroy of SpeakableString?(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
    if ((v157 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (!v157)
  {
LABEL_23:
    if (v158)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  v72 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants);

  if (v158)
  {
LABEL_24:
    v67 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames);

    if (v159)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

LABEL_43:
  if (v159)
  {
LABEL_44:
    v73 = *(v49 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
  }

LABEL_4:
  type metadata accessor for PhoneCallRecord(0);
  v51 = *(*v49 + 48);
  v52 = *(*v49 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v49;
}

uint64_t _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    OUTLINED_FUNCTION_23_23();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(a2, v5);
    result = OUTLINED_FUNCTION_82_6();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallRecord(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 312))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for PhoneCallRecordProperties.numberOfCalls.getter in conformance PhoneCallRecord()
{
  v1 = *v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for PhoneCallRecordProperties.callDurationInterval.getter in conformance PhoneCallRecord()
{
  v1 = *v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallRecord@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallRecord()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallRecord.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for PhoneCallRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = a1;
  v5 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);
  v8 = v4;

  specialized Array.append<A>(contentsOf:)(v6);
  return v8;
}

uint64_t OUTLINED_FUNCTION_37_22()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_54_20@<X0>(uint64_t a1@<X8>)
{

  return outlined init with take of SpeakableString?(v2, v1 + a1);
}

uint64_t *OUTLINED_FUNCTION_58_10()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_59_10(uint64_t result)
{
  v3 = *(v2 - 88);
  v3[3] = result;
  *v3 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_13()
{
}

uint64_t OUTLINED_FUNCTION_66_12()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 152);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_81_6()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_6()
{

  return swift_getWitnessTable();
}

uint64_t PhoneCallRecordProperties<>.callerWithAliases.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    return 0;
  }

  v4[0] = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);

  closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(v4, v0, &v5);

  v1 = v5;
  type metadata accessor for PhonePersonWithAliasesList.Builder();
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  *(v2 + 16) = v1;
  type metadata accessor for PhonePersonWithAliasesList();
  swift_allocObject();
  return PhonePersonList.init(builder:)(v2);
}

uint64_t PhoneCallRecordProperties<>.isFaceTimeVideo.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) || (specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    return 0;
  }

  return PhoneCallRecordProperties<>.isVideo.getter();
}

uint64_t PhoneCallRecordProperties<>.isFaceTimeAudio.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
  if (!v6)
  {
    return v6 & 1;
  }

  if ((specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, v5);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    outlined destroy of SpeakableString?(v5);
    v8 = 0;
    v1 = 0;
  }

  else
  {
    v8 = v5;
    SpeakableString.print.getter();
    OUTLINED_FUNCTION_0_85();
    (*(v9 + 8))(v5, v7);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v11 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_13;
    }

    v11 = @"AUDIO_CALL";
  }

  v12 = v11;
LABEL_13:
  v13 = v11;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v1)
  {
    if (v8 == v14 && v1 == v16)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = OUTLINED_FUNCTION_0_5();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v5;
  v7 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);
  v10 = v6;

  result = specialized Array.append<A>(contentsOf:)(v8);
  *a3 = v10;
  return result;
}

uint64_t PhoneCallRecordProperties<>.isVideo.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, &v19 - v4);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of SpeakableString?(v5);
    v7 = 0;
    v0 = 0;
  }

  else
  {
    v7 = v5;
    SpeakableString.print.getter();
    OUTLINED_FUNCTION_0_85();
    (*(v8 + 8))(v5, v6);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v10 = @"VIDEO_CALL";
    goto LABEL_8;
  }

  if (BackingType == 1)
  {
    v10 = @"AUDIO_CALL";
LABEL_8:
    v11 = v10;
    goto LABEL_10;
  }

  v10 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
LABEL_10:
  v12 = v10;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v0)
  {
    if (v7 == v13 && v0 == v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_5();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(uint64_t a1, void *a2, uint64_t a3, PhoneCallFlowDelegatePlugin::PhoneCallIntentClassNames a4)
{
  v7 = type metadata accessor for Parse();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = *(v16 + 72);
  v18 = OUTLINED_FUNCTION_40_0();
  v20 = v19(v18, v16);
  Input.parse.getter();
  v21 = v20;
  (*(*v20 + 192))(v30, v15);
  (*(v10 + 8))(v15, v7);
  if (v30[3])
  {
    outlined init with take of PhoneCallFeatureFlagProviding(v30, v31);
    static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(v31, a2, a3, a4);
    OUTLINED_FUNCTION_40_0();

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
    v24 = static os_log_type_t.error.getter();
    v25 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v27);
      OUTLINED_FUNCTION_23_24(&dword_0, v28, v24, "#PhoneCallRequestSupportPolicy getSiriKitIntent: couldn't convert input to its corresponding INIntent");
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  return v21;
}

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[6] = a4;
  v29[5] = a3;
  v29[4] = a2;
  v32 = a1;
  v30 = type metadata accessor for PhoneCallNLv3Intent(0);
  v4 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v7 = v6;
  v8 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [v9 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v36 = v11;
  v35 = v12;
  v34 = v13;
  v33 = v14;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v29[2] = __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v29[1] = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v29[3] = v7;
    v20 = v19;
    v37[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v37);
    *(v20 + 12) = 2080;
    v38 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25INSearchCallHistoryIntentCmMd, &_sSo25INSearchCallHistoryIntentCmMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v37);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_0, v16, v17, "#SKTransformer %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v31;
  outlined init with copy of SignalProviding(v32, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v26 = v25;
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v37);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v38);
        v26 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v37);
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v26 = v27;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v26;
}

{
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v43 = a1;
  v41 = type metadata accessor for PhoneCallNLv3Intent(0);
  v4 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v7 = v6;
  v8 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [v9 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v47 = v11;
  v46 = v12;
  v45 = v13;
  HIDWORD(v44) = v14;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v35 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = v7;
    v20 = v19;
    v48[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v48);
    *(v20 + 12) = 2080;
    v49 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCmMd, &_sSo30INIdentifyIncomingCallerIntentCmMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v48);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_0, v16, v17, "#SKTransformer %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v42;
  v25 = v43;
  outlined init with copy of SignalProviding(v43, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v31 = v30;
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v24, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v48);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
        v31 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v48);
    }

    __swift_destroy_boxed_opaque_existential_1(&v49);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v25, v38, v39, v40, v26, v27, v28, v29, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    v31 = v32;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v31;
}

{
  v44[4] = a4;
  v44[3] = a3;
  v45 = type metadata accessor for PhoneCallNLv3Intent(0);
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v47 = v7;
  v9 = v8;
  v52 = v10;
  v11 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = [v12 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v51 = v14;
  v50 = v15;
  v49 = v16;
  v48 = v17;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v44[2] = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v44[1] = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v44[0] = v19;
    v53[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v53);
    *(v24 + 12) = 2080;
    v54 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentCmMd, &_sSo26INAddCallParticipantIntentCmMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v53);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_0, v20, v21, "#SKTransformer %s to %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  outlined init with copy of SignalProviding(a1, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v29 = v46;
  if (swift_dynamicCast())
  {
    v30 = type metadata accessor for TransformationError();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for TransformationError.notImplemented(_:), v30);
    swift_willThrow();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v29, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v34 = 136315394;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v53);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v53);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    outlined destroy of PhoneCallNLv4Intent(v53);
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v54);
LABEL_16:
      v42 = 0;
      goto LABEL_17;
    }

    outlined destroy of PhoneCallIFIntent(v53);
  }

  __swift_destroy_boxed_opaque_existential_1(&v54);
  specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
  v42 = v41;
LABEL_17:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v42;
}

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1)
{
  v31 = type metadata accessor for PhoneCallNLv3Intent(0);
  v1 = OUTLINED_FUNCTION_23_1(v31);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  static Signpost.begin(_:)();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [v9 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v14, v15))
  {
    swift_slowAlloc();
    v34[0] = OUTLINED_FUNCTION_22_24();
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v34);
    *(v5 + 12) = 2080;
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INAnswerCallIntentCmMd, &_sSo18INAnswerCallIntentCmMR);
    v16 = String.init<A>(describing:)();
    v8 = v7;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v34);

    *(v5 + 14) = v18;
    _os_log_impl(&dword_0, v12, v13, "#SKTransformer %s to %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    v5 = v30;
    OUTLINED_FUNCTION_8();
  }

  outlined init with copy of SignalProviding(a1, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_11_45();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (v8)
    {
      OUTLINED_FUNCTION_9_56();
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_13;
    }

    v27 = v19;
    OUTLINED_FUNCTION_9_56();
    __swift_destroy_boxed_opaque_existential_1(&v35);
  }

  else
  {
    if (OUTLINED_FUNCTION_31_21())
    {
      outlined destroy of PhoneCallNLv4Intent(v34);
    }

    else
    {
      if ((OUTLINED_FUNCTION_31_21() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v35);
LABEL_19:
        v27 = 0;
        goto LABEL_20;
      }

      outlined destroy of PhoneCallIFIntent(v34);
    }

    __swift_destroy_boxed_opaque_existential_1(&v35);
    OUTLINED_FUNCTION_11_45();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (v8)
    {
LABEL_13:
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        swift_slowAlloc();
        v34[0] = OUTLINED_FUNCTION_22_24();
        *v5 = 136315394;
        v23 = _typeName(_:qualified:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v34);
        OUTLINED_FUNCTION_40_0();

        *(v5 + 4) = v29;
        *(v5 + 12) = 2080;
        swift_getErrorValue();
        v25 = Error.localizedDescription.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v34);
        OUTLINED_FUNCTION_40_0();

        *(v5 + 14) = v33;
        _os_log_impl(&dword_0, v21, v22, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s", v5, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      goto LABEL_19;
    }

    v27 = v20;
  }

LABEL_20:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v27;
}

id static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(void *a1, void *a2)
{
  v4 = type metadata accessor for PhoneError();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = static PhoneCallRequestSupportPolicy.getSiriKitIntentName(nlIntent:sharedGlobals:)(a1, a2);
  if (v11 != 8)
  {
    return PhoneCallIntentClassNames.intentInstance.getter(v11);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "#PhoneCallRequestSupportPolicy intentTypeName=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v22);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v10, type metadata accessor for PhoneError);
  return swift_willThrow();
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 40) = a1;
  return _swift_task_switch(static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:), 0, 0);
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)()
{
  v1 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(*(v0 + 16), *(v0 + 32), *(v0 + 24), *(v0 + 40));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_12_1(v2, static Logger.siriPhone);
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    *v7 = 0;
    _os_log_impl(&dword_0, v3, v4, "#PhoneCallRequestSupportPolicy: Not using SlotResolvers - NOT fully resolving INIntent before starting RCHFlow. RCHFlowDelegate should run makeIntentFromParse.", v7, 2u);
    OUTLINED_FUNCTION_8();
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t static PhoneCallRequestSupportPolicy.isHomePodPersonalRequest(intent:sharedGlobals:nlIntent:)(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_61();
  v8(v7, v5);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  OUTLINED_FUNCTION_61();
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v11 = OUTLINED_FUNCTION_12_1(v16, static Logger.siriPhone);
    v17 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v17))
    {
      goto LABEL_13;
    }

    *OUTLINED_FUNCTION_65_0() = 0;
    v15 = "Current request is not considered as a personal request since it's not a HomePod";
    goto LABEL_12;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a3, v42, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!v43)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_16:
    v19 = [a1 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
    if (v23)
    {
      OUTLINED_FUNCTION_12_49();
      v25 = v25 && v24 == v21;
      if (v25)
      {
        goto LABEL_41;
      }

      v26 = OUTLINED_FUNCTION_8_56();

      if (v26)
      {
        goto LABEL_42;
      }
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
    v27 = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(v27);
    if (v28)
    {
      OUTLINED_FUNCTION_12_49();
      if (v25 && v29 == v21)
      {
        goto LABEL_41;
      }

      v31 = OUTLINED_FUNCTION_8_56();

      if (v31)
      {
        goto LABEL_42;
      }
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    v32 = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(v32);
    if (!v33)
    {
LABEL_35:
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
      v37 = swift_getObjCClassFromMetadata();
      outlined bridged method (pb) of @objc static INIntent.typeName()(v37);
      if (!v38)
      {

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_12_49();
      if (!v25 || v39 != v21)
      {
        v18 = OUTLINED_FUNCTION_8_56();

        goto LABEL_43;
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_12_49();
    if (!v25 || v34 != v21)
    {
      v36 = OUTLINED_FUNCTION_8_56();

      if (v36)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

LABEL_41:

LABEL_42:

    v18 = 1;
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(v42, v43);
  OUTLINED_FUNCTION_43_3();
  v9 = PhoneCallNLIntent.isEmergencyServicesCall()();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if (!v9)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = OUTLINED_FUNCTION_12_1(v10, static Logger.siriPhone);
  v12 = static os_log_type_t.debug.getter();
  if (!OUTLINED_FUNCTION_10_0(v12))
  {
    goto LABEL_13;
  }

  *OUTLINED_FUNCTION_65_0() = 0;
  v15 = "Current request is not considered as a personal request since it's an emergency services call";
LABEL_12:
  OUTLINED_FUNCTION_33(&dword_0, v13, v14, v15);
  OUTLINED_FUNCTION_8();

LABEL_13:

LABEL_14:
  v18 = 0;
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v18 & 1;
}

uint64_t static PhoneCallRequestSupportPolicy.getFlowFromParse(parse:intentTypeName:resolvedApp:phoneCallNLIntent:sharedGlobals:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v127 = type metadata accessor for Parse();
  v9 = OUTLINED_FUNCTION_7(v127);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v126 = type metadata accessor for Input();
  v12 = OUTLINED_FUNCTION_7(v126);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = type metadata accessor for CATOption();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  OUTLINED_FUNCTION_4();
  switch(a2)
  {
    case 1:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      v84 = OUTLINED_FUNCTION_12_1(v83, static Logger.siriPhone);
      v85 = static os_log_type_t.debug.getter();
      v86 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v88);
        OUTLINED_FUNCTION_23_24(&dword_0, v89, v85, "Making HangUpCallFlow...");
        OUTLINED_FUNCTION_8();
      }

      v90 = OUTLINED_FUNCTION_2_83();
      v91(v90);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_25_27();
      v92 = type metadata accessor for HangUpCallFlow();
      v93 = *(v92 + 48);
      v94 = *(v92 + 52);
      swift_allocObject();

      v129[0] = HangUpCallFlow.init(input:sharedGlobals:app:)(v17, v129, a3);
      v78 = &lazy protocol witness table cache variable for type HangUpCallFlow and conformance PhoneFlow<A, B>;
      v79 = type metadata accessor for HangUpCallFlow;
      goto LABEL_16;
    case 2:
      v58 = type metadata accessor for IdentifyIncomingCallerCATsSimple();
      static CATOption.defaultMode.getter();
      v59 = CATWrapperSimple.__allocating_init(options:globals:)();
      v130 = v58;
      v131 = &protocol witness table for IdentifyIncomingCallerCATsSimple;
      OUTLINED_FUNCTION_24_30(v59);
      outlined init with copy of IdentifyIncomingCallerOutputStrategy(v129, v128);

      v61 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0rfsT8ResponseCTt2g5Tf4nen_nAA08IdentifyfsnO0V_Tg5(v60, v128, v133);
      outlined destroy of IdentifyIncomingCallerOutputStrategy(v129);
      v62 = OUTLINED_FUNCTION_2_83();
      v63(v62);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v65 = *(v64 + 192);
      v66 = OUTLINED_FUNCTION_17_36();
      v67(v66);
      v68 = OUTLINED_FUNCTION_4_59();
      v69(v68);
      v129[0] = v61;
      v70 = OUTLINED_FUNCTION_43_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
      lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
      OUTLINED_FUNCTION_30_28();
      goto LABEL_20;
    case 3:
      type metadata accessor for SearchCallHistoryFlow(0);
      OUTLINED_FUNCTION_25_27();
      v72 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v129);
      v75 = OUTLINED_FUNCTION_2_83();
      v76(v75);
      OUTLINED_FUNCTION_20_33();

      OUTLINED_FUNCTION_43_3();
      SearchCallHistoryFlow.__allocating_init(delegate:input:app:)();
      v129[0] = v77;
      v78 = &lazy protocol witness table cache variable for type SearchCallHistoryFlow and conformance SearchCallHistoryFlow;
      v79 = type metadata accessor for SearchCallHistoryFlow;
LABEL_16:
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(v78, v79);
      OUTLINED_FUNCTION_30_28();
      v36 = Flow.eraseToAnyFlow()();
      goto LABEL_21;
    case 4:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      v38 = OUTLINED_FUNCTION_12_1(v37, static Logger.siriPhone);
      v39 = static os_log_type_t.debug.getter();
      v40 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v42);
        OUTLINED_FUNCTION_23_24(&dword_0, v43, v39, "Making StartCallFlow...");
        OUTLINED_FUNCTION_8();
      }

      v44 = OUTLINED_FUNCTION_25_27();
      default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v128, v44);
      v45 = type metadata accessor for StartCallFlow();
      OUTLINED_FUNCTION_21_30(v45);
      OUTLINED_FUNCTION_61();

      v47 = StartCallFlow.init(app:sharedGlobals:appFinder:)(v46, v129, v128);
      v48 = OUTLINED_FUNCTION_2_83();
      v49(v48);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v51 = *(v50 + 192);
      v52 = OUTLINED_FUNCTION_17_36();
      v53(v52);
      v54 = OUTLINED_FUNCTION_4_59();
      v55(v54);
      v129[0] = v47;
      v56 = &lazy protocol witness table cache variable for type StartCallFlow and conformance PhoneFlow<A, B>;
      v57 = type metadata accessor for StartCallFlow;
      goto LABEL_19;
    case 5:
      OUTLINED_FUNCTION_25_27();
      v95 = type metadata accessor for StartAudioCallFlow();
      OUTLINED_FUNCTION_21_30(v95);
      OUTLINED_FUNCTION_61();

      v97 = StartAudioCallFlow.init(app:sharedGlobals:)(v96, v129);
      v98 = OUTLINED_FUNCTION_2_83();
      v99(v98);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v101 = *(v100 + 192);
      v102 = OUTLINED_FUNCTION_17_36();
      v103(v102);
      v104 = OUTLINED_FUNCTION_4_59();
      v105(v104);
      v129[0] = v97;
      v56 = &lazy protocol witness table cache variable for type StartAudioCallFlow and conformance PhoneFlow<A, B>;
      v57 = type metadata accessor for StartAudioCallFlow;
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_25_27();
      v106 = type metadata accessor for StartVideoCallFlow();
      OUTLINED_FUNCTION_21_30(v106);
      OUTLINED_FUNCTION_61();

      v108 = StartVideoCallFlow.init(app:sharedGlobals:)(v107, v129);
      v109 = OUTLINED_FUNCTION_2_83();
      v110(v109);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v112 = *(v111 + 192);
      v113 = OUTLINED_FUNCTION_17_36();
      v114(v113);
      v115 = OUTLINED_FUNCTION_4_59();
      v116(v115);
      v129[0] = v108;
      v56 = &lazy protocol witness table cache variable for type StartVideoCallFlow and conformance PhoneFlow<A, B>;
      v57 = type metadata accessor for StartVideoCallFlow;
LABEL_19:
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(v56, v57);
      OUTLINED_FUNCTION_30_28();
      goto LABEL_20;
    case 7:
      outlined init with copy of SignalProviding(a4, v129);
      outlined init with copy of SignalProviding(a5, v128);
      v80 = type metadata accessor for AddCallParticipantFlow();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_61();

      v129[0] = AddCallParticipantFlow.init(nlIntent:app:sharedGlobals:)(v129, a3, v128);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type AddCallParticipantFlow and conformance PhoneFlow<A, B>, type metadata accessor for AddCallParticipantFlow);
      OUTLINED_FUNCTION_30_28();
LABEL_20:
      v36 = Flow.eraseToAnyFlow()();
      goto LABEL_21;
    case 8:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      __swift_project_value_buffer(v118, static Logger.siriPhone);
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      v119._countAndFlagsBits = 0xD00000000000001ELL;
      v119._object = 0x800000000045ED40;
      String.append(_:)(v119);
      LOBYTE(v128[0]) = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMR);
      v120._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v120);

      v121._object = 0x800000000045ED60;
      v121._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v121);
      swift_bridgeObjectRetain_n();
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v128[0] = v125;
        *v124 = 136315138;
        *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v128);
        _os_log_impl(&dword_0, v122, v123, "%s", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v125);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    default:
      v21 = a5[3];
      v20 = a5[4];
      __swift_project_boxed_opaque_existential_1(a5, v21);
      (*(v20 + 8))(v132, v21, v20);
      v22 = type metadata accessor for AnswerCallCATsSimple();
      static CATOption.defaultMode.getter();
      v23 = CATWrapperSimple.__allocating_init(options:globals:)();
      v132[8] = &type metadata for AudioSessionManager;
      v132[9] = &protocol witness table for AudioSessionManager;
      v132[13] = &type metadata for EntitlementChecker;
      v132[14] = &protocol witness table for EntitlementChecker;
      v130 = v22;
      v131 = &protocol witness table for AnswerCallCATsSimple;
      OUTLINED_FUNCTION_24_30(v23);
      outlined init with copy of AnswerCallOutputStrategy(v129, v128);

      v25 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo08INAnswerB6IntentC_So0rbS8ResponseCTt2g5Tf4nen_nAA06AnswerbnO0V_Tg5(v24, v128, v133);
      v26 = OUTLINED_FUNCTION_2_83();
      v27(v26);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v29 = *(v28 + 192);
      v30 = OUTLINED_FUNCTION_17_36();
      v31(v30);
      v32 = OUTLINED_FUNCTION_4_59();
      v33(v32);
      v128[0] = v25;
      v34 = OUTLINED_FUNCTION_43_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
      v36 = Flow.eraseToAnyFlow()();
      outlined destroy of AnswerCallOutputStrategy(v129);
LABEL_21:

      return v36;
  }
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntentName(nlIntent:sharedGlobals:)(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 8))(v24, v3, v4);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isAnswerCall()() || (v6 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isJoinCall()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 0;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isAddParticipant()() || (v9 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isRemoveParticipant()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 7;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isHangUpCall()())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 1;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isIncomingCallSearch()())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 2;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isSearchCallOrVoiceMail()() || (v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isDelete()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 3;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = PhoneCallNLIntent.hasAnyFaceTime()();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = PhoneCallNLIntent.hasAudioCallSemantic()();
  v18 = v17;
  if (v15)
  {
    v19 = v25;
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    if (((DeviceState.isAnyCar.getter(v19, v20) | v18) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 5;
  }

  if (v17)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (static PhoneCallRequestSupportPolicy.isVideoCall(nlIntent:device:)(a1, v24))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 6;
  }

  else
  {
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (PhoneCallNLIntent.isOutgoingCall()())
    {
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v23 = PhoneCallNLIntent.isVoiceMailCall()();
      __swift_destroy_boxed_opaque_existential_1(v24);
      if (v23)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      return 8;
    }
  }
}

uint64_t static PhoneCallRequestSupportPolicy.isVideoCall(nlIntent:device:)(void *a1, void *a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    LOBYTE(v5) = PhoneCallNLIntent.hasAnyFaceTime()();
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = PhoneCallNLIntent.hasAudioCallSemantic()();
    if (v5)
    {
      v8 = a2[3];
      v9 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v8);
      v7 |= DeviceState.isAnyCar.getter(v8, v9);
    }

    v10 = v7 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(void *a1, void *a2, uint64_t a3, PhoneCallFlowDelegatePlugin::PhoneCallIntentClassNames value)
{
  if (value == PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault)
  {
    v7 = static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(a1, a2);
    v8 = [v7 _className];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    v13.value = PhoneCallIntentClassNames.init(intentClassName:)(v12).value;
    if (v13.value == PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      v15 = OUTLINED_FUNCTION_12_1(v14, static Logger.siriPhone);
      v16 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_10_0(v16))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v17, v18, "#PhoneCallRequestSupportPolicy getSiriKitIntent: couldn't convert input to its corresponding INIntent");
        OUTLINED_FUNCTION_8();
      }

      return 0;
    }

    value = v13.value;
  }

  return static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(a1, a2, a3, value);
}

void *static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 80))(v22, v5, v6);
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 2:

      v7 = v22;
      v9 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v9, v10, v11, v12);
      break;
    case 3:

      v7 = v22;
      v13 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v13, v14, v15, v16);
      break;
    case 4:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 5:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 6:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 7:

      v7 = v22;
      v17 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v17, v18, v19, v20);
      break;
    default:

      v7 = v22;
      v8 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v8);
      break;
  }

  OUTLINED_FUNCTION_40_0();

  outlined destroy of SKTransformer(v22);
  return v7;
}

uint64_t outlined bridged method (pb) of @objc static INIntent.typeName()(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo08INAnswerB6IntentC_So0rbS8ResponseCTt2g5Tf4nen_nAA06AnswerbnO0V_Tg5(uint64_t a1, const void *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a3, v22);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v21[3] = &type metadata for AnswerCallOutputStrategy;
  v21[4] = &protocol witness table for AnswerCallOutputStrategy;
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), a2, 0xB0uLL);
  outlined init with copy of SignalProviding(v21, v16 + *(*v16 + 288));
  *(v16 + *(*v16 + 296)) = a1;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v12, v10, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  outlined init with copy of SignalProviding(v22, v20);
  v17 = specialized PhoneFlow.init(state:sharedGlobals:)(v10, v20);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v22);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0rfsT8ResponseCTt2g5Tf4nen_nAA08IdentifyfsnO0V_Tg5(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a3, v24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v23[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v23[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v17 = swift_allocObject();
  v23[0] = v17;
  v18 = *(a2 + 16);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a2 + 32);
  *(v17 + 64) = *(a2 + 48);
  outlined init with copy of SignalProviding(v23, v16 + *(*v16 + 288));
  *(v16 + *(*v16 + 296)) = a1;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v12, v10, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  outlined init with copy of SignalProviding(v24, v22);
  v19 = specialized PhoneFlow.init(state:sharedGlobals:)(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v24);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_21()
{

  return swift_dynamicCast();
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional __swiftcall PhoneCallSlotNames.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallSlotNames.rawValue.getter(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x756F526F69647561;
      break;
    case 2:
      result = 0x74616E6974736564;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x746361746E6F63;
      break;
    case 5:
      result = 0x73746361746E6F63;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x65707954797474;
      break;
    case 8:
      result = 0x617061436C6C6163;
      break;
    case 9:
      result = 0x657079546C6C6163;
      break;
    case 10:
      result = 0x6165724365746164;
      break;
    case 11:
      result = 0x6E65697069636572;
      break;
    case 12:
      result = 0x6E6565736E75;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x4370756F72477369;
      break;
    case 17:
      result = 0x756F72476C6C6163;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

void *PhoneCallSlotNames.startAudioCallParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for startAudioCallParameters != -1)
  {
    swift_once();
  }

  return &static PhoneCallSlotNames.startAudioCallParameters;
}

void one-time initialization function for startAudioCallParameters(uint64_t a1, Class *a2, void *a3)
{
  v4 = [objc_allocWithZone(*a2) init];
  v5 = INIntent.parameterMetadata.getter();

  *a3 = v5;
}

void *PhoneCallSlotNames.startCallParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for startCallParameters != -1)
  {
    swift_once();
  }

  return &static PhoneCallSlotNames.startCallParameters;
}

uint64_t static PhoneCallSlotNames.startAudioCallParameters.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t PhoneCallSlotNames.parameterIdentifier.getter(char a1)
{
  v1 = PhoneCallSlotNames.rawValue.getter(a1);

  return ParameterIdentifier.init(_:)(v1);
}

unint64_t lazy protocol witness table accessor for type PhoneCallSlotNames and conformance PhoneCallSlotNames()
{
  result = lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames;
  if (!lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallSlotNames@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional *a2@<X8>)
{
  result.value = PhoneCallSlotNames.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallSlotNames@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallSlotNames.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallSlotNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallSlotNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallStrategy.__allocating_init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  *(v5 + 56) = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v5 + 64);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a3, v5 + 104);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, v5 + 144);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, v5 + 16);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v5 + 16, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v11 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(v6 + 184) = v11 & 1;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t PhoneCallStrategy.__deallocating_deinit()
{
  PhoneCallStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.__allocating_init(outputProducer:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(a1, a2, a3);
  return v6;
}

void *PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[3] = a1;
  v3[4] = a2;
  outlined init with copy of SignalProviding(a3, (v3 + 5));
  type metadata accessor for YesNoConfirmationParser();
  v5 = swift_allocObject();
  *(v5 + 16) = 5;
  outlined init with take of SPHConversation(a3, v5 + 24);
  v3[2] = v5;
  return v3;
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - v8;
  (*(**(v1 + 16) + 128))(a1, v7);
  v10 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  outlined destroy of ConfirmationResponse?(v9);
  if (EnumTagSinglePayload == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError();
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[9];
  (*(**(v0[4] + 16) + 128))(v0[3]);
  v2 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v14 = v0[8];
  outlined init with copy of ConfirmationResponse?(v0[9], v14);
  v15 = *(v2 - 8);
  v16 = (*(v15 + 88))(v14, v2);
  v17 = v16;
  if (v16 == enum case for ConfirmationResponse.confirmed(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_18;
    }

    v21 = "PhoneCallYesNoConfirmationFlowStrategyTest user has confirmed to continue reading";
LABEL_17:
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v19, v20, v21, v23, 2u);

LABEL_18:
    v25 = v0[8];
    v24 = v0[9];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[2];

    (*(v15 + 104))(v26, v17, v2);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v2);
    SimpleConfirmationResponseProvider.init(_:)();
    outlined destroy of ConfirmationResponse?(v24);

    OUTLINED_FUNCTION_11();
    goto LABEL_19;
  }

  if (v16 == enum case for ConfirmationResponse.rejected(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_18;
    }

    v21 = "PhoneCallYesNoConfirmationFlowStrategyTest user has rejected to continue reading";
    goto LABEL_17;
  }

  (*(v15 + 8))(v0[8], v2);
LABEL_2:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#PhoneCallYesNoConfirmationFlowStrategyTest returns an unknown value, which is not expected", v6, 2u);
  }

  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v12);
  outlined destroy of PhoneError(v10);
  swift_willThrow();
  outlined destroy of ConfirmationResponse?(v8);

  OUTLINED_FUNCTION_11();
LABEL_19:

  return v13();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];
  v2 = *(v1 + 32);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v3 = *(*(v1 + 24) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = DialogOutputFactory.makeOutput();
  v5 = v0[2];

  return v7(v5);
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v3 + 40, (v0 + 8));
  v4 = type metadata accessor for DialogOutputFactory();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[18] = v7;
  v8 = *(*v7 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = PhoneCallYesNoConfirmationFlowStrategy.makeConfirmationRejectedResponse();

  return v12(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  if (*(v0 + 56))
  {
    *(v0 + 104) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined init with take of SPHConversation((v0 + 16), *(v0 + 112));
  }

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.makeFlow()()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 16))(v14, v1, v2);
  v3 = v15;
  v4 = v16;
  v5 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v13[3] = v3;
  v13[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, v10, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy);

  v11 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

void *PhoneCallYesNoConfirmationFlowStrategy.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t PhoneCallYesNoConfirmationFlowStrategy.__deallocating_deinit()
{
  PhoneCallYesNoConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance PhoneCallYesNoConfirmationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PhoneCasinoFactory.makeConfirmationCardSection(person:image:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Image();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Locale();
  v15 = OUTLINED_FUNCTION_7(v14);
  v64 = v16;
  v65 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v63 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v23 = a3[3];
  v24 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v23);
  (*(v24 + 8))(v71, v23, v24);
  __swift_project_boxed_opaque_existential_1(v71, v71[3]);
  v66 = v22;
  v25 = a1;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v71);
  v26 = [a1 personHandle];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 label];

    if (v28)
    {
      v29 = Locale.identifier.getter();
      v62 = v30;
      v71[0] = v29;
      v71[1] = v30;
      v69 = 45;
      v70 = 0xE100000000000000;
      v67 = 95;
      v68 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v31 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v27 = v32;
    }

    else
    {
      v31 = 0;
      v27 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  (*(v9 + 16))(v13, a2, v6);
  v33 = *(v9 + 88);
  v34 = OUTLINED_FUNCTION_104();
  v36 = v35(v34);
  if (v36 == enum case for Image.fromApp(_:))
  {
    v37 = *(v9 + 8);
    v38 = OUTLINED_FUNCTION_104();
    v39(v38);
    v40 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = [a1 image];
    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_87();
    v42 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();
  }

  else
  {
    if (v36 == enum case for Image.contact(_:))
    {
      v43 = *(v9 + 96);
      v44 = OUTLINED_FUNCTION_104();
      v45(v44);
      v46 = *v13;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, SFDetailedRowCardSection_ptr);
      v48 = v63;
      v47 = v64;
      v50 = v65;
      v49 = v66;
      (*(v64 + 16))(v63, v66, v65);
      outlined init with copy of SignalProviding(a3, v71);
      v42 = SFDetailedRowCardSection.init(person:mappedLabel:contactIdentifiers:locale:sharedGlobals:titleMaxLines:)(v25, v31, v27, v46, v48, v71, 4);
      (*(v47 + 8))(v49, v50);
      return v42;
    }

    if (v36 != enum case for Image.monogram(_:))
    {
      v57 = [a1 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      OUTLINED_FUNCTION_1_88();
      OUTLINED_FUNCTION_0_87();
      v42 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();

      (*(v64 + 8))(v66, v65);
      v58 = *(v9 + 8);
      v59 = OUTLINED_FUNCTION_104();
      v60(v59);
      return v42;
    }

    v51 = *(v9 + 96);
    v52 = OUTLINED_FUNCTION_104();
    v53(v52);
    v54 = *v13;
    v55 = v13[1];
    v56 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    OUTLINED_FUNCTION_1_88();
    OUTLINED_FUNCTION_0_87();
    v42 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();
  }

  (*(v64 + 8))(v66, v65);
  return v42;
}

id static PhoneCasinoFactory.makeSash<A>(intent:app:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 8))(a4, a5);
  v8 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(a2, v7, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  return SAUISash.init(app:)(v8);
}

id static SACardSnippet.makeFromCardSectionsWithConfirmationOptions(cardSections:intent:sash:confirmationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  [v6 setSash:a3];
  [v6 setConfirmationOptions:a4];

  return v6;
}

id SFDetailedRowCardSection.init(person:mappedLabel:contactIdentifiers:locale:sharedGlobals:titleMaxLines:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
  v13 = v12;
  v14 = [a1 displayName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = @nonobjc SFRichText.__allocating_init(string:)(v15, v17);
  [v13 setTitle:v18];

  SFRichText.init(mappedLabel:titleMaxLines:)(a2, a3, a7);
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_426260;
  *(v21 + 32) = v20;
  v22 = v20;
  outlined bridged method (mbnn) of @objc SFDetailedRowCardSection.descriptions.setter(v21, v13);
  SFDetailedRowCardSection.setHintTextIfNeeded(sharedGlobals:person:)(a6);
  v23 = [objc_allocWithZone(SFContactImage) init];
  outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(a4, v23);
  [v13 setThumbnail:v23];

  __swift_destroy_boxed_opaque_existential_1(a6);
  v24 = type metadata accessor for Locale();
  (*(*(v24 - 8) + 8))(a5, v24);
  return v13;
}

void SFRichText.init(mappedLabel:titleMaxLines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    [v5 setMaxLines:a3];
  }
}

void SFDetailedRowCardSection.setHintTextIfNeeded(sharedGlobals:person:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (INPerson.isProvidedByPlus.getter())
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 176))(v9, v10);
    type metadata accessor for PhoneCallFlowDelegatePlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v14 = Locale.identifier.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v24[4] = v14;
    v24[5] = v16;
    v24[2] = 45;
    v24[3] = 0xE100000000000000;
    v24[0] = 95;
    v24[1] = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v19 = v18;

    v20 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000011, 0x800000000045C400, 1396918608, 0xE400000000000000, v13, v17, v19, v11);
    v22 = v21;

    if (v22)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
      v23 = @nonobjc SFRichText.__allocating_init(string:)(v20, v22);
      [v2 setFootnote:v23];
    }
  }
}

void outlined bridged method (mbnn) of @objc SFDetailedRowCardSection.descriptions.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setDescriptions:isa];
}

void outlined bridged method (mbnn) of @objc SFContactImage.contactIdentifiers.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setContactIdentifiers:isa];
}

void *PhoneContactDisambiguationHeaderItemFactory.makeHeaderItems(persons:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return _swiftEmptyArrayStorage;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = v12;
  v14 = *(v1 + 24);
  v15 = *(v2 + 32);
  OUTLINED_FUNCTION_0_88();
  if ((DeviceState.isStandaloneIOS.getter() & 1) == 0 || !PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(a1))
  {

    return _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#PhoneContactDisambiguationHeaderItemFactory Building header item", v19, 2u);
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  v20 = [v13 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  v21 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  OUTLINED_FUNCTION_0_88();
  LOBYTE(v23) = DeviceState.isStandaloneIOS.getter();
  v24 = *(v2 + 24);
  v25 = *(v2 + 32);
  OUTLINED_FUNCTION_0_88();
  v26 = DeviceState.isAuthenticatedForPhone.getter();
  INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v23 & 1, (v26 & 1) == 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  v33 = xmmword_426260;
  *(v27 + 16) = xmmword_426260;
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  *(v28 + 32) = v21;
  (*(v5 + 16))(v9, v11, v4);
  v29 = type metadata accessor for SiriKitDisambiguationItem();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v27 + 32) = SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)();

  (*(v5 + 8))(v11, v4);
  return v27;
}

uint64_t PhoneContactDisambiguationItemFactory.init(contacts:templatingService:isDirectInvocation:appId:assistantProperties:deviceState:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a1;
  outlined init with take of SPHConversation(a2, a8 + 120);
  outlined init with take of SPHConversation(a6, a8 + 40);
  outlined init with take of SPHConversation(a7, a8 + 80);
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
}

uint64_t PhoneContactDisambiguationItemFactory.appId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PhoneContactDisambiguationItemFactory.disambiguationListProperties.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  a1[3] = &type metadata for PhoneContactDisambiguationProperties;
  a1[4] = &protocol witness table for PhoneContactDisambiguationProperties;
  *a1 = v2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV05buildgH04item_ySo8INPersonC_y07SiriKitC00mngH0CctF04_s11mn9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = [a1 personHandle];
  if (v9 && (v10 = v9, v11 = [v9 emergencyType], v10, v11 == &dword_0 + 1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v12 = type metadata accessor for Logger();
    v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v14))
    {
      v15 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v15);
      OUTLINED_FUNCTION_6_44(&dword_0, v16, v17, "Building local emergency item");
      OUTLINED_FUNCTION_5_7();
    }

    v18 = OUTLINED_FUNCTION_3_73();
    PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v18, v19, v20);
  }

  else
  {
    INPerson.isUnnamedPhoneNumber.getter();
    if (v21)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v22 = type metadata accessor for Logger();
      v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
      v24 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v24))
      {
        v25 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v25);
        OUTLINED_FUNCTION_6_44(&dword_0, v26, v27, "Building unnamed phone number item");
        OUTLINED_FUNCTION_5_7();
      }

      v28 = OUTLINED_FUNCTION_3_73();
      PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v28, v29, v30);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v31 = type metadata accessor for Logger();
      v32 = OUTLINED_FUNCTION_12_1(v31, static Logger.siriPhone);
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_65_0();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "Building regular item", v34, 2u);
      }

      _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV012buildRegulargH033_5F787DBA463515721263E7111A704531LLyySo8INPersonC_y07SiriKitC00qrgH0CctF04_s11qr9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(a1, a2, a3, a4);
    }
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildDisambiguationItem(item:_:)(void *a1)
{
  v1 = [a1 personHandle];
  if (v1 && (v2 = v1, v3 = [v1 emergencyType], v2, v3 == &dword_0 + 1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v4 = type metadata accessor for Logger();
    v5 = OUTLINED_FUNCTION_12_1(v4, static Logger.siriPhone);
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v6))
    {
      v7 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v7);
      OUTLINED_FUNCTION_6_44(&dword_0, v8, v9, "Building local emergency item");
      OUTLINED_FUNCTION_5_7();
    }

    v10 = OUTLINED_FUNCTION_12_50();

    return PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v10, v11, v12);
  }

  else
  {
    INPerson.isUnnamedPhoneNumber.getter();
    if (v14)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v15 = type metadata accessor for Logger();
      v16 = OUTLINED_FUNCTION_12_1(v15, static Logger.siriPhone);
      v17 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v17))
      {
        v18 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v18);
        OUTLINED_FUNCTION_6_44(&dword_0, v19, v20, "Building unnamed phone number item");
        OUTLINED_FUNCTION_5_7();
      }

      v21 = OUTLINED_FUNCTION_12_50();

      return PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v21, v22, v23);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v24 = type metadata accessor for Logger();
      v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
      v26 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_43(v26))
      {
        v27 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v27);
        OUTLINED_FUNCTION_6_44(&dword_0, v28, v29, "Building regular item");
        OUTLINED_FUNCTION_5_7();
      }

      v30 = OUTLINED_FUNCTION_12_50();

      return PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(v30, v31, v32);
    }
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v56 = a2;
  v4 = type metadata accessor for Image();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = *(v5 + 104);
  v59 = &v51 - v10;
  v9();
  v11 = [a1 displayName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 && INPerson.hasHandleLabel.getter() && (v16 = [a1 personHandle]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, "label"), v17, v18))
  {
    v55 = v18;
    v19 = [a1 personHandle];
    v52 = a1;
    if (v19 && (v20 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v19), v21))
    {
      v53 = v20;
      v54 = v21;
    }

    else
    {
      v34 = [a1 displayName];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v35;
    }

    v36 = v57;
    outlined init with copy of PhoneContactDisambiguationItemFactory(v57, v61);
    (*(v5 + 16))(v8, v59, v4);
    v37 = (*(v5 + 80) + 200) & ~*(v5 + 80);
    v38 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    memcpy(v39 + 16, v61, 0xA0uLL);
    v41 = v55;
    v40 = v56;
    *(v39 + 22) = v55;
    *(v39 + 23) = v40;
    *(v39 + 24) = v58;
    (*(v5 + 32))(&v39[v37], v8, v4);
    v42 = v52;
    *&v39[v38] = v52;
    outlined init with copy of PhoneContactDisambiguationItemFactory(v36, v60);
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:);
    *(v43 + 24) = v39;
    *(v43 + 32) = 1;
    memcpy((v43 + 40), v60, 0xA0uLL);
    v44 = v41;
    v45 = v42;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v53, v54, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:), v43);

    return (*(v5 + 8))(v59, v4);
  }

  else
  {
    v22 = a1;
    if (INPerson.hasHandleValue.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.siriPhone);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v61[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000095, 0x800000000045EE30, v61);
        _os_log_impl(&dword_0, v47, v48, "%s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v23 = v57;
      outlined init with copy of PhoneContactDisambiguationItemFactory(v57, v61);
      (*(v5 + 16))(v8, v59, v4);
      v24 = (*(v5 + 80) + 192) & ~*(v5 + 80);
      v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v27 = v58;
      *(v26 + 2) = v56;
      *(v26 + 3) = v27;
      memcpy(v26 + 32, v61, 0xA0uLL);
      (*(v5 + 32))(&v26[v24], v8, v4);
      *&v26[v25] = v22;
      v28 = v23[18];
      v29 = v23[19];
      v57 = __swift_project_boxed_opaque_existential_1(v23 + 15, v28);
      v30 = swift_allocObject();
      *(v30 + 16) = partial apply for closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:);
      *(v30 + 24) = v26;
      v56 = v4;
      v31 = *(v29 + 56);
      v32 = v22;

      v31(partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildEmergencyServicesItemComponent(_:), v30, v28, v29);

      return (*(v5 + 8))(v59, v56);
    }
  }

  return result;
}

uint64_t PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(void *a1, char *a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v5 = type metadata accessor for Image();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = [a1 personHandle];
  if (v12 && (v13 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v12), v14))
  {
    v15 = v14;
    v24 = v13;
  }

  else
  {
    v16 = [a1 displayName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v17;
  }

  (*(v6 + 104))(v11, enum case for Image.none(_:), v5);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v3, v28);
  (*(v6 + 16))(v9, v11, v5);
  v18 = (*(v6 + 80) + 200) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = a1;
  *(v19 + 3) = v20;
  v25 = v11;
  *(v19 + 4) = v26;
  memcpy(v19 + 40, v28, 0xA0uLL);
  (*(v6 + 32))(&v19[v18], v9, v5);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v3, v27);
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:);
  *(v21 + 24) = v19;
  *(v21 + 32) = 1;
  memcpy((v21 + 40), v27, 0xA0uLL);

  v22 = a1;

  PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v24, v15, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v21);

  return (*(v6 + 8))(v25, v5);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV012buildRegulargH033_5F787DBA463515721263E7111A704531LLyySo8INPersonC_y07SiriKitC00qrgH0CctF04_s11qr9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v74 = a1;
  v7 = type metadata accessor for Image();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v70 = a3;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v13 = swift_allocBox();
  v15 = v14;
  v71 = v8;
  (*(v8 + 104))(v14, enum case for Image.none(_:), v7);
  v16 = a2[1];

  v17 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v16);
  v72 = a4;
  v73 = v13;
  if (!v17)
  {
    PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(v74);
    v68 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = v12;
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = a2[14];
    __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
    LOBYTE(v28) = DeviceState.isStandaloneIOS.getter();
    v29 = a2[14];
    __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
    v30 = DeviceState.isAuthenticatedForPhone.getter();
    v31 = v69;
    v32 = v74;
    INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v28 & 1, (v30 & 1) == 0);
    v33 = v71;
    (*(v71 + 40))(v15, v31, v7);
    v34 = *(v27 + 16);
    (*(v33 + 16))(v31, v15, v7);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v35, v31, v32);

    (*(v33 + 8))(v31, v7);

    v70(v36);

LABEL_8:
  }

  v65 = v12 + 16;
  v66 = v7;
  v67 = v15;
  v68 = a2;
  v18 = v71;
  v19 = v74;
  v20 = [v74 personHandle];
  if (!v20 || (v21 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v20), !v22))
  {
    v37 = *(v12 + 16);
    v38 = v69;
    v39 = v66;
    (*(v18 + 16))(v69, v67, v66);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v40, v38, v19);

    (*(v18 + 8))(v38, v39);

    v70(v41);

    goto LABEL_8;
  }

  v63 = v21;
  v64 = v22;
  v23 = v19;
  v24 = [v19 personHandle];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 type];
  }

  else
  {
    v26 = 0;
  }

  v43 = v68;
  outlined init with copy of PhoneContactDisambiguationItemFactory(v68, __src);
  outlined init with copy of PhoneContactDisambiguationItemFactory(__src, v76);
  v44 = swift_allocObject();
  v44[2] = v12;
  v44[3] = v23;
  v44[4] = _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA_53;
  v44[5] = v11;
  memcpy(v44 + 6, __src, 0xA0uLL);
  v44[26] = v73;
  v44[27] = v26;
  if (v26 == &dword_0 + 2)
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v43, v75);
    v45 = swift_allocObject();
    *(v45 + 16) = closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply;
    *(v45 + 24) = v44;
    *(v45 + 32) = 0;
    memcpy((v45 + 40), v75, 0xA0uLL);

    v46 = v23;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v63, v64, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v45);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }

  v61 = v26;
  v62 = v44;
  type metadata accessor for SiriKitDisambiguationItemComponent();
  swift_retain_n();

  v68 = v11;

  v47 = v23;
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  v48 = v43[14];
  __swift_project_boxed_opaque_existential_1(v43 + 10, v43[13]);
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v49 = [v47 personHandle]) != 0 && (v50 = v49, v51 = objc_msgSend(v49, "label"), v50, v51))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v76, v75);
    v52 = swift_allocObject();
    v52[2] = v12;
    v52[3] = _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA_53;
    v52[4] = v68;
    memcpy(v52 + 5, v75, 0xA0uLL);
    v52[25] = v73;
    v52[26] = v47;

    v53 = v47;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v51, v61, closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply, v52);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }

  else
  {
    v54 = *(v12 + 16);
    v55 = v67;
    swift_beginAccess();
    v56 = v69;
    v57 = v66;
    (*(v18 + 16))(v69, v55, v66);

    PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v58, v56, v47);

    (*(v18 + 8))(v56, v57);

    v70(v59);

    outlined destroy of PhoneContactDisambiguationItemFactory(v76);
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v76 = a3;
  v78 = a1;
  v6 = type metadata accessor for Image();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = swift_allocBox();
  v14 = v13;
  (*(v7 + 104))(v13, enum case for Image.none(_:), v6);
  v15 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v4[1]);
  v77 = v12;
  v74 = v14;
  v75 = a2;
  if (!v15)
  {
    v73 = PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(v78);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = v6;
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(v11 + 16) & 0xFFFFFFFFFFFFFF8)));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27 = v4[14];
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    LOBYTE(v27) = DeviceState.isStandaloneIOS.getter();
    v28 = v4[14];
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    v29 = DeviceState.isAuthenticatedForPhone.getter();
    v30 = v78;
    INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v27 & 1, (v29 & 1) == 0);
    v31 = v74;
    (*(v7 + 40))(v74, v10, v26);
    v32 = *(v11 + 16);
    (*(v7 + 16))(v10, v31, v26);

    v34 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v33, v10, v30);

    (*(v7 + 8))(v10, v26);
    v75(v34);
LABEL_8:
  }

  v71 = v11 + 16;
  v72 = v6;
  v16 = v11;
  v73 = v4;
  v17 = v78;
  v18 = [v78 personHandle];
  if (!v18 || (v19 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v18), !v20))
  {
    v35 = *(v16 + 16);
    v36 = v72;
    (*(v7 + 16))(v10, v74, v72);

    v38 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v37, v10, v17);

    (*(v7 + 8))(v10, v36);
    v75(v38);
    goto LABEL_8;
  }

  v69 = v19;
  v70 = v20;
  v21 = [v17 personHandle];
  v22 = v16;
  v23 = v75;
  if (v21)
  {
    v24 = v21;
    v25 = [v21 type];
  }

  else
  {
    v25 = 0;
  }

  v40 = v73;
  outlined init with copy of PhoneContactDisambiguationItemFactory(v73, __src);
  outlined init with copy of PhoneContactDisambiguationItemFactory(__src, v80);
  v41 = swift_allocObject();
  v42 = v78;
  v41[2] = v22;
  v41[3] = v42;
  v41[4] = v23;
  v41[5] = v76;
  memcpy(v41 + 6, __src, 0xA0uLL);
  v41[26] = v77;
  v41[27] = v25;
  if (v25 == &dword_0 + 2)
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v40, v79);
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:);
    *(v43 + 24) = v41;
    *(v43 + 32) = 0;
    memcpy((v43 + 40), v79, 0xA0uLL);

    v44 = v42;

    PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(v69, v70, closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)partial apply, v43);

    outlined destroy of PhoneContactDisambiguationItemFactory(v80);
  }

  v67 = v25;
  v68 = v10;
  v45 = v74;
  type metadata accessor for SiriKitDisambiguationItemComponent();
  v73 = v22;
  swift_retain_n();

  v46 = v42;
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  v47 = v40[14];
  __swift_project_boxed_opaque_existential_1(v40 + 10, v40[13]);
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();
  v48 = v73;

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(v48 + 16) & 0xFFFFFFFFFFFFFF8)));
  v49 = v46;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v50 = [v46 personHandle]) != 0 && (v51 = v50, v52 = objc_msgSend(v50, "label"), v51, v52))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v80, v79);
    v53 = v49;
    v54 = swift_allocObject();
    v55 = v75;
    v56 = v76;
    v54[2] = v48;
    v54[3] = v55;
    v54[4] = v56;
    memcpy(v54 + 5, v79, 0xA0uLL);
    v54[25] = v77;
    v54[26] = v53;

    v57 = v53;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v52, v67, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:), v54);

    outlined destroy of PhoneContactDisambiguationItemFactory(v80);
  }

  else
  {
    v58 = *(v48 + 16);
    v59 = v45;
    swift_beginAccess();
    v60 = v7;
    v61 = *(v7 + 16);
    v62 = v68;
    v63 = v72;
    v61(v68, v59, v72);

    v65 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v64, v62, v49);

    (*(v60 + 8))(v62, v63);
    v75(v65);

    outlined destroy of PhoneContactDisambiguationItemFactory(v80);
  }
}

uint64_t PhoneContactDisambiguationItemFactory.buildFullNameItemComponent(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for DialogPerson();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v11 = a1;
  v12 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();
  if (!v12)
  {
LABEL_4:
    v14 = [v11 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  dispatch thunk of DialogPerson.fullName.getter();

  v13 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    goto LABEL_4;
  }

  SpeakableString.print.getter();
  (*(*(v13 - 8) + 8))(v8, v13);
LABEL_7:

  dispatch thunk of DialogPerson.fullName.getter();

  v15 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) != 1)
  {
    SpeakableString.speak.getter();
    (*(*(v15 - 8) + 8))(v6, v15);
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_9:

LABEL_11:
  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

  v16 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  return v16;
}

uint64_t PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Image();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#PhoneContactDisambiguationItemFactory Building disambiguation item with direct invocation payload", v14, 2u);
    }

    type metadata accessor for SKIDirectInvocationPayload();
    static SKIDirectInvocationPayload.contactDisambiguation(contact:)(a3);
    (*(v7 + 16))(v10, a2, v6);
    v15 = type metadata accessor for SiriKitDisambiguationItem();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    return SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);

    INPerson.toStartRequestUtterance()();
    v19 = type metadata accessor for SiriKitDisambiguationItem();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    return SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)();
  }
}

void closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v29 = a6;
  v28 = a5;
  v27 = a4;
  v11 = type metadata accessor for Image();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (INPerson.hasHandleLabel.getter() && (v17 = [a3 personHandle]) != 0 && (v18 = v17, v19 = objc_msgSend(v17, "label"), v18, v19))
  {
    outlined init with copy of PhoneContactDisambiguationItemFactory(v29, __src);
    v20 = swift_allocObject();
    v21 = v27;
    v20[2] = a2;
    v20[3] = v21;
    v20[4] = v28;
    memcpy(v20 + 5, __src, 0xA0uLL);
    v20[25] = a7;
    v20[26] = a3;

    v22 = a3;
    PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v19, v26, closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)partial apply, v20);
  }

  else
  {
    swift_beginAccess();
    v23 = *(a2 + 16);
    swift_beginAccess();
    (*(v12 + 16))(v15, v16, v11);

    v25 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v24, v15, a3);

    (*(v12 + 8))(v15, v11);
    v27(v25);
  }
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildRegularDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v19[1] = a4;
  v20 = a3;
  v9 = type metadata accessor for Image();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = *(a2 + 16);
  swift_endAccess();
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v17 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v16, v13, a7);

  (*(v10 + 8))(v13, v9);
  v20(v17);
}

uint64_t PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[14];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v35 = Locale.identifier.getter();
  v36 = v15;
  v33 = 45;
  v34 = 0xE100000000000000;
  v31 = 95;
  v32 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  (*(v10 + 8))(v13, v9);
  v16 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v18 = v17;

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  v19 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  if (PhoneContactDisambiguationProperties.hasOneHandleType.getter(v4[1]) || (a2 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {

    v30(v19);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "More than one handle type -- appending HandleType", v23, 2u);
    }

    v24 = v5[18];
    v25 = v5[19];
    __swift_project_boxed_opaque_existential_1(v5 + 15, v24);
    v26 = swift_allocObject();
    v26[2] = v30;
    v26[3] = a4;
    v26[4] = v16;
    v26[5] = v18;
    v27 = *(v25 + 48);

    v27(a1, a2, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:), v26, v24, v25);
  }
}

void closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a3;
  v10 = type metadata accessor for Image();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_426260;
  *(v14 + 32) = a1;
  *(v13 + 16) = v14;

  v15 = [a2 personHandle];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 label];
    if (v17)
    {
      v18 = v17;
      v35 = v10;
      v19 = v11;
      v34 = a4;
      v20 = a5;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v33 = [v16 type];
        v32[1] = v20;
        outlined init with copy of PhoneContactDisambiguationItemFactory(v20, __src);
        (*(v19 + 16))(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v35);
        v25 = (*(v19 + 80) + 200) & ~*(v19 + 80);
        v26 = swift_allocObject();
        v27 = v37;
        *(v26 + 2) = v13;
        *(v26 + 3) = v27;
        *(v26 + 4) = v34;
        memcpy(v26 + 40, __src, 0xA0uLL);
        (*(v19 + 32))(&v26[v25], v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
        *&v26[(v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

        v28 = a2;
        PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v18, v33, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:), v26);

        return;
      }
    }

    else
    {
      v18 = v16;
    }
  }

  v29 = *(v13 + 16);

  v31 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v30, v36, a2);

  v37(v31);
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*(a2 + 16) & 0xFFFFFFFFFFFFFF8)));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = *(a2 + 16);
  swift_endAccess();

  v13 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v12, a6, a7);

  a3(v13);
}

uint64_t closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v20 = a4;
  v21 = a3;
  v12 = type metadata accessor for Image();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  outlined init with copy of PhoneContactDisambiguationItemFactory(a2, __src);
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  v15 = (*(v13 + 80) + 200) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v20;
  *(v16 + 3) = a5;
  memcpy(v16 + 32, __src, 0xA0uLL);
  *(v16 + 24) = a1;
  (*(v13 + 32))(&v16[v15], &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *&v16[(v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a7;

  v17 = a7;
  PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(v21, 2, partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:), v16);
}

uint64_t closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_427BB0;
  *(v12 + 32) = a5;
  *(v12 + 40) = a1;

  v13 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v12, a6, a7);

  a2(v13);
}

uint64_t closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = a1;

  v11 = PhoneContactDisambiguationItemFactory.buildItemForInvocationType(_:_:_:)(v10, a5, a6);

  a2(v11);
}

void *closure #1 in PhoneContactDisambiguationItemFactory.buildHandleLabelItemComponent(_:_:_:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v9 = type metadata accessor for TemplatingResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v43 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  v48 = a5;
  (*(v10 + 32))(v16, v20, v9);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  (*(v10 + 16))(v14, v16, v9);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v47 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = a2;
    v44 = v27;
    v50 = v27;
    *v26 = 136315138;
    TemplatingResult.print.getter();
    v28 = Array.description.getter();
    v45 = a3;
    v29 = v28;
    v31 = v30;

    v32 = v14;
    v33 = *(v10 + 8);
    v33(v32, v9);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v50);

    *(v26 + 4) = v34;
    _os_log_impl(&dword_0, v23, v24, "snippetDisplayHandleLabelWithType SUCCESS: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    a2 = v46;
  }

  else
  {

    v35 = v14;
    v33 = *(v10 + 8);
    v33(v35, v9);
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_13;
  }

  v36 = result[4];
  v37 = result[5];

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintOnLockScreen(_:)();

  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = result[4];
  v39 = result[5];

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  result = TemplatingResult.speak.getter();
  if (result[2])
  {
    v40 = result[4];
    v41 = result[5];

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

    v42 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    a2(v42);

    return (v33)(v16, v9);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhoneContactDisambiguationItemFactory.buildHandleValueItemComponent(_:_:allowedOnLockScreen:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

  v10 = a8[14];
  __swift_project_boxed_opaque_existential_1(a8 + 10, a8[13]);
  DeviceState.isStandaloneIOS.getter();
  dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

  v11 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  a5(v11);
}

uint64_t PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = v4;
  v39 = a4;
  v40 = a3;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.controlCharacters.getter();
  v42 = v12;

  v13 = specialized RangeReplaceableCollection.filter(_:)(partial apply for closure #1 in String.remove(characters:), v41, a1, a2);
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v43 = 0xD000000000000012;
  v44 = 0x800000000045EED0;
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000013;
  v17._object = 0x800000000045EEF0;
  String.append(_:)(v17);
  v18 = v43;
  v19 = v44;
  v21 = v5[8];
  v20 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v21);
  v22 = (*(v20 + 8))(v21, v20);
  if (v23)
  {
    v24 = v23;
    v37 = v22;
    v38 = v19;
    v25 = v39;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v43);
      _os_log_impl(&dword_0, v27, v28, "Format phone number call: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    v31 = v5[18];
    v32 = v5[19];
    __swift_project_boxed_opaque_existential_1(v5 + 15, v31);
    v33 = swift_allocObject();
    v33[2] = v40;
    v33[3] = v25;
    v33[4] = v13;
    v33[5] = v15;
    v34 = v38;
    v33[6] = v18;
    v33[7] = v34;
    v35 = *(v32 + 64);

    v35(v37, v24, v13, v15, partial apply for closure #1 in PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:), v33, v31, v32);
  }

  else
  {
    v40(a1, a2, v18, v19);
  }
}

void *closure #1 in PhoneContactDisambiguationItemFactory.getPhoneNumberSpeakableString(value:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45[0] = a7;
  v45[1] = a3;
  v46 = a2;
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  outlined init with copy of Result<TemplatingResult, Error>(a1, v45 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Format phone number failure", v26, 2u);
    }

    return v46(a4, a5, a6, v45[0]);
  }

  else
  {
    (*(v12 + 32))(v18, v22, v11);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    (*(v12 + 16))(v16, v18, v11);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45[0] = v12;
      v33 = v32;
      v47 = v32;
      *v31 = 136315138;
      TemplatingResult.speak.getter();
      v34 = Array.description.getter();
      v36 = v35;

      v37 = v16;
      v38 = *(v45[0] + 8);
      v38(v37, v11);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v47);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_0, v29, v30, "Format phone number success: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {

      v40 = v16;
      v38 = *(v12 + 8);
      v38(v40, v11);
    }

    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v42 = result[4];
      v41 = result[5];

      result = TemplatingResult.speak.getter();
      if (result[2])
      {
        v43 = result[4];
        v44 = result[5];

        v46(v42, v41, v43, v44);

        return (v38)(v18, v11);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *closure #1 in PhoneContactDisambiguationItemFactory.buildEmergencyServicesItemComponent(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v18 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
    v13 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    a2(v13);

    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    type metadata accessor for SiriKitDisambiguationItemComponent();
    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v15 = result[4];
      v16 = result[5];

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      v17 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      a2(v17);

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneContactDisambiguationItemFactory(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneContactDisambiguationItemFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v2 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 192) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_5_68();
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = *(v1 + v12);

  return closure #2 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v0, v10, v11, v1 + 32, v1 + v9, v13);
}

uint64_t partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v1 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_5_68();
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[24];
  v12 = *(v0 + v11);
  v13 = OUTLINED_FUNCTION_17_37();

  return closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)()
{
  v1 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_5_68();
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[24];
  v12 = *(v0 + v11);
  v13 = OUTLINED_FUNCTION_17_37();

  return closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildLocalEmergencyDisambiguationItem(_:_:)(v13, v14, v15, v16, v17, v18, v19);
}

void partial apply for closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)()
{
  v1 = *(*(OUTLINED_FUNCTION_16_43() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = OUTLINED_FUNCTION_17_37();

  closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_8Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  OUTLINED_FUNCTION_7_55();

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)()
{
  v1 = OUTLINED_FUNCTION_16_43();
  OUTLINED_FUNCTION_13_2(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_5_68();
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v12 = *(v0 + v11);
  v13 = OUTLINED_FUNCTION_17_37();

  return closure #1 in closure #1 in PhoneContactDisambiguationItemFactory.buildUnnamedPhoneNumberDisambiguationItem(_:_:)(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_7_55();
  v6 = *(v0 + 200);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  v6 = *(v0 + 208);

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t PhoneContactDisambiguationProperties.shouldReadItemsInVox.getter(unint64_t a1)
{
  if (specialized Array.count.getter(a1) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(a1))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void PhoneContactDisambiguationProperties.isEmergencyDisambiguation.getter(uint64_t a1)
{
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
  if ((v2 & 1) == 0)
  {

    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(a1);
  }
}

BOOL PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_28:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v19 = v3;
  if (specialized Array.count.getter(a1) < 2)
  {
LABEL_24:
    v5 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v5 = v2 == i;
      if (v2 == i)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (!INPerson.hasHandleLabel.getter() && !INPerson.hasHandleValue.getter())
      {

        goto LABEL_24;
      }

      v8 = [v19 displayName];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v7 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  return v5;
}

BOOL PhoneContactDisambiguationProperties.hasOneHandleType.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2 > 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_25:
  if (_CocoaArrayWrapper.endIndex.getter() < 2)
  {
    return 0;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [v3 personHandle];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 type];

  v7 = 0;
  do
  {
    v8 = v2 == v7;
    if (v2 == v7)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = [v9 personHandle];
    if (!v11)
    {

      return 0;
    }

    v12 = v11;
    v13 = [v11 type];

    ++v7;
  }

  while (v13 == v6 && v13 != 0);
  return v8;
}

uint64_t PhoneContactDisplayHintFactory.init(assistantProperties:deviceState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, a3);
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  type metadata accessor for CATGlobals();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v10);
  CATGlobals.__allocating_init(device:)();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(a3 + 80) = v8;
  return outlined init with take of PhoneCallFeatureFlagProviding(a2, a3 + 40);
}

uint64_t PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for SemanticValue();
  v101 = OUTLINED_FUNCTION_7(v6);
  v102 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v101);
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  v11 = OUTLINED_FUNCTION_7(v103);
  v94 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v100 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v85 - v17);
  __chkstk_darwin(v19);
  v99 = &v85 - v20;
  v21 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v22 = OUTLINED_FUNCTION_7(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v85 - v29;
  v31 = swift_allocObject();
  v93 = a2;
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  v97 = v31;

  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v32 = swift_allocObject();
  *(v32 + 16) = _swiftEmptyArrayStorage;
  v95 = v32 + 16;
  v33 = swift_allocObject();
  v96 = v33;
  *(v33 + 16) = _swiftEmptyArrayStorage;
  v92 = v33 + 16;
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1);
  if (v34)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_3:
      v35 = a1;
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "Building display hints for foreign emergency disambiguation", v39, 2u);
      }

      (*(v24 + 16))(v27, v30, v21);
      v40 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v41 = swift_allocObject();
      v42 = v96;
      *(v41 + 16) = v32;
      *(v41 + 24) = v42;
      (*(v24 + 32))(v41 + v40, v27, v21);
      v43 = (v41 + ((v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
      v44 = v97;
      *v43 = partial apply for closure #1 in PhoneContactDisplayHintFactory.build(for:_:);
      v43[1] = v44;

      PhoneContactDisplayHintFactory.buildForeignEmergencyHints(_:_:)(v35, partial apply for closure #2 in PhoneContactDisplayHintFactory.build(for:_:), v41);

      (*(v24 + 8))(v30, v21);
    }

LABEL_36:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_3;
  }

  v85 = a3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v86 = v32;
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.siriPhone);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "Building display hints for regular contact disambiguation", v48, 2u);
  }

  v87 = v30;
  v88 = v24;
  v89 = v21;

  __chkstk_darwin(v49);
  *(&v85 - 2) = v98;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8INPersonCG_Say11SiriKitFlow11DisplayHintVG12displayHints_AI13SemanticValueV02idM0ts5NeverOTg5();
  v32 = *(v50 + 16);
  v51 = _swiftEmptyArrayStorage;
  v90 = v50;
  if (v32)
  {
    OUTLINED_FUNCTION_36_5();
    v26 = v52 + v53;
    v98 = *(v54 + 72);
    v21 = (v102 + 8);
    v30 = &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR;
    while (1)
    {
      v55 = v99;
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v26, v99, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v55, v18, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      v24 = *v18;
      (*v21)(v18 + *(v103 + 48), v101);
      v56 = *(v24 + 16);
      a1 = v51[2];
      v27 = (a1 + v56);
      if (__OFADD__(a1, v56))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v27 > v51[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v51 = v57;
      }

      if (*(v24 + 16))
      {
        a1 = v51[2];
        v27 = ((v51[3] >> 1) - a1);
        v58 = *(type metadata accessor for DisplayHint() - 8);
        if (v27 < v56)
        {
          goto LABEL_34;
        }

        v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v60 = *(v58 + 72);
        swift_arrayInitWithCopy();

        if (v56)
        {
          v61 = v51[2];
          v62 = __OFADD__(v61, v56);
          v63 = v61 + v56;
          if (v62)
          {
            goto LABEL_35;
          }

          v51[2] = v63;
        }
      }

      else
      {

        if (v56)
        {
          goto LABEL_33;
        }
      }

      v26 += v98;
      if (!--v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_23:
  specialized Array.append<A>(contentsOf:)(v51);
  v64 = v90;
  v65 = *(v90 + 16);
  if (v65)
  {
    v104 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v66 = v104;
    OUTLINED_FUNCTION_36_5();
    v68 = v64 + v67;
    v99 = *(v69 + 72);
    v70 = v101;
    v71 = (v102 + 32);
    v72 = v91;
    do
    {
      outlined init with copy of (displayHints: [DisplayHint], idValue: SemanticValue)(v68, v18, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      v73 = v100;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v18, v100, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
      v74 = *v73;

      v75 = *v71;
      (*v71)(v72, &v73[*(v103 + 48)], v70);
      v104 = v66;
      v76 = v66[2];
      if (v76 >= v66[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v104;
      }

      v66[2] = v76 + 1;
      OUTLINED_FUNCTION_36_5();
      v75(v66 + v77 + *(v78 + 72) * v76, v72, v70);
      v68 += v99;
      --v65;
    }

    while (v65);
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
  }

  specialized Array.append<A>(contentsOf:)(v66);
  v79 = *(v96 + 16);

  v80 = v87;
  v81 = OrdinalDisplayHintsBuilder.build(for:)();

  specialized Array.append<A>(contentsOf:)(v81);
  v82 = *(v86 + 16);

  closure #1 in PhoneContactDisplayHintFactory.build(for:_:)(v83, v93, v85);

  (*(v88 + 8))(v80, v89);
}

uint64_t static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  return specialized static PhoneContactDisplayHintFactory.build(for:deviceState:appInfoBuilder:)(a1, a2);
}

uint64_t closure #1 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v4 = type metadata accessor for DisplayHint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = (v5 + 16);
  v33 = (v5 + 8);
  v7.n128_u64[0] = 136315138;
  v29 = v7;
  v30 = (v5 + 16);
  v31 = v11;
  while (v11 != v10)
  {
    v13 = *(v5 + 80);
    v14 = *(v5 + 72);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    (*v12)(v9, a1 + ((v13 + 32) & ~v13) + v14 * v10, v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = v29.n128_u32[0];
      v20 = DisplayHint.description.getter();
      v32 = v10;
      v21 = v5;
      v22 = a1;
      v24 = v23;
      (*v33)(v9, v4);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v34);
      a1 = v22;
      v5 = v21;
      v10 = v32;

      *(v18 + 4) = v25;
      _os_log_impl(&dword_0, v16, v17, "DisplayHint: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v12 = v30;

      v11 = v31;
    }

    else
    {

      (*v33)(v9, v4);
    }

    ++v10;
  }

  return v28(a1);
}

uint64_t closure #2 in PhoneContactDisplayHintFactory.build(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v44 - v10;
  v12 = type metadata accessor for SemanticValue();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v56 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DisplayHint();
  v16 = *(v55 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v55);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v20);
  swift_endAccess();
  swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v45 = a2;
    v46 = a6;
    v24 = *(v16 + 16);
    v23 = v16 + 16;
    v25 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v53 = *(v23 + 56);
    v54 = v24;
    v26 = (v23 - 8);
    v50 = v13;
    v52 = (v13 + 32);
    v44[1] = v21;

    v27 = _swiftEmptyArrayStorage;
    v51 = v12;
    v28 = v23;
    do
    {
      v29 = v55;
      v30 = v28;
      v54(v19, v25, v55);
      DisplayHint.idValue.getter();
      (*v26)(v19, v29);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        outlined destroy of SpeakableString?(v11, &_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
      }

      else
      {
        v31 = *v52;
        (*v52)(v56, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = v27[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v35;
        }

        v32 = v27[2];
        if (v32 >= v27[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v36;
        }

        v27[2] = v32 + 1;
        v33 = v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v32;
        v12 = v51;
        v31(v33, v56, v51);
      }

      v25 += v53;
      --v22;
      v28 = v30;
    }

    while (v22);

    v37 = v49;
    a2 = v45;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
    v37 = v49;
  }

  v38 = v47;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v27);
  swift_endAccess();
  swift_beginAccess();
  v39 = *(v38 + 16);

  v40 = OrdinalDisplayHintsBuilder.build(for:)();

  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v40);
  swift_endAccess();
  swift_beginAccess();
  v41 = *(a2 + 16);

  v37(v42);
}

void PhoneContactDisplayHintFactory.buildForeignEmergencyHints(_:_:)(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Building foreign emergency disambiguation display hints...", v9, 2u);
  }

  PhoneContactDisplayHintFactory.buildForeignEmergencyHintsSerially(_:index:currentDisplayHints:_:)(a1, 0, _swiftEmptyArrayStorage, a2, a3);
}

void *closure #3 in PhoneContactDisplayHintFactory.build(for:_:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  result = PhoneContactDisplayHintFactory.buildRegularDisplayHint(_:)(a2 + *(v4 + 48), v3);
  *a2 = result;
  return result;
}

void *PhoneContactDisplayHintFactory.buildRegularDisplayHint(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  __chkstk_darwin(v4);
  v110 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v116 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = v106 - v11;
  __chkstk_darwin(v12);
  v114 = v106 - v13;
  __chkstk_darwin(v14);
  v115 = v106 - v15;
  v16 = type metadata accessor for SemanticValue();
  v122 = *(v16 - 8);
  v17 = *(v122 + 64);
  __chkstk_darwin(v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v106 - v20;
  v22 = type metadata accessor for DisplayHint();
  v120 = *(v22 - 8);
  v121 = v22;
  v23 = *(v120 + 64);
  __chkstk_darwin(v22);
  v106[2] = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v106[1] = v106 - v26;
  __chkstk_darwin(v27);
  v111 = v106 - v28;
  __chkstk_darwin(v29);
  v108 = v106 - v30;
  __chkstk_darwin(v31);
  v107 = v106 - v32;
  __chkstk_darwin(v33);
  v35 = v106 - v34;
  INPerson.asBase64()();
  SemanticValue.init()();
  SemanticValue.string.setter();
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(2);
  SemanticValue.nodeClass.setter();
  v36 = a2;
  v37 = [a2 displayName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v118 = a1;
  v119 = v16;
  if (v41)
  {
    (*(v122 + 16))(v21, a1, v16);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v16);
    v42 = [v36 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SemanticValue.init()();
    SemanticValue.string.setter();
    SemanticValue.label.setter();
    PhoneCallNLConstants.canonicalName.getter(10);
    SemanticValue.nodeClass.setter();
    DisplayHint.init(idValue:displayValue:)();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v43;
    v45 = v43[2];
    v46 = v21;
    if (v45 >= v43[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = v93;
    }

    v47 = v114;
    v48 = v115;
    v44[2] = v45 + 1;
    (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v45, v35, v121);
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
    v46 = v21;
    v47 = v114;
    v48 = v115;
  }

  v49 = [v36 nameComponents];
  v50 = v122;
  if (v49)
  {
    v51 = v49;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = type metadata accessor for PersonNameComponents();
  __swift_storeEnumTagSinglePayload(v47, v52, 1, v53);
  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v47, v48, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v48, 1, v53))
  {
    outlined destroy of SpeakableString?(v48, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v58 = PersonNameComponents.givenName.getter();
    v60 = v59;
    outlined destroy of SpeakableString?(v48, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v60)
    {
      v61 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v61 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        v62 = v119;
        (*(v50 + 16))(v46, v118, v119);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v62);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        PhoneCallNLConstants.canonicalName.getter(11);
        SemanticValue.nodeClass.setter();
        v63 = v107;
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = v44[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v101;
        }

        v64 = v44[2];
        if (v64 >= v44[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v102;
        }

        v44[2] = v64 + 1;
        (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v64, v63, v121);
      }

      else
      {
      }
    }
  }

  v54 = [v36 nameComponents];
  v55 = v116;
  if (v54)
  {
    v56 = v54;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v65 = v119;
  v66 = v117;
  __swift_storeEnumTagSinglePayload(v55, v57, 1, v53);
  outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v55, v66, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (__swift_getEnumTagSinglePayload(v66, 1, v53))
  {
    outlined destroy of SpeakableString?(v66, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v84 = PersonNameComponents.familyName.getter();
    v86 = v85;
    outlined destroy of SpeakableString?(v66, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v86)
    {
      v87 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v87 = v84 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        (*(v50 + 16))(v46, v118, v65);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v65);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        PhoneCallNLConstants.canonicalName.getter(12);
        SemanticValue.nodeClass.setter();
        v88 = v108;
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = v44[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v104;
        }

        v89 = v44[2];
        if (v89 >= v44[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v105;
        }

        v44[2] = v89 + 1;
        (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v89, v88, v121);
      }

      else
      {
      }
    }
  }

  v67 = [v36 personHandle];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 label];
    if (v69)
    {
      v70 = v69;
      v71 = v109[9];
      __swift_project_boxed_opaque_existential_1(v109 + 5, v109[8]);
      v72 = v65;
      v73 = v46;
      v74 = v110;
      dispatch thunk of DeviceState.siriLocale.getter();
      v127 = Locale.identifier.getter();
      v128 = v75;
      v125 = 45;
      v126 = 0xE100000000000000;
      v123 = 95;
      v124 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v76 = v74;
      v46 = v73;
      v65 = v72;
      (*(v112 + 8))(v76, v113);
      static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      v50 = v122;

      (*(v50 + 16))(v46, v118, v72);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v72);
      SemanticValue.init()();
      SemanticValue.string.setter();
      SemanticValue.label.setter();
      PhoneCallNLConstants.canonicalName.getter(13);
      SemanticValue.nodeClass.setter();
      v77 = v111;
      DisplayHint.init(idValue:displayValue:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = v44[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v44 = v95;
      }

      v78 = v44[2];
      if (v78 >= v44[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v44 = v96;
      }

      v44[2] = v78 + 1;
      (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v78, v77, v121);
    }

    v79 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v68);
    if (v80)
    {
      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        v82 = [v68 type];
        (*(v50 + 16))(v46, v118, v65);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v65);
        SemanticValue.init()();
        SemanticValue.string.setter();
        SemanticValue.label.setter();
        if (v82 == &dword_0 + 1)
        {
          PhoneCallNLConstants.canonicalName.getter(9);
          SemanticValue.nodeClass.setter();
          v83 = &v129;
        }

        else
        {
          PhoneCallNLConstants.canonicalName.getter(8);
          SemanticValue.nodeClass.setter();
          v83 = &v130;
        }

        v90 = *(v83 - 32);
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = v44[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v98;
        }

        v91 = v44[2];
        if (v91 >= v44[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v99;
        }

        v44[2] = v91 + 1;
        (*(v120 + 32))(v44 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v91, v90, v121);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v44;
}