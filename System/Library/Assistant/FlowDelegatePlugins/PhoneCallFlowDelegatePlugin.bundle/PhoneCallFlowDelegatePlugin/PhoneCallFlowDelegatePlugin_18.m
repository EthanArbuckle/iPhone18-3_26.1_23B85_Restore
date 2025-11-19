uint64_t CarryOverCallFiltersProvider.__allocating_init(phoneCallNLIntent:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(a1);
  return v2;
}

uint64_t key path setter for CarryOverCallFiltersProvider.phoneCallAudioRoute : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t key path setter for CarryOverCallFiltersProvider.hasAudioCallSemantic : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t key path setter for CarryOverCallFiltersProvider.hasVideoCallSemantic : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 18) = v2;
  return result;
}

uint64_t CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(uint64_t *a1)
{
  v2 = v1;
  *(v1 + 16) = 4;
  v4 = (v1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 48))(v5, v6);
  swift_beginAccess();
  *v4 = v7;
  OUTLINED_FUNCTION_1_34();
  *(v2 + 17) = PhoneCallNLIntent.hasAudioCallSemantic()();
  OUTLINED_FUNCTION_1_34();
  *(v2 + 18) = PhoneCallNLIntent.hasVideoCallSemantic()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5Tm(void *a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a3, a4, a2);
  v7 = [a1 _metadata];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 intentId];
  }

  else
  {
    v9 = 0;
  }

  [a1 setIdentifier:v9];

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v22 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315394;
    v23 = v14;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, a5, 0, 0);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v23);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = [v22 debugDescription];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v11, v12, "%s Converted intent: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return v22;
}

id static IdentifyCallerIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = a4;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCSgMd, &_sSo30INIdentifyIncomingCallerIntentCSgMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "#IdentifyCallerIntentConversion is confirmation, returning previousIntent: %s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v18 = v9;
  }

  else
  {
    v19 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
    a4 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5Tm(v19, a3, a2, a4, &_s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA014IdentifyCallergH0O_Tt3g5Tv_r);
  }

  return a4;
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional __swiftcall IdentifyIncomingCallerCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATs_Properties_unknownDefault;
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

unint64_t IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IdentifyIncomingCallerCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  if (a1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
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
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_35(v4);

  return v8(v6);
}

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
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD00000000000002CLL, 0x80000000004526A0, v2);
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v2 + 16) = xmmword_424FD0;
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_35_1();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40(v9);
    (*(v10 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v0[6] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_58(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v7 + 32))();
  }

  OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_25();
  v0[7] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_35(v8);

  return v12(v10);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_58(v4);
  v6 = v0[4];
  if (v5 == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v7 + 32))();
  }

  OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_25();
  v0[6] = v8;
  *v8 = v9;
  v8[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);
  v10 = v0[3];

  return v12(0xD00000000000002ALL, 0x80000000004526D0, v3);
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_35_1();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40(v9);
    (*(v10 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t IdentifyIncomingCallerCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return IdentifyIncomingCallerCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t IdentifyIncomingCallerCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for IdentifyIncomingCallerCATs()
{
  result = type metadata singleton initialization cache for IdentifyIncomingCallerCATs;
  if (!type metadata singleton initialization cache for IdentifyIncomingCallerCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional __swiftcall IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponse(incomingCallConcept:)()
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

  return v7(0xD00000000000002CLL, 0x80000000004526A0, v2);
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  result = 0x69486C6C61436F4ELL;
  switch(a1)
  {
    case 1:
      v3 = 0x317473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
    case 2:
      v4 = 0x317473726966;
      goto LABEL_5;
    case 3:
      v3 = 0x327473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
    case 4:
      v4 = 0x327473726966;
LABEL_5:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
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
  v5 = lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds();
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD00000000000002CLL, 0x80000000004526A0, v2, &type metadata for IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds, v5);
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.offerFollowUpIntent(followUpOfferType:)()
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

  return v11(v3 + 25, 0x80000000004526D0, v4);
}

BOOL IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
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
  v9 = lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds();
  *v8 = v2;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);
  v10 = v2[3];

  return v12(v3 + 25, 0x80000000004526D0, v4, &type metadata for IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds, v9);
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return IdentifyIncomingCallerCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t IdentifyIncomingCallerCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t IdentifyIncomingCallerCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t IdentifyIncomingCallerCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for IdentifyIncomingCallerCATsSimple()
{
  result = type metadata singleton initialization cache for IdentifyIncomingCallerCATsSimple;
  if (!type metadata singleton initialization cache for IdentifyIncomingCallerCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance IdentifyIncomingCallerCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v7 = *(v1 + class metadata base offset for IdentifyIncomingCallerCATsSimple) + **(v1 + class metadata base offset for IdentifyIncomingCallerCATsSimple);
  v2 = *(*(v1 + class metadata base offset for IdentifyIncomingCallerCATsSimple) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_11_13(v3);

  return v5(v4);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance IdentifyIncomingCallerCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v2 = *(v1 + class metadata base offset for IdentifyIncomingCallerCATsSimple + 16);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_11_13(v4);

  return v6(v5);
}

uint64_t *IdentifyIncomingCallerDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  return &static IdentifyIncomingCallerDirectAction.identifier;
}

uint64_t static IdentifyIncomingCallerDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_7_36();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t one-time initialization function for handleTypeKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.handleTypeKey = result;
  *algn_553398 = v1;
  return result;
}

uint64_t one-time initialization function for handleValueKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.handleValueKey = result;
  *algn_5533A8 = v1;
  return result;
}

uint64_t IdentifyIncomingCallerDirectAction.callUUID.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t IdentifyIncomingCallerDirectAction.callProviderBundleId.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.callProviderIdentifier : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 96);
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
}

uint64_t IdentifyIncomingCallerDirectAction.callProviderIdentifier.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.callerContactIdentifiers : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

uint64_t IdentifyIncomingCallerDirectAction.callerContactIdentifiers.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 104);
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.handleValue : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 120);
  *(v4 + 112) = v3;
  *(v4 + 120) = v2;
}

uint64_t IdentifyIncomingCallerDirectAction.handleValue.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.handleType : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 128) = v2;
  *(v4 + 136) = v3;
  return result;
}

uint64_t IdentifyIncomingCallerDirectAction.handleType.getter()
{
  OUTLINED_FUNCTION_4_4();
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.isVideo : IdentifyIncomingCallerDirectAction(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 137) = v2;
  return result;
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.isCallerIdBlocked : IdentifyIncomingCallerDirectAction(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 138) = v2;
  return result;
}

uint64_t IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_32(a1, a2);
  OUTLINED_FUNCTION_4_36();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_2_57(v6, v16);
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t IdentifyIncomingCallerDirectAction.__allocating_init(from:contactStore:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_4_36();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = OUTLINED_FUNCTION_2_57(v8, v18);
  v10(v9);
  v11 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v11, v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v3;
}

uint64_t IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_32(a1, a2);
  OUTLINED_FUNCTION_4_36();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_2_57(v6, v16);
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v9, v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

id IdentifyIncomingCallerDirectAction.callRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  OUTLINED_FUNCTION_2_0();
  v6 = (*(v5 + 152))();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  v35 = v9;
  v36 = v8;
  v10 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  v34 = IdentifyIncomingCallerDirectAction.callersAsPerson.getter();
  if ((*(*v0 + 296))())
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = IdentifyIncomingCallerDirectAction.preferredCallProvider.getter();
  v13 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  OUTLINED_FUNCTION_2_0();
  v15 = (*(v14 + 200))();
  v17 = v16;
  OUTLINED_FUNCTION_2_0();
  v19 = (*(v18 + 176))();
  v21 = v20;
  v22 = [objc_allocWithZone(NSNumber) initWithBool:(*(*v0 + 320))() & 1];
  v23 = objc_allocWithZone(INCallRecord);
  v24 = @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v36, v35, v4, v34, 6, v11, 0, 0, v12, v13, v15, v17, v19, v21, v22);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  v26 = v24;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_0, v27, v28, "#IdentifyIncomingCallerDirectAction: INCallRecord to announce = %@.", v29, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return v26;
}

id IdentifyIncomingCallerDirectAction.handle.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 248))();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_0();
  v3 = (*(v2 + 272))();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
  return TUHandle.__allocating_init(type:value:)(v5);
}

id TUHandle.__allocating_init(type:value:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithType:a1 value:v3];

  return v4;
}

Class IdentifyIncomingCallerDirectAction.callersAsPerson.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v72 - v4;
  OUTLINED_FUNCTION_2_0();
  v7 = (*(v6 + 224))();
  v8 = &unk_426000;
  if (v7)
  {
    v9 = v7;
    if (*(v7 + 16))
    {
      v10 = IdentifyIncomingCallerDirectAction.fetchPersons(identifiers:)(v7);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.siriPhone);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134218240;
        *(v14 + 4) = *(v9 + 16);

        *(v14 + 12) = 2048;
        *(v14 + 14) = specialized Array.count.getter(v10);

        _os_log_impl(&dword_0, v12, v13, "#IdentifyIncomingCallerDirectAction: Incoming call from number associated with %ld contact(s), %ld unique contact(s)", v14, 0x16u);
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v15 = specialized Array.count.getter(v10);
      if (v15)
      {
        v16 = v15;

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v10 + 32);
        }

        v18 = v17;
        if (v16 < 1)
        {
          __break(1u);
        }

        else
        {
          specialized Array._checkIndex(_:)(1, v10);
          specialized Array._checkIndex(_:)(v16, v10);
          if ((v10 & 0xC000000000000001) == 0 || v16 == 1)
          {
          }

          else
          {
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

            v19 = 1;
            do
            {
              v20 = v19 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v19);
              v19 = v20;
            }

            while (v16 != v20);
          }

          if (!(v10 >> 62))
          {
            v29 = v10 & 0xFFFFFFFFFFFFFF8;
            v30 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
            v31 = 1;
            v32 = (2 * v16) | 1;
            if ((v32 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_52;
          }
        }

        v29 = _CocoaArrayWrapper.subscript.getter();
        v30 = v63;
        v32 = v64;
        v31 = v65;

        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_52:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v66 = swift_dynamicCastClass();
        if (!v66)
        {
          swift_unknownObjectRelease();
          v66 = _swiftEmptyArrayStorage;
        }

        v67 = v66[2];

        if (__OFSUB__(v32 >> 1, v31))
        {
          __break(1u);
        }

        else if (v67 == (v32 >> 1) - v31)
        {
          v34 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v34)
          {
LABEL_59:
            outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v34, v18);

            v68 = IdentifyIncomingCallerDirectAction.handle.getter();
            if (v68)
            {
              v69 = v68;
              v70 = [v68 personHandle];
            }

            else
            {
              v70 = 0;
            }

            [v18 setPersonHandle:v70];

            return v18;
          }

          v34 = _swiftEmptyArrayStorage;
LABEL_58:
          swift_unknownObjectRelease();
          goto LABEL_59;
        }

        swift_unknownObjectRelease_n();
LABEL_23:
        specialized _copyCollectionToContiguousArray<A>(_:)(v29, v30, v31, v32);
        v34 = v33;
        goto LABEL_58;
      }

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v73 = v24;
        *v23 = 136315138;
        v25 = Array.description.getter();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v73);
        v8 = &unk_426000;

        *(v23 + 4) = v28;
        _os_log_impl(&dword_0, v21, v22, "#IdentifyIncomingCallerDirectAction: Couldn't find contact for identifiers: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v35 = IdentifyIncomingCallerDirectAction.handle.getter();
  if (v35 && (v36 = v35, v37 = [v35 personHandle], v36, v37))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "#IdentifyIncomingCallerDirectAction: Incoming call from number not associated with contact, using handle", v41, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    if ([v37 type] || (type metadata accessor for App(), (*(*v1 + 176))(), App.__allocating_init(appIdentifier:)(), v42 = App.isFirstParty()(), , v42))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      return INPerson.init(personHandle:)(v37).super.isa;
    }

    else
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_0, v53, v54, "#IdentifyIncomingCallerDirectAction: Received a generic TUHandle. Using handle value as fullName.", v55, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v56 = objc_allocWithZone(INPersonHandle);
      v57 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
      v58 = type metadata accessor for PersonNameComponents();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v58);
      v59 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v37);
      v61 = v60;
      v62 = objc_allocWithZone(INPerson);
      v18 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v57, v5, v59, v61, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73 = v47;
      *v46 = v8[70];
      v48 = v1;
      v49 = (*(*v1 + 320))();
      v50 = (v49 & 1) == 0;
      if (v49)
      {
        v51 = 0x64656B636F6C42;
      }

      else
      {
        v51 = 0x656C6C6143206F4ELL;
      }

      if (v50)
      {
        v52 = 0xEC00000044492072;
      }

      else
      {
        v52 = 0xE700000000000000;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v73);
      OUTLINED_FUNCTION_40_0();

      *(v46 + 4) = v48;
      _os_log_impl(&dword_0, v44, v45, "#IdentifyIncomingCallerDirectAction: Incoming call with no callers and no handle - %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  return v18;
}

uint64_t IdentifyIncomingCallerDirectAction.preferredCallProvider.getter()
{
  type metadata accessor for App();
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 176);
  v2();
  App.__allocating_init(appIdentifier:)();
  if (!App.isFirstParty()())
  {
    v3 = (v2)();
    v5 = specialized Optional<A>.isNilOrEmpty.getter(v3, v4);

    if ((v5 & 1) == 0)
    {

      return 3;
    }
  }

  v6 = (*(*v0 + 200))();
  if (!v7)
  {

    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = v6 == 0xD000000000000017 && 0x800000000045BDA0 == v7;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v8 != 0xD00000000000003BLL || 0x800000000045BDC0 != v9)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 2;
    }

    return 0;
  }

  return 2;
}

uint64_t IdentifyIncomingCallerDirectAction.fetchPersons(identifiers:)(uint64_t result)
{
  v1 = 0;
  v18 = _swiftEmptyArrayStorage;
  v2 = *(result + 16);
  v3 = result + 40;
  v17 = v2;
  v15 = result + 40;
LABEL_2:
  for (i = (v3 + 16 * v1); ; i += 2)
  {
    if (v2 == v1)
    {
      KeyPath = swift_getKeyPath();
      v18 = _swiftEmptySetSingleton;

      specialized Sequence.filter(_:)(v12, &v18, KeyPath);
      v14 = v13;

      return v14;
    }

    if (v1 >= v2)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = *(i - 1);
    v6 = *i;
    v8 = v16[5];
    v7 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v8);
    v9 = *(v7 + 8);

    v10 = v9(v5, v6, v8, v7);

    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v1;
      v2 = v17;
      v3 = v15;
      goto LABEL_2;
    }

    ++v1;
    v2 = v17;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void key path getter for INPerson.displayName : INPerson(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for INPerson.displayName : INPerson(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = String._bridgeToObjectiveC()();
  [v4 setDisplayName:v5];
}

uint64_t *IdentifyIncomingCallerDirectAction.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[15];

  return v0;
}

uint64_t IdentifyIncomingCallerDirectAction.__deallocating_deinit()
{
  IdentifyIncomingCallerDirectAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[3] = a4;
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = Parse.DirectInvocation.userData.getter();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.announceTelephony);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315138;
      v17 = Dictionary.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "#IdentifyIncomingCallerDirectAction: Direct Invocation payload: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    outlined init with copy of SignalProviding(v29, v28);
    v20 = (*(a3 + 344))(v11, v28);
    v21 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v21 - 8) + 8))(a1, v21);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.announceTelephony);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#IdentifyIncomingCallerDirectAction: No userData in DirectInvocation.", v25, 2u);
    }

    v26 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v26 - 8) + 8))(a1, v26);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return 0;
  }

  return v20;
}

uint64_t specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + 104) = 0u;
  v10 = (a3 + 104);
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v11, v12, a1, &v57);

  if (v58)
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v55;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v56;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    v14 = 0;
    v15 = 0;
  }

  swift_beginAccess();
  v16 = *(a3 + 64);
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v17, v18, a1, &v57);

  if (v58)
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v53;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v54;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    v20 = 0;
    v21 = 0;
  }

  swift_beginAccess();
  v22 = *(a3 + 80);
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v23, v24, a1, &v57);

  if (v58)
  {
    v25 = swift_dynamicCast();
    if (v25)
    {
      v26 = v51;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v52;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    v26 = 0;
    v27 = 0;
  }

  swift_beginAccess();
  v28 = *(a3 + 96);
  *(a3 + 88) = v26;
  *(a3 + 96) = v27;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, v30, a1, &v57);

  if (v58)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v31 = v50;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    v31 = 0;
  }

  swift_beginAccess();
  v32 = *v10;
  *v10 = v31;

  if (one-time initialization token for handleTypeKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleTypeKey, *algn_553398, a1, &v57);
  if (v58)
  {
    if (swift_dynamicCast())
    {
      v33 = 0;
      v34 = v49;
      goto LABEL_37;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
  }

  v34 = 0;
  v33 = 1;
LABEL_37:
  swift_beginAccess();
  *(a3 + 128) = v34;
  *(a3 + 136) = v33;
  if (one-time initialization token for handleValueKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleValueKey, *algn_5533A8, a1, &v57);
  if (v58)
  {
    v35 = swift_dynamicCast();
    if (v35)
    {
      v36 = v47;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v48;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    v36 = 0;
    v37 = 0;
  }

  swift_beginAccess();
  v38 = *(a3 + 120);
  *(a3 + 112) = v36;
  *(a3 + 120) = v37;

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v39, v40, a1, &v57);

  if (v58)
  {
    if (swift_dynamicCast())
    {
      v41 = v46;
      goto LABEL_52;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
  }

  v41 = 0;
LABEL_52:
  *(a3 + 137) = v41;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v42, v43, a1, &v57);

  if (!v58)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v57, &_sypSgMd, &_sypSgMR);
    goto LABEL_56;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v44 = 0;
    goto LABEL_57;
  }

  v44 = v46;
LABEL_57:
  *(a3 + 138) = v44;
  outlined init with take of SPHConversation(&v59, a3 + 16);
  return a3;
}

uint64_t IdentifyIncomingCallerOutputStrategy.init(incomingCallCats:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IdentifyIncomingCallerCATsSimple();
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for IdentifyIncomingCallerCATsSimple;
  *a2 = a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t IdentifyIncomingCallerOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a5 + 24);
  v12 = v11(a4, a5);
  if (FollowUpOfferType.rawValue.getter(v12) == 0xD000000000000011 && 0x8000000000452840 == v13)
  {
    goto LABEL_12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_13;
  }

  v16 = OUTLINED_FUNCTION_1_66();
  v17 = (v11)(v16);
  if (FollowUpOfferType.rawValue.getter(v17) == 0x4C41435F44414552 && v18 == 0xE90000000000004CLL)
  {
LABEL_12:
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_13:
  v21 = *(a5 + 16);
  v22 = OUTLINED_FUNCTION_1_66();
  v23 = v21(v22);
  if (!v23)
  {
LABEL_24:
    type metadata accessor for IncomingCallActionConfirmation();
    lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(&lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation, 255, type metadata accessor for IncomingCallActionConfirmation);
    type metadata accessor for PromptForConfirmationFlowAsync();
    v65 = a2;
    type metadata accessor for IncomingCallActionConfirmationStrategy();
    outlined init with copy of SignalProviding(v6, &v58);
    outlined init with copy of SignalProviding(a3, &v62);
    v37 = a2;
    v38 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4, a5);
    default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v61, a4, a5);
    IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v37, &v58, &v62, 0, 0, v38, v61);
    v39 = a3[3];
    v40 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v39);
    (*(v40 + 16))(&v58, v39, v40);
    v41 = v59;
    v42 = v60;
    v43 = __swift_project_boxed_opaque_existential_1(&v58, v59);
    v63 = v41;
    v64 = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v43, v41);
    swift_getWitnessTable();
    v45 = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1(&v58);
    *&v58 = v45;
    swift_getWitnessTable();
    v46 = Flow.eraseToAnyValueFlow()();

    return v46;
  }

  v24 = v23;
  if (!specialized Array.count.getter(v23))
  {

    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v24 & 0xC000000000000001) == 0, v24);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v25 = *(v24 + 32);
  }

  v26 = v25;

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
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#IdentifyIncomingCallerOutputStrategy Using SearchCallHistoryFlow to push offer to call back", v30, 2u);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  v66.value.super.isa = 0;
  v66.is_nil = 0;
  v67.value.super.isa = 0;
  v67.is_nil = 12;
  v33.super.super.isa = INSearchCallHistoryIntent.init(dateCreated:recipient:callCapabilities:callTypes:unseen:)(v66, v67, 2, v31, v32).super.super.isa;
  v34 = [objc_allocWithZone(INSearchCallHistoryIntentResponse) initWithCode:7 userActivity:0];
  v35 = OUTLINED_FUNCTION_1_66();
  if (v21(v35))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v36.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v36.super.isa = 0;
  }

  [v34 setCallRecords:v36.super.isa];

  v47 = type metadata accessor for SingleCallResultFlow();
  outlined init with copy of SignalProviding(a3, &v62);

  v48 = v26;
  v49 = v33.super.super.isa;
  v50 = v34;
  default argument 6 of SingleCallResultFlow.init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(&v58, v50);
  v51 = SingleCallResultFlow.__allocating_init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(a1, v48, v49, v50, 1, &v62, &v58);
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  v52 = swift_allocObject();
  v52[5] = v47;
  v52[6] = lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, 255, type metadata accessor for SingleCallResultFlow);
  v52[2] = v51;
  *&v58 = v52;
  OUTLINED_FUNCTION_0_60();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(v53, v54, v55);

  v46 = Flow.eraseToAnyValueFlow()();

  return v46;
}

uint64_t IncomingCallActionConfirmationFlowAdapter.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for PromptResult.cancelled<A>(_:);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t IncomingCallActionConfirmationFlowAdapter.__allocating_init(_:)(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t IncomingCallActionConfirmationFlowAdapter.on(input:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return dispatch thunk of Flow.on(input:)() & 1;
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute(completion:)()
{
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  OUTLINED_FUNCTION_0_60();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(v0, v1, v2);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(IncomingCallActionConfirmationFlowAdapter.execute(), 0, 0);
}

uint64_t IncomingCallActionConfirmationFlowAdapter.execute()()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of Flow.execute()[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = IncomingCallActionConfirmationFlowAdapter.execute();
  v6 = v0[2];

  return dispatch thunk of Flow.execute()(v6, v2, v3);
}

{
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t protocol witness for Flow.execute() in conformance IncomingCallActionConfirmationFlowAdapter(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v8(a1);
}

uint64_t lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *specialized IncomingCallActionConfirmationFlowAdapter.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IncomingCallActionConfirmationFlowAdapter();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = specialized IncomingCallActionConfirmationFlowAdapter.init(_:)(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t *specialized IncomingCallActionConfirmationFlowAdapter.init(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t IdiomKeyedHintHistory.get(device:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DeviceState.idiom.getter();
  return Dictionary.subscript.getter();
}

uint64_t IdiomKeyedHintHistory.set(device:hintHistory:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = DeviceState.idiom.getter();
  (*(*(v5 - 8) + 16))(v9, a2, v5);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
  v13[1] = v11;
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t IdiomKeyedHintHistory.description.getter()
{
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t IdiomKeyedHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x70614D6D6F696469 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return default argument 1 of SharedConfirmationRepromptContext.hasPrompted(for:times:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return SharedNeedsValueContext.NeedsValueCase.hashValue.getter();
}

void protocol witness for Hashable.hash(into:) in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  SharedNeedsValueContext.NeedsValueCase.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  SharedNeedsValueContext.NeedsValueCase.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return IdiomKeyedHintHistory.CodingKeys.stringValue.getter();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IdiomKeyedHintHistory<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = IdiomKeyedHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return AnnounceVoicemailDirectAction.CodingKeys.intValue.getter();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IdiomKeyedHintHistory<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = default argument 1 of SharedConfirmationRepromptContext.hasPrompted(for:times:)();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IdiomKeyedHintHistory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t IdiomKeyedHintHistory.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IdiomKeyedHintHistory.CodingKeys();
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Dictionary();
  v14 = *(*(a4 + 8) + 16);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = OUTLINED_FUNCTION_1_67();
  return v11(v10);
}

void *IdiomKeyedHintHistory.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IdiomKeyedHintHistory.CodingKeys();
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedDecodingContainer();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();
  Dictionary.init(dictionaryLiteral:)();

  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    type metadata accessor for Dictionary();
    v15 = *(*(a3 + 8) + 8);
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = OUTLINED_FUNCTION_1_67();
    v13(v12);
    v10 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t protocol witness for SiriPhoneDefaultsCodable.init() in conformance IdiomKeyedHintHistory<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = default argument 0 of IdiomKeyedHintHistory.init(idiomMap:)(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IdiomKeyedHintHistory<A>(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return IdiomKeyedHintHistory.description.getter();
}

void *protocol witness for Decodable.init(from:) in conformance IdiomKeyedHintHistory<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = IdiomKeyedHintHistory.init(from:)(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IdiomKeyedHintHistory<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IdiomKeyedHintHistory<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for IdiomKeyedHintHistory()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for IdiomKeyedHintHistory.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  static Signpost.begin(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 41) = HIBYTE(v15) & 1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  v17 = a5[2];

  v18 = OUTLINED_FUNCTION_4_37();
  v17(v18);
  __swift_project_boxed_opaque_existential_1(v123, v124);
  v19 = OUTLINED_FUNCTION_2_58();
  v20(v19);
  __swift_project_boxed_opaque_existential_1(v121, v122);
  OUTLINED_FUNCTION_3_13();
  LOBYTE(a3) = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_1(v121);
  __swift_destroy_boxed_opaque_existential_1(v123);
  if (a3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_6_43(v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v24);
      OUTLINED_FUNCTION_5_44(&dword_0, v25, v26, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_5_7();
    }

    v27 = a5[3];
    v36 = OUTLINED_FUNCTION_0_62(v28, v29, v30, v31, v32, v33, v34, v35, v119, a1);
    v37(v36);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_4_37();
    v17(v38);
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v39 = OUTLINED_FUNCTION_2_58();
    v40(v39);
    __swift_project_boxed_opaque_existential_1(v121, v122);
    OUTLINED_FUNCTION_3_13();
    v41 = dispatch thunk of DeviceState.isMac.getter();
    __swift_destroy_boxed_opaque_existential_1(v121);
    __swift_destroy_boxed_opaque_existential_1(v123);
    if (v41)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_6_43(v44))
      {
        v45 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_8_43(v45);
        OUTLINED_FUNCTION_5_44(&dword_0, v46, v47, "#IdiomSensitiveViewBuilder: Building views for Mac");
        OUTLINED_FUNCTION_5_7();
      }

      v48 = a5[4];
      v57 = OUTLINED_FUNCTION_0_62(v49, v50, v51, v52, v53, v54, v55, v56, v119, a1);
      v58(v57);
    }

    else
    {
      v59 = OUTLINED_FUNCTION_4_37();
      v17(v59);
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v60 = OUTLINED_FUNCTION_2_58();
      v61(v60);
      __swift_project_boxed_opaque_existential_1(v121, v122);
      OUTLINED_FUNCTION_3_13();
      v62 = dispatch thunk of DeviceState.isCarPlay.getter();
      __swift_destroy_boxed_opaque_existential_1(v121);
      __swift_destroy_boxed_opaque_existential_1(v123);
      if (v62)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v63 = type metadata accessor for Logger();
        __swift_project_value_buffer(v63, static Logger.siriPhone);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_6_43(v65))
        {
          v66 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_8_43(v66);
          OUTLINED_FUNCTION_5_44(&dword_0, v67, v68, "#IdiomSensitiveViewBuilder: Building views for CarPlay");
          OUTLINED_FUNCTION_5_7();
        }

        v69 = a5[5];
        v78 = OUTLINED_FUNCTION_0_62(v70, v71, v72, v73, v74, v75, v76, v77, v119, a1);
        v79(v78);
      }

      else
      {
        v80 = OUTLINED_FUNCTION_4_37();
        v17(v80);
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v81 = OUTLINED_FUNCTION_2_58();
        v82(v81);
        __swift_project_boxed_opaque_existential_1(v121, v122);
        OUTLINED_FUNCTION_3_13();
        v83 = dispatch thunk of DeviceState.isAppleTV.getter();
        __swift_destroy_boxed_opaque_existential_1(v121);
        __swift_destroy_boxed_opaque_existential_1(v123);
        if (v83)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v84 = type metadata accessor for Logger();
          __swift_project_value_buffer(v84, static Logger.siriPhone);
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_6_43(v86))
          {
            v87 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_8_43(v87);
            OUTLINED_FUNCTION_5_44(&dword_0, v88, v89, "#IdiomSensitiveViewBuilder: Building views for AppleTV");
            OUTLINED_FUNCTION_5_7();
          }

          v90 = a5[7];
          v99 = OUTLINED_FUNCTION_0_62(v91, v92, v93, v94, v95, v96, v97, v98, v119, a1);
          v100(v99);
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v101 = type metadata accessor for Logger();
          __swift_project_value_buffer(v101, static Logger.siriPhone);
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_6_43(v103))
          {
            v104 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_8_43(v104);
            OUTLINED_FUNCTION_5_44(&dword_0, v105, v106, "#IdiomSensitiveViewBuilder: Building views for IOS");
            OUTLINED_FUNCTION_5_7();
          }

          v107 = a5[6];
          v116 = OUTLINED_FUNCTION_0_62(v108, v109, v110, v111, v112, v113, v114, v115, v119, a1);
          v117(v116);
        }
      }
    }
  }
}

uint64_t IdiomSensitiveViewBuilding.makeViews()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(_swiftEmptyArrayStorage, a1, a2);
}

uint64_t IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(IdiomSensitiveViewBuilding.makeViews(utteranceViews:), 0, 0);
}

uint64_t IdiomSensitiveViewBuilding.makeViews(utteranceViews:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v5 = v0;
  v5[1] = IdiomSensitiveViewBuilding.makeViews(utteranceViews:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x800000000045A9D0, partial apply for closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 8))(a3, partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v15, a4, a5);
}

void closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  LOBYTE(v8) = a2;
  v9 = a1;
  if (a2)
  {
    swift_errorRetain();
    v10 = v9;
  }

  else
  {
    v11 = specialized Array.count.getter(a1);
    v10 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v12 = v11;
      v43 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v12 < 0)
      {
        __break(1u);
        return;
      }

      v39 = v8;
      v40 = a7;
      v8 = 0;
      v13 = v9 & 0xC000000000000001;
      v10 = v43;
      v41 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v13)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v41 + 16))
          {
            goto LABEL_32;
          }

          v15 = *(v9 + 8 * v8 + 32);
        }

        v16 = v15;
        v17 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v15, &selRef_encodedClassName);
        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0x416E776F6E6B6E55;
        }

        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0xEE00776569566563;
        }

        v21 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v16, &selRef_aceId);
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 7104878;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0xE300000000000000;
        }

        v25._countAndFlagsBits = 0x3D64496563615BLL;
        v25._object = 0xE700000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = v23;
        v26._object = v24;
        String.append(_:)(v26);

        v27._countAndFlagsBits = 93;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);

        v28 = v20;
        v43 = v10;
        a7 = v10[2];
        if (a7 >= v10[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v43;
        }

        v10[2] = a7 + 1;
        v29 = &v10[2 * a7];
        v29[4] = v19;
        v29[5] = v28;
        ++v8;
        v9 = a1;
        if (v14 == v12)
        {
          a7 = v40;
          LOBYTE(v8) = v39;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_27:
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_6_2();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = v8 & 1;
  outlined copy of Result<[INPerson], Error>(v10, v8 & 1);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  outlined consume of Result<[INPerson], Error>(v10, v8 & 1);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v8;
    v8 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v8 = 136315138;
    outlined copy of Result<[INPerson], Error>(v10, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySaySSGs5Error_pGMd, &_ss6ResultOySaySSGs5Error_pGMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v43);
    v9 = a1;

    *(v8 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "IdiomSensitiveViewBuilder: Built views: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);

    LOBYTE(v8) = v34;
  }

  Signpost.OpenSignpost.end()();
  (a7)(v9, v8 & 1);
  outlined consume of Result<[INPerson], Error>(v10, v8 & 1);
}

void partial apply for closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(void *a1, char a2)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 56);
  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v3 | *(v2 + 40), *(v2 + 48));
}

uint64_t IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, char a5, uint64_t a6, __int128 *a7)
{
  v14 = swift_allocObject();
  IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t IncomingCallActionConfirmation.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IncomingCallActionConfirmation();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of IncomingCallActionConfirmation(v2, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  v12 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_23_1(v12);
  v14 = *(v13 + 104);
  if (EnumTagSinglePayload == 1)
  {
    v14(a1, enum case for ConfirmationResponse.rejected(_:), v12);
    return OUTLINED_FUNCTION_21_18();
  }

  else
  {
    v14(a1, enum case for ConfirmationResponse.confirmed(_:), v12);
    OUTLINED_FUNCTION_21_18();
    v16 = type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1(v16);
    return (*(v17 + 8))(v9);
  }
}

void *IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, char a5, uint64_t a6, __int128 *a7)
{
  v8 = v7;
  v15 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17FollowUpOfferTypeO_ShyAC0dE4VerbOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 2;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5(&outlined read-only object #0 of IncomingCallActionConfirmationStrategy.init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:));
  *(inited + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMd, &_sShy27PhoneCallFlowDelegatePlugin0aB4VerbOGMR);
  lazy protocol witness table accessor for type FollowUpOfferType and conformance FollowUpOfferType();
  v8[2] = Dictionary.init(dictionaryLiteral:)();
  v8[3] = a1;
  outlined init with take of SPHConversation(a2, (v8 + 9));
  v18 = *(v15 + 80);
  v19 = *(v15 + 88);
  type metadata accessor for IncomingCallNLContextProvider();
  v8[14] = UnsetRelationshipTemplatesWrapper.__allocating_init()();
  v8[15] = a4;
  *(v8 + 128) = a5;
  outlined init with take of SPHConversation(a3, (v8 + 4));
  v8[17] = a6;
  outlined init with take of SPHConversation(a7, (v8 + 18));
  return v8;
}

uint64_t type metadata accessor for IncomingCallActionConfirmation()
{
  result = type metadata singleton initialization cache for IncomingCallActionConfirmation;
  if (!type metadata singleton initialization cache for IncomingCallActionConfirmation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of IncomingCallActionConfirmation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingCallActionConfirmation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IncomingCallActionConfirmationStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[7];
  v7 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
  v8 = (*(v7 + 72))(v6, v7);
  Input.parse.getter();
  (*(*v8 + 192))(&v14, v5);

  (*(v2 + 8))(v5, v1);
  if (!v15)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v14, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return static ActionForInput.ignore()();
  }

  outlined init with take of SPHConversation(&v14, v16);
  if (IncomingCallActionConfirmationStrategy.parsePhoneCallConfirmationFromIntent(intent:)(v16) == 5)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    return static ActionForInput.ignore()();
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_65_0();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#IncomingCallActionConfirmationStrategy received a value for phoneCallConfirmation.", v13, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  static ActionForInput.handle()();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t IncomingCallActionConfirmationStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for Parse();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = v3[7];
  v7 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v6);
  v8 = (*(v7 + 72))(v6, v7);
  Input.parse.getter();
  (*(*v8 + 192))(v1);

  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_55();
  v11(v10);
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_5;
  }

  v12 = *(v0 + 112);
  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  if (IncomingCallActionConfirmationStrategy.parsePhoneCallConfirmationFromIntent(intent:)((v0 + 16)))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_5:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v15))
    {
      v16 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v16);
      OUTLINED_FUNCTION_14_1(&dword_0, v17, v18, "#IncomingCallActionConfirmationStrategy confirmation prompt rejected.");
      OUTLINED_FUNCTION_12_3();
    }

    v19 = *(v0 + 96);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
    v21 = v19;
    v22 = 1;
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v25))
  {
    v26 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v26);
    OUTLINED_FUNCTION_14_1(&dword_0, v27, v28, "#IncomingCallActionConfirmationStrategy phoneCallConfirmation = .yes");
    OUTLINED_FUNCTION_12_3();
  }

  v30 = *(v0 + 96);
  v29 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v31 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v31);
  (*(v32 + 16))(v30, v29);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  v21 = v30;
  v22 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
  v33 = *(v0 + 136);

  OUTLINED_FUNCTION_11();

  return v34();
}

uint64_t IncomingCallActionConfirmationStrategy.parsePhoneCallConfirmationFromIntent(intent:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  if (result == 5)
  {
    v8 = v1[2];
    v7 = v1[3];
    v9 = (*(*(v5 + 88) + 24))(*(v5 + 80));
    if (!specialized Dictionary.subscript.getter(v9, v8))
    {
      return 5;
    }

    v10 = a1[3];
    v11 = a1[4];
    v12 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v14 = (*(v11 + 104))(v10, v11);
    if (v14 == 17)
    {

      return 5;
    }

    v15 = v14;
    specialized Set.contains(_:)();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      return 5;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = PhoneCallVerb.rawValue.getter(v15);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "Received verb: %s, treating this as .yes confirmation", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  return result;
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v23 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = *(v5 + 24);
    *(v0 + 56) = (*(*(v6 + 88) + 24))(*(v6 + 80));
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "#IncomingCallActionConfirmationStrategy prompting user for confirmation on followUpOffer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v13 = *(**(v0 + 32) + 224);
  v21 = (v13 + *v13);
  v14 = v13[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v15;
  *v15 = v16;
  v15[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);

  return v21(v19, v17);
}

uint64_t IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v47 = v0;
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
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallActionConfirmationStrategy Submitting SiriKitFlow.Output to acknowledge rejection", v4, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v5 = v0[9];
  OUTLINED_FUNCTION_9_0(v1, static Logger.announceTelephony);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315138;
    v0[7] = v10;
    v14 = *(v9 + 80);
    v13 = *(v9 + 88);
    type metadata accessor for IncomingCallActionConfirmationStrategy();

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v46);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "#%s: User declined", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v14 = *(v9 + 80);
    v13 = *(v9 + 88);
  }

  v18 = *(v0[9] + 24);
  v19 = (*(v13 + 24))(v14, v13);
  if (FollowUpOfferType.rawValue.getter(v19) == 0xD000000000000013 && 0x8000000000452820 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v23 = v0[11];
      v24 = v0[12];
      v25 = v0[9];
      type metadata accessor for PhoneCallCommonCATsSimple();
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      static DialogPhase.canceled.getter();
      outlined init with copy of SignalProviding(v25 + 32, (v0 + 2));
      v26 = type metadata accessor for DialogOutputFactory();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
      v0[13] = v29;
      v30 = *(*v29 + 136);
      v45 = (v30 + *v30);
      v31 = v30[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[14] = v32;
      *v32 = v33;
      v32[1] = IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse();
      v34 = v0[8];

      return v45(v34);
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v37))
  {
    v38 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v38);
    OUTLINED_FUNCTION_14_1(&dword_0, v39, v40, "#IncomingCallActionConfirmationStrategy Offered to answer and user rejected -- allow HangUp flow to execute and provide dialog");
    OUTLINED_FUNCTION_12_3();
  }

  v41 = v0[8];

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v43 = v0[11];
  v42 = v0[12];

  OUTLINED_FUNCTION_11();

  return v44();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[14];
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(IncomingCallActionConfirmationStrategy.makeConfirmationRejectedResponse(), 0, 0);
  }

  else
  {
    v7 = v3[13];

    v9 = v3[11];
    v8 = v3[12];

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  OUTLINED_FUNCTION_11();
  v5 = v0[15];

  return v4();
}

uint64_t IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse());
}

uint64_t IncomingCallActionConfirmationStrategy.makeFlowCancelledResponse()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#IncomingCallActionConfirmationStrategy makeFlowCancelledResponse: cancellation = rejection");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = v0[3];

  v8 = *(*v7 + 200);
  v15 = (v8 + *v8);
  v9 = v8[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[4] = v10;
  *v10 = v11;
  v10[1] = DialogOutputFactory.makeOutput();
  v12 = v0[2];
  v13 = v0[3];

  return v15(v12);
}

uint64_t IncomingCallActionConfirmationStrategy.makeErrorResponse(_:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#IncomingCallActionConfirmationStrategy makeErrorResponse");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 16);

  swift_willThrow();
  swift_errorRetain();
  OUTLINED_FUNCTION_11();
  v9 = *(v0 + 16);

  return v8();
}

uint64_t IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for Logger();
  v1[11] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[16] = v12;
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v18 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v18, v19, v20);
}

{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v2[12];
  v6 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v5);
  v7 = (*(*(v3 + 88) + 24))(*(v3 + 80));
  FollowUpOfferType.rawValue.getter(v7);
  SpeakableString.init(print:speak:)();
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v8);
  v9 = *(v6 + 16);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  v12 = v0[18];

  return v14(v12, v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    v9 = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  }

  else
  {
    v9 = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v69 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  if (!*(v3 + 120))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v4 = static Logger.siriPhone;
    goto LABEL_7;
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v4 = static Logger.announceTelephony;
LABEL_7:
    v5 = *(v0 + 160);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = __swift_project_value_buffer(v8, v4);
    (*(v7 + 16))(v6, v9, v8);
    v10 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      break;
    }

    v13 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v13 catId];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v65);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = [v13 dialog];
    type metadata accessor for DialogElement();
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = specialized Array.count.getter(v21);
    if (!v22)
    {

LABEL_21:
      v40 = Array.description.getter();
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v65);

      *(v14 + 14) = v43;
      _os_log_impl(&dword_0, v11, v12, "#IncomingCallActionConfirmationStrategy Follow-up offer: {\n    catId=%s,\n    dialog={\n        %s\n    }\n}", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
      break;
    }

    v23 = v22;
    v66 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v23 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v25, v26, v27, v28);
    }

    v59 = v12;
    v60 = v14;
    v61 = v11;
    v29 = 0;
    v30 = v66;
    v63 = v21 & 0xFFFFFFFFFFFFFF8;
    v64 = v21 & 0xC000000000000001;
    v62 = v0;
    v31 = *(v0 + 168);
    v32 = v21;
    v33 = v23;
    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v64)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v63 + 16))
        {
          goto LABEL_26;
        }

        v35 = *(v21 + 8 * v29 + 32);
      }

      v36 = v35;
      v68 = v35;
      closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(&v68, v67);

      v37 = v67[0];
      v38 = v67[1];
      v66 = v30;
      v0 = v30[2];
      if (v0 >= v30[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v30 = v66;
      }

      v30[2] = v0 + 1;
      v39 = &v30[2 * v0];
      v39[4] = v37;
      v39[5] = v38;
      ++v29;
      v21 = v32;
      if (v34 == v33)
      {

        v11 = v61;
        v0 = v62;
        v14 = v60;
        v12 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_24();
  }

  v44 = *(v0 + 160);
  v45 = *(v0 + 72);
  v46 = v45[8];
  __swift_project_boxed_opaque_existential_1(v45 + 4, v45[7]);
  v47 = *(v46 + 136);
  v48 = OUTLINED_FUNCTION_55();
  v49(v48);
  v50 = *(v0 + 40);
  v51 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v52 = swift_allocObject();
  *(v0 + 176) = v52;
  *(v52 + 16) = xmmword_426260;
  *(v52 + 32) = v44;
  v53 = *(v51 + 8);
  v54 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v55 = v44;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 184) = v56;
  *v56 = v57;
  v56[1] = IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:);
  v26 = *(v0 + 136);
  v24 = *(v0 + 56);
  v25 = v52;
  v27 = v50;
  v28 = v53;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_55();
  v11(v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v12();
}

{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_11();
  v6 = v0[21];

  return v5();
}

uint64_t closure #1 in IncomingCallActionConfirmationStrategy.makePromptForConfirmationOutput(itemToConfirm:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  OutputGenerationManifest.canUseServerTTS.setter();
  IncomingCallActionConfirmationStrategy.shouldListenAfterSpeaking()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  IncomingCallActionConfirmationStrategy.makeNLContextUpdate()();
  return OutputGenerationManifest.nlContextUpdate.setter();
}

BOOL IncomingCallActionConfirmationStrategy.shouldListenAfterSpeaking()()
{
  v1 = *(v0 + 120);
  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.announceTelephony);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 == 0;
    _os_log_impl(&dword_0, v3, v4, "#IncomingCallActionConfirmationStrategy listenAfterSpeaking = %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_12_3();
  }

  return v1 == 0;
}

uint64_t IncomingCallActionConfirmationStrategy.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 112);

  v3 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  return v0;
}

uint64_t IncomingCallActionConfirmationStrategy.__deallocating_deinit()
{
  IncomingCallActionConfirmationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for IncomingCallActionConfirmationStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v13, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for IncomingCallActionConfirmationStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v13, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance IncomingCallActionConfirmationStrategy<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t type metadata completion function for IncomingCallActionConfirmation()
{
  type metadata accessor for (newInput: Input)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (newInput: Input)()
{
  if (!lazy cache variable for type metadata for (newInput: Input))
  {
    v0 = type metadata accessor for Input();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (newInput: Input));
    }
  }
}

uint64_t IncomingCallActionContinueInAppStrategy.requireUnlock(intentResolutionRecord:)()
{
  v1 = *v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#IncomingCallActionContinueInAppStrategy: requireUnlock", v5, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v6 = v1[10];
  v7 = v1[11];
  type metadata accessor for IntentResolutionRecord();
  v8 = IntentResolutionRecord.intentResponse.getter();
  IncomingCallIntentResponse.isIncomingCall.getter(v7, v1[12]);
  v10 = v9;

  return v10 & 1;
}

uint64_t IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v1[7] = *v0;
  v1[8] = *(v4 + 80);
  v1[9] = *(v4 + 88);
  v5 = type metadata accessor for IntentResolutionRecord();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
}

{
  v54 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  if (v10)
  {
    v50 = v9;
    v15 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v52[0] = v51;
    *v15 = 136315394;
    v0[3] = IntentResolutionRecord.app.getter();
    v16 = *(v14 + 8);
    v16(v11, v13);
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v52);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = IntentResolutionRecord.intentResponse.getter();
    v16(v12, v13);
    *(v15 + 14) = v21;
    *v49 = v21;
    _os_log_impl(&dword_0, v8, v50, "#IncomingCallActionContinueInAppStrategy: makeContinueInAppAutoPunchOutResponse to app %s with intentResponse %@", v15, 0x16u);
    outlined destroy of NSObject?(v49);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v22 = *(v14 + 8);
    v22(v0[13], v0[10]);

    v22(v12, v13);
  }

  v24 = v0[9];
  v23 = v0[10];
  v25 = v0[7];
  v26 = v0[5];
  v27 = IntentResolutionRecord.intentResponse.getter();
  IncomingCallIntentResponse.isIncomingCall.getter(v24, *(v25 + 96));
  LOBYTE(v24) = v28;

  if (v24)
  {
    v29 = v0[10];
    v30 = v0[4];
    v31 = v0[5];
    type metadata accessor for SAIntentGroupLaunchAppWithIntent();
    IntentResolutionRecord.app.getter();
    v32 = IntentResolutionRecord.intent.getter();
    v33 = IntentResolutionRecord.intentResponse.getter();
    v34 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_426260;
    *(v35 + 32) = v34;
    v36 = type metadata accessor for AceOutput();
    memset(v52, 0, sizeof(v52));
    v53 = 0;
    v30[3] = v36;
    v30[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v30);
    AceOutput.init(commands:flowActivity:)();
    v38 = v0[12];
    v37 = v0[13];

    OUTLINED_FUNCTION_11();

    return v39();
  }

  else
  {
    v41 = v0[8];
    v42 = v0[9];
    v0[2] = v0[6];
    v43 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
    v44 = swift_task_alloc();
    v0[14] = v44;
    v45 = type metadata accessor for IncomingCallActionContinueInAppStrategy();
    WitnessTable = swift_getWitnessTable();
    *v44 = v0;
    v44[1] = IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:);
    v47 = v0[4];
    v48 = v0[5];

    return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(v47, v48, v45, WitnessTable);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(IncomingCallActionContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:), 0, 0);
  }

  else
  {
    v5 = *(v2 + 96);
    v4 = *(v2 + 104);

    OUTLINED_FUNCTION_11();

    return v6();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[12];
  v1 = v0[13];

  OUTLINED_FUNCTION_11();
  v4 = v0[15];

  return v3();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance IncomingCallActionContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance IncomingCallActionContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionContinueInAppStrategy();
  *v10 = v4;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance IncomingCallActionContinueInAppStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

unint64_t type metadata accessor for SAIntentGroupLaunchAppWithIntent()
{
  result = lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent;
  if (!lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent);
  }

  return result;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.announceCallsContext.getter()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_4_3();
  return v4(v3);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.incomingCallCatsSimple.getter()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_4_38();
  return v3(v2);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.deviceState.getter()
{
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v2 = OUTLINED_FUNCTION_4_38();
  return v3(v2);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.__allocating_init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  OUTLINED_FUNCTION_24_8();
  v0 = swift_allocObject();
  IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)();
  return v0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)()
{
  OUTLINED_FUNCTION_24_8();
  outlined init with take of SPHConversation(v5, v1 + 16);
  outlined init with take of SPHConversation(v4, v1 + 96);
  outlined init with take of SPHConversation(v3, v1 + 56);
  outlined init with take of SPHConversation(v2, v1 + 136);
  outlined init with take of SPHConversation(v0, v1 + 176);
  return v1;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:));
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = static SiriKitIntentExecutionBehavior.standard()();
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:));
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = __swift_project_value_buffer(v5, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  v7 = *(v3 + 8);

  v7(v6, partial apply for closure #1 in IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:), v4, v2, v3);

  v8 = v4[15];
  v9 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v8);
  v10 = (*(v9 + 56))(v8, v9);
  LOBYTE(v8) = (*(*v10 + 208))(v10);

  if (v8)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = v11[5];
    v15 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v14);
    v16 = *(v12 + 80);
    v17 = *(v12 + 88);
    type metadata accessor for IntentResolutionRecord();
    v18 = IntentResolutionRecord.app.getter();
    LOBYTE(v13) = (*(v15 + 48))(v4 + 12, v18, v14, v15);

    if (v13)
    {
      v19 = v0[3];
      IntentResolutionRecord.app.getter();
      v20 = App.appIdentifier.getter();
      v22 = v21;

      if (v22)
      {
        v23 = v0[4];
        v24 = v23[20];
        v25 = v23[21];
        __swift_project_boxed_opaque_existential_1(v23 + 17, v24);
        (*(v25 + 8))(v20, v22, v24, v25);

        v26 = v23[26];
        __swift_project_boxed_opaque_existential_1(v23 + 22, v23[25]);
        v27 = *(v26 + 8);
        v28 = OUTLINED_FUNCTION_4_3();
        v29(v28);
      }
    }
  }

  v30 = v0[2];
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v31();
}

BOOL closure #1 in IncomingCallActionHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(int a1, void *a2)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "#SiriKitEventSender call state went active, logging .uufrReady", v7, 2u);
    }

    v8 = a2[15];
    v9 = a2[16];
    __swift_project_boxed_opaque_existential_1(a2 + 12, v8);
    (*(v9 + 40))(v11, v8, v9);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    type metadata accessor for SiriKitEvent();
    static SiriKitEvent.uufrReady()();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return a1 == 1;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_0_1(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:));
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
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
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallActionHandleIntentFlowStrategy makeIntentHandledResponse", v4, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v8 = v5[5];
  v9 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
  v10 = v6[10];
  v11 = v6[11];
  type metadata accessor for IntentResolutionRecord();
  v12 = IntentResolutionRecord.intentResponse.getter();
  LOBYTE(v7) = (*(v9 + 40))(v12, v6[12], v8, v9);

  if (v7)
  {
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:);
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[7];

    return IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)();
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v19))
    {
      v20 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v20);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[7];

    v29 = v26[15];
    v30 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v29);
    (*(v30 + 24))(v29, v30);
    v31 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)();
    dispatch thunk of AceServiceInvoker.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    OUTLINED_FUNCTION_11();

    return v32();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v4;
  v5 = *(v4 - 8);
  v1[16] = v5;
  v6 = *(v5 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000000045C000, &v20);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  v11 = *(v0 + 104);
  (*(**(v0 + 112) + 152))();
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = IncomingCallActionHandleIntentFlowStrategy.getIncomingCallConcept(rchRecord:)();
  *(v0 + 144) = v14;
  v15 = *(v13 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);

  return v19(v14, v12, v13);
}

{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)();
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
  v6 = *(v5 + 136);
  v7 = OUTLINED_FUNCTION_4_3();
  v8(v7);
  v9 = v0[10];
  v10 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[22] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v1;
  v12 = *(v10 + 8);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = v1;
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  v16 = v0[17];
  v17 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v11, v16, v9, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  return _swift_task_switch(IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:), 0, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[17];
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_11();
  v4 = v0[20];

  return v3();
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = v4[19];
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v5[20] = v1;

  if (v1)
  {
    v9 = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  }

  else
  {
    v10 = v5[18];
    v5[21] = a1;

    v9 = IncomingCallActionHandleIntentFlowStrategy.makeIntentHandledRFOutput(rchRecord:);
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.getIncomingCallConcept(rchRecord:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[10];
  v8 = v2[11];
  type metadata accessor for IntentResolutionRecord();
  v9 = IntentResolutionRecord.intentResponse.getter();
  v10 = (*(v2[12] + 24))(v8, v2[12]);

  if (FollowUpOfferType.rawValue.getter(v10) == 0xD000000000000011 && 0x8000000000452840 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = v1[15];
  v15 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v14);
  (*(v15 + 8))(v28, v14, v15);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v16 = DeviceState.isAuthenticatedForPhone.getter();
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v16)
  {
LABEL_9:
    v17 = IntentResolutionRecord.intentResponse.getter();
    (*(*v1 + 160))(v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    dispatch thunk of DeviceState.siriLocale.getter();
    type metadata accessor for AppInfoBuilder();
    v18 = swift_allocObject();
    v19 = _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(v17, v6, 0, v18, v8);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v19;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v23);
    OUTLINED_FUNCTION_33(&dword_0, v24, v25, "#IncomingCallActionHandleIntentFlowStrategy not setting incoming call concept for followUpOfferType == .callBack because device is not authenticated.");
    OUTLINED_FUNCTION_12_3();
  }

  return 0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)();
  return OutputGenerationManifest.additionalCommands.setter();
}

void *IncomingCallActionHandleIntentFlowStrategy.makePostIntentHandledCommands(rchRecord:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  type metadata accessor for IntentResolutionRecord();
  IntentResolutionRecord.app.getter();
  v5 = App.isFirstParty()();

  if (v5)
  {
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = IntentResolutionRecord.intentResponse.getter();
    v9 = *(v2 + 96);
    v10 = (*(v7 + 24))(v8, v9, v6, v7);

    if (v10)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.siriPhone);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = [v12 dictionary];
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&dword_0, v13, v14, "#IncomingCallActionHandleIntentFlowStrategy Sending PlayNotificationSound for call connected: %@", v15, 0xCu);
        outlined destroy of NSObject?(v16);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v18 = v1[5];
    v19 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
    v20 = IntentResolutionRecord.intentResponse.getter();
    v21 = (*(v19 + 32))(v20, v9, v18, v19);

    if (v21)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v25);
        OUTLINED_FUNCTION_33(&dword_0, v26, v27, "#IncomingCallActionHandleIntentFlowStrategy Sending CloseAssistant command after answering the call.");
        OUTLINED_FUNCTION_12_3();
      }

      [objc_allocWithZone(SAUICloseAssistant) init];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t *IncomingCallActionHandleIntentFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  return v0;
}

uint64_t IncomingCallActionHandleIntentFlowStrategy.__deallocating_deinit()
{
  IncomingCallActionHandleIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance IncomingCallActionHandleIntentFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return v10(a1, a2);
}

uint64_t partial apply for closure #1 in IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in IncomingCallActionHandleIntentFlowStrategy.getCompletionOutputManifest(rchRecord:)();
}

void IncomingCallFlow.__allocating_init(state:app:strategy:sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  IncomingCallFlow.init(state:app:strategy:sharedGlobals:)();
}

void IncomingCallFlow.init(state:app:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 256);
  v11 = *(*v0 + 264);
  v12 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_7(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = &v22[-v18 - 8];
  outlined init with copy of SignalProviding(v4, v0 + *(v9 + 288));
  OUTLINED_FUNCTION_2_0();
  *(v0 + *(v20 + 296)) = v6;
  (*(v14 + 16))(v19, v8, v12);
  outlined init with copy of SignalProviding(v2, v22);
  PhoneFlow.init(state:sharedGlobals:)(v19, v22);
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  (*(v14 + 8))(v8, v12);
  OUTLINED_FUNCTION_65();
}

void IncomingCallFlow.__allocating_init(rchFlow:app:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 256);
  v11 = *(v1 + 264);
  v12 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v18[-v16];
  v19[0] = v9;
  type metadata accessor for RCHFlowResult();
  type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  *v17 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v5, v19);
  outlined init with copy of SignalProviding(v3, v18);
  (*(v1 + 304))(v17, v7, v19, v18);

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.__allocating_init(app:strategy:sharedGlobals:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 256);
  v8 = *(v3 + 264);
  v9 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v17[-v13];
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v18);
  outlined init with copy of SignalProviding(a3, v17);
  v15 = (*(v3 + 304))(v14, a1, v18, v17);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

void IncomingCallFlow.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_5_45();
  v5 = *(v4 + 256);
  v7 = *(v6 + 264);
  v8 = type metadata accessor for PhoneCallFlowState();
  v9 = OUTLINED_FUNCTION_7(v8);
  v45 = v10;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_42();
    v44 = v3;
    v46 = v8;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_36();
    v47[0] = v23;
    *v22 = 136315138;
    (*(*v0 + 128))();
    v24 = PhoneCallFlowState.description.getter(v46);
    v26 = v25;

    (*(v45 + 8))(v17, v46);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v47);
    OUTLINED_FUNCTION_40_0();

    *(v22 + 4) = v24;
    _os_log_impl(&dword_0, v19, v20, "#IncomingCallFlow: State = %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0();
    v8 = v46;
    v3 = v44;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  (*(*v1 + 128))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = *v15;
    dispatch thunk of AnyValueFlow.on(input:)();
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v31 = type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1(v31);
    (*(v32 + 16))(v17, v3);
    v33 = *v1;
    *&v17[v29] = *(v1 + *(*v1 + 296));
    v34 = *(v33 + 152);

    v34(v47, v35);
    v36 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_40_0();
    v39(v38, v36);
    swift_storeEnumTagMultiPayload();
    (*(*v1 + 136))(v17);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "#IncomingCallFlow: Flow is not in a state that will expect input.", v43, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    (*(v45 + 8))(v15, v8);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.execute()(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *v1;
  v2[11] = *v1;
  v4 = type metadata accessor for Input();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = *(v3 + 256);
  v2[18] = *(v3 + 264);
  v7 = type metadata accessor for PhoneCallFlowState();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(IncomingCallFlow.execute(), 0, 0);
}

uint64_t IncomingCallFlow.execute()()
{
  v113 = v0;
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[10];
  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 128);
  v5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = v0[24];
      v7 = v0[16];
      v9 = v0[12];
      v8 = v0[13];
      (*(v0[20] + 16))(v6, v0[25], v0[19]);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v109 = *(v6 + *(v10 + 48));
      (*(v8 + 32))(v7, v6, v9);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v12 = v0[15];
      v11 = v0[16];
      v14 = v0[12];
      v13 = v0[13];
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.siriPhone);
      v106 = *(v13 + 16);
      v106(v12, v11, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v103 = v0[17];
        v18 = v0[15];
        v20 = v0[12];
        v19 = v0[13];
        v21 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v21 = 136315394;
        lazy protocol witness table accessor for type Input and conformance Input();
        v22 = v10;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = OUTLINED_FUNCTION_7_37();
        v27(v26, v20);
        v28 = v23;
        v10 = v22;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v25, v112);
        OUTLINED_FUNCTION_40_0();

        *(v21 + 4) = v18;
        *(v21 + 12) = 2080;
        swift_getMetatypeMetadata();
        v29 = _typeName(_:qualified:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v112);

        *(v21 + 14) = v31;
        _os_log_impl(&dword_0, v16, v17, "#IncomingCallFlow: Converting input: %s to intent of type %s.", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v63 = v0[15];
        v64 = v0[12];
        v65 = v0[13];

        v66 = OUTLINED_FUNCTION_7_37();
        v67(v66, v64);
      }

      v68 = v0[16];
      v69 = v0[14];
      v71 = v0[11];
      v70 = v0[12];
      v72 = v0[10];
      v104 = *(v10 + 64);
      v105 = v0[24];
      v102 = *(v0 + 17);
      type metadata accessor for IntentConversionFlow();
      v106(v69, v68, v70);
      v73 = *(*v72 + 152);

      v73(v112, v74);
      v0[8] = IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(v69, v109, v112);
      v75 = implicit closure #3 in IncomingCallFlow.execute()();
      v77 = v76;
      v78 = swift_allocObject();
      *(v78 + 16) = v102;
      *(v78 + 32) = *(v71 + 272);
      *(v78 + 40) = *(v71 + 280);
      *(v78 + 48) = v75;
      *(v78 + 56) = v77;
      swift_getWitnessTable();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v107(v68, v70);
      __swift_destroy_boxed_opaque_existential_1((v105 + v104));
      goto LABEL_24;
    case 2u:
      v32 = v0[23];
      (*(v0[20] + 16))(v32, v0[25], v0[19]);
      v33 = *v32;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriPhone);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v36))
      {
        v37 = OUTLINED_FUNCTION_65_0();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "#IncomingCallFlow: Executing first RCHFlow. IncomingCallFlow will stay on the stack.", v37, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v39 = v0[9];
      v38 = v0[10];

      implicit closure #5 in IncomingCallFlow.execute()();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_13;
    case 3u:
      v40 = v0[22];
      v42 = v0[17];
      v41 = v0[18];
      (*(v0[20] + 16))(v40, v0[25], v0[19]);
      v43 = type metadata accessor for RCHFlowResult();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 88))(v40, v43);
      v46 = v0[22];
      if (v45 == enum case for RCHFlowResult.complete<A, B>(_:))
      {
        v48 = v0[17];
        v47 = v0[18];
        v49 = v0[10];
        v50 = v0[11];
        v110 = v0[9];
        (*(v44 + 96))(v46, v43);
        v51 = *v46;
        v52 = v46[1];
        v53 = v46[2];
        v54 = *(v50 + 280);
        type metadata accessor for IncomingCallFollowUpFlow();
        OUTLINED_FUNCTION_2_0();
        outlined init with copy of SignalProviding(v49 + *(v55 + 288), (v0 + 2));
        OUTLINED_FUNCTION_2_0();
        v57 = *(v56 + 152);

        v58 = v52;
        v59 = v53;
        v57(v112);
        v0[7] = IncomingCallFollowUpFlow.__allocating_init(app:intent:intentResponse:strategy:sharedGlobals:)();
        swift_getWitnessTable();
        static ExecuteResponse.complete<A>(next:)();

LABEL_13:
      }

      else
      {
        (*(v44 + 8))(v0[22], v43);
LABEL_18:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v79 = v0[10];
        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Logger.siriPhone);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = v0[20];
          v84 = v0[21];
          v108 = v0[19];
          v85 = v0[10];
          v86 = OUTLINED_FUNCTION_42();
          v111 = OUTLINED_FUNCTION_36();
          v112[0] = v111;
          *v86 = 136315138;
          v5();
          v87 = PhoneCallFlowState.description.getter(v108);
          v89 = v88;

          (*(v83 + 8))(v84, v108);
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v112);

          *(v86 + 4) = v90;
          _os_log_impl(&dword_0, v81, v82, "#IncomingCallFlow: encountered unexpected state %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v111);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        else
        {
          v91 = v0[10];
        }

LABEL_23:
        v92 = v0[9];
        static ExecuteResponse.complete()();
      }

LABEL_24:
      v93 = v0[24];
      v95 = v0[22];
      v94 = v0[23];
      v96 = v0[21];
      v98 = v0[15];
      v97 = v0[16];
      v99 = v0[14];
      (*(v0[20] + 8))(v0[25], v0[19]);

      v100 = v0[1];

      return v100();
    case 6u:
      v60 = v0[9];
      v61 = v0[10];
      OUTLINED_FUNCTION_2_0();
      (*(v62 + 232))();
      goto LABEL_24;
    case 7u:
      goto LABEL_23;
    default:
      goto LABEL_18;
  }
}

void IncomingCallFlow.onRCHFlowComplete(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  OUTLINED_FUNCTION_5_45();
  v3 = v2;
  v5 = *(v4 + 256);
  v6 = *(v4 + 264);
  v7 = type metadata accessor for PhoneCallFlowState();
  OUTLINED_FUNCTION_23_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v53[-v11];
  v13 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_7(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  v20 = &v53[-v19];
  v21 = *(v15 + 16);
  v60 = v1;
  v22 = v1;
  v23 = v21;
  v21(v20, v22, v13);
  if ((*(v15 + 88))(v20, v13) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v59 = v7;
    (*(v15 + 96))(v20, v13);
    v24 = *v20;
    v25 = v20[1];
    v26 = v20[2];

    OUTLINED_FUNCTION_41_0();
    if ((*(v27 + 240))(v26))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.siriPhone);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_65_0();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "#IncomingCallFlow: First RCHFlow complete with intent response indicating we should dismiss Siri -> will dismiss Siri", v31, 2u);
        OUTLINED_FUNCTION_26_0();
      }

LABEL_8:
      goto LABEL_22;
    }

    v32 = *(v3 + 280);
    v57 = *(v32 + 24);
    v58 = v32;
    v33 = v57(v6);
    if (FollowUpOfferType.rawValue.getter(v33) == 1162760014 && v34 == 0xE400000000000000)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.siriPhone);
        v26 = v26;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = OUTLINED_FUNCTION_42();
          v56 = v26;
          v47 = v46;
          v55 = OUTLINED_FUNCTION_36();
          v61 = v55;
          *v47 = 136315138;
          v54 = v45;
          v48 = (v57)(v6, v58);
          v49 = FollowUpOfferType.rawValue.getter(v48);
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v61);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_0, v44, v54, "#IncomingCallFlow: First RCHFlow complete with followUpAction=%s.", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v55);
          OUTLINED_FUNCTION_26_0();
          v26 = v56;
          OUTLINED_FUNCTION_26_0();
        }

        v23(v12, v60, v13);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_41_0();
        (*(v52 + 136))(v12);
        goto LABEL_8;
      }
    }
  }

  else
  {
    (*(v15 + 8))(v20, v13);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v39))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_13_31(&dword_0, v40, v41, "#IncomingCallFlow: First RCHFlow complete with no followUpAction.");
    OUTLINED_FUNCTION_26_0();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_0();
  (*(v42 + 136))(v12);
LABEL_22:
  OUTLINED_FUNCTION_65();
}

void IncomingCallFlow.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  OUTLINED_FUNCTION_5_45();
  v3 = v2;
  v5 = *(v4 + 256);
  v6 = *(v4 + 264);
  v7 = type metadata accessor for PhoneCallFlowState();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - v17;
  v19 = *(v3 + 128);
  (v19)(v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v10 + 8))(v18, v7);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_42();
      v31 = OUTLINED_FUNCTION_36();
      v42 = v31;
      *v30 = 136315138;
      v19();
      swift_getWitnessTable();
      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "Unexpected state, stopping: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_14;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
  v21 = *&v18[*(v20 + 48)];

  __swift_destroy_boxed_opaque_existential_1(&v18[*(v20 + 64)]);
  v22 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v22);
  (*(v23 + 8))(v18);
  if (!v1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v37))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_13_31(&dword_0, v38, v39, "Could not convert Intent, stopping");
      OUTLINED_FUNCTION_26_0();
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v40 + 136))(v15);
    goto LABEL_15;
  }

  v24 = v1;
  *v15 = IncomingCallFlow.makeRCHFlow(intent:)();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_0();
  v26 = *(v25 + 136);

  v26(v15);

LABEL_15:
  OUTLINED_FUNCTION_65();
}

uint64_t IncomingCallFlow.makeRCHFlow(intent:)()
{
  v1 = *(*v0 + 288);
  v2 = *(v0 + *(*v0 + 296));
  v3 = *v0 + 152;
  (*v3)(v10);
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  static PhoneCallFlowFactory.makeIncomingCallRCHFlow<A, B>(strategy:intent:app:sharedGlobals:)();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

void IncomingCallFlow.__allocating_init(sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  IncomingCallFlow.init(sharedGlobals:)();
}

void IncomingCallFlow.__allocating_init(state:sharedGlobals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  IncomingCallFlow.init(state:sharedGlobals:)();
}

uint64_t IncomingCallFlow.__ivar_destroyer()
{
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + 288)));
  OUTLINED_FUNCTION_2_0();
  v3 = *(v0 + *(v2 + 296));
}

char *IncomingCallFlow.deinit()
{
  v0 = PhoneFlow.deinit();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 288)]);
  OUTLINED_FUNCTION_41_0();
  v2 = *&v0[*(v1 + 296)];

  return v0;
}

uint64_t IncomingCallFlow.__deallocating_deinit()
{
  v0 = *IncomingCallFlow.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t IncomingCallFlowOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for IncomingCallActionConfirmation();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation();
  type metadata accessor for PromptForConfirmationFlowAsync();
  v32 = a2;
  type metadata accessor for IncomingCallActionConfirmationStrategy();
  v13 = *(a6 + 8);
  v14 = a2;
  v13(&v25, a4, a6);
  outlined init with copy of SignalProviding(a3, &v29);
  v15 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a5, a7);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v28, a5, a7);
  IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v14, &v25, &v29, 0, 0, v15, v28);
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  (*(v17 + 16))(&v25, v16, v17);
  v18 = v26;
  v19 = v27;
  v20 = __swift_project_boxed_opaque_existential_1(&v25, v26);
  v30 = v18;
  v31 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
  swift_getWitnessTable();
  v22 = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  *&v25 = v22;
  swift_getWitnessTable();
  v23 = Flow.eraseToAnyValueFlow()();

  return v23;
}

uint64_t IncomingCallFollowUpFlow.__allocating_init(app:intent:intentResponse:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  outlined init with copy of SignalProviding(v6, v10);
  outlined init with copy of SignalProviding(v0, v9);
  v7 = (*(v1 + 152))(v5, v4, v3, v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v0);
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v7;
}

uint64_t key path getter for IncomingCallFollowUpFlow.state : <A, B>IncomingCallFollowUpFlow<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void key path setter for IncomingCallFollowUpFlow.state : <A, B>IncomingCallFollowUpFlow<A, B>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[12];
  v7 = v5[13];
  v8 = v5[14];
  v5[12] = v2;
  v5[13] = v3;
  v5[14] = v4;
  outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(v2, v3, v4);
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v6, v7, v8);
}

unint64_t IncomingCallFollowUpFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, *(v0 + 104), *(v0 + 112));
  return v1;
}

unint64_t outlined copy of IncomingCallFollowUpFlow<A, B>.State<A, B>(unint64_t result, void *a2, void *a3)
{
  if (result >> 62 == 1)
  {
  }

  else if (!(result >> 62))
  {

    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t IncomingCallFollowUpFlow.__allocating_init(state:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_11_33();
  v5 = swift_allocObject();
  IncomingCallFollowUpFlow.init(state:strategy:sharedGlobals:)(v4, v3, v2, v1, v0);
  return v5;
}

void *IncomingCallFollowUpFlow.init(state:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = a3;
  outlined init with take of SPHConversation(a4, (v5 + 2));
  outlined init with take of SPHConversation(a5, (v5 + 7));
  return v5;
}

uint64_t IncomingCallFollowUpFlow.execute(completion:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  type metadata accessor for IncomingCallFollowUpFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t IncomingCallFollowUpFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(IncomingCallFollowUpFlow.execute(), 0, 0);
}

uint64_t IncomingCallFollowUpFlow.execute()()
{
  v1 = (*(**(v0 + 64) + 128))();
  v3 = v2;
  v5 = v4;
  if (!(v1 >> 62))
  {
    v13 = *(v0 + 72);
    v15 = *(v13 + 88);
    v14 = *(v13 + 96);
    v16 = *(v14 + 24);

    v46 = v3;
    v47 = v5;
    v17 = v16(v15, v14);
    if (FollowUpOfferType.rawValue.getter(v17) == 0xD000000000000011 && 0x8000000000452840 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v22 = *(v0 + 64);
    v24 = v22[10];
    v23 = v22[11];
    __swift_project_boxed_opaque_existential_1(v22 + 7, v24);
    (*(v23 + 8))(v24, v23);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v26 = DeviceState.isAuthenticatedForPhone.getter();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v26 & 1) == 0)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v41))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_13_7(&dword_0, v42, v41, "#IncomingCallFollowUpFlow: Execute. Device is not authenticated for phone. Not offering follow callBack follow up.");
        OUTLINED_FUNCTION_26_0();
      }

      v43 = *(v0 + 56);

      static ExecuteResponse.complete()();
      goto LABEL_27;
    }

LABEL_17:
    v27 = *(v0 + 64);
    v28 = v27[5];
    v29 = v27[6];
    __swift_project_boxed_opaque_existential_1(v27 + 2, v28);
    (*(v29 + 56))(v1, v47, v27 + 7, v15, v14, v28, v29);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v32))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v33, v32, "#IncomingCallFollowUpFlow: Offer prompt. IncomingCallFlow is still ongoing.");
      OUTLINED_FUNCTION_26_0();
    }

    v35 = *(v0 + 56);
    v34 = *(v0 + 64);

    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = v1;
    v36[4] = v46;
    v36[5] = v47;

    v37 = v46;
    v38 = v47;

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_27:

    goto LABEL_28;
  }

  if (v1 >> 62 != 1)
  {
    v21 = *(v0 + 56);
    static ExecuteResponse.complete()();
    goto LABEL_29;
  }

  v6 = one-time initialization token for siriPhone;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v9))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v10, v11, "#IncomingCallFollowUpFlow: Executing next RCHFlow.");
    OUTLINED_FUNCTION_26_0();
  }

  v12 = *(v0 + 56);

  static ExecuteResponse.complete(next:)();
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, v3, v5);
LABEL_28:
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v1, v3, v5);
LABEL_29:
  v44 = *(v0 + 8);

  return v44();
}

void IncomingCallFollowUpFlow.onOfferFlowComplete(app:intent:intentResponse:exitValue:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v11 = (*(*(*v5 + 96) + 24))(*(*v5 + 88));
  if (v11 == 1 || v11 == 3)
  {

    IncomingCallFollowUpFlow.processCallPromptResponse(app:intent:intentResponse:promptResult:)(a1, v10, a3, a4);
  }

  else if (v11 == 2)
  {

    IncomingCallFollowUpFlow.processAnswerCallPromptResponse(app:intent:intentResponse:promptResult:)(a1, a2, a3);
  }

  else
  {
    swift_beginAccess();
    v13 = OUTLINED_FUNCTION_4_39();
    v5[13] = 0;
    v5[14] = 0;
    v5[12] = v14;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v13, v15, v16);
  }
}

uint64_t IncomingCallFollowUpFlow.processCallPromptResponse(app:intent:intentResponse:promptResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v91 = a1;
  v95 = *v5;
  v96 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  v7 = OUTLINED_FUNCTION_7(v94);
  v92 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  OUTLINED_FUNCTION_12_5();
  v93 = v15 - v16;
  __chkstk_darwin(v17);
  v90 = v88 - v18;
  v19 = type metadata accessor for Parse();
  v20 = OUTLINED_FUNCTION_7(v19);
  v99 = v21;
  v100 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v98 = v25 - v24;
  v97 = type metadata accessor for Input();
  v26 = OUTLINED_FUNCTION_7(v97);
  v102 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v32 = v30 - v31;
  v34 = __chkstk_darwin(v33);
  v36 = v88 - v35;
  __chkstk_darwin(v34);
  v101 = v88 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  v39 = OUTLINED_FUNCTION_7(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_12_5();
  v46 = v44 - v45;
  __chkstk_darwin(v47);
  v49 = v88 - v48;
  v50 = *(v41 + 16);
  v51 = a4;
  v53 = v52;
  v50(v88 - v48, v51, v52);
  v54 = *(v41 + 88);
  v103 = v49;
  if (v54(v49, v53) != enum case for PromptResult.answered<A>(_:))
  {
    goto LABEL_4;
  }

  v50(v46, v103, v53);
  (*(v41 + 96))(v46, v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  if (__swift_getEnumTagSinglePayload(v46, 1, v55) != 1)
  {
    v89 = v53;
    v60 = *(v102 + 32);
    v61 = v97;
    v88[1] = v102 + 32;
    v62 = v60;
    v60(v101, v46, v97);
    v63 = v98;
    Input.parse.getter();
    v64 = (*(v99 + 88))(v63, v100);
    if (v64 == enum case for Parse.NLv3IntentOnly(_:))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
      Transformer.init(transform:)();
      v65 = v94;
      v66 = Transformer.transform.getter();
      (*(v92 + 8))(v12, v65);
      v67 = *(v95 + 96);
      v104 = v96;
      v105 = v67;
      v68 = v93;
      v66(&v104);

      OUTLINED_FUNCTION_20_24(v68, 0);
      v62(v32, v68, v61);
      IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(v91, v32);
      v79 = *(v102 + 8);
      v79(v32, v61);
      v79(v101, v61);
      OUTLINED_FUNCTION_2_59();
      v80 = OUTLINED_FUNCTION_15_29();
    }

    else
    {
      if (v64 == enum case for Parse.NLv4IntentOnly(_:) || v64 == enum case for Parse.uso(_:))
      {
        (*(v99 + 8))(v98, v100);
        if (one-time initialization token for transformer != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_9_0(v94, static Transformer<>.transformer);
        v70 = Transformer.transform.getter();
        v71 = *(v95 + 96);
        v104 = v96;
        v105 = v71;
        v72 = v90;
        v70(&v104);

        OUTLINED_FUNCTION_20_24(v72, 0);
        v62(v36, v72, v61);
        IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(v91, v36);
        v83 = *(v102 + 8);
        v83(v36, v61);
        v83(v101, v61);
        OUTLINED_FUNCTION_2_59();
        v84 = OUTLINED_FUNCTION_15_29();
        v5[13] = 0;
        outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v84, v85, v86);
        goto LABEL_21;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v73, static Logger.siriPhone);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v75))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_15_3(&dword_0, v76, v77, "#IncomingCallFollowUpFlow: Rely on FlowPlugin to provide next RCHFlow. IncomingCallFlow is now complete.");
        OUTLINED_FUNCTION_26_0();
      }

      (*(v102 + 8))(v101, v61);
      OUTLINED_FUNCTION_2_59();
      v80 = OUTLINED_FUNCTION_4_39();
      v5[14] = 0;
      v5[12] = v78;
    }

    v5[13] = 0;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v80, v81, v82);
    (*(v99 + 8))(v98, v100);
LABEL_21:
    v53 = v89;
    return (*(v41 + 8))(v103, v53);
  }

  outlined destroy of PhoneCallNLv3Intent(v46, type metadata accessor for IncomingCallActionConfirmation);
LABEL_4:
  OUTLINED_FUNCTION_2_59();
  v56 = OUTLINED_FUNCTION_4_39();
  v5[13] = 0;
  v5[14] = 0;
  v5[12] = v57;
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v56, v58, v59);
  return (*(v41 + 8))(v103, v53);
}

uint64_t IncomingCallFollowUpFlow.getFollowUpActionWithStartCallFlow(app:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = outlined init with copy of SignalProviding(v2 + 56, v31);
  default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v30, v13);
  v14 = type metadata accessor for StartCallFlow();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v18 = StartCallFlow.init(app:sharedGlobals:appFinder:)(v17, v31, v30);
  (*(*v18 + 192))(a2);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
  (*(v7 + 16))(v12, a2, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v7 + 8))(v12, v4);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v31);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "#IncomingCallFollowUpFlow: Initialized StartCallFlow for input %s, setting to followup action.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  v31[0] = v18;
  lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type StartCallFlow and conformance PhoneFlow<A, B>, type metadata accessor for StartCallFlow);
  v28 = Flow.eraseToAnyFlow()();

  return v28 | 0x4000000000000000;
}

uint64_t IncomingCallFollowUpFlow.processAnswerCallPromptResponse(app:intent:intentResponse:promptResult:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v106 = a3;
  v107 = a2;
  v110 = a1;
  v5 = type metadata accessor for Parse();
  v6 = OUTLINED_FUNCTION_7(v5);
  v104 = v7;
  v105 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for CATOption();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  OUTLINED_FUNCTION_4();
  v15 = type metadata accessor for Input();
  v16 = OUTLINED_FUNCTION_7(v15);
  v108 = v17;
  v109 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v111 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_12_5();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v32 = *(v25 + 16);
  v34 = &v101 - v33;
  v32();
  if ((*(v25 + 88))(v34, v22) != enum case for PromptResult.answered<A>(_:))
  {
    OUTLINED_FUNCTION_7_38();
    v54 = OUTLINED_FUNCTION_12_35();
    v4[13] = 0;
    v4[14] = 0;
    v4[12] = v55;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v54, v56, v57);
    return (*(v25 + 8))(v34, v22);
  }

  (v32)(v30, v34, v22);
  (*(v25 + 96))(v30, v22);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV03newD0_tMd, &_s11SiriKitFlow5InputV03newD0_tMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v35);
  v102 = v22;
  v103 = v34;
  if (EnumTagSinglePayload == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v111 = v25;
    v37 = type metadata accessor for Logger();
    v105 = __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v39))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_6_44(&dword_0, v40, v41, "#IncomingCallFollowUpFlow: Offer type is .answerCall and user rejected. Transitioning to .executeFollowUpAction with RCHFlow<HangUpCall>");
      OUTLINED_FUNCTION_26_0();
    }

    v42 = v4[10];
    v43 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v42);
    v44 = *(v43 + 80);
    v45 = v106;
    v109 = v106;
    v46 = v107;
    v108 = v107;
    v47 = v110;

    v44(&v114, v42, v43);
    v120 = 0;
    v119 = 0u;
    v118 = 0u;
    v117[0] = _swiftEmptyArrayStorage;
    v117[1] = _swiftEmptyArrayStorage;
    LOBYTE(v121[0]) = 2;
    v121[1] = 0;
    v121[2] = 0xB23030905050204;
    v122 = 518;
    v123 = _swiftEmptyArrayStorage;
    v124 = _swiftEmptyArrayStorage;
    v48 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v117, v47, v46, v45, &v114);
    outlined destroy of SKTransformer(&v114);
    outlined destroy of PhoneCallNLv4Intent(v117);
    if (v48)
    {
      static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
      v117[0] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      v50 = Flow.eraseToAnyFlow()();

      OUTLINED_FUNCTION_7_38();
      v51 = v4[12];
      v52 = v4[13];
      v53 = v4[14];
      v4[13] = 0;
      v4[14] = 0;
      v4[12] = v50 | 0x4000000000000000;
      outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v51, v52, v53);
      v22 = v102;
      v34 = v103;
      v25 = v111;
      return (*(v25 + 8))(v34, v22);
    }

    v85 = v108;
    v86 = v109;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    v89 = OUTLINED_FUNCTION_16_4(v88);
    v25 = v111;
    if (v89)
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v90, v88, "#IncomingCallFollowUpFlow: Unable to construct PhoneCallNLIntent from follow-up SiriKitFlow.Input.");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_7_38();
    v82 = OUTLINED_FUNCTION_12_35();
    v4[14] = 0;
    v4[12] = v91;
LABEL_20:
    v4[13] = 0;
    outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v82, v83, v84);
    v22 = v102;
    v34 = v103;
    return (*(v25 + 8))(v34, v22);
  }

  (*(v108 + 4))(v111, v30, v109);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v58 = type metadata accessor for Logger();
  v101 = __swift_project_value_buffer(v58, static Logger.siriPhone);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v60))
  {
    v61 = OUTLINED_FUNCTION_65_0();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "#IncomingCallFollowUpFlow: Offer type is .answerCall and user confirmed. Transitioning to .executeFollowUpAction with AnswerCallFlow", v61, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v62 = v4[10];
  v63 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v62);
  (*(v63 + 8))(v121, v62, v63);
  v64 = v4[5];
  v65 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v64);
  v66 = (*(v65 + 16))(v64, v65);
  LOBYTE(v65) = v67;
  v68 = type metadata accessor for AnswerCallCATsSimple();
  static CATOption.defaultMode.getter();
  v69 = CATWrapperSimple.__allocating_init(options:globals:)();
  v125 = &type metadata for AudioSessionManager;
  v126 = &protocol witness table for AudioSessionManager;
  v127 = &type metadata for EntitlementChecker;
  v128 = &protocol witness table for EntitlementChecker;
  *(&v118 + 1) = v68;
  v117[0] = v69;
  *&v119 = &protocol witness table for AnswerCallCATsSimple;
  *(&v119 + 1) = v66;
  LOBYTE(v120) = v65;
  v70 = v4[10];
  v71 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v70);
  v72 = *(v71 + 72);
  v106 = v106;
  v107 = v107;

  v73 = v72(v70, v71);
  Input.parse.getter();
  (*(*v73 + 192))(&v114, v12);

  (*(v104 + 8))(v12, v105);
  if (v115)
  {
    outlined init with take of SPHConversation(&v114, v116);
    v74 = v4[10];
    v75 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v74);
    (*(v75 + 80))(&v114, v74, v75);
    v77 = v106;
    v76 = v107;
    v78 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v116);
    outlined destroy of SKTransformer(&v114);
    if (v78)
    {
      outlined init with copy of AnswerCallOutputStrategy(v117, &v114);
      _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5();
      outlined init with copy of SignalProviding((v4 + 7), &v113);
      outlined init with copy of AnswerCallOutputStrategy(&v114, &v112);

      _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5();
      v80 = v79;
      v105 = v79;
      outlined destroy of AnswerCallOutputStrategy(&v114);
      *&v114 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
      v81 = Flow.eraseToAnyFlow()();

      __swift_destroy_boxed_opaque_existential_1(v116);
      (*(v108 + 1))(v111, v109);
      outlined destroy of AnswerCallOutputStrategy(v117);

      OUTLINED_FUNCTION_19_23();
      v82 = v4[12];
      v83 = v4[13];
      v84 = v4[14];
      v4[14] = 0;
      v4[12] = v81 | 0x4000000000000000;
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(v116);
    v22 = v102;
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v114, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v22 = v102;
    v77 = v106;
    v76 = v107;
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v93))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v94, v95, "#IncomingCallFollowUpFlow: Unable to construct PhoneCallNLIntent from follow-up SiriKitFlow.Input.");
    OUTLINED_FUNCTION_26_0();
  }

  (*(v108 + 1))(v111, v109);
  outlined destroy of AnswerCallOutputStrategy(v117);
  OUTLINED_FUNCTION_19_23();
  v96 = OUTLINED_FUNCTION_12_35();
  v4[13] = 0;
  v4[14] = 0;
  v4[12] = v97;
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(v96, v98, v99);
  v34 = v103;
  return (*(v25 + 8))(v34, v22);
}

uint64_t IncomingCallFollowUpFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t IncomingCallFollowUpFlow.__deallocating_deinit()
{
  IncomingCallFollowUpFlow.deinit();
  OUTLINED_FUNCTION_11_33();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance IncomingCallFollowUpFlow<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance IncomingCallFollowUpFlow<A, B>(void *a1, uint64_t a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = type metadata accessor for IncomingCallFollowUpFlow();

  return Flow<>.exitValue.getter(v6, a2);
}

void outlined consume of IncomingCallFollowUpFlow<A, B>.State<A, B>(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t type metadata instantiation function for IncomingCallFollowUpFlow.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0C5StateOyxq__G(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for IncomingCallFollowUpFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for IncomingCallFollowUpFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *destructiveInjectEnumTag for IncomingCallFollowUpFlow.State(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
    result[2] = 0;
  }

  *result = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type StartCallFlow and conformance PhoneFlow<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v35 = type metadata accessor for PhoneCallNLv3Intent(0);
  v6 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = &type metadata for PhoneCallNLv4Intent;
  v42[4] = &protocol witness table for PhoneCallNLv4Intent;
  v42[0] = swift_allocObject();
  outlined init with copy of PhoneCallNLv4Intent(a1, v42[0] + 16);
  static Signpost.begin(_:)();
  v38 = v8;
  v39 = v9;
  v10 = type metadata accessor for INHangUpCallIntent();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = [v11 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v37 = v13;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v29 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v40);
    *(v18 + 12) = 2080;
    v41[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INHangUpCallIntentCmMd, &_sSo18INHangUpCallIntentCmMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v40);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_0, v15, v16, "#SKTransformer %s to %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v22 = v36;
  outlined init with copy of SignalProviding(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v24 = v23;
    outlined destroy of PhoneCallNLv3Intent(v22, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v40);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v41);
        v24 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v40);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v24 = v25;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v42);
  return v24;
}

{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  v45[3] = v9;
  v45[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v41 = v11;
  v42 = v12;
  v13 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = [v14 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v40 = v16;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v32 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v43);
    *(v21 + 12) = 2080;
    v44[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_0, v18, v19, "#SKTransformer %s to %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v39;
  outlined init with copy of SignalProviding(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v26;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v25, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v43);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
        v27 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v43);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v28;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  v45[3] = v9;
  v45[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v41 = v11;
  v42 = v12;
  v13 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = [v14 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v40 = v16;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v32 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v43);
    *(v21 + 12) = 2080;
    v44[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_0, v18, v19, "#SKTransformer %s to %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v39;
  outlined init with copy of SignalProviding(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v26;
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v25, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v43);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
        v27 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v43);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v28;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  v45[3] = v9;
  v45[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  outlined init with copy of PhoneCallNLv3Intent(a1, boxed_opaque_existential_1);
  static Signpost.begin(_:)();
  v41 = v11;
  v42 = v12;
  v13 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = [v14 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v40 = v16;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v32 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v43);
    *(v21 + 12) = 2080;
    v44[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

    *(v21 + 14) = v24;
    _os_log_impl(&dword_0, v18, v19, "#SKTransformer %s to %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v39;
  outlined init with copy of SignalProviding(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v26;
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v25, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v43);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
        v27 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v43);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    v27 = v28;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

uint64_t outlined destroy of PhoneCallNLv3Intent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void IncomingCallIntentResponse.isIncomingCall.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4() != 2 && !(v4)(a1, a2))
  {
    v5 = (*(a2 + 16))(a1, a2);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v7 = specialized Array.count.getter(v6);
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
LABEL_15:

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = [v9 callRecordType];

      ++v8;
      if (v11 == &dword_4 + 2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t specialized IncomingCallIntentResponse.hasCallHistory.getter(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_33_2();
    return v1 != 0;
  }

  return result;
}

uint64_t IncomingCallIntentResponse.hasCallHistory.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    specialized Array.count.getter(result);
    OUTLINED_FUNCTION_33_2();
    return v2 != 0;
  }

  return result;
}

unint64_t specialized IncomingCallIntentResponse.latestCallRecord.getter(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_33_2();
  return v4;
}

unint64_t IncomingCallIntentResponse.latestCallRecord.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_33_2();
  return v4;
}

BOOL specialized IncomingCallIntentResponse.unknownCaller.getter(uint64_t (*a1)(uint64_t))
{
  v1 = specialized IncomingCallIntentResponse.latestCallRecord.getter(a1);
  v2 = [v1 caller];

  if (v2)
  {
  }

  return v2 == 0;
}

BOOL IncomingCallIntentResponse.unknownCaller.getter(uint64_t a1, uint64_t a2)
{
  v2 = IncomingCallIntentResponse.latestCallRecord.getter(a1, a2);
  v3 = [v2 caller];

  if (v3)
  {
  }

  return v3 == 0;
}

uint64_t INAnswerCallIntentResponse.followUpOfferType.getter()
{
  if ([v0 statusCode] != &dword_0 + 1)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_1_68();
  if (specialized IncomingCallIntentResponse.canCallBack.getter(v1))
  {
    return 3;
  }

  v3 = OUTLINED_FUNCTION_1_68();
  return (specialized IncomingCallIntentResponse.hasCallHistory.getter(v3) & 1) == 0;
}

char *INIdentifyIncomingCallerIntentResponse.followUpOfferType.getter()
{
  result = [v0 statusCode];
  if (result != &dword_0 + 2)
  {
    if (result == &dword_0 + 1)
    {
      v2 = OUTLINED_FUNCTION_0_63();
      if (specialized IncomingCallIntentResponse.canCallBack.getter(v2))
      {
        return (&dword_0 + 3);
      }

      else
      {
        v3 = OUTLINED_FUNCTION_0_63();
        if (specialized IncomingCallIntentResponse.hasCallHistory.getter(v3))
        {
          return &dword_4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t INSearchCallHistoryIntentResponse.followUpOfferType.getter()
{
  if (specialized IncomingCallIntentResponse.canCallBack.getter(outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined bridged method (pb) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.getter(void *a1)
{
  v1 = [a1 callRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INCallRecord();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INCallRecord()
{
  result = lazy cache variable for type metadata for INCallRecord;
  if (!lazy cache variable for type metadata for INCallRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INCallRecord);
  }

  return result;
}

uint64_t IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(intentResponse:isAnnouncement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = (*(*(*v3 + 88) + 24))(*(*v3 + 80));
    v7 = *(*v3 + 104);

    return v7(v6, a2 & 1);
  }

  else
  {
    v9 = type metadata accessor for NLContextUpdate();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v9);
  }
}

uint64_t IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FollowUpOfferType.requiresConfirmation.getter(a1))
  {
    IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(a1);
    switch(a1)
    {
      case 1u:
        OUTLINED_FUNCTION_11_8();
        if (!v14)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v28))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v29, v30, "#IncomingCallNLContextProvider: Adding NLv4 context for startCall");
          OUTLINED_FUNCTION_26_0();
        }

        IncomingCallNLContextProvider.nlContextUpdateForCall()();
        break;
      case 2u:
        OUTLINED_FUNCTION_11_8();
        if (!v14)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v23))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v24, v25, "#IncomingCallNLContextProvider: Adding NLv4 context for answerCall");
          OUTLINED_FUNCTION_26_0();
        }

        IncomingCallNLContextProvider.nlContextUpdateForAnswer()();
        break;
      case 3u:
        OUTLINED_FUNCTION_11_8();
        if (!v14)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_7_39(v17))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_3_48(&dword_0, v18, v19, "#IncomingCallNLContextProvider: Adding NLv4 context for callBack");
          OUTLINED_FUNCTION_26_0();
        }

        IncomingCallNLContextProvider.nlContextUpdateForCallBack()();
        break;
      default:
LABEL_24:
        if (a2)
        {
          OUTLINED_FUNCTION_11_8();
          if (!v14)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = OUTLINED_FUNCTION_65_0();
            *v34 = 0;
            _os_log_impl(&dword_0, v32, v33, "#NLContextUpdate: Setting Announce Calls NLContextUpdate fields", v34, 2u);
            OUTLINED_FUNCTION_26_0();
          }

          NLContextUpdate.submitAsSpokenNotificationContext.setter();
          NLContextUpdate.weightedPromptStrict.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_426260;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
          v39 = [objc_allocWithZone(SAAceConfirmationContext) init];
          outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v36, v38, v39);
          *(v35 + 32) = v39;
          NLContextUpdate.conversationStateAttachments.setter();
        }

        (*(v9 + 32))(a3, v13, v6);
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_24;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

id IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *v1;
  type metadata accessor for INIntent();
  v5 = *(v4 + 80);
  type metadata accessor for PhoneCallNLContextProvider();
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()();
  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
  if (v3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_424FD0;
    v7[4] = PhoneCallNLConstants.canonicalName.getter(15);
    v7[5] = v8;
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_424FF0;
    String.uppercased()();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_6_45();

    v18 = PhoneCallNLConstants.canonicalName.getter(15);
    v20 = v9;
    v10._countAndFlagsBits = 0x2E65756C61562ELL;
    v10._object = 0xE700000000000000;
    String.append(_:)(v10);
    v11 = String.uppercased()();
    String.append(_:)(v11);

    v6[4] = v18;
    v6[5] = v20;
    String.uppercased()();
    OUTLINED_FUNCTION_6_45();

    v19 = PhoneCallNLConstants.canonicalName.getter(15);
    v21 = v12;
    v13._countAndFlagsBits = 0x2E65756C61562ELL;
    v13._object = 0xE700000000000000;
    String.append(_:)(v13);
    v14 = String.uppercased()();
    String.append(_:)(v14);

    v6[6] = v19;
    v6[7] = v21;
  }

  NLContextUpdate.weightedPromptResponseTargets.getter();
  OUTLINED_FUNCTION_9_34();
  specialized Array.append<A>(contentsOf:)(v7);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.getter();
  OUTLINED_FUNCTION_9_34();
  specialized Array.append<A>(contentsOf:)(v6);
  NLContextUpdate.weightedPromptResponseOptions.setter();
  result = IncomingCallNLContextProvider.getConfirmationAttachment(for:)(a1);
  if (result)
  {
    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_426260;
    *(v17 + 32) = v16;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  return result;
}

id IncomingCallNLContextProvider.getConfirmationAttachment(for:)(char a1)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v8))
    {
      v6 = &SAAceConfirmationReasonCONFIRM_START_CALLValue;
      goto LABEL_15;
    }

    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_11_34(&dword_0, v9, v10, "#IncomingCallNLContextProvider: Adding NLv3 context for startCall");
    v6 = &SAAceConfirmationReasonCONFIRM_START_CALLValue;
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      v6 = &SAAceConfirmationReasonCONFIRM_CALL_BACKValue;
      goto LABEL_15;
    }

    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_11_34(&dword_0, v4, v5, "#IncomingCallNLContextProvider: Adding NLv3 context for callBack");
    v6 = &SAAceConfirmationReasonCONFIRM_CALL_BACKValue;
LABEL_11:
    OUTLINED_FUNCTION_26_0();
LABEL_15:

    v12 = *v6;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v11 = [objc_allocWithZone(SAAceConfirmationContext) init];
    outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v13, v15, v11);
    return v11;
  }

  return 0;
}

uint64_t IncomingCallNLContextProvider.nlContextUpdateForCallBack()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{
  v7 = a1(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a2();
  v11 = IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(v10, a3, a4);

  return v11;
}

uint64_t IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v82 = a3;
  v75 = a2;
  v85 = type metadata accessor for PhoneError();
  v4 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  OUTLINED_FUNCTION_16_2();
  v84 = v5;
  __chkstk_darwin(v6);
  v83 = (&v73 - v7);
  v89 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v8 = OUTLINED_FUNCTION_7(v89);
  v87 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  v79 = &v73 - v13;
  v88 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v14 = OUTLINED_FUNCTION_7(v88);
  v86 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v90 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = OUTLINED_FUNCTION_7(v90);
  v77 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v31 = OUTLINED_FUNCTION_7(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v31);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v73 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v73 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_426260;
  *(v45 + 32) = a1;
  v46 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v46);

  v47 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v44);
  Siri_Nlu_External_UserWantedToProceed.init()();
  v80 = v47;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v83 = v33;
  v84 = v30;
  v48 = v33[2];
  v81 = v40;
  (v48)(v38, v40, v30);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  v49 = v77;
  v50 = *(v77 + 16);
  v85 = v27;
  v50(v76, v27, v90);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  v51 = v79;
  Siri_Nlu_External_SystemDialogAct.init()();
  v52 = v86;
  v53 = v88;
  (*(v86 + 16))(v78, v20, v88);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v54, static Logger.siriPhone);
  v55 = v82;

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v89;
  v60 = v87;
  if (v58)
  {
    v61 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v61 = 136315394;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v55, v91);
    *(v61 + 12) = 2080;
    swift_beginAccess();
    v62 = *(v60 + 16);
    v63 = v74;
    v62(v74, v51, v59);
    v64 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v63);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v91);
    v60 = v87;

    *(v61 + 14) = v66;
    v59 = v89;
    _os_log_impl(&dword_0, v56, v57, "Returning NLUUserDialogAct.NLUSystemOffered for %s: %s", v61, 0x16u);
    swift_arrayDestroy();
    v67 = v90;
    OUTLINED_FUNCTION_26_0();
    v52 = v86;
    v53 = v88;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v67 = v90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v68 = *(v60 + 72);
  v69 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v70 = v60;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v70 + 16))(v71 + v69, v51, v59);

  (*(v52 + 8))(v20, v53);
  (*(v49 + 8))(v85, v67);
  v83[1](v81, v84);
  (*(v70 + 8))(v51, v59);
  return v71;
}

void outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setReason:v4];
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL InferenceSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InferenceSource.init(rawValue:), v2);

  return v3 != 0;
}

unint64_t lazy protocol witness table accessor for type InferenceSource and conformance InferenceSource()
{
  result = lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource;
  if (!lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceSource and conformance InferenceSource);
  }

  return result;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceSource@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InferenceSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceSource(_BYTE *result, int a2, int a3)
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

void (*INPersonCodable.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return INPersonCodable.wrappedValue.modify;
}

void INPersonCodable.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

void INPersonCodable.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(a1, a2);
  v5 = @nonobjc _SFPBCard.init(data:)(a1, a2);
  v6 = INIntentSlotValueTransformFromContact();

  if (v6)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

id INPersonCodable.data.getter()
{
  result = INIntentSlotValueTransformToContact();
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
  if (v1 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void INPersonCodable.init(from:)(void *a1)
{
  OUTLINED_FUNCTION_6_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = objc_allocWithZone(_INPBContact);
    v4 = OUTLINED_FUNCTION_33_4();
    outlined copy of Data._Representation(v4, v5);
    v6 = OUTLINED_FUNCTION_33_4();
    v8 = @nonobjc _SFPBCard.init(data:)(v6, v7);
    v9 = INIntentSlotValueTransformFromContact();

    if (v9)
    {
      v10 = OUTLINED_FUNCTION_33_4();
      outlined consume of Data._Representation(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(v1);
    }

    else
    {
      __break(1u);
    }
  }
}

id INPersonCodable.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Encoder.singleValueContainer()();
  result = INIntentSlotValueTransformToContact();
  if (result)
  {
    result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v2 >> 60 != 15)
    {
      v3 = result;
      v4 = v2;
      __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      outlined consume of Data._Representation(v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for transformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);
  __swift_allocate_value_buffer(v0, static INPersonCodable.transformer);
  __swift_project_value_buffer(v0, static INPersonCodable.transformer);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  return Transformer.init(transform:reverseTransform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  __swift_allocate_value_buffer(v0, static INPersonArrayCodable.transformer);
  __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  return Transformer.init(transform:reverseTransform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin08IncomingE14IntentResponse_p0a3KitF05InputVGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  v1 = OUTLINED_FUNCTION_19_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
  OUTLINED_FUNCTION_88();
  type metadata accessor for Input();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  v1 = OUTLINED_FUNCTION_19_0();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH10AudioRouteOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB10AudioRouteOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10AudioRouteOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH4VerbOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB4VerbOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB4VerbOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin9VoiceMailO0lM4VerbOSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin9VoiceMailO0fG4VerbOSgMd, &_s27PhoneCallFlowDelegatePlugin9VoiceMailO0fG4VerbOSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoEntity_common_Agent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology33UsoTask_noVerb_common_PhoneNumberCAD0eF0CSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  type metadata accessor for UsoTask_noVerb_common_PhoneNumber();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7UsoTaskCSgMd, &_s12SiriOntology7UsoTaskCSgMR);
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMd, &_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in variable initialization expression of static INPersonCodable.transformer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(v3, v4);
  v5 = @nonobjc _SFPBCard.init(data:)(v3, v4);
  v6 = INIntentSlotValueTransformFromContact();

  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

id closure #2 in variable initialization expression of static INPersonCodable.transformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = INIntentSlotValueTransformToContact();
  if (result)
  {
    result = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v5 >> 60 != 15)
    {
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t INPersonCodable.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_1_69();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);

  return __swift_project_value_buffer(v0, static INPersonCodable.transformer);
}

uint64_t static INPersonCodable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_1_69();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy10Foundation4DataVSo8INPersonCGMR);
  __swift_project_value_buffer(v2, static INPersonCodable.transformer);
  OUTLINED_FUNCTION_3_49();
  v4 = *(v3 + 16);

  return v4(a1);
}

void protocol witness for Decodable.init(from:) in conformance INPersonCodable(void *a1@<X0>, void *a2@<X8>)
{
  INPersonCodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t key path setter for INPersonArrayCodable.wrappedValue : INPersonArrayCodable(uint64_t *a1)
{
  v1 = *a1;

  return INPersonArrayCodable.wrappedValue.setter(v2);
}

uint64_t INPersonArrayCodable.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*INPersonArrayCodable.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return INPersonArrayCodable.wrappedValue.modify;
}

uint64_t INPersonArrayCodable.wrappedValue.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::INPersonArrayCodable __swiftcall INPersonArrayCodable.init(from:)(PhoneCallFlowDelegatePlugin::INPersonArrayCodable from)
{
  rawValue = from.persons._rawValue;
  v2 = 0;
  v3 = *(from.persons._rawValue + 2);
  v4 = from.persons._rawValue + 40;
  v20 = from.persons._rawValue + 40;
LABEL_2:
  v5 = &v4[16 * v2];
  while (1)
  {
    if (v3 == v2)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v2 >= rawValue[2])
    {
      break;
    }

    ++v2;
    v6 = v5 + 16;
    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = objc_allocWithZone(_INPBContact);
    v10 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v10, v11);
    v12 = OUTLINED_FUNCTION_104();
    outlined copy of Data._Representation(v12, v13);
    v14 = OUTLINED_FUNCTION_104();
    v16 = @nonobjc _SFPBCard.init(data:)(v14, v15);
    v17 = INIntentSlotValueTransformFromContact();

    v18 = OUTLINED_FUNCTION_104();
    from.persons._rawValue = outlined consume of Data._Representation(v18, v19);
    v5 = v6;
    if (v17)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      from.persons._rawValue = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v20;
      goto LABEL_2;
    }
  }

  __break(1u);
  return from;
}

void INPersonArrayCodable.data.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = INIntentSlotValueTransformToContacts();

  if (v1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _INPBContact, _INPBContact_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized Array.count.getter(v2);
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = outlined bridged method (pb) of @objc PBCodable.data.getter(v6);
      v11 = v10;

      ++v4;
      if (v11 >> 60 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
          v5 = v15;
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v5);
          v5 = v16;
        }

        v5[2] = v13 + 1;
        v14 = &v5[2 * v13];
        v14[4] = v9;
        v14[5] = v11;
        v4 = v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

void *INPersonArrayCodable.init(from:)(void *a1)
{
  rawValue = OUTLINED_FUNCTION_6_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    rawValue = INPersonArrayCodable.init(from:)(from).persons._rawValue;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  return rawValue;
}

uint64_t INPersonArrayCodable.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_46(a1);
  OUTLINED_FUNCTION_33_4();
  dispatch thunk of Encoder.singleValueContainer()();
  INPersonArrayCodable.data.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

PhoneCallFlowDelegatePlugin::INPersonArrayCodable closure #1 in variable initialization expression of static INPersonArrayCodable.transformer@<X0>(uint64_t *a1@<X0>, PhoneCallFlowDelegatePlugin::INPersonArrayCodable *a2@<X8>)
{
  v3 = *a1;

  result.persons._rawValue = INPersonArrayCodable.init(from:)(v4).persons._rawValue;
  a2->persons._rawValue = result.persons._rawValue;
  return result;
}

void closure #2 in variable initialization expression of static INPersonArrayCodable.transformer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  INPersonArrayCodable.data.getter();
  *a2 = v4;
}

uint64_t INPersonArrayCodable.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);

  return __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
}

uint64_t static INPersonArrayCodable.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for transformer != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  __swift_project_value_buffer(v2, static INPersonArrayCodable.transformer);
  OUTLINED_FUNCTION_3_49();
  v4 = *(v3 + 16);

  return v4(a1);
}

void *protocol witness for Decodable.init(from:) in conformance INPersonArrayCodable@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = INPersonArrayCodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc PBCodable.data.getter(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  IntentConversionFlow.init(input:app:sharedGlobals:)(a1, a2, a3);
  return v9;
}

uint64_t key path setter for IntentConversionFlow.exitValue : <A>IntentConversionFlow<A>(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

void PhoneCallProvider.mockGlobals.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path setter for IntentConversionFlow.input : <A>IntentConversionFlow<A>(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 160))(v7);
}

uint64_t IntentConversionFlow.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for IntentConversionFlow.input;
  swift_beginAccess();
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t IntentConversionFlow.input.setter(uint64_t a1)
{
  v3 = direct field offset for IntentConversionFlow.input;
  swift_beginAccess();
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

char *IntentConversionFlow.init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + 2) = 0;
  v8 = &v3[direct field offset for IntentConversionFlow.logPrefix];
  v9 = *(v7 + 80);
  *v8 = type metadata accessor for IntentConversionFlow();
  v8[1] = &outlined read-only object #0 of IntentConversionFlow.init(input:app:sharedGlobals:);
  v8[2] = 0;
  v8[3] = 0;
  v10 = direct field offset for IntentConversionFlow.input;
  v11 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v11);
  (*(v12 + 32))(&v3[v10], a1);
  *&v3[direct field offset for IntentConversionFlow.appResolved] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, &v3[direct field offset for IntentConversionFlow.sharedGlobals]);
  return v3;
}

uint64_t IntentConversionFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = *(v7 + 16);
  v16(v14, a1, v4);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315394;
    v39 = v4;
    v40 = a1;
    v35 = v18;
    v22 = *(v2 + direct field offset for IntentConversionFlow.logPrefix);
    v23 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v37 = v16;
    v24 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v25 = *(v2 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v41 = 0;
    v42 = 0xE000000000000000;
    v43 = v21;

    v34 = v17;
    v26 = v24;
    v4 = v39;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v22, v23, v26, v25);
    v16 = v37;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v43);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v7 + 8))(v14, v4);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);
    a1 = v40;

    *(v20 + 14) = v31;
    v32 = v34;
    _os_log_impl(&dword_0, v34, v35, "%s.on: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    v12 = v38;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v7 + 8))(v14, v4);
  }

  v16(v12, a1, v4);
  (*(*v2 + 160))(v12);
  return 1;
}

uint64_t IntentConversionFlow.prepare(completion:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v3 = *v1;
  v4 = type metadata accessor for PrepareResponse();
  v5 = OUTLINED_FUNCTION_7(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v46 = v10 - v9;
  v11 = type metadata accessor for Input();
  v12 = OUTLINED_FUNCTION_7(v11);
  v42 = v13;
  v43 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v41 = v17 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v45 = v3;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50[0] = 0;
    *v21 = 136315394;
    v22 = *(v1 + direct field offset for IntentConversionFlow.logPrefix);
    v23 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v24 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v25 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v50[1] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v22, v23, v24, v25);

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50[0], 0xE000000000000000, &v49);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = v45;
    v28 = *(v45 + 80);
    v29 = _typeName(_:qualified:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v49);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_0, v19, v20, "%s.prepare: intent type: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v27 = v3;
  }

  v32 = *(v1 + direct field offset for IntentConversionFlow.appResolved);
  v33 = *(v1 + direct field offset for IntentConversionFlow.sharedGlobals + 24);
  v34 = *(v1 + direct field offset for IntentConversionFlow.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v1 + direct field offset for IntentConversionFlow.sharedGlobals), v33);
  v35 = *(v34 + 80);

  v36 = v35(v50, v33, v34);
  (*(*v1 + 152))(v36);
  v37 = *(v27 + 80);
  SKTransformer.convertToSKIntent<A>(input:rchFlowContext:)();
  v39 = v38;
  (*(v42 + 8))(v41, v43);
  outlined destroy of SKTransformer(v50);
  (*(*v2 + 136))(v39);
  static PrepareResponse.complete()();
  a1(v46);

  return (*(v47 + 8))(v46, v48);
}

uint64_t IntentConversionFlow.execute(completion:)(void (*a1)(void))
{
  v3 = type metadata accessor for ExecuteResponse();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v26 = a1;
    v15 = *(v1 + direct field offset for IntentConversionFlow.logPrefix);
    v16 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 8);
    v25 = v6;
    v17 = v3;
    v18 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 16);
    v19 = *(v1 + direct field offset for IntentConversionFlow.logPrefix + 24);
    v27 = v24;

    v20 = v18;
    v3 = v17;
    v6 = v25;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v15, v16, v20, v19);

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v27);
    a1 = v26;

    *(v23 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "%s.execute", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  a1(v11);
  return (*(v6 + 8))(v11, v3);
}

uint64_t IntentConversionFlow.deinit()
{
  v1 = direct field offset for IntentConversionFlow.input;
  v2 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + direct field offset for IntentConversionFlow.appResolved);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for IntentConversionFlow.sharedGlobals));
  v5 = *(v0 + direct field offset for IntentConversionFlow.logPrefix + 8);
  v6 = *(v0 + direct field offset for IntentConversionFlow.logPrefix + 24);

  return v0;
}

uint64_t IntentConversionFlow.__deallocating_deinit()
{
  IntentConversionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance IntentConversionFlow<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return Flow.execute()(a1, a2, a3);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance IntentConversionFlow<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 128))();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for IntentConversionFlow()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IntentFromParseFlowStrategyHelper.__allocating_init(sharedGlobals:appResolved:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 24);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t IntentFromParseFlowStrategyHelper.init(sharedGlobals:appResolved:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SPHConversation(a1, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)(void (*a1)(char *, uint64_t), void *a2)
{
  v3 = v2;
  v171 = a1;
  v165 = *v2;
  v166 = a2;
  v4 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7(v4);
  v162 = v6;
  v163 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v161 = v10 - v9;
  v160 = type metadata accessor for PhoneCallNLv3Intent(0);
  v11 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = type metadata accessor for NLIntent();
  v16 = OUTLINED_FUNCTION_7(v15);
  v168 = v17;
  v169 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v22 = v20 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v151 - v25;
  __chkstk_darwin(v24);
  v167 = &v151 - v27;
  v28 = type metadata accessor for Parse();
  v29 = OUTLINED_FUNCTION_7(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_12_5();
  v159 = v34 - v35;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v36);
  v164 = &v151 - v37;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v38);
  v40 = &v151 - v39;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v170 = __swift_project_value_buffer(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v45, v46, v47, v48, v44, 2u);
    v3 = v2;
    OUTLINED_FUNCTION_26_0();
  }

  v49 = v31[2];
  v49(v40, v171, v28);
  v50 = v31[11];
  v51 = OUTLINED_FUNCTION_5_48();
  v53 = v52(v51);
  if (v53 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v53 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v157 = v22;
      v153 = v49;
      v64 = v31[12];
      v65 = OUTLINED_FUNCTION_5_48();
      v66(v65);
      v67 = *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v69 = v167;
      v68 = v168;
      v70 = v40;
      v71 = v169;
      (*(v168 + 32))(v167, v70, v169);
      v72 = *(v68 + 16);
      v156 = (v68 + 16);
      v155 = v72;
      v72(v26, v69, v71);
      PhoneCallNLv3Intent.init(intent:)(v26, v14);

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();

      v75 = os_log_type_enabled(v73, v74);
      v158 = v14;
      v154 = v3;
      if (v75)
      {
        v76 = OUTLINED_FUNCTION_42();
        v77 = OUTLINED_FUNCTION_36();
        v174[0] = v77;
        *v76 = 136315138;
        v78 = Parse.ServerConversion.siriKitIntent.getter();
        v79 = [v78 _metadata];

        v80 = [v79 userUtterance];
        *&v172 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11_INPBStringCSgMd, &_sSo11_INPBStringCSgMR);
        v81 = String.init<A>(describing:)();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v174);

        *(v76 + 4) = v83;
        _os_log_impl(&dword_0, v73, v74, "User utterance: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();

      v86 = os_log_type_enabled(v84, v85);
      v87 = v169;
      v166 = v67;
      if (v86)
      {
        v88 = OUTLINED_FUNCTION_42();
        v152 = OUTLINED_FUNCTION_36();
        v174[0] = v152;
        *v88 = 136315138;
        v89 = Parse.ServerConversion.siriKitIntent.getter();
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v174);
        v87 = v169;

        *(v88 + 4) = v94;
        _os_log_impl(&dword_0, v84, v85, "SKIntent from server: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v152);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v95 = v157;
      v155(v157, v167, v87);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v95;
        v99 = OUTLINED_FUNCTION_42();
        v156 = OUTLINED_FUNCTION_36();
        v174[0] = v156;
        *v99 = 136315138;
        lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v103 = v98;
        v104 = *(v168 + 8);
        v104(v103, v87);
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v174);

        *(v99 + 4) = v105;
        _os_log_impl(&dword_0, v96, v97, "NLIntent from server: %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v156);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v104 = *(v168 + 8);
        v104(v95, v87);
      }

      v110 = v158;
      v111 = v165;
      v112 = Parse.ServerConversion.siriKitIntent.getter();
      v113 = *(v111 + 80);
      v63 = INIntent.typed<A>(as:)();

      if (v63)
      {
        v171 = v104;
        v165 = type metadata accessor for ContactResolution();
        v174[3] = v160;
        v174[4] = &protocol witness table for PhoneCallNLv3Intent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v174);
        outlined init with copy of PhoneCallNLv3Intent(v110, boxed_opaque_existential_1);
        v115 = v63;
        v116 = v111;
        v117 = IntentFromParseFlowStrategyHelper.inferApp(from:)();
        v118 = v154;
        v119 = v154[6];
        v120 = v154[7];
        __swift_project_boxed_opaque_existential_1(v154 + 3, v119);
        (*(v120 + 8))(&v172, v119, v120);
        __swift_project_boxed_opaque_existential_1(&v172, v173);
        v121 = v161;
        dispatch thunk of DeviceState.siriLocale.getter();
        specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v115, v174, v117, v121, (v118 + 3), 0, 1, v165, v113, *(v116 + 88), v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);

        (*(v162 + 8))(v121, v163);
        __swift_destroy_boxed_opaque_existential_1(&v172);
        __swift_destroy_boxed_opaque_existential_1(v174);
        v122 = v115;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = OUTLINED_FUNCTION_42();
          v126 = OUTLINED_FUNCTION_36();
          v174[0] = v126;
          *v125 = 136315138;
          *&v172 = v122;
          v127 = v122;
          OUTLINED_FUNCTION_2_60();
          swift_getWitnessTable();
          v128 = String.init<A>(describing:)();
          v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v174);

          *(v125 + 4) = v130;
          _os_log_impl(&dword_0, v123, v124, "SKIntent after NCR replacement: %s", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v126);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        outlined destroy of PhoneCallNLv3Intent(v158);
        v171(v167, v169);
        return v63;
      }

      outlined destroy of PhoneCallNLv3Intent(v110);
      v104(v167, v169);
      v49 = v153;
    }

    else
    {
      if (v53 == enum case for Parse.NLv4IntentOnly(_:) || v53 == enum case for Parse.uso(_:))
      {
        goto LABEL_6;
      }

      v107 = v31[1];
      v108 = OUTLINED_FUNCTION_5_48();
      v109(v108);
    }

    v131 = v164;
    v49(v164, v171, v28);
    v132 = v49;
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = OUTLINED_FUNCTION_42();
      v136 = OUTLINED_FUNCTION_36();
      v174[0] = v136;
      *v135 = 136315138;
      v137 = v159;
      v132(v159, v131, v28);
      v138 = String.init(describing:)(v137);
      v140 = v139;
      (v31[1])(v131, v28);
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, v174);

      *(v135 + 4) = v141;
      _os_log_impl(&dword_0, v133, v134, "#IntentFromParseFlowStrategyHelper makeIntentFromParse get unexpected parse: %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      (v31[1])(v131, v28);
    }

    return 0;
  }

LABEL_6:
  v54 = v31[1];
  v55 = OUTLINED_FUNCTION_5_48();
  v56(v55);
  v57 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v58 = *(v57 + 72);
  v59 = OUTLINED_FUNCTION_40_0();
  v61 = v60(v59, v57);
  v62 = v171;
  (*(*v61 + 192))(&v172, v171);

  if (v173)
  {
    outlined init with take of SPHConversation(&v172, v174);
    v63 = IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)(v62, v174, v166);
    __swift_destroy_boxed_opaque_existential_1(v174);
    return v63;
  }

  outlined destroy of PhoneCallNLIntent?(&v172);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v144))
  {
    v145 = OUTLINED_FUNCTION_42();
    v146 = OUTLINED_FUNCTION_36();
    v174[0] = v146;
    *v145 = 136315138;
    *(v145 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000000045C0D0, v174);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v147, v148, v149, v150, v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v146);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}