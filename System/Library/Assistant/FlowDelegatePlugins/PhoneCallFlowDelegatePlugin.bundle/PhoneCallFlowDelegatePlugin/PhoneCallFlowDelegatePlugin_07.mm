PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional __swiftcall AnswerCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATsSimple_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnswerCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);
  v5 = v0[3];

  return v7(0xD000000000000020, 0x8000000000452220, v2);
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7373694D7473754ALL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x696D6F636E496F4ELL;
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = lazy protocol witness table accessor for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds();
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD000000000000020, 0x8000000000452220, v2, &type metadata for AnswerCallCATsSimple.IntentHandledResponseDialogIds, v5);
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AnswerCallCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v7 + 32))();
  }

  v8 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v2[6] = v8;
  *v8 = v2;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);
  v9 = v2[3];

  return v11(v3 + 13, 0x8000000000452250, v4);
}

BOOL AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AnswerCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v7 + 32))();
  }

  v8 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v2[6] = v8;
  v9 = lazy protocol witness table accessor for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds();
  *v8 = v2;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);
  v10 = v2[3];

  return v12(v3 + 13, 0x8000000000452250, v4, &type metadata for AnswerCallCATsSimple.OfferFollowUpIntentDialogIds, v9);
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnswerCallCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnswerCallCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnswerCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  outlined init with copy of SpeakableString?(a1, &v19 - v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v17;
}

uint64_t AnswerCallCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  return v7;
}

uint64_t AnswerCallCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_39_1();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnswerCallCATsSimple()
{
  result = type metadata singleton initialization cache for AnswerCallCATsSimple;
  if (!type metadata singleton initialization cache for AnswerCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance AnswerCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v7 = *(v1 + class metadata base offset for AnswerCallCATsSimple) + **(v1 + class metadata base offset for AnswerCallCATsSimple);
  v2 = *(*(v1 + class metadata base offset for AnswerCallCATsSimple) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_11_13(v3);

  return v5(v4);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance AnswerCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v2 = *(v1 + class metadata base offset for AnswerCallCATsSimple + 16);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_11_13(v4);

  return v6(v5);
}

id static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);

  return specialized static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5);
}

uint64_t static AnswerCallIntentConversion.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  LOBYTE(v2) = (*(*v4 + 176))(v4);

  if ((v2 & 1) != 0 && !App.isFirstParty()())
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    if (!(*(v8 + 112))(v7, v8))
    {
      return 0;
    }

    v9 = CurrentRequest.refId.getter();
    v11 = v10;

    if (v11)
    {
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v13 = OUTLINED_FUNCTION_0_23();
      v14(v13);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v17 = (*(v16 + 16))(v9, v11, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      if (v17)
      {
        v18 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v19 = OUTLINED_FUNCTION_0_23();
        v20(v19);
        v21 = v24;
        v22 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v5 = (*(v22 + 32))(v9, v11, v21, v22);

        __swift_destroy_boxed_opaque_existential_1(v23);
        return v5;
      }
    }
  }

  return 0;
}

id specialized static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4, void *a5)
{
  v44 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v48);
  v16 = &v44 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = a4;
  if (!PhoneCallNLIntent.hasAnyConfirmation()())
  {
LABEL_9:
    v45 = v13;
    outlined init with copy of SignalProviding(a3, &v50);
    v30 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(&v50, v30 + 16);
    *(v30 + 56) = v18;
    v31 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for INCallAudioRoute(0);
    Transformer.init(transform:)();
    *(swift_allocObject() + 16) = a5;
    v32 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Transformer.init(transform:)();
    v33 = Transformer.transform.getter();
    v33(&v50, a1);

    v34 = v50;
    v35 = Transformer.transform.getter();
    v35(&v50, a1);

    v36 = v51;
    if (v51)
    {
      v37 = v50;
      v39 = v44;
      v38 = v45;
    }

    else
    {
      v39 = v44;
      v37 = static AnswerCallIntentConversion.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(a3);
      v36 = v40;
      v38 = v45;
    }

    v41 = objc_allocWithZone(INAnswerCallIntent);
    v42 = @nonobjc INAnswerCallIntent.init(audioRoute:callIdentifier:)(v34, v37, v36);
    a4 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5(v42, a3, v39, a4);

    (*(v46 + 8))(v12, v47);
    (*(v38 + 8))(v16, v48);
    return a4;
  }

  if (!a4)
  {
    v18 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = a4;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v50 = v24;
    *v23 = 136315138;
    v49 = a4;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INAnswerCallIntentCSgMd, &_sSo18INAnswerCallIntentCSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v50);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "#AnswerCallIntentConversion is confirmation, returning previousIntent: %s.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v29 = v20;
  return a4;
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  static DefaultAppProvider.instance = result;
  return result;
}

{
  type metadata accessor for AppResolutionProvider();
  swift_allocObject();
  result = AppResolutionProvider.().init()();
  static AppResolutionProvider.instance = result;
  return result;
}

{
  type metadata accessor for CallStateNotificationManager();
  result = CallStateNotificationManager.__allocating_init()();
  static CallStateNotificationManager.instance = result;
  return result;
}

{
  type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_50();
  swift_allocObject();
  result = EligibleAppFinder.().init()();
  static EligibleAppFinder.instance = result;
  return result;
}

{
  type metadata accessor for ThirdPartyAnnotatedAppStore();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMR);
  swift_allocObject();
  result = specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 1.0);
  *(v0 + 16) = result;
  static ThirdPartyAnnotatedAppStore.instance = v0;
  return result;
}

uint64_t *DefaultAppProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static DefaultAppProvider.instance;
}

uint64_t static DefaultAppProvider.instance.getter()
{
  type metadata accessor for DefaultAppProvider();

  return swift_initStaticObject();
}

uint64_t DefaultAppProvider.defaultPhoneAppBundleId.getter()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v12 = 0;
  v2 = [v0 defaultApplicationForCategory:4 error:&v12];

  if (v2)
  {
    v3 = v12;
    return outlined bridged method (ob) of @objc LSBundleRecord.bundleIdentifier.getter(v2);
  }

  else
  {
    v5 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v7, v8, "#AppUtils failed to get default phoneCalls application: %@", v9, 0xCu);
      outlined destroy of NSObject?(v10);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (ob) of @objc LSBundleRecord.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

PhoneCallFlowDelegatePlugin::AnnounceCallsContext __swiftcall AnnounceCallsContext.init(incomingCall:invocationType:)(PhoneCallFlowDelegatePlugin::AnnounceCallsContext incomingCall, PhoneCallFlowDelegatePlugin::AnnounceCallInvocationType invocationType)
{
  v2 = invocationType & 1;
  incomingCall.invocationType = v2;
  return incomingCall;
}

uint64_t AnnounceCallsContext.description.getter(void *a1, char a2)
{
  BYTE8(v13) = 0;
  _StringGuts.grow(_:)(39);
  v4._object = 0x80000000004580D0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000000004580F0;
  String.append(_:)(v10);
  *&v13 = a2 & 1;
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 32010;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return *(&v13 + 1);
}

uint64_t AnswerCallOutputStrategy.init(device:incomingCallCats:announceCallsContext:audioSessionManager:entitlementChecker:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 24) = type metadata accessor for AnswerCallCATsSimple();
  *(a7 + 32) = &protocol witness table for AnswerCallCATsSimple;
  *a7 = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  outlined init with take of SPHConversation(a1, a7 + 56);
  outlined init with take of SPHConversation(a5, a7 + 96);

  return outlined init with take of SPHConversation(a6, a7 + 136);
}

id AnswerCallOutputStrategy.makeCallConnectedSound(intentResponse:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#AnswerCallOutputStrategy makeCallConnectedSound:", v7, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v8 = *(v2 + 40);
  if (!v8)
  {
    v11 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v21))
    {
      v22 = OUTLINED_FUNCTION_65_0();
      *v22 = 0;
      _os_log_impl(&dword_0, v11, v21, "This is not a follow-up to a call announcement - not sending answer chime", v22, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v10 = *(a2 + 8);
  v11 = v8;
  if (v10(ObjectType, a2) != 2)
  {
    if (one-time initialization token for announceTelephony != -1)
    {
      OUTLINED_FUNCTION_0_24();
    }

    __swift_project_value_buffer(v4, static Logger.announceTelephony);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v25, v26, "Siri did not find an incoming call when attempting to answer - not sending answer chime");
      OUTLINED_FUNCTION_26_0();
    }

LABEL_22:
    return 0;
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  __swift_project_value_buffer(v4, static Logger.announceTelephony);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_65_0();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Call was answered - sending answer chime.", v14, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  if ([v11 preferredCallProvider]== &dword_0 + 2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v17, v18, "This is a FT call - sending answer chime with ID nil.");
      OUTLINED_FUNCTION_26_0();
    }

    v19 = 0;
    v20 = 0;
  }

  else
  {
    v28 = [v11 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v29;
  }

  type metadata accessor for SAUIPlayNotificationSound();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = SAUIPlayNotificationSound.init(notificationId:soundType:)(v19, v20);

  return v27;
}

BOOL AnswerCallOutputStrategy.shouldCloseAssistantEarly(intentResponse:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  if ((dispatch thunk of DeviceState.isWatch.getter() & 1) == 0)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 8))(ObjectType, a2) == 2;
}

BOOL AnswerCallOutputStrategy.shouldShowIntentHandledDialog(intentResponse:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  IncomingCallIntentResponse.isIncomingCall.getter(ObjectType, a2);
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136315394;
    if (v6)
    {
      v14 = 0x6F7420544F4ELL;
    }

    else
    {
      v14 = 28532;
    }

    if (v6)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_0, v9, v10, "#AnswerCallOutputStrategy AnswerCall decided %s send AddViews because intentResponse %@ is incoming call.", v11, 0x16u);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return (v6 & 1) == 0;
}

uint64_t AnswerCallOutputStrategy.shouldAllowAppToInitiateRecordingTemporarily(sharedGlobals:app:)(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for AudioSource();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v39[-v17];
  __chkstk_darwin(v16);
  v20 = &v39[-v19];
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if ((*(v21 + 112))(v22, v21))
  {
    CurrentRequest.audioSource.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v3);
  }

  static AudioSource.bluetoothDoAPDevice.getter();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  v23 = *(v7 + 48);
  outlined init with copy of AudioSource?(v20, v10);
  outlined init with copy of AudioSource?(v18, &v10[v23]);
  OUTLINED_FUNCTION_6_1(v10);
  if (v24)
  {
    OUTLINED_FUNCTION_7_11(v18);
    OUTLINED_FUNCTION_7_11(v20);
    OUTLINED_FUNCTION_6_1(&v10[v23]);
    if (v24)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
LABEL_20:
    v37 = 0;
    return v37 & 1;
  }

  outlined init with copy of AudioSource?(v10, v15);
  OUTLINED_FUNCTION_6_1(&v10[v23]);
  if (v24)
  {
    OUTLINED_FUNCTION_7_11(v18);
    OUTLINED_FUNCTION_7_11(v20);
    (*(v43 + 8))(v15, v3);
    goto LABEL_12;
  }

  v25 = v43;
  (*(v43 + 32))(v6, &v10[v23], v3);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource();
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v25 + 8);
  v26(v6, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v18, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v26(v15, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v27 = v42;
  v28 = *(v42 + 40);
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = *(v42 + 48);
  v30 = v28;
  if ([v30 callCapability] != &dword_0 + 1 || (v29 & 1) == 0 || (v31 = App.appIdentifier.getter(), !v32))
  {

    goto LABEL_20;
  }

  v33 = v31;
  v34 = v32;
  v35 = v27[20];
  v36 = v27[21];
  __swift_project_boxed_opaque_existential_1(v27 + 17, v35);
  v37 = (*(v36 + 8))(v33, v34, v35, v36);

  return v37 & 1;
}

unint64_t type metadata accessor for SAUIPlayNotificationSound()
{
  result = lazy cache variable for type metadata for SAUIPlayNotificationSound;
  if (!lazy cache variable for type metadata for SAUIPlayNotificationSound)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIPlayNotificationSound);
  }

  return result;
}

uint64_t outlined init with copy of AudioSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource()
{
  result = lazy protocol witness table cache variable for type AudioSource and conformance AudioSource;
  if (!lazy protocol witness table cache variable for type AudioSource and conformance AudioSource)
  {
    type metadata accessor for AudioSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSource and conformance AudioSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType()
{
  result = lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType;
  if (!lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCallsContext(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for AnnounceCallsContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallInvocationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnswerCallOutputStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnswerCallOutputStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall App.isFaceTime()()
{
  v0 = App.appIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000000004574F0;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      swift_once();
    }

    v5 = *algn_599C28;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v5;

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
    v7 = specialized Set.contains(_:)(v2, v3, v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

Swift::Bool __swiftcall App.isPhoneFirstPartyApp()()
{
  v0 = App.appIdentifier.getter();
  v2 = static PhoneCallAppNameConstants.isPhone(appId:)(v0, v1);

  return v2 & 1;
}

uint64_t App.getAppName(forLocale:appInfoBuilder:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 16))(v2, a1, v4, v5);
}

uint64_t App.toSpeakableStringAppName(forLocale:appInfoBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 16))(v3, a1, v6, v7);
  if (v8)
  {
    SpeakableString.init(print:speak:)();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v10);
}

uint64_t App.toUsoEntityBuilder(locale:)()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoEntityBuilder_common_App();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = UsoEntityBuilder_common_App.init()();
  v13 = type metadata accessor for AppInformationResolver();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v17 = v16;

  if (v17)
  {
    dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  }

  App.appIdentifier.getter();
  if (v18)
  {
    if (dispatch thunk of UsoEntityBuilder_common_App.name.getter())
    {
      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

      (*(v3 + 8))(v8, v0);
    }

    else
    {
    }
  }

  return v12;
}

uint64_t App.toAppDescription(deviceState:appInfoBuilder:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_7(v6);
  v49 = v8;
  v50 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v48 = v12 - v11;
  v47 = type metadata accessor for CommonDirectAction();
  v13 = OUTLINED_FUNCTION_23_1(v47);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v18 = (v17 - v16);
  v19 = type metadata accessor for Locale();
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v31 = (*(v30 + 16))(v3, v27, v29, v30);
  v33 = v32;
  (*(v22 + 8))(v27, v19);
  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = App.appIdentifier.getter();
  if (!v35)
  {

LABEL_5:
    v45 = type metadata accessor for AppDescription();
    v43 = a3;
    v44 = 1;
    return __swift_storeEnumTagSinglePayload(v43, v44, 1, v45);
  }

  v36 = v34;
  v37 = v35;
  *v18 = v34;
  v18[1] = v35;
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(a1);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_0(v18, type metadata accessor for CommonDirectAction);
  v38 = App.isFirstParty()();
  UUID.init()();
  (*(v49 + 16))(a3, v48, v50);
  v39 = type metadata accessor for AppDescription();
  v40 = (a3 + v39[5]);
  *v40 = v31;
  v40[1] = v33;
  v41 = (a3 + v39[6]);
  *v41 = v36;
  v41[1] = v37;
  *(a3 + v39[7]) = v38;
  v42 = v39[8];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  (*(v49 + 8))(v48, v50);
  v43 = a3;
  v44 = 0;
  v45 = v39;
  return __swift_storeEnumTagSinglePayload(v43, v44, 1, v45);
}

uint64_t Unmanaged<>.stringValue.getter(void *a1)
{
  v1 = a1;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17(v2);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR), v3 = OUTLINED_FUNCTION_3_15(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = (v0 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = v4[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_7_12();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v7 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = (v4[6] + 16 * v15);
        v20 = *v19 == v10 && v19[1] == v9;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v15 + 1;
      }

      *(v7 + 8 * v16) = v18 | v17;
      v21 = (v4[6] + 16 * v15);
      *v21 = v10;
      v21[1] = v9;
      OUTLINED_FUNCTION_8_18();
      if (v23)
      {
        goto LABEL_19;
      }

      v4[2] = v22;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_11_10();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for SAIntentGroupRunSiriKitExecutor()
{
  result = lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor;
  if (!lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor);
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5(uint64_t a1)
{
  OUTLINED_FUNCTION_15_17(a1);
  if (v2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin0cD4VerbOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin0cD4VerbOGMR), v3 = OUTLINED_FUNCTION_3_15(), v4 = v3, (v30 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v3 + 56;
    v28 = v1;
    v29 = v1 + 32;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v29 + v5++);
      v8 = v4[5];
      Hasher.init(_seed:)();
      switch(v7)
      {
        case 2:
        case 3:
          OUTLINED_FUNCTION_13_16();
          break;
        default:
          break;
      }

      String.hash(into:)();

      Hasher._finalize()();
      OUTLINED_FUNCTION_7_12();
      v10 = ~v9;
      v12 = v11 & ~v9;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        while (1)
        {
          v16 = 0xE400000000000000;
          v17 = 1819042147;
          switch(*(v4[6] + v12))
          {
            case 1:
              v17 = 0x636162206C6C6163;
              v16 = 0xE90000000000006BLL;
              break;
            case 2:
              v16 = 0xE800000000000000;
              v17 = OUTLINED_FUNCTION_17_6();
              break;
            case 3:
              v17 = OUTLINED_FUNCTION_17_6();
              v19 = 0x6F6964756120;
              goto LABEL_19;
            case 4:
              v17 = 0x7072656B61657073;
              v18 = 1701736296;
              goto LABEL_23;
            case 5:
              v17 = 1684957542;
              break;
            case 6:
              v16 = 0xE600000000000000;
              v17 = 0x6C6169646572;
              break;
            case 7:
              v16 = 0xE700000000000000;
              v17 = 0x79666972616C63;
              break;
            case 8:
              v17 = 1684104562;
              break;
            case 9:
              v16 = 0xE700000000000000;
              v17 = 0x6D7269666E6F63;
              break;
            case 0xA:
              v16 = 0xE600000000000000;
              v17 = 0x726577736E61;
              break;
            case 0xB:
              v16 = 0xE700000000000000;
              v17 = 0x70755F676E6168;
              break;
            case 0xC:
              v16 = 0xE600000000000000;
              v17 = 0x6574656C6564;
              break;
            case 0xD:
              v17 = 0x65526F54746E6177;
              v18 = 1952540016;
LABEL_23:
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 0xE:
              v17 = 1852403562;
              break;
            case 0xF:
              v17 = 0x6974726150646461;
              v19 = 0x746E61706963;
LABEL_19:
              v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              break;
            case 0x10:
              v17 = 0xD000000000000011;
              v16 = 0x8000000000453820;
              break;
            default:
              break;
          }

          v20 = 0xE400000000000000;
          v21 = 1819042147;
          switch(v7)
          {
            case 1:
              v21 = 0x636162206C6C6163;
              v20 = 0xE90000000000006BLL;
              break;
            case 2:
              v20 = 0xE800000000000000;
              OUTLINED_FUNCTION_16_7();
              break;
            case 3:
              OUTLINED_FUNCTION_16_7();
              v23 = 0x6F6964756120;
              goto LABEL_38;
            case 4:
              v21 = 0x7072656B61657073;
              v22 = 1701736296;
              goto LABEL_42;
            case 5:
              v21 = 1684957542;
              break;
            case 6:
              v20 = 0xE600000000000000;
              v21 = 0x6C6169646572;
              break;
            case 7:
              v20 = 0xE700000000000000;
              v21 = 0x79666972616C63;
              break;
            case 8:
              v21 = 1684104562;
              break;
            case 9:
              v20 = 0xE700000000000000;
              v21 = 0x6D7269666E6F63;
              break;
            case 10:
              v20 = 0xE600000000000000;
              v21 = 0x726577736E61;
              break;
            case 11:
              v20 = 0xE700000000000000;
              v21 = 0x70755F676E6168;
              break;
            case 12:
              v20 = 0xE600000000000000;
              v21 = 0x6574656C6564;
              break;
            case 13:
              v21 = 0x65526F54746E6177;
              v22 = 1952540016;
LABEL_42:
              v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 14:
              v21 = 1852403562;
              break;
            case 15:
              v21 = 0x6974726150646461;
              v23 = 0x746E61706963;
LABEL_38:
              v20 = v23 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              break;
            case 16:
              v21 = 0xD000000000000011;
              v20 = 0x8000000000453820;
              break;
            default:
              break;
          }

          if (v17 == v21 && v16 == v20)
          {
            break;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_55;
          }

          v12 = (v12 + 1) & v10;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if ((v14 & (1 << v12)) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        *(v6 + 8 * v13) = v14 | v15;
        *(v4[6] + v12) = v7;
        OUTLINED_FUNCTION_8_18();
        if (v27)
        {
          goto LABEL_58;
        }

        v4[2] = v26;
      }

LABEL_55:
      v1 = v28;
      if (v5 == v30)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_56:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17SiriAppResolution0F0C_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
    v2 = OUTLINED_FUNCTION_3_15();
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  v21 = specialized Array.count.getter(v1);
  if (v21)
  {
    v3 = 0;
    v4 = v2 + 7;
    v19 = v1;
    v20 = v1 & 0xC000000000000001;
    v18 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v20 == 0, v1);
      if (v20)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v18 + 8 * v3);
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v7 = v2[5];
      type metadata accessor for App();
      OUTLINED_FUNCTION_6_15();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type App and conformance App, v8);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_7_12();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = v4[v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v22 = *(v2[6] + 8 * v12);
        OUTLINED_FUNCTION_6_15();
        lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type App and conformance App, v16);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      v4[v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v5;
      OUTLINED_FUNCTION_8_18();
      if (v6)
      {
        goto LABEL_20;
      }

      v2[2] = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  v2 = OUTLINED_FUNCTION_3_15();
  v23 = *(v1 + 16);
  if (!v23)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v21 = v1;
  v22 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v4 = *(v22 + v3++);
    v5 = v2[5];
    Hasher.init(_seed:)();
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_7_12();
    v7 = ~v6;
    v9 = v8 & ~v6;
    OUTLINED_FUNCTION_14_15();
    if ((v12 & v11) == 0)
    {
      break;
    }

    while (1)
    {
      if (*(v2[6] + v9))
      {
        if (*(v2[6] + v9) == 1)
        {
          v13 = 0x654E646E41646E65;
          v14 = 0xED00006C6C614377;
          if (!v4)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0x4E646E41646C6F68;
          v14 = 0xEE006C6C61437765;
          if (!v4)
          {
LABEL_18:
            v16 = 0xE300000000000000;
            v15 = 6579297;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v14 = 0xE300000000000000;
        v13 = 6579297;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      v15 = v4 == 1 ? 0x654E646E41646E65 : 0x4E646E41646C6F68;
      v16 = v4 == 1 ? 0xED00006C6C614377 : 0xEE006C6C61437765;
LABEL_19:
      if (v13 == v15 && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_28;
      }

      v9 = (v9 + 1) & v7;
      OUTLINED_FUNCTION_14_15();
      if ((v11 & v12) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    v1 = v21;
    if (v3 == v23)
    {
LABEL_29:

      return;
    }
  }

LABEL_25:
  v2[v10 + 7] = v11 | v12;
  *(v2[6] + v9) = v4;
  OUTLINED_FUNCTION_8_18();
  if (!v20)
  {
    v2[2] = v19;
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = OUTLINED_FUNCTION_7(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v34 - v10;
  if (!*(a1 + 16))
  {
    v12 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow0cD16ReliabilityCodesOGMd, &_ss11_SetStorageCy11SiriKitFlow0cD16ReliabilityCodesOGMR);
  result = OUTLINED_FUNCTION_3_15();
  v12 = result;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v42 = result + 56;
  v14 = *(v39 + 80);
  v36 = a1;
  v37 = a1 + ((v14 + 32) & ~v14);
  v41 = v39 + 16;
  v15 = (v39 + 8);
  v35 = (v39 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v39 + 72);
    v40 = v13 + 1;
    v17 = *(v39 + 16);
    v17(v43, v37 + v16 * v13, v2);
    v18 = v12[5];
    OUTLINED_FUNCTION_4_13();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v19);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v42 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v12;
      v17(v9, v12[6] + v22 * v16, v2);
      OUTLINED_FUNCTION_4_13();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v27);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v15;
      (*v15)(v9, v2);
      if (v28)
      {
        result = (v29)(v43, v2);
        v12 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v12 = v26;
    }

    v30 = v43;
    *(v42 + 8 * v23) = v25 | v24;
    result = (*v35)(v12[6] + v22 * v16, v30, v2);
    v31 = v12[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v12[2] = v33;
LABEL_12:
    v13 = v40;
    a1 = v36;
    if (v40 == v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17(v6);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0H8CategoryOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0H8CategoryOGMR), v7 = OUTLINED_FUNCTION_3_15(), (v8 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_11_18();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + v2++);
      v10 = *(v7 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      v11 = Hasher._finalize()();
      v12 = ~(v5 << *(v7 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_10_17(v11, v12);
        if (v17)
        {
          break;
        }

        if (v9 == *(*(v7 + 48) + v13))
        {
          goto LABEL_11;
        }

        v11 = v13 + 1;
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + v13) = v9;
      OUTLINED_FUNCTION_8_18();
      if (v19)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v18;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_11_10();
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriOntology025UsoEntity_applePhoneCall_jK9AttributeC13DefinedValuesOSg_Tt0g5(uint64_t a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v2 = OUTLINED_FUNCTION_23_1(v64);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v55 - v5;
  v7 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v62 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v66 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v69 = &v55 - v25;
  if (!*(a1 + 16))
  {
    v70 = _swiftEmptySetSingleton;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  result = OUTLINED_FUNCTION_3_15();
  v70 = result;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_26;
  }

  v27 = 0;
  v63 = v70 + 7;
  v57 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v61 = (v10 + 32);
  v65 = (v10 + 8);
  v28 = &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd;
  v55 = v24;
  v56 = a1;
  while (1)
  {
    if (v27 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v29 = *(v59 + 72);
    v60 = v27;
    v68 = v29;
    v30 = v69;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v57 + v29 * v27, v69);
    v31 = v70[5];
    Hasher.init(_seed:)();
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v30, v24);
    OUTLINED_FUNCTION_21_3(v24);
    if (v42)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v32 = v62;
      (*v61)(v62, v24, v7);
      Hasher._combine(_:)(1u);
      OUTLINED_FUNCTION_5_19();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v33);
      dispatch thunk of Hashable.hash(into:)();
      (*v65)(v32, v7);
    }

    v34 = v64;
    v35 = Hasher._finalize()();
    v67 = ~(-1 << *(v70 + 32));
    v36 = v35 & v67;
    v37 = (v35 & v67) >> 6;
    v38 = v63;
    v39 = v63[v37];
    v40 = 1 << (v35 & v67);
    if ((v40 & v39) == 0)
    {
      break;
    }

    while (1)
    {
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v70[6] + v36 * v68, v21);
      v41 = *(v34 + 48);
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v21, v6);
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v69, &v6[v41]);
      OUTLINED_FUNCTION_21_3(v6);
      if (v42)
      {
        break;
      }

      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v6, v66);
      OUTLINED_FUNCTION_21_3(&v6[v41]);
      if (v42)
      {
        OUTLINED_FUNCTION_12_19(v21);
        (*v65)(v66, v7);
LABEL_17:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
        goto LABEL_19;
      }

      v43 = v62;
      v44 = v28;
      v45 = v66;
      (*v61)(v62, &v6[v41], v7);
      OUTLINED_FUNCTION_5_19();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v46);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *v65;
      v49 = v43;
      v38 = v63;
      (*v65)(v49, v7);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, v44, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      v50 = v45;
      v28 = v44;
      v48(v50, v7);
      v34 = v64;
      OUTLINED_FUNCTION_12_19(v6);
      if (v47)
      {
        goto LABEL_22;
      }

LABEL_19:
      v36 = (v36 + 1) & v67;
      v37 = v36 >> 6;
      v39 = v38[v36 >> 6];
      v40 = 1 << v36;
      if ((v39 & (1 << v36)) == 0)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_12_19(v21);
    OUTLINED_FUNCTION_21_3(&v6[v41]);
    if (!v42)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_12_19(v6);
LABEL_22:
    result = OUTLINED_FUNCTION_12_19(v69);
LABEL_23:
    v27 = v60 + 1;
    a1 = v56;
    v24 = v55;
    if (v60 + 1 == v58)
    {
LABEL_26:

      return v70;
    }
  }

LABEL_20:
  v38[v37] = v39 | v40;
  v51 = v70;
  result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v69, v70[6] + v36 * v68);
  v52 = v51[2];
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (!v53)
  {
    v70[2] = v54;
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo25INSiriAuthorizationStatusV_Tt0g5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17(v6);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25INSiriAuthorizationStatusVGMd, &_ss11_SetStorageCySo25INSiriAuthorizationStatusVGMR), v7 = OUTLINED_FUNCTION_3_15(), (v8 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_11_18();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + 8 * v2++);
      v10 = *(v7 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      v11 = Hasher._finalize()();
      v12 = ~(v5 << *(v7 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_10_17(v11, v12);
        if (v17)
        {
          break;
        }

        if (*(*(v7 + 48) + 8 * v13) == v9)
        {
          goto LABEL_11;
        }

        v11 = v13 + 1;
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + 8 * v13) = v9;
      OUTLINED_FUNCTION_8_18();
      if (v19)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v18;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_11_10();
  }
}

uint64_t outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PhoneError and conformance PhoneError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppDescription.init(id:appName:appBundleId:isFirstParty:rskeCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7(v14);
  v23 = v15;
  (*(v16 + 16))(a7, a1, v14);
  v17 = type metadata accessor for AppDescription();
  v18 = (a7 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a7 + v17[6]);
  *v19 = a4;
  v19[1] = a5;
  *(a7 + v17[7]) = a6;
  v20 = v17[8];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  v21 = *(v23 + 8);

  return v21(a1, v14);
}

uint64_t type metadata accessor for AppDescription()
{
  result = type metadata singleton initialization cache for AppDescription;
  if (!type metadata singleton initialization cache for AppDescription)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppDescription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppDescription.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for AppDescription() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppDescription.appBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for AppDescription() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailModel.repeatDirectInvocation()
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t AppDescription.rskeCommand.getter()
{
  v0 = *(type metadata accessor for AppDescription() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t AppDescription.rskeCommand.setter()
{
  v0 = *(type metadata accessor for AppDescription() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*AppDescription.rskeCommand.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for AppDescription() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

void AppDescription.rskeCommand.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t static AppDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AppDescription() + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AppDescription.hash(into:)()
{
  v1 = (v0 + *(type metadata accessor for AppDescription() + 24));
  v2 = *v1;
  v3 = v1[1];

  return String.hash(into:)();
}

uint64_t AppDescription.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5074737269467369 && a2 == 0xEC00000079747261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D6D6F43656B7372 && a2 == 0xEB00000000646E61)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t AppDescription.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656D614E707061;
      break;
    case 2:
      result = 0x6C646E7542707061;
      break;
    case 3:
      result = 0x5074737269467369;
      break;
    case 4:
      result = 0x6D6D6F43656B7372;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDescription.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDescription.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppDescription.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static PhoneContactDisambiguationProperties.maxItemsForVoxReadout.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppDescription.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26[15] = 0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_23();
  _s10Foundation4UUIDVACSEAAWlTm_0(v14, v15);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AppDescription();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v26[14] = 1;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v26[13] = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v16[7]);
    v26[12] = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v16[8];
    v26[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

Swift::Int AppDescription.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = (v0 + *(type metadata accessor for AppDescription() + 24));
  v2 = *v1;
  v3 = v1[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AppDescription.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7(v47);
  v45 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for UUID();
  v10 = OUTLINED_FUNCTION_7(v9);
  v48 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  v16 = OUTLINED_FUNCTION_7(v15);
  v49 = v17;
  v50 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for AppDescription();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  v52 = v22;
  v28 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v53 = v8;
  v29 = v48;
  v58 = 0;
  OUTLINED_FUNCTION_2_23();
  _s10Foundation4UUIDVACSEAAWlTm_0(v30, v31);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v26;
  (*(v29 + 32))(v26, v51, v9);
  v57 = 1;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v23;
  v35 = (v32 + *(v23 + 20));
  *v35 = v33;
  v35[1] = v36;
  v56 = 2;
  v51 = 0;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = (v32 + *(v23 + 24));
  *v38 = v37;
  v38[1] = v39;
  v55 = 3;
  v40 = a1;
  *(v32 + *(v34 + 28)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v54 = 4;
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
  v41 = v53;
  v42 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 8))(v52, v50);
  (*(v45 + 32))(v32 + *(v34 + 32), v41, v42);
  outlined init with copy of AppDescription(v32, v46);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return outlined destroy of AppDescription(v32);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppDescription()
{
  Hasher.init(_seed:)();
  AppDescription.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AppDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppDescription(uint64_t a1)
{
  v2 = type metadata accessor for AppDescription();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7263736544707061 && a2 == 0xEF736E6F69747069;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AppDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x7263736544707061;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance AppDisambiguationModel.CodingKeys@<W0>(Swift::Int a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallMetrics.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppDisambiguationModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
  lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A], &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v18 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v9 + 8))(v14, v7);
}

unint64_t lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

uint64_t AppDisambiguationModel.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
    lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A], &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = OUTLINED_FUNCTION_3_16();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
    _s10Foundation4UUIDVACSEAAWlTm_0(a2, type metadata accessor for AppDescription);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for AppDisambiguationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel()
{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AppDisambiguationModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppDisambiguationModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void type metadata completion function for AppDescription()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>)
  {
    type metadata accessor for SAIntentGroupRunSiriKitExecutor();
    v0 = type metadata accessor for CodableAceObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppDisambiguationModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AppDisambiguationModel(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (App.isFirstParty()())
  {
    return 0;
  }

  else
  {
    return (*(a4 + 16))(a1, a2, a3, a4);
  }
}

uint64_t AppInfoBuilder.getAppName(_:requestedLocale:)()
{
  v0 = type metadata accessor for AppInformationResolver();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v3 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();

  return v3;
}

PhoneCallFlowDelegatePlugin::AppNameSpecifiedByUserSignalCollectionHistory __swiftcall AppNameSpecifiedByUserSignalCollectionHistory.init()()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v3 + 8))(v7, v0);
  v10 = _swiftEmptyArrayStorage;
  v11 = v9;
  result.timestamp = v11;
  result.apps._rawValue = v10;
  return result;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.init(date:apps:)(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  return a2;
}

void AppNameSpecifiedByUserSignalCollectionHistory.daysSinceLastShowed.getter()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v7, v0);
  v13(v10, v0);
  v14 = v12 / 86400.0;
  if (v12 / 86400.0 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12 / 86400.0;
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
    v26 = v14;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    Date.init(timeIntervalSince1970:)();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v13(v10, v0);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    if (v14 >= 0.0 && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v25 = fabs(v14);
    *(v19 + 14) = v15;
    _os_log_impl(&dword_0, v17, v18, "#AppNameSpecifiedByUserSignalCollectionHistory is shown at %s, which is %ld days ago last time", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {

    v25 = fabs(v14);
  }

  if (v14 >= 0.0 && v25 == INFINITY)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.description.getter()
{
  _StringGuts.grow(_:)(27);
  v0._countAndFlagsBits = 0x203A737070610A7BLL;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x7473656D69740A2CLL;
  v2._object = 0xED0000203A706D61;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 32010;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1936748641;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AppNameSpecifiedByUserSignalCollectionHistory.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a3 == a4)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ13SiriInference12ContactQueryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactQuery();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v7 + 16);
  v20 = v7 + 16;
  v22 = (v20 - 8);
  v29 = *(v20 + 56);
  v30 = v21;
  while (1)
  {
    v23 = v30;
    result = (v30)(v15, v18, v4, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v4);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v11, v4);
    v27(v15, v4);
    if (v26)
    {
      v19 += v29;
      v18 += v29;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[1] = a2;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void *AppNameSpecifiedByUserSignalCollectionHistory.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMR);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v15 = 1;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v10, v3);
    v12 = v14[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t protocol witness for SiriPhoneDefaultsCodable.init() in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(void **a1@<X8>)
{
  v3 = AppNameSpecifiedByUserSignalCollectionHistory.init()();
  result = *&v3.timestamp;
  *a1 = v3.apps._rawValue;
  a1[1] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppNameSpecifiedByUserSignalCollectionHistory()
{
  v1 = *v0;
  v2 = v0[1];
  return AppNameSpecifiedByUserSignalCollectionHistory.description.getter();
}

void *protocol witness for Decodable.init(from:) in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AppNameSpecifiedByUserSignalCollectionHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  a1[2] = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  result = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory()
{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  result = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppQuery.isFirstParty.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_15();
  type metadata accessor for App();

  OUTLINED_FUNCTION_0();
  App.__allocating_init(appIdentifier:)();
  v2 = App.isFirstParty()();

  return v2;
}

uint64_t AppQuery.appId.getter()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2)
  {
    v0 = AppQuery.defaultAppId.getter(v0, 0, v1);
  }

  return v0;
}

BOOL AppQuery.isThirdParty.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_15();
    type metadata accessor for App();

    OUTLINED_FUNCTION_0();
    App.__allocating_init(appIdentifier:)();
    v2 = App.isFirstParty()();

    return !v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppQuery.source.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t AppQuery.Builder.__allocating_init(app:)()
{
  v1 = App.appIdentifier.getter();
  v2 = (*(v0 + 144))(v1);

  return v2;
}

uint64_t static AppQuery.userRequested(applicationId:)()
{
  OUTLINED_FUNCTION_1_15();

  return OUTLINED_FUNCTION_0();
}

uint64_t static AppQuery.Override.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppQuery.Builder.__allocating_init(requestedAppId:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AppQuery.Builder.init(requestedAppId:overrides:)(a1, a2, a3);
  return v6;
}

void *AppQuery.Builder.init(requestedAppId:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = _swiftEmptyArrayStorage;
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

uint64_t AppQuery.Builder.__allocating_init(intent:)(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_41_4();
  v6 = PhoneCallNLIntent.applicationId.getter(v4, v5);
  if (!v7)
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = OUTLINED_FUNCTION_41_4();
    v6 = PhoneCallNLIntent.appName.getter(v9, v10);
  }

  v11 = (*(v1 + 144))(v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t AppQuery.Builder.withOverrides(_:)()
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v0);
  swift_endAccess();
}

PhoneCallFlowDelegatePlugin::AppQuery __swiftcall AppQuery.Builder.build()()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_beginAccess();
  v3 = v0[4];

  v4 = v1;
  v5 = v2;
  v6 = v3;
  result.overrides._rawValue = v6;
  result.requestedAppId.value._object = v5;
  result.requestedAppId.value._countAndFlagsBits = v4;
  return result;
}

uint64_t AppQuery.Builder.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t AppQuery.Builder.__deallocating_deinit()
{
  AppQuery.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static AppQuery.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v5 = a1 == a4 && a2 == a5;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_0();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(v6, v7);
}

uint64_t getEnumTagSinglePayload for AppQuery(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppQuery(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin026AppResolutionBeforeResolveG0C5State08_3322C18O22FCD5B61BCB3AF0EBDB34E5LLO_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppResolutionBeforeResolveFlow.State(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AppResolutionBeforeResolveFlow.State(a1, type metadata accessor for AppResolutionBeforeResolveFlow.State);
      v7 = 0x74656C706D6F632ELL;
      a1 = v5;
    }

    else
    {
      v7 = 0xD00000000000001CLL;
    }
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v5, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    v7 = 0x6C616974696E692ELL;
  }

  outlined destroy of AppResolutionBeforeResolveFlow.State(a1, type metadata accessor for AppResolutionBeforeResolveFlow.State);
  return v7;
}

unint64_t _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin011UnsupportedeF0O_Tt0g5(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t AppResolutionBeforeResolveFlow.State.description.getter()
{
  v1 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AppResolutionBeforeResolveFlow.State(v4, type metadata accessor for AppResolutionBeforeResolveFlow.State);
      return 0x74656C706D6F632ELL;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v4, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    return 0x6C616974696E692ELL;
  }
}

uint64_t AppResolutionBeforeResolveFlow.__allocating_init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(a1, a2, a3, a4);
  return v11;
}

uint64_t AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined init with take of SPHConversation(a3, v4 + 72);
  outlined init with take of SPHConversation(a4, v4 + 32);
  v8 = (v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state);
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  swift_storeEnumTagMultiPayload();
  v9 = a1;

  return v4;
}

uint64_t AppResolutionBeforeResolveFlow.execute(completion:)()
{
  type metadata accessor for AppResolutionBeforeResolveFlow(0);
  lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AppResolutionBeforeResolveFlow.exitValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for PhoneError();
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v9 = OUTLINED_FUNCTION_23_1(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = type metadata accessor for AppResolutionFlowResult();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  swift_beginAccess();
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v1 + v22, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v18 + 32);
    v23(v21, v16, v17);
    return (v23)(v31, v21, v17);
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v16, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    outlined init with copy of AppResolutionBeforeResolveFlow.State(v1 + v22, v14);
    v25 = AppResolutionBeforeResolveFlow.State.description.getter();
    v27 = v26;
    outlined destroy of AppResolutionBeforeResolveFlow.State(v14, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    *v7 = 0xD00000000000001ELL;
    v7[1] = 0x800000000042B240;
    v7[2] = v25;
    v7[3] = v27;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    v28 = swift_allocError();
    PhoneError.logged()(v29);
    outlined destroy of AppResolutionBeforeResolveFlow.State(v7, type metadata accessor for PhoneError);
    v30 = v31;
    *v31 = v28;
    *(v30 + 8) = 0;
    return (*(v18 + 104))();
  }
}

uint64_t outlined init with copy of AppResolutionBeforeResolveFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of AppResolutionBeforeResolveFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AppResolutionBeforeResolveFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v1[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v32 = v0;
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  v0[18] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  swift_beginAccess();
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v6 = v0[14];
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.siriPhone);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[16];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v31 = v12;
        *v11 = 136315138;
        outlined init with copy of AppResolutionBeforeResolveFlow.State(v3 + v4, v10);
        v13 = _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin026AppResolutionBeforeResolveG0C5State08_3322C18O22FCD5B61BCB3AF0EBDB34E5LLO_Tt0g5(v10);
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v31);

        *(v11 + 4) = v15;
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_12_3();
      }
    }

    v21 = v0[17];
    v22 = v0[13];
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_2_24();
    outlined destroy of AppResolutionBeforeResolveFlow.State(v21, v23);
    v25 = v0[16];
    v24 = v0[17];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[17];
    v0[19] = *v28;
    v0[20] = v28[1];
    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = AppResolutionBeforeResolveFlow.execute();
    v30 = v0[14];

    return AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 168);
  v7 = *v0;
  *(*v0 + 176) = v2;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v40 = v1;
  v2 = v1[22];
  if (v2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriPhone);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v6);
      _os_log_impl(&dword_0, v4, v5, "#AppResolutionBeforeResolveFlow pushing app resolution flow", v0, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v8 = v1[19];
    v7 = v1[20];
    v9 = v1[18];
    v11 = v1[15];
    v10 = v1[16];
    v12 = v1[13];
    v13 = v1[14];

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of AppResolutionBeforeResolveFlow.State(v10, v13 + v9);
    swift_endAccess();
    v1[12] = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v13;
    v15 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
    lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = v1[20];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v1[20];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      v1[11] = v20;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v18, v19, "#AppResolutionBeforeResolveFlow no app resolution flow, returning previously resolved app: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v26 = v1[19];
    v27 = v1[18];
    v29 = v1[15];
    v28 = v1[16];
    v30 = v1[13];
    v31 = v1[14];
    *v28 = v1[20];
    v32 = enum case for AppResolutionFlowResult.resolved(_:);
    v33 = type metadata accessor for AppResolutionFlowResult();
    OUTLINED_FUNCTION_23_1(v33);
    (*(v34 + 104))(v28, v32);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    outlined assign with take of AppResolutionBeforeResolveFlow.State(v28, v31 + v27);
    swift_endAccess();
    static ExecuteResponse.complete()();
  }

  v36 = v1[16];
  v35 = v1[17];

  v37 = v1[1];

  return v37();
}

uint64_t closure #1 in AppResolutionBeforeResolveFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v49 = a2;
  v53 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v4 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppResolutionFlowResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.siriPhone);
  v18 = (v7 + 16);
  v54 = *(v7 + 16);
  v54(v15, a1, v6);
  v48 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v50 = a1;
    v22 = v21;
    v47 = swift_slowAlloc();
    v57[0] = v47;
    *v22 = 136315138;
    v54(v13, v15, v6);
    v23 = String.init<A>(describing:)();
    v24 = v7;
    v26 = v25;
    v27 = *(v24 + 8);
    v27(v15, v6);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v57);
    v7 = v24;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_0, v19, v20, "#AppResolutionBeforeResolveFlow app resolution flow completed with %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);

    a1 = v50;
  }

  else
  {

    v27 = *(v7 + 8);
    v27(v15, v6);
  }

  v29 = v51;
  v30 = v54;
  v54(v51, a1, v6);
  if ((*(v7 + 88))(v29, v6) == enum case for AppResolutionFlowResult.resolved(_:))
  {
    (*(v7 + 96))(v29, v6);
    v31 = *v29;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = v18;
      v35 = v34;
      v36 = swift_slowAlloc();
      v50 = a1;
      v37 = v36;
      v56 = v31;
      v57[0] = v36;
      *v35 = 136315138;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v57);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_0, v32, v33, "#AppResolutionBeforeResolveFlow set meta data for app: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      a1 = v50;
    }

    INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v41, 0, (v55 + 72));
  }

  else
  {
    v27(v29, v6);
  }

  v42 = v52;
  v30(v52, a1, v6);
  swift_storeEnumTagMultiPayload();
  v43 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  v44 = v55;
  swift_beginAccess();
  outlined assign with take of AppResolutionBeforeResolveFlow.State(v42, v44 + v43);
  return swift_endAccess();
}

uint64_t AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:)()
{
  OUTLINED_FUNCTION_15();
  v1[189] = v0;
  v1[188] = v2;
  v3 = *(*(type metadata accessor for AppResolver() - 8) + 64);
  v1[190] = OUTLINED_FUNCTION_45();
  v4 = *(*(type metadata accessor for CATOption() - 8) + 64);
  v1[191] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Parse();
  v1[192] = v5;
  v6 = *(v5 - 8);
  v1[193] = v6;
  v7 = *(v6 + 64);
  v1[194] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for Input();
  v1[195] = v8;
  v9 = *(v8 - 8);
  v1[196] = v9;
  v10 = *(v9 + 64);
  v1[197] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v131 = v0;
  v1 = *(v0 + 1512);
  v2 = v1[12];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v2);
  v4 = (*(v3 + 72))(v2, v3);
  (*(*v4 + 216))(v4);

  if (!*(v0 + 192))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 160, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    goto LABEL_12;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 208, v0 + 608, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of TransformationResult(v0 + 160);
  if (!*(v0 + 632))
  {
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 608, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v30);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_26;
  }

  v5 = (v0 + 440);
  v6 = *(v0 + 1504);
  outlined init with take of SPHConversation((v0 + 608), v0 + 568);
  v7 = v1[12];
  v8 = v1[13];
  v128 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 9, v7);
  (*(v8 + 152))(v7, v8);
  v9 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_1((v0 + 688), *(v0 + 712));
  v10 = App.appIdentifier.getter();
  (*(v9 + 16))(v10);
  v11 = *(v0 + 448);
  v12 = *(v0 + 464);
  v122 = *(v0 + 480);
  v124 = *(v0 + 440);

  __swift_destroy_boxed_opaque_existential_1((v0 + 688));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 440, v0 + 392, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 440, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  v129 = v0 + 440;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v130[0] = v17;
    *v16 = 136315138;
    v18 = *(v0 + 456);
    *(v0 + 296) = *v5;
    *(v0 + 312) = v18;
    *(v0 + 328) = *(v0 + 472);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v5, v0 + 344, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v130);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "#AppResolutionBeforeResolveFlow Previously-resolved annotated app %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  if (*v5)
  {
    v22 = *(v0 + 448);
    v23 = *(v0 + 480);
    v24 = *(v0 + 472);
    *(v0 + 1440) = *(v0 + 456);

    *(v0 + 1488) = v22;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1488, &_sShySSGMd, &_sShySSGMR);
    *(v0 + 1424) = *(v0 + 1440);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1424, &_sSSSgMd, &_sSSSgMR);
    *(v0 + 1472) = v23;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1472, &_sShySSGMd, &_sShySSGMR);
    if (v24 == 2)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v26))
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  v36 = *(v0 + 1512);
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(v0 + 568, v0 + 768);
  v37 = AppQuery.Builder.__allocating_init(intent:)((v0 + 768));
  v125 = (*(*v37 + 160))(v37);
  v39 = v38;
  v41 = v40;

  v42 = v36[7];
  v43 = v36[8];
  __swift_project_boxed_opaque_existential_1(v36 + 4, v42);
  v45 = v128[12];
  v44 = v128[13];
  __swift_project_boxed_opaque_existential_1(v128 + 9, v45);
  (*(v44 + 8))(v45, v44);
  AnnotatedAppFinding.find(appQuery:device:)(v125, v39, v41, v0 + 808, v42, v43, (v0 + 248));

  __swift_destroy_boxed_opaque_existential_1((v0 + 808));
  if (!*(v0 + 248))
  {
    v25 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v78))
    {
LABEL_23:
      v79 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v79);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_12_3();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v129, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
LABEL_26:
      v85 = 0;
      goto LABEL_27;
    }

LABEL_24:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v129, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

    goto LABEL_25;
  }

  v120 = *(v0 + 248);
  v46 = *(v0 + 256);
  v121 = *(v0 + 288);
  v126 = *(v0 + 1576);
  v47 = *(v0 + 1552);
  v48 = *(v0 + 1544);
  v119 = *(v0 + 1536);
  v49 = *(v0 + 1528);
  *(v0 + 1408) = *(v0 + 264);
  v50 = v128[12];
  v51 = v128[13];
  __swift_project_boxed_opaque_existential_1(v128 + 9, v50);
  (*(v51 + 104))(v50, v51);
  v117 = *(v0 + 880);
  v118 = *(v0 + 872);
  __swift_project_boxed_opaque_existential_1((v0 + 848), v118);
  static PhoneCallNLv3Intent.placeCall()(v47);
  (*(v48 + 104))(v47, enum case for Parse.NLv3IntentOnly(_:), v119);
  Input.init(parse:)();

  v115 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v52);
  outlined init with copy of SignalProviding((v36 + 4), v0 + 888);
  outlined init with copy of SignalProviding((v128 + 9), v0 + 928);
  type metadata accessor for StartCallCATsSimple();
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  v127 = v0 + 488;
  *(v0 + 520) = 0;
  static CATOption.defaultMode.getter();
  v53 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v54 = CATWrapperSimple.__allocating_init(options:globals:)();
  v55 = type metadata accessor for ResponseFactory();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = ResponseFactory.init()();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v123 = (v0 + 1456);
  v114 = *(v0 + 1520);
  v59 = static EligibleAppFinder.instance;
  v60 = type metadata accessor for AppInfoBuilder();
  v61 = swift_allocObject();
  v62 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
  v63 = swift_allocObject();
  *(v0 + 1032) = v55;
  *(v0 + 1040) = &protocol witness table for ResponseFactory;
  *(v0 + 1008) = v58;
  v111 = type metadata accessor for EligibleAppFinder();
  *(v0 + 1072) = v111;
  *(v0 + 1080) = &protocol witness table for EligibleAppFinder;
  *(v0 + 1048) = v59;
  *(v0 + 1112) = v60;
  *(v0 + 1120) = &protocol witness table for AppInfoBuilder;
  *(v0 + 1088) = v61;
  *(v63 + 16) = _swiftEmptyArrayStorage;
  *(v63 + 24) = 0;

  v112 = v59;

  *(v63 + 344) = OUTLINED_FUNCTION_12_20();
  *(v63 + 352) = OUTLINED_FUNCTION_12_20();
  *(v63 + 360) = v62;
  *(v63 + 368) = &outlined read-only object #0 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v63 + 376) = 0;
  *(v63 + 384) = 0;
  *(v63 + 392) = v62;
  *(v63 + 400) = &outlined read-only object #1 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v63 + 408) = 0;
  *(v63 + 416) = 0;
  *(v63 + 424) = v62;
  v116 = v62;
  *(v63 + 432) = &outlined read-only object #2 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v63 + 440) = 0u;
  *(v63 + 456) = 0u;
  *(v63 + 472) = 0u;
  *(v63 + 488) = 0;
  *(v63 + 192) = v115;
  outlined init with copy of SignalProviding(v0 + 888, v63 + 32);
  v64 = *(v0 + 952);
  v65 = *(v0 + 960);
  __swift_project_boxed_opaque_existential_1((v0 + 928), v64);
  (*(v65 + 8))(v64, v65);
  outlined init with take of SPHConversation((v0 + 1128), v63 + 152);
  outlined init with copy of SignalProviding(v0 + 928, v63 + 200);
  outlined init with copy of SignalProviding(v0 + 1048, v63 + 112);
  outlined init with copy of SignalProviding(v0 + 1088, v63 + 72);
  *(v63 + 240) = v53;
  *(v63 + 248) = v54;
  outlined init with copy of SignalProviding(v0 + 1008, v63 + 256);
  outlined init with copy of SignalProviding(v0 + 928, v0 + 1168);
  outlined init with copy of SignalProviding(v0 + 1048, v0 + 1208);
  type metadata accessor for AppUsageProvider();
  memset(v130, 0, 40);
  v113 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  v66 = type metadata accessor for PhoneAppResolutionHelper();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  v70 = *(v0 + 1232);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1208, v70);
  v72 = *(v70 - 8);
  v73 = *(v72 + 64);
  v74 = OUTLINED_FUNCTION_45();
  (*(v72 + 16))(v74, v71, v70);
  v75 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)((v0 + 1168), *v74, 0, v130, v113, v114, v69);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1208));

  *(v63 + 296) = v75;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v127, v0 + 1288, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (*(v0 + 1312))
  {
    v76 = (v0 + 1248);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v127, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_10_18();
    outlined init with take of SPHConversation((v0 + 1288), v0 + 1248);
    v77 = v128;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1288, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(v0 + 928, v0 + 1368);
    v92 = [objc_opt_self() sharedAnalytics];
    v110 = [v92 defaultMessageStream];

    *(v0 + 552) = v111;
    *(v0 + 560) = &protocol witness table for EligibleAppFinder;
    *(v0 + 528) = v112;
    *(v0 + 1352) = &type metadata for PhoneAppResolutionLogger;
    *(v0 + 1360) = &protocol witness table for PhoneAppResolutionLogger;
    v93 = swift_allocObject();
    *(v0 + 1328) = v93;
    v94 = *(v0 + 1392);
    v95 = *(v0 + 1400);
    __swift_project_boxed_opaque_existential_1((v0 + 1368), v94);
    v96 = *(v95 + 112);

    if (v96(v94, v95))
    {
      v97 = CurrentRequest.executionRequestId.getter();
      v99 = v98;
    }

    else
    {
      v97 = 0;
      v99 = 0;
    }

    v77 = v128;
    *(v0 + 16) = v97;
    *(v0 + 24) = v99;
    *(v0 + 32) = v110;
    outlined init with copy of SignalProviding(v0 + 1368, v0 + 40);
    v100 = *(v0 + 1392);
    v101 = *(v0 + 1400);
    __swift_project_boxed_opaque_existential_1((v0 + 1368), v100);
    (*(v101 + 216))(v100, v101);
    outlined init with take of SPHConversation((v0 + 528), v0 + 120);
    memcpy((v93 + 16), (v0 + 16), 0x90uLL);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v127, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_10_18();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1368));
    v76 = (v0 + 1328);
  }

  outlined init with take of SPHConversation(v76, v63 + 304);
  v102 = *(v0 + 1576);
  v103 = *(v0 + 1568);
  v104 = *(v0 + 1560);
  __swift_destroy_boxed_opaque_existential_1((v0 + 928));
  *(v0 + 1480) = v63;
  outlined init with copy of SignalProviding(v0 + 568, v0 + 728);
  outlined init with copy of SignalProviding((v77 + 9), v0 + 648);
  v105 = type metadata accessor for PhoneProtectedAppCheckStrategy();
  v106 = swift_allocObject();
  outlined init with take of SPHConversation((v0 + 728), v106 + 16);
  outlined init with take of SPHConversation((v0 + 648), v106 + 56);
  *(v0 + 992) = v105;
  *(v0 + 1000) = lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneProtectedAppCheckStrategy and conformance PhoneProtectedAppCheckStrategy, type metadata accessor for PhoneProtectedAppCheckStrategy);
  *(v0 + 968) = v106;
  v107 = *(v117 + 72);
  v108 = type metadata accessor for INIntent();
  v109 = lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneAppResolutionOnDeviceFlowStrategy and conformance PhoneAppResolutionOnDeviceFlowStrategy, type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy);
  v85 = v107(v102, v0 + 1480, v0 + 968, v116, v108, v109, v118, v117);

  *v123 = *(v0 + 1408);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v123, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 1496) = v121;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1496, &_sShySSGMd, &_sShySSGMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v129, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

  (*(v103 + 8))(v102, v104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 568));
  __swift_destroy_boxed_opaque_existential_1((v0 + 968));
  __swift_destroy_boxed_opaque_existential_1((v0 + 848));
LABEL_27:
  v86 = *(v0 + 1576);
  v87 = *(v0 + 1552);
  v88 = *(v0 + 1528);
  v89 = *(v0 + 1520);

  v90 = *(v0 + 8);

  return v90(v85);
}

uint64_t AppResolutionBeforeResolveFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  OUTLINED_FUNCTION_2_24();
  outlined destroy of AppResolutionBeforeResolveFlow.State(v0 + v2, v3);
  return v0;
}

uint64_t AppResolutionBeforeResolveFlow.__deallocating_deinit()
{
  AppResolutionBeforeResolveFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined assign with take of AppResolutionBeforeResolveFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>);
  }

  return result;
}

uint64_t type metadata completion function for AppResolutionBeforeResolveFlow()
{
  result = type metadata accessor for AppResolutionBeforeResolveFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for AppResolutionBeforeResolveFlow.State()
{
  type metadata accessor for (INIntent, App)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppResolutionFlowResult();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (INIntent, App)()
{
  if (!lazy cache variable for type metadata for (INIntent, App))
  {
    type metadata accessor for INIntent();
    type metadata accessor for App();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (INIntent, App));
    }
  }
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

uint64_t *AppResolutionProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  return &static AppResolutionProvider.instance;
}

uint64_t static AppResolutionProvider.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }
}

uint64_t key path setter for AppResolutionProvider.annotatedApps : AppResolutionProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t AppResolutionProvider.().init()()
{
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  return v0;
}

double key path getter for AppResolutionProvider.lastSetApp : AppResolutionProvider@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 136))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t key path setter for AppResolutionProvider.lastSetApp : AppResolutionProvider(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  swift_beginAccess();
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v14 = v8[7];
  v15 = v8[3];
  v13 = v8[8];
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  outlined copy of AnnotatedApp?(v2);
  return outlined consume of AnnotatedApp?(v15);
}

uint64_t AppResolutionProvider.lastSetApp.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  v7 = v1[8];
  result = outlined copy of AnnotatedApp?(v3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

void AppResolutionProvider.set(annotatedApp:phoneCallNLIntent:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = (a1 + 2);
  v36 = a1[3];
  v37 = a1[2];
  v38 = *(a1 + 32);
  v9 = a1[5];

  v10 = App.appIdentifier.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    v44[0] = v7;
    v43 = *v8;
    v42 = v9;
    swift_beginAccess();

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v44, v39, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v43, v39, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v42, v39, &_sShySSGMd, &_sShySSGMR);
    v14 = v2[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v2[2];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, v13, isUniquelyReferenced_nonNull_native);
    v2[2] = v39[0];

    swift_endAccess();
    swift_beginAccess();
    v16 = v2[3];
    v17 = v3[4];
    v18 = v3[5];
    v19 = v3[6];
    v20 = v7;
    v21 = a2;
    v22 = v3[7];
    v23 = v3[8];
    v3[3] = v6;
    v3[4] = v20;
    v3[5] = v37;
    v3[6] = v36;
    v3[7] = v38;
    v3[8] = v9;

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v44, v40, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v43, v40, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v42, v40, &_sShySSGMd, &_sShySSGMR);
    outlined consume of AnnotatedApp?(v16);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v21, v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (v39[3])
    {
      outlined init with take of PhoneCallFeatureFlagProviding(v39, v40);
      outlined init with copy of SignalProviding(v40, v39);
      type metadata accessor for CarryOverCallFiltersProvider();
      swift_allocObject();
      v24 = CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(v39);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v25 = v3[9];
      v3[9] = v24;
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v35 = v3[9];
      v3[9] = 0;
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    v41[0] = a1[1];
    *v40 = *v8;
    *&v43 = a1[5];

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v41, v39, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v40, v39, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v43, v39, &_sShySSGMd, &_sShySSGMR);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v43, &_sShySSGMd, &_sShySSGMR);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136315138;
      v44[0] = v6;
      type metadata accessor for App();
      lazy protocol witness table accessor for type App and conformance App();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v39);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v27, v28, "#AppResolution annotatedApp: %s could not be cached since it doesn't have an app identifier", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);

      return;
    }
  }
}

void *AppResolutionProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  outlined consume of AnnotatedApp?(v0[3]);
  v7 = v0[9];

  return v0;
}

uint64_t AppResolutionProvider.__deallocating_deinit()
{
  AppResolutionProvider.deinit();

  return swift_deallocClassInstance();
}

double protocol witness for AppResolutionProviding.lastSetApp.getter in conformance AppResolutionProvider@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 136))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type App and conformance App()
{
  result = lazy protocol witness table cache variable for type App and conformance App;
  if (!lazy protocol witness table cache variable for type App and conformance App)
  {
    type metadata accessor for App();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type App and conformance App);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay13SiriInference12ContactQueryVGSayAC08Resolvedc3KitE0VGGMd, &_ss17_NativeDictionaryVySay13SiriInference12ContactQueryVGSayAC08Resolvedc3KitE0VGGMR);
  if (OUTLINED_FUNCTION_10_19())
  {
    v14 = *v3;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_2_25();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a1, v17);
    OUTLINED_FUNCTION_60_1();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ContactResolverConfigHashable();
  v9 = OUTLINED_FUNCTION_23_1(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVSay13SiriInference0H5QueryVGGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVSay13SiriInference0H5QueryVGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v4;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v23;
LABEL_5:
  v25 = *v4;
  if (v21)
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_65();
  }

  else
  {
    outlined init with copy of ContactResolverConfigHashable(a2, v13);
    specialized _NativeDictionary._insert(at:key:value:)(v20, v13, a1, v25);
    OUTLINED_FUNCTION_65();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_25(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_2_25();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v19 + 56) + 32 * v14));
    OUTLINED_FUNCTION_60_1();

    return outlined init with take of Any(v20, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v19);
    OUTLINED_FUNCTION_60_1();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_5_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_25(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSShySSGGMd, &_ss17_NativeDictionaryVySSShySSGGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_2_25();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v4;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_7_13();
    specialized _NativeDictionary._insert(at:key:value:)(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_60_1();
  }
}

{
  v7 = OUTLINED_FUNCTION_5_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_25(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMd, &_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_2_25();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v6 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v4;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_7_13();
    specialized _NativeDictionary._insert(at:key:value:)(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_60_1();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryVGMd, &_ss17_NativeDictionaryVySi27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryVGMR);
  if (!OUTLINED_FUNCTION_10_19())
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    *(*(*v3 + 56) + 8 * v12) = a1;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();

    specialized _NativeDictionary._insert(at:key:value:)(v17, v18, v19, v20);
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMR);
  if (!OUTLINED_FUNCTION_1_33())
  {
    goto LABEL_5;
  }

  v19 = *v3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v3;
  if (v18)
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_65();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    specialized _NativeDictionary._insert(at:key:value:)(v17, v10, a1, v22);
    OUTLINED_FUNCTION_65();
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_25(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0hI0030_EDC7BAD48289BA0912D37340779F4O1BLLCGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0hI0030_EDC7BAD48289BA0912D37340779F4O1BLLCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v6))
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v12, a1, v17);
  }
}

void AppResolutionStateProvider.init(requestedBundleId:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v6 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  outlined bridged method (mbnn) of @objc SASyncAppIdentifyingInfo.bundleId.setter(a1, a2, v6);
  [v4 setRequestedApp:v6];
  v5 = v4;
  AppResolutionStateProvider.init(appSelectionState:)();
}

void outlined bridged method (mbnn) of @objc SASyncAppIdentifyingInfo.bundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setBundleId:v4];
}

uint64_t static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(void *a1, uint8_t *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_project_boxed_opaque_existential_1(a5, v13);
  return specialized static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(a1, a2, a3, a4, v15, a6, a7, v13, v14);
}

void *static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 64))(v51, v7, v8);
  v9 = v52;
  v10 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v45[0] = 0;
  v46 = v12;
  v47 = _swiftEmptyArrayStorage;
  v14 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(2, v45, v9, &type metadata for ForcedAppDisambiguationHistory, v10, v14, v48);
  v15 = v48[0];
  v16 = v49;
  v17 = v50;
  __swift_destroy_boxed_opaque_existential_1(v51);
  v18 = "showedForcedAppDisambiguation";
  if (!v15)
  {
    v18 = "ow";
  }

  if ((v18 | 0x8000000000000000) == 0x80000000004525C0)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v40 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);
      v24 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v24, v41))
      {
        goto LABEL_21;
      }

      v42 = OUTLINED_FUNCTION_65_0();
      *v42 = 0;
      v27 = "#AppSelectionSignalsGatheringHelper: don't find showedForcedAppDisambiguation from user default, return empty apps list and will not trigger data collection";
      v28 = v41;
      v29 = v24;
      v30 = v42;
      v31 = 2;
      goto LABEL_20;
    }
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  v13(v6, v2);
  v22 = v21 - v16;
  if (v22 > 10.0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v22;
    v27 = "#AppSelectionSignalsGatheringHelper: interval since app disambiguation is showed %fs ago, which exceeds 10s";
    v28 = v25;
    v29 = v24;
    v30 = v26;
    v31 = 12;
LABEL_20:
    _os_log_impl(&dword_0, v29, v28, v27, v30, v31);
    OUTLINED_FUNCTION_26_0();
LABEL_21:

    return _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51[0] = v36;
    *v35 = 136315138;
    v37 = Array.description.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v51);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_0, v33, v34, "#AppSelectionSignalsGatheringHelper: retrieve app list %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return v17;
}

void static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v35 - v16;
  if (!a2 || !specialized Array.count.getter(a2))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v36, v27))
    {
      goto LABEL_21;
    }

    v28 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v28);
    v25 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection doesn't expect contacts is empty, cancel signal collection";
    goto LABEL_20;
  }

  if (specialized Array.count.getter(a2) != 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v36, v30))
    {
      goto LABEL_21;
    }

    v31 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v31);
    v25 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection there are more than one contacts, ForcedAppDisambiguation shouldn't triggered, cancel signal collection";
    goto LABEL_20;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v18 = *(a2 + 32);

    v19 = v18;
  }

  v20 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v19);
  if (!v20 || (v21 = specialized Array.count.getter(v20), , v21 < 2))
  {
    v33 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v33);
    outlined init with copy of SignalProviding(a1, v38);
    outlined init with copy of SignalProviding(a3, v37);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    outlined init with take of SPHConversation(v38, (v34 + 4));
    v34[9] = a5;
    v34[10] = a4;
    v34[11] = a6;
    v34[12] = a7;
    v34[13] = a2;
    outlined init with take of SPHConversation(v37, (v34 + 14));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    return;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v36, v23))
  {
    v24 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v24);
    v25 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection requests needs disambiguation, waiting signal collection after disambiguation";
LABEL_20:
    _os_log_impl(&dword_0, v36, a7, v25, a4, 2u);
    OUTLINED_FUNCTION_26_0();
  }

LABEL_21:
  v32 = v36;
}

void static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1, uint8_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  if (!a2 || !specialized Array.count.getter(a2))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v23, v17))
    {
      goto LABEL_13;
    }

    v18 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v18);
    v15 = "#AppSelectionSignalsGatheringHelper doesn't expect contacts is empty, return";
    goto LABEL_12;
  }

  if (specialized Array.count.getter(a2) < 2)
  {
    v20 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
    outlined init with copy of SignalProviding(a1, v25);
    outlined init with copy of SignalProviding(a3, v24);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    outlined init with take of SPHConversation(v25, (v21 + 4));
    v21[9] = a4;
    outlined init with take of SPHConversation(v24, (v21 + 10));
    v21[15] = a2;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:), v21);

    return;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
  v23 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v23, v13))
  {
    v14 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v14);
    v15 = "#AppSelectionSignalsGatheringHelper there are more than one match, wait logging after disambiguation";
LABEL_12:
    _os_log_impl(&dword_0, v23, a4, v15, a2, 2u);
    OUTLINED_FUNCTION_26_0();
  }

LABEL_13:
  v19 = v23;
}

uint64_t static AppSelectionSignalsGatheringHelper.getCommunicationType(phoneCallNLIntent:skIntent:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 && (ObjectType = swift_getObjectType(), ((*(a2 + 136))(ObjectType, a2) & 1) != 0) || (OUTLINED_FUNCTION_1_34(), PhoneCallNLIntent.isGroupFaceTimeCall()()))
  {
    OUTLINED_FUNCTION_1_34();
    v6 = PhoneCallNLIntent.isVideoCall()();
    v7 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
    OUTLINED_FUNCTION_23_1(v7);
    v9 = *(v8 + 104);
    if (v6)
    {
      v10 = &enum case for CommunicationTypeSignal.CommunicationType.groupVideoCall(_:);
    }

    else
    {
      v10 = &enum case for CommunicationTypeSignal.CommunicationType.groupAudioCall(_:);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_34();
    v11 = PhoneCallNLIntent.isVideoCall()();
    v12 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
    OUTLINED_FUNCTION_23_1(v12);
    v9 = *(v13 + 104);
    if (v11)
    {
      v10 = &enum case for CommunicationTypeSignal.CommunicationType.videoCall(_:);
    }

    else
    {
      v10 = &enum case for CommunicationTypeSignal.CommunicationType.audioCall(_:);
    }
  }

  v14 = *v10;

  return v9(a3, v14);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = type metadata accessor for Date();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:), 0, 0);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#AppSelectionSignalsGatheringHelper triggerSignalCollection for ForcedAppDisambiguationSignalCollection asynchronously", v4, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v45 = *(v0 + 136);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);

  static Signpost.begin(_:)();
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v46 = (*(v11 + 192))(v10, v11);
  v12 = v9[3];
  v13 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v12);
  (*(v13 + 64))(v12, v13);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  (*(v6 + 8))(v5, v45);
  *(v0 + 56) = 1;
  *(v0 + 64) = v17;
  v18 = _swiftEmptyArrayStorage;
  *(v0 + 72) = _swiftEmptyArrayStorage;
  v19 = *(v15 + 16);
  v20 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  v19(2, v0 + 56, &type metadata for ForcedAppDisambiguationHistory, v20, v14, v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v21 = *(v8 + 16);
  for (i = (v8 + 40); v21; --v21)
  {
    v24 = *(i - 1);
    v23 = *i;
    v25 = *(**(v0 + 96) + 256);

    v26 = v25(v24, v23);
    v28 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = v18[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v32;
    }

    v29 = v18[2];
    if (v29 >= v18[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v33;
    }

    v18[2] = v29 + 1;
    v30 = &v18[2 * v29];
    v30[4] = v26;
    v30[5] = v28;
    i += 2;
  }

  v34 = *(v0 + 120);
  (*(**(v0 + 96) + 256))(*(v0 + 104), *(v0 + 112));
  v35 = v34 & 1;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v34 & 0xC000000000000001) == 0, v34);
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v36 = *(*(v0 + 120) + 32);
  }

  v37 = v36;
  v38 = *(v0 + 128);
  (*(*v46 + 144))();

  Signpost.OpenSignpost.end()();
  v39 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_65_0();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v35, "#AppSelectionSignalsGatheringHelper triggerSignalCollection finished", v41, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v42 = *(v0 + 152);

  OUTLINED_FUNCTION_11();

  return v43();
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = type metadata accessor for Date();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:), 0, 0);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v4, v5, "#AppSelectionSignalsGatheringHelper triggerSignalCollection for specified app name asynchronously");
    OUTLINED_FUNCTION_26_0();
  }

  v6 = v0[9];
  v7 = v0[10];

  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  v0[17] = (*(v9 + 192))(v8, v9);
  v10 = *(*v7 + 168);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  v14 = v0[10];
  v13 = v0[11];

  return v16(v13);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  if (v0)
  {
    v5 = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  }

  else
  {
    v5 = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = specialized Array.count.getter(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = _swiftEmptyArrayStorage;
  while (v2 != v3)
  {
    if (v4)
    {
      v18 = *(v55 + 152);
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v6 + 8 * v3);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = *(v55 + 80);
    v10 = App.appIdentifier.getter();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = (*(*v9 + 256))(v10, v12);
    v15 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = v7[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v20;
    }

    v16 = v7[2];
    if (v16 >= v7[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v21;
    }

    v7[2] = v16 + 1;
    v17 = &v7[2 * v16];
    v17[4] = v13;
    v17[5] = v15;
    ++v3;
  }

  v22 = *(v55 + 152);
  v23 = *(v55 + 112);
  v24 = *(v55 + 120);
  v53 = *(v55 + 104);
  v54 = *(v55 + 96);
  v25 = *(v55 + 80);
  v26 = *(v55 + 88);
  v27 = *(v55 + 72);

  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v29 + 64))(v28, v29);
  v30 = *(v55 + 40);
  v31 = *(v55 + 48);
  __swift_project_boxed_opaque_existential_1((v55 + 16), v30);
  Date.init()();

  Date.timeIntervalSince1970.getter();
  v33 = v32;
  (*(v23 + 8))(v24, v53);
  *(v55 + 56) = v33;
  *(v55 + 64) = v7;
  v34 = *(v31 + 16);
  v35 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  v34(3, v55 + 56, &type metadata for AppNameSpecifiedByUserSignalCollectionHistory, v35, v30, v31);

  __swift_destroy_boxed_opaque_existential_1((v55 + 16));
  v36 = v26[3];
  v37 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v36);
  v38 = PhoneCallNLIntent.applicationId.getter(v36, v37);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  (*(*v25 + 256))(v38, v40);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v54 & 0xC000000000000001) == 0, v54);
  if ((v54 & 0xC000000000000001) == 0)
  {
    v41 = *(*(v55 + 96) + 32);
    goto LABEL_21;
  }

LABEL_28:
  v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
  v42 = v41;
  v43 = *(v55 + 128);
  v44 = *(v55 + 88);
  (*(**(v55 + 136) + 144))();

  v45 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v45, v46))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v47, v48, "#AppSelectionSignalsGatheringHelper triggerSignalCollection finished ");
    OUTLINED_FUNCTION_26_0();
  }

  v49 = *(v55 + 136);
  v50 = *(v55 + 120);

  OUTLINED_FUNCTION_11();

  return v51();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[17];
  v2 = v0[15];

  OUTLINED_FUNCTION_11();
  v4 = v0[20];

  return v3();
}

uint64_t specialized static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(void *a1, uint8_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a7;
  v55 = a6;
  v53 = a2;
  v56 = a9;
  v57 = a3;
  v12 = type metadata accessor for AppResolver();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = v17;
  v59 = &v52 - v22;
  v23 = *(v17 + 16);
  v23();
  v24 = static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(a1);
  if (a4)
  {
    v25 = a4;
  }

  else
  {
    outlined init with copy of SignalProviding(a1, v63);
    v26 = [objc_opt_self() clientWithIdentifier:112];
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    type metadata accessor for DiagnosticLogPermission();
    v28 = swift_allocObject();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v25 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(v63, v27, v28);
  }

  outlined init with copy of SignalProviding(a1, v63);
  type metadata accessor for AppUsageProvider();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v29 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  v30 = type metadata accessor for PhoneAppResolutionHelper();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  (v23)(v21, v59, a8);
  v34 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(v63, v21, v25, &v60, v29, v16, v33, a8, v56);
  if (v24[2])
  {
    v35 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    (*(v36 + 152))(&v60, v35, v36);
    v37 = *(&v61 + 1);
    v38 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    (*(v38 + 32))(v63, v37, v38);
    if (v63[0])
    {
      v39 = v63[1];
      v40 = v66;
      v41 = v65;
      __swift_destroy_boxed_opaque_existential_1(&v60);
      if (v41 == 4)
      {
        v42 = App.appIdentifier.getter();
        if (v43)
        {
          v44 = v42;
        }

        else
        {
          v44 = 0;
        }

        if (v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0xE000000000000000;
        }

        static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(a1, v53, v57, v34, v24, v44, v45);

        v67 = v39;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v67, &_sShySSGMd, &_sShySSGMR);
        v60 = v64;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_sSSSgMd, &_sSSSgMR);
        v68[0] = v40;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_sShySSGMd, &_sShySSGMR);

        return (*(v58 + 8))(v59, a8);
      }

      v67 = v39;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v67, &_sShySSGMd, &_sShySSGMR);
      v60 = v64;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_sSSSgMd, &_sSSSgMR);
      v68[0] = v40;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_sShySSGMd, &_sShySSGMR);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v60);
    }
  }

  else
  {
  }

  v46 = v57;
  v47 = v57[3];
  v48 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v47);
  PhoneCallNLIntent.applicationId.getter(v47, v48);
  if (v49)
  {

    if ((*(*v25 + 128))(v50))
    {
      static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(a1, v53, v46, v34);
    }
  }

  return (*(v58 + 8))(v59, a8);
}

uint64_t partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(a1, v12, v4, (v1 + 4), v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

uint64_t partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(a1, v4, v5, (v1 + 4), v6, (v1 + 10), v7);
}

uint64_t key path setter for AppSelectionState.forcedDisambiguationShadowPrediction : AppSelectionState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of AppResolverResult?(a1, &v9 - v6);
  return (*(**a2 + 96))(v7);
}

uint64_t AppSelectionState.forcedDisambiguationShadowPrediction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  swift_beginAccess();
  return outlined init with copy of AppResolverResult?(v1 + v3, a1);
}

uint64_t outlined init with copy of AppResolverResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSelectionState.forcedDisambiguationShadowPrediction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  OUTLINED_FUNCTION_0_26();
  outlined assign with take of AppResolverResult?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AppSelectionState.__allocating_init(forcedDisambiguationPrediction:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  v7 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v5 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_0_26();
  outlined assign with take of AppResolverResult?(a1, v5 + v6);
  swift_endAccess();
  return v5;
}

uint64_t AppSelectionState.init(forcedDisambiguationPrediction:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  v4 = type metadata accessor for AppResolverResult();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_0_26();
  outlined assign with take of AppResolverResult?(a1, v1 + v3);
  swift_endAccess();
  return v1;
}

void type metadata completion function for AppSelectionState()
{
  type metadata accessor for AppResolverResult?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AppResolverResult?()
{
  if (!lazy cache variable for type metadata for AppResolverResult?)
  {
    type metadata accessor for AppResolverResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppResolverResult?);
    }
  }
}

void AppSelectionUserPersonaCollector.getUserPersona(candidateApps:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  while (v2 != v3)
  {
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v8 = App.appIdentifier.getter();
    v10 = v9;

    ++v3;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = v5[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v14;
      }

      v11 = v5[2];
      if (v11 >= v5[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v15;
      }

      v5[2] = v11 + 1;
      v12 = &v5[2 * v11];
      v12[4] = v8;
      v12[5] = v10;
      v3 = v7;
    }
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  if (v2)
  {
    v17 = 0;
    while (v2 != v17)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_28;
      }

      v19 = App.isFirstParty()();

      ++v17;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    v21 = *(v28 + 16);
    v22 = type metadata accessor for SignalGatherer();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();

    SignalGatherer.init(signals:candidateAppBundleIds:)();
    v25 = swift_allocObject();
    v25[2] = v5;
    v25[3] = v16;
    v25[4] = v20;

    v26 = v20;
    dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

    OS_dispatch_group.wait()();

    swift_beginAccess();
    v27 = *(v16 + 16);
  }
}

void closure #3 in AppSelectionUserPersonaCollector.getUserPersona(candidateApps:)(uint64_t a1, uint64_t *a2, uint64_t a3, NSObject *a4)
{
  v49 = a4;
  v48 = type metadata accessor for SignalGatheringResults();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v48);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v43 - v20;
  outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(a1, v43 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#AppSelectionUserPersonaCollector#getUserPersona gathering user persona signal value failed", v25, 2u);
    }

    outlined destroy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(v21);
  }

  else
  {
    v46 = v7;
    (*(v11 + 32))(v17, v21, v10);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    (*(v11 + 16))(v15, v17, v10);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v45 = v11;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v43[1] = a2;
      v31 = v11;
      v32 = v30;
      v43[0] = swift_slowAlloc();
      v50 = v43[0];
      *v32 = 136315138;
      SignalGatherer.ValuesWithTimings.values.getter();
      type metadata accessor for SignalValue();
      v33 = Dictionary.description.getter();
      v44 = a3;
      v35 = v34;

      v36 = *(v31 + 8);
      v36(v15, v10);
      v37 = v33;
      v38 = v36;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v35, &v50);
      a3 = v44;

      *(v32 + 4) = v39;
      _os_log_impl(&dword_0, v27, v28, "#AppSelectionUserPersonaCollector#getUserPersona gathered user persona value: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43[0]);
    }

    else
    {

      v38 = *(v11 + 8);
      v38(v15, v10);
    }

    v40 = v46;
    SignalGatherer.ValuesWithTimings.values.getter();

    v41 = v47;
    SignalGatheringResults.init(values:candidateAppBundleIds:)();
    to = 0;
    if (one-time initialization token for userPersonaKey != -1)
    {
      swift_once();
    }

    SignalGatheringResults.extract(name:for:to:)(static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey, 0, &to);
    (*(v40 + 8))(v41, v48);
    v38(v17, v10);
    v42 = to;
    swift_beginAccess();
    *(a3 + 16) = v42;
  }

  dispatch_group_leave(v49);
}

uint64_t SharedConfirmationRepromptContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 < 0 || Array.count.getter() <= a1)
  {
    v5 = 1;
  }

  else
  {
    Array.subscript.getter();
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v5, 1, a2);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1 < 0 || Array.count.getter() <= a1)
  {
    v8 = *(*(a3 - 8) + 16);

    return v8(a4, a2, a3);
  }

  else
  {

    return Array.subscript.getter();
  }
}

uint64_t Array<A>.hasQueryableContactInformation.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of SignalProviding(i, v34);
    OUTLINED_FUNCTION_3(v34);
    v4 = *(v3 + 56);
    v5 = OUTLINED_FUNCTION_1_1();
    v6(v5);
    if (v7)
    {
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_27();
      if (v10)
      {
        v8 = v9;
      }

      if (v8)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v34);
    v12 = *(v11 + 200);
    v13 = OUTLINED_FUNCTION_1_1();
    v14(v13);
    if (v15)
    {
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_27();
      if (v10)
      {
        v16 = v17;
      }

      if (v16)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v34);
    v19 = *(v18 + 152);
    v20 = OUTLINED_FUNCTION_1_1();
    v21(v20);
    if (v22)
    {
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_27();
      if (v10)
      {
        v23 = v24;
      }

      if (v23)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v34);
    v26 = *(v25 + 176);
    v27 = OUTLINED_FUNCTION_1_1();
    v28(v27);
    if (v29)
    {
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_27();
      if (v10)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30;
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      if (v32)
      {
        return 1;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    if (!--v1)
    {
      return 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return 1;
}

uint64_t AssistantProperties.countryCode.getter()
{
  v0 = _AFPreferencesCountryCode();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t static Transformer<>.transformer<A>(intentType:sharedGlobals:previousIntent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  outlined init with copy of SignalProviding(a2, v10);
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(v10, v7 + 4);
  v7[9] = a3;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  return Transformer.init(transform:)();
}

uint64_t Transformer<>.VoiceTriggerAudioRouteBehavior.init<A>(for:isEmergencyCallIntent:sharedGlobals:)(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#VoiceTriggerAudioRouteBehavior heySiriAudioRoute is enabled for INAnswerCallIntent.", v8, 2u);
    }

    v9 = 0;
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    v9 = 2;
    if (swift_dynamicCastMetatype() && (a2 & 1) != 0)
    {
      v10 = a3[3];
      v11 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v10);
      (*(v11 + 8))(v16, v10, v11);
      v12 = a3[3];
      v13 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v12);
      v14 = (*(v13 + 112))(v12, v13);
      v9 = static Transformer<>.VoiceTriggerAudioRouteBehavior.chooseBehaviorForEmergencyCall(deviceState:currentRequest:)(v16, v14);

      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t static Transformer<>.VoiceTriggerAudioRouteBehavior.chooseBehaviorForEmergencyCall(deviceState:currentRequest:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioDestination();
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
  v7 = *(*(v99 - 8) + 64);
  v8 = __chkstk_darwin(v99);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v98 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v96 = &v92 - v18;
  v19 = __chkstk_darwin(v17);
  v102 = &v92 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v92 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v92 - v28;
  __chkstk_darwin(v27);
  v31 = &v92 - v30;
  if (a2)
  {
    CurrentRequest.audioDestination.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v92 - v30, 1, 1, v4);
  }

  v101 = v23;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v94 = v16;
  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.siriPhone);
  outlined init with copy of AudioDestination?(v31, v29);
  v103 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = os_log_type_enabled(v34, v35);
  v97 = v4;
  if (v36)
  {
    v92 = v10;
    v93 = v31;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v105 = v38;
    *v37 = 136315138;
    outlined init with copy of AudioDestination?(v29, v26);
    OUTLINED_FUNCTION_14_3(v26);
    if (v55)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v26, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v39 = AudioDestination.aceValue.getter();
      v41 = v40;
      (*(v100 + 8))(v26, v4);
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v29, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v105);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v34, v35, "#VoiceTriggerAudioRouteBehavior audioDestination = %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

    v10 = v92;
    v31 = v93;
  }

  else
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v29, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = dispatch thunk of DeviceState.isPhone.getter();
  v45 = v101;
  v46 = v102;
  if ((v44 & 1) == 0)
  {
    goto LABEL_33;
  }

  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if (DeviceState.isAnyCar.getter(v47, v48))
  {
    goto LABEL_33;
  }

  static AudioDestination.builtInSpeaker.getter();
  v49 = v97;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v97);
  v50 = v98;
  v51 = v99;
  v52 = *(v99 + 48);
  outlined init with copy of AudioDestination?(v31, v98);
  outlined init with copy of AudioDestination?(v45, v50 + v52);
  OUTLINED_FUNCTION_14_3(v50);
  if (v55)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v45, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    OUTLINED_FUNCTION_14_3(v50 + v52);
    v53 = v96;
    if (v55)
    {
      v54 = v50;
      goto LABEL_28;
    }
  }

  else
  {
    outlined init with copy of AudioDestination?(v50, v46);
    OUTLINED_FUNCTION_14_3(v50 + v52);
    if (!v55)
    {
      v68 = v100;
      v69 = v95;
      (*(v100 + 32))(v95, v50 + v52, v49);
      OUTLINED_FUNCTION_1_35();
      lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(v70, v71);
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *(v68 + 8);
      v73(v69, v49);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v74, v75, v76);
      v73(v46, v49);
      v51 = v99;
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v77, v78, v79);
      v53 = v96;
      if (v72)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v45, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    (*(v100 + 8))(v46, v49);
    v53 = v96;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v50, &_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
LABEL_23:
  static AudioDestination.builtInReceiver.getter();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v49);
  v56 = *(v51 + 48);
  outlined init with copy of AudioDestination?(v31, v10);
  outlined init with copy of AudioDestination?(v53, &v10[v56]);
  OUTLINED_FUNCTION_14_3(v10);
  if (!v55)
  {
    v57 = v94;
    outlined init with copy of AudioDestination?(v10, v94);
    OUTLINED_FUNCTION_14_3(&v10[v56]);
    if (!v58)
    {
      v80 = v100;
      v81 = v95;
      (*(v100 + 32))(v95, &v10[v56], v49);
      OUTLINED_FUNCTION_1_35();
      lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(v82, v83);
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v85 = *(v80 + 8);
      v85(v81, v49);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v86, v87, v88);
      v85(v57, v49);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v89, v90, v91);
      if (v84)
      {
        goto LABEL_40;
      }

LABEL_33:
      v59 = 0;
      goto LABEL_34;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v53, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    (*(v100 + 8))(v57, v49);
LABEL_32:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
    goto LABEL_33;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v53, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_14_3(&v10[v56]);
  if (!v55)
  {
    goto LABEL_32;
  }

  v54 = v10;
LABEL_28:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v54, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
LABEL_40:
  v59 = 1;
LABEL_34:
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v105 = v63;
    *v62 = 136315138;
    v104 = v59;
    type metadata accessor for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior();
    v64 = String.init<A>(describing:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v105);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_0, v60, v61, "#VoiceTriggerAudioRouteBehavior chose %s for HS-initiated emergency call", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v31, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  return v59;
}

void closure #1 in static Transformer<>.transformer<A>(intentType:sharedGlobals:previousIntent:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = PhoneCallNLIntent.isEmergencyCall()();
  outlined init with copy of SignalProviding(a3, v92);
  v11 = Transformer<>.VoiceTriggerAudioRouteBehavior.init<A>(for:isEmergencyCallIntent:sharedGlobals:)(a2, v10, v92);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  (*(v13 + 8))(v92, v12, v13);
  __swift_project_boxed_opaque_existential_1(v92, v93);
  if (DeviceState.isVoiceTrigger.getter())
  {
    v14 = 1;
  }

  else
  {
    if (!a4 || (v15 = [a4 _metadata]) == 0)
    {
      v90 = 0;
      goto LABEL_8;
    }

    v16 = v15;
    v17 = [v15 triggerMethod];

    v14 = v17 == 30;
  }

  v90 = v14;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v92);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  (*(v19 + 152))(v92, v18, v19);
  v20 = v93;
  v21 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v22 = (*(v21 + 24))(v20, v21);
  if (v22)
  {
    v23 = (*(*v22 + 104))(v22);
  }

  else
  {
    v23 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v92);
  v24 = a3[3];
  v25 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v24);
  v26 = &dword_54B000;
  if ((*(v25 + 112))(v24, v25))
  {
    if (CurrentRequest.isInAmbient.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.siriPhone);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v92[0] = v31;
        *v30 = 136315138;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v32 = String.init<A>(describing:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v92);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_0, v28, v29, "#%s Request is made in ambient mode. Routing to HS audio route.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      v35 = _INCallAudioRouteHeySiriAudioRoute;

      goto LABEL_35;
    }
  }

  v89 = v11;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  switch((*(v37 + 48))(v36, v37))
  {
    case 1u:
    case 2u:
    case 3u:
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_22;
      }

      break;
    case 4u:
      break;
    default:

LABEL_22:
      v26 = &dword_54B000;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v92[0] = v43;
        *v42 = 136315138;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v44 = String.init<A>(describing:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v92);
        v26 = &dword_54B000;

        *(v42 + 4) = v46;
        v47 = "#%s Speakerphone specified in intent";
LABEL_33:
        _os_log_impl(&dword_0, v40, v41, v47, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
      }

      goto LABEL_34;
  }

  v26 = &dword_54B000;
  switch(v23)
  {
    case 1:
    case 2:
    case 3:
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_29;
    case 4:
LABEL_44:
      if (v89 != 1)
      {
        if (!v89 && v90)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logger.siriPhone);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v65, v66))
          {
            goto LABEL_69;
          }

          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v92[0] = v68;
          *v67 = 136315138;
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
          v69 = String.init<A>(describing:)();
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v92);
          v26 = &dword_54B000;

          *(v67 + 4) = v71;
          v72 = "#%s HeySiriAudioRoute: User used HS for this request or the initial request";
          goto LABEL_68;
        }

LABEL_63:
        v81 = a3[3];
        v82 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, v81);
        (*(v82 + 8))(v92, v81, v82);
        v83 = v93;
        v84 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        LOBYTE(v83) = DeviceState.isTriggerlessFollowup.getter(v83, v84);
        __swift_destroy_boxed_opaque_existential_1(v92);
        if ((v83 & 1) == 0)
        {
          v35 = 0;
          v26 = &dword_54B000;
          goto LABEL_35;
        }

        v26 = &dword_54B000;
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Logger.siriPhone);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v65, v66))
        {
LABEL_69:

          v35 = _INCallAudioRouteHeySiriAudioRoute;
          goto LABEL_35;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v92[0] = v68;
        *v67 = 136315138;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v86 = String.init<A>(describing:)();
        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v92);
        v26 = &dword_54B000;

        *(v67 + 4) = v88;
        v72 = "#%s Triggerless follow-up to call announcement: Using HeySiriAudioRoute instead of default to force audio route to headphones w/o IED.";
LABEL_68:
        _os_log_impl(&dword_0, v65, v66, v72, v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);

        goto LABEL_69;
      }

      if (!v90)
      {
        goto LABEL_63;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v92[0] = v43;
        *v42 = 136315138;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v78 = String.init<A>(describing:)();
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v92);
        v26 = &dword_54B000;

        *(v42 + 4) = v80;
        v47 = "#%s Speakerphone AudioRoute: User used HS for this request or the initial request";
        goto LABEL_33;
      }

LABEL_34:

      v35 = 1;
LABEL_35:
      if (*(v26 + 369) != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Logger.siriPhone);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v56 = 136315394;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v57 = String.init<A>(describing:)();
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v92);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        if (!v35)
        {
          v62 = 0xE700000000000000;
          v63 = 0x4E574F4E4B4E55;
LABEL_56:
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v92);

          *(v56 + 14) = v76;
          _os_log_impl(&dword_0, v54, v55, "#%s --> %s", v56, 0x16u);
          swift_arrayDestroy();

          goto LABEL_57;
        }

        BackingType = INCallAudioRouteGetBackingType();
        switch(BackingType)
        {
          case 4:
            v61 = @"HEY_SIRI_AUDIO_ROUTE";
            break;
          case 3:
            v61 = @"BLUETOOTH_AUDIO_ROUTE";
            break;
          case 2:
            v61 = @"SPEAKERPHONE_AUDIO_ROUTE";
            break;
          default:
            v61 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            goto LABEL_55;
        }

        v73 = v61;
LABEL_55:
        v74 = v61;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v75;

        goto LABEL_56;
      }

LABEL_57:

      *a5 = v35;
      return;
    default:

LABEL_29:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_34;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v92[0] = v43;
      *v42 = 136315138;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v92);
      v26 = &dword_54B000;

      *(v42 + 4) = v52;
      v47 = "#%s Speakerphone is specified in the initial request";
      goto LABEL_33;
  }
}

uint64_t outlined init with copy of AudioDestination?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior()
{
  if (!lazy cache variable for type metadata for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior)
  {
    v0 = type metadata accessor for Transformer<>.VoiceTriggerAudioRouteBehavior();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Transformer<>.VoiceTriggerAudioRouteBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall AudioSessionManager.allowAppToInitiateRecordingTemporarily(appIdentifier:)(Swift::String appIdentifier)
{
  object = appIdentifier._object;
  countAndFlagsBits = appIdentifier._countAndFlagsBits;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v10);
    _os_log_impl(&dword_0, v4, v5, "#AudioSessionManager: set allowAppToInitiateRecordingTemporarily for bundleId %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    outlined bridged method (mbgnn) of @objc AVSystemController.allowApp(toInitiateRecordingTemporarily:)(countAndFlagsBits, object, v8);
  }

  else
  {
    __break(1u);
  }
}

id outlined bridged method (mbgnn) of @objc AVSystemController.allowApp(toInitiateRecordingTemporarily:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 allowAppToInitiateRecordingTemporarily:v4];

  return v5;
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

void BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(itemToConfirm:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v35 = v7;
  OUTLINED_FUNCTION_9_1();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = *(v0 + 80);
  OUTLINED_FUNCTION_9_1();
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  v26 = *(v0 + 88);
  v27 = *(v0 + 96);
  v28 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  v29 = OUTLINED_FUNCTION_23_1(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v35 - v32;
  *(&v35 - v32) = 0;
  swift_storeEnumTagMultiPayload();
  (*(v19 + 16))(v25, v8, v17);
  (*(v10 + 16))(v16, v6, v4);
  v34 = v36;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v36, v38);
  (*(v0 + 208))(v33, v25, v16, v38, v4, v37);
  __swift_destroy_boxed_opaque_existential_1(v34);
  (*(v10 + 8))(v6, v4);
  (*(v19 + 8))(v35, v17);
  OUTLINED_FUNCTION_65();
}

uint64_t BargeInCapableSection.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v0[18] = OUTLINED_FUNCTION_45();
  v11 = (v2 + *v2);
  v7 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v8;
  *v8 = v9;
  v8[1] = BargeInCapableSection.makeOutput();

  return v11(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v23 = v0;
  v1 = v0[18];
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v0 + 2), (v0 + 7));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  v3 = type metadata accessor for AceOutput();
  v4 = swift_dynamicCast();
  v5 = v0[18];
  if (v4)
  {
    v6 = v0[17];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v3);
    OUTLINED_FUNCTION_40(v3);
    (*(v7 + 32))(v6, v5, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[18], 1, 1, v3);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v0 + 2), (v0 + 12));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v21[0] = v12;
      *v11 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      swift_getDynamicType();
      v13 = _typeName(_:qualified:)();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v21);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_0, v9, v2, "#BargeInCapableSection Does not support output of type %s, returning empty AceOutput", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    v17 = v0[17];
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    AceOutput.init(commands:flowActivity:)();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v18 = v0[18];

  OUTLINED_FUNCTION_8_1();

  return v19();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 160);

  return v2();
}

void BargeInCapablePromptForConfirmationFlow.exitValue.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_74_2();
  v5 = v4;
  v6 = type metadata accessor for PhoneError();
  v7 = OUTLINED_FUNCTION_23_1(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v12 = (v11 - v10);
  OUTLINED_FUNCTION_74_2();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_74_2();
  v16 = *(v15 + 88);
  OUTLINED_FUNCTION_74_2();
  v18 = *(v17 + 96);
  v19 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  OUTLINED_FUNCTION_9_1();
  v45 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_12_5();
  v25 = __chkstk_darwin(v24);
  v27 = (&v44 - v26);
  v28 = *(v5 + 184);
  (v28)(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    *v2 = *v27;
    *(v2 + 8) = 1;
    v32 = enum case for PromptResult.error<A>(_:);
    v33 = OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1(v33);
    (*(v34 + 104))(v2, v32);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v30 = OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1(v30);
    (*(v31 + 32))(v2, v27);
  }

  else
  {
    v44 = 0x800000000042B760;
    v28();
    OUTLINED_FUNCTION_21_4();
    swift_getWitnessTable();
    v35 = String.init<A>(describing:)();
    *v12 = 0xD000000000000027;
    v12[1] = v44;
    v12[2] = v35;
    v12[3] = v36;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_13();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(v37, v38);
    v39 = swift_allocError();
    PhoneError.logged()(v40);
    outlined destroy of PhoneError(v12);
    *v2 = v39;
    *(v2 + 8) = 0;
    v41 = enum case for PromptResult.error<A>(_:);
    v42 = OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1(v42);
    (*(v43 + 104))(v2, v41);
    (*(v45 + 8))(v27, v19);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t key path setter for BargeInCapablePromptForConfirmationFlow.sections : <A, B>BargeInCapablePromptForConfirmationFlow<A, B>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 136);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t BargeInCapablePromptForConfirmationFlow.sections.getter()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 136);
  swift_beginAccess();
  v3 = *(v0 + v2);
}

uint64_t key path setter for BargeInCapablePromptForConfirmationFlow.state : <A, B>BargeInCapablePromptForConfirmationFlow<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(v6 - 8);
  v10 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a1);
  v15 = *a2;
  return BargeInCapablePromptForConfirmationFlow.state.setter(v13);
}

void BargeInCapablePromptForConfirmationFlow.state.willset(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = v7[2];
  v15(v13, a1, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v18 = 136315138;
    v15(v11, v13, v6);
    v19 = v7[1];
    v19(v13, v6);
    BargeInCapablePromptForConfirmationFlow.State.description.getter();
    v21 = v20;
    v23 = v22;
    v19(v11, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v16, v17, "#BargeInCapablePromptForConfirmationFlow state = %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    (v7[1])(v13, v6);
  }
}

uint64_t BargeInCapablePromptForConfirmationFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 144);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  OUTLINED_FUNCTION_23_1(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t BargeInCapablePromptForConfirmationFlow.state.setter(uint64_t a1)
{
  v3 = *v1;
  BargeInCapablePromptForConfirmationFlow.state.willset(a1);
  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 144);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_33_0();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_33_0();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  OUTLINED_FUNCTION_23_1(v12);
  (*(v13 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_69();
  BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(v14, v15, a3, a4, a5, a6);
  return v13;
}

uint64_t BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(*v7 + 136);
  *(v7 + v12) = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_41_0();
  v14 = *(v13 + 144);
  v16 = v15[10];
  v36 = v15[11];
  v37 = v15[12];
  v17 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7 + v14, a1, v17);
  OUTLINED_FUNCTION_41_0();
  v20 = *(v16 - 8);
  (*(v20 + 16))(v7 + *(v19 + 104), a2, v16);
  OUTLINED_FUNCTION_41_0();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, v7 + *(v21 + 112));
  v22 = (*(a6 + 24))(a2, a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v20 + 8))(a2, v16);
  (*(v18 + 8))(a1, v17);
  swift_beginAccess();
  v23 = *(v7 + v12);
  *(v7 + v12) = v22;

  implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(a3, v16, v36, a5, v37, a6);
  OUTLINED_FUNCTION_41_0();
  v25 = (v7 + *(v24 + 120));
  *v25 = v26;
  v25[1] = v27;
  v28 = implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(a3, v16, v36, a5, v37, a6);
  v30 = v29;
  OUTLINED_FUNCTION_40(a5);
  (*(v31 + 8))(a3, a5);
  OUTLINED_FUNCTION_41_0();
  v33 = (v7 + *(v32 + 128));
  *v33 = v28;
  v33[1] = v30;
  return v7;
}

uint64_t (*implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  (*(v11 + 32))(&v15[v14], v13, a4);
  return partial apply for implicit closure #2 in implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:);
}

void *implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  (*(v11 + 32))(&v15[v14], v13, a4);
  return &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:);
}

uint64_t implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = closure #2 in ActionableCallControlFlow.execute();

  return v21(a1, a2, a3, a4, a5, a6, a7, v23, a9);
}

void BargeInCapablePromptForConfirmationFlow.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v91 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_47_0();
  v9 = *(v8 + 96);
  v10 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v87 = (v16 - v17);
  __chkstk_darwin(v18);
  v20 = (&v83 - v19);
  type metadata accessor for ActionForInput();
  OUTLINED_FUNCTION_9_1();
  v89 = v22;
  v90 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_5();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = &v83 - v29;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v31 = type metadata accessor for Logger();
  v88 = __swift_project_value_buffer(v31, static Logger.siriPhone);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v92 = v35;
    *v34 = 136315138;
    *(v34 + 4) = OUTLINED_FUNCTION_45_5();
    _os_log_impl(&dword_0, v32, v33, "#BargeInCapablePromptForConfirmationFlow %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_73_0();
  v37 = *(v36 + 184);
  v85 = v36 + 184;
  v37();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v86 = v37;
  if (EnumCaseMultiPayload == 5)
  {
    v84 = v10;
    OUTLINED_FUNCTION_73_0();
    v52 = *(v51 + 160);
    v52();

    v54 = *((v52)(v53) + 16);

    OUTLINED_FUNCTION_73_0();
    v56 = v1 + *(v55 + 120);
    v57 = *v56;
    v58 = *(v56 + 1);
    v59 = (v52)();
    if (!v54)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_71_0(v59);
    if (v54 > v60)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v61 = &v1[4 * v54];
    v62 = *v61;
    v63 = v61[1];
    v64 = v61[2];
    v65 = v61[3];

    v57(v91, v62, v63, v64, v65, 0);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v84 = v30;
      v39 = *v20;
      OUTLINED_FUNCTION_73_0();
      v41 = v1 + *(v40 + 120);
      v43 = *v41;
      v42 = *(v41 + 1);
      v44 = (*(v40 + 160))();
      if ((v39 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_71_0(v44);
        if (v39 < v45)
        {
          v46 = &v1[4 * v39];
          v47 = v46[4];
          v48 = v46[5];
          v50 = v46[6];
          v49 = v46[7];

          v30 = v84;
          v43(v91, v47, v48, v50, v49, 1);

          goto LABEL_14;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    static ActionForInput.ignore()();
    (*(v12 + 8))(v20, v10);
  }

LABEL_14:
  static ActionForInput.handle()();
  v66 = static ActionForInput.== infix(_:_:)();
  v67 = v90;
  v68 = *(v89 + 8);
  v68(v27, v90);
  if (v66 & 1) != 0 || (static ActionForInput.cancel()(), v69 = static ActionForInput.== infix(_:_:)(), v68(v27, v67), (v69))
  {
    v70 = type metadata accessor for Input();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v72 = swift_allocBox();
    v73 = *(TupleTypeMetadata2 + 48);
    OUTLINED_FUNCTION_40(v70);
    v76 = (*(v74 + 16))(v75, v91, v70);
    (v86)(v76);
    v77 = v87;
    *v87 = v72;
    swift_storeEnumTagMultiPayload();
    BargeInCapablePromptForConfirmationFlow.state.setter(v77);
    v78 = 1;
  }

  else
  {
    v78 = 0;
  }

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92 = v82;
    *v81 = 136315394;
    *(v81 + 4) = OUTLINED_FUNCTION_45_5();
    *(v81 + 12) = 1024;
    *(v81 + 14) = v78;
    _os_log_impl(&dword_0, v79, v80, "#BargeInCapablePromptForConfirmationFlow %s => %{BOOL}d", v81, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v68(v30, v67);
  OUTLINED_FUNCTION_65();
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute(completion:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 96);
  type metadata accessor for BargeInCapablePromptForConfirmationFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v1[4] = v2;
  v1[5] = v0;
  v3 = *v0;
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for PhoneError();
  v1[7] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v1[9] = *(v10 + 88);
  v11 = OUTLINED_FUNCTION_88_0();
  v1[10] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[11] = v12;
  v14 = *(v13 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v15 = type metadata accessor for Input();
  v1[14] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[15] = v16;
  v18 = *(v17 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v1[18] = *(v19 + 80);
  OUTLINED_FUNCTION_49_1();
  v1[19] = *(v20 + 96);
  v21 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State();
  v1[20] = v21;
  OUTLINED_FUNCTION_13_2(v21);
  v1[21] = v22;
  v24 = *(v23 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v25, v26, v27);
}

{
  v108 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v1[5];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[26];
    v7 = v1[20];
    v8 = v1[21];
    v9 = v1[5];
    OUTLINED_FUNCTION_86_1();
    v107[0] = OUTLINED_FUNCTION_46_4();
    *v0 = 136315394;
    *(v0 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, v107);
    *(v0 + 12) = 2080;
    (*(*v9 + 184))();
    BargeInCapablePromptForConfirmationFlow.State.description.getter();
    v11 = v10;
    v13 = v12;

    v14 = *(v8 + 8);
    v15 = OUTLINED_FUNCTION_69();
    v16(v15);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v107);

    *(v0 + 14) = v17;
    _os_log_impl(&dword_0, v4, v5, "#BargeInCapablePromptForConfirmationFlow %s state = %s", v0, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v18 = v1[5];
  }

  v19 = v1[25];
  v20 = v1[20];
  v21 = v1[5];
  OUTLINED_FUNCTION_2_0();
  v23 = *(v22 + 184);
  v23();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v25 = v1[24];
      (*(v1[21] + 16))(v25, v1[25], v1[20]);
      v26 = *v25;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v1[27] = v27;
      *v27 = v28;
      v27[1] = BargeInCapablePromptForConfirmationFlow.execute();
      v29 = v1[4];
      v30 = v1[5];
      OUTLINED_FUNCTION_15_11();

      return BargeInCapablePromptForConfirmationFlow.executeSection(idx:)();
    case 1u:
    case 5u:
      v24 = v1[4];
      (*(v1[21] + 8))(v1[25], v1[20]);
      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_24;
    case 2u:
      v33 = v1[23];
      v34 = v1[14];
      v35 = *(v1[21] + 16);
      v35(v33, v1[25], v1[20]);
      v1[29] = *v33;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v37 = swift_projectBox();
      v38 = *(TupleTypeMetadata2 + 48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 5)
        {

LABEL_23:
          v79 = v1[26];
          v81 = v1[20];
          v80 = v1[21];
          v82 = v1[18];
          v83 = v1[19];
          v85 = v1[8];
          v84 = v1[9];
          v106 = v1[7];
          v86 = v1[5];
          OUTLINED_FUNCTION_2_0();
          v1[2] = v87;
          type metadata accessor for BargeInCapablePromptForConfirmationFlow();
          swift_getMetatypeMetadata();
          v88 = String.init<A>(describing:)();
          v90 = v89;
          v23();
          BargeInCapablePromptForConfirmationFlow.State.description.getter();
          v92 = v91;
          v94 = v93;
          (*(v80 + 8))(v79, v81);
          *v85 = v88;
          v85[1] = v90;
          v85[2] = v92;
          v85[3] = v94;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_13();
          _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(v95, v96);
          swift_allocError();
          PhoneError.logged()(v97);
          outlined destroy of PhoneError(v85);
          swift_willThrow();
          v98 = OUTLINED_FUNCTION_3_18();
          v99(v98);
          OUTLINED_FUNCTION_22_4();
          swift_errorRetain();
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_72_0();
          v101 = *(v100 + 112);
          type metadata accessor for StartCallCATsSimple();
          OUTLINED_FUNCTION_85();
          v102 = OUTLINED_FUNCTION_83_0();
          OUTLINED_FUNCTION_43_7(v102);
          OUTLINED_FUNCTION_87_0();
          OUTLINED_FUNCTION_70_0();
          (*(v103 + 112))();
          OUTLINED_FUNCTION_84();
          v1[3] = v101;
          type metadata accessor for SimpleOutputFlowAsync();
          static ExecuteResponse.complete<A>(next:)();

LABEL_24:
          OUTLINED_FUNCTION_1_36();

          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_15_11();

          __asm { BRAA            X1, X16 }
        }

        v40 = v1[5];
        (*(v1[15] + 16))(v1[17], v37, v1[14]);
        OUTLINED_FUNCTION_2_0();
        v42 = *(v41 + 160);
        v42();

        v44 = *((v42)(v43) + 16);

        OUTLINED_FUNCTION_2_0();
        v46 = (v40 + *(v45 + 128));
        v48 = *v46;
        v47 = v46[1];
        result = (v42)();
        if (v44)
        {
          result = OUTLINED_FUNCTION_71_0(result);
          if (v44 <= v49)
          {
            v50 = (v40 + 32 * v44);
            v51 = *v50;
            v1[30] = v50[1];
            v52 = v50[2];
            v1[31] = v50[3];

            OUTLINED_FUNCTION_11_19();
            v53 = *(v48 + 4);
            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            v1[32] = v54;
            *v54 = v55;
            v54[1] = BargeInCapablePromptForConfirmationFlow.execute();
            v56 = v1[17];
            v57 = v1[13];
            OUTLINED_FUNCTION_56_1();
            goto LABEL_19;
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v58 = v1[22];
      v60 = v1[15];
      v59 = v1[16];
      v61 = v1[14];
      v62 = v1[5];
      v35(v58, v37 + v38, v1[20]);
      v63 = *v58;
      (*(v60 + 16))(v59, v37, v61);
      OUTLINED_FUNCTION_2_0();
      v65 = (v62 + *(v64 + 128));
      v67 = *v65;
      v66 = v65[1];
      result = (*(v64 + 160))();
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      result = OUTLINED_FUNCTION_71_0(result);
      if (v63 < v68)
      {
        v69 = (v62 + 32 * v63);
        v70 = v69[4];
        v1[34] = v69[5];
        v71 = v69[6];
        v1[35] = v69[7];

        OUTLINED_FUNCTION_11_19();
        v72 = *(v67 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v1[36] = v73;
        *v73 = v74;
        v73[1] = BargeInCapablePromptForConfirmationFlow.execute();
        v75 = v1[16];
        v76 = v1[12];
        OUTLINED_FUNCTION_56_1();
LABEL_19:
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X7, X16 }
      }

LABEL_30:
      __break(1u);
      return result;
    default:
      goto LABEL_23;
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = v2[32];
  *v4 = *v1;
  *(v3 + 264) = v0;

  v6 = v2[31];
  v7 = v2[30];

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = v2[36];
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = v2[35];
  v7 = v2[34];

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}