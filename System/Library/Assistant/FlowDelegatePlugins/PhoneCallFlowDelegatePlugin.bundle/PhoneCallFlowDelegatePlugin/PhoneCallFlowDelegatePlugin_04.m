uint64_t AddCallParticipantCATsSimple.intentHandledResponseAsLabels(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.intentHandledResponseAsLabels(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_2_10(v15, xmmword_426980);
  if (v13)
  {
    v16 = type metadata accessor for PhoneCallInvite(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_20_1(v16, v17);
  if (v10)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  v18 = *(v11 + 64);
  *(v12 + 96) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 136) = v19;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = v20;
  v21 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_44_3(v22);

  v23 = swift_task_alloc();
  *(v11 + 48) = v23;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v23 = v24;
  v23[1] = AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:);
  v25 = *(v11 + 32);
  OUTLINED_FUNCTION_60();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.promptForParticipant(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.promptForParticipant(isUnsupportedFollowup:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v5;
  *(v0 + 24) = v2;
  *(v2 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v9 = *(v0 + 16);

  return v11(0xD000000000000027, 0x80000000004519D0, v2);
}

uint64_t AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  OUTLINED_FUNCTION_33_2();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AddCallParticipantCATsSimple.PromptForParticipantDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F725074726F6873;
  }

  else
  {
    return 0x6D6F7250676E6F6CLL;
  }
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::PromptForParticipantDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::PromptForParticipantDialogIds_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.PromptForParticipantDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AddCallParticipantCATsSimple.PromptForParticipantDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds();
  OUTLINED_FUNCTION_9();
  *v6 = v7;
  v6[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.unsupportedParticipantsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage);
}

BOOL AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.unsupportedParticipantsMultipleContactsUnsupportedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage, &type metadata for AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AddCallParticipantCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AddCallParticipantCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t AddCallParticipantCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AddCallParticipantCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AddCallParticipantCATsSimple()
{
  result = type metadata singleton initialization cache for AddCallParticipantCATsSimple;
  if (!type metadata singleton initialization cache for AddCallParticipantCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AddCallParticipantCATsSimple.ConfirmParticipantDialogIds(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return getEnumTag for YesNoConfirmationModel.CodingKeys(a1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ConfirmParticipantDialogIds(_BYTE *result, int a2, int a3)
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

void OUTLINED_FUNCTION_37_5(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  *(v2 + 48) = a1;
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0xD000000000000018;
}

uint64_t OUTLINED_FUNCTION_51_6(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  return result;
}

uint64_t SiriInferenceContactSlotResolver.rchFlowContext.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v2;
  v5 = v3;
  return v1;
}

void *AddCallParticipantContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of SPHConversation(a4, (v8 + 5));
  return v8;
}

void *AddCallParticipantContactSlotResolver.init(rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of SPHConversation(a4, (v4 + 5));
  return v4;
}

uint64_t AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for ResolvedSiriKitContact();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for RecommenderType();
  v1[18] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for SearchSuggestedContacts();
  v1[21] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for ContactResolverDomain();
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for ContactActionType();
  v1[25] = v19;
  OUTLINED_FUNCTION_13_2(v19);
  v1[26] = v20;
  v22 = *(v21 + 64);
  v1[27] = OUTLINED_FUNCTION_62_4();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  v1[30] = OUTLINED_FUNCTION_62_4();
  v1[31] = swift_task_alloc();
  v26 = type metadata accessor for Locale();
  v1[32] = v26;
  OUTLINED_FUNCTION_13_2(v26);
  v1[33] = v27;
  v29 = *(v28 + 64);
  v1[34] = OUTLINED_FUNCTION_62_4();
  v1[35] = swift_task_alloc();
  v30 = type metadata accessor for ContactResolverConfigHashable();
  v1[36] = v30;
  OUTLINED_FUNCTION_21(v30);
  v32 = *(v31 + 64);
  v1[37] = OUTLINED_FUNCTION_62_4();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v33, v34, v35);
}

char *AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  v171 = v0;
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *((*(v3 + 136))(v2, v3) + 16);

  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_65_0();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#AddCallParticipantContactSlotResolver user requested group name, which is not supported. Adding placeholder INPersons. This will force the extension to return MultipleContactsUnsupported, because we can only add 1 person at a time.", v8, 2u);
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v9 = objc_allocWithZone(INPersonHandle);
    OUTLINED_FUNCTION_66_0();
    v13 = @nonobjc INPersonHandle.init(value:type:)(v10, v11, v12);
    isa = INPerson.init(personHandle:)(v13).super.isa;
    v163 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v15 = (v163 & 0xFFFFFFFFFFFFFF8);
    v15[2] = 2;
    v15[4] = isa;
    v15[5] = isa;
    v16 = isa;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
    if (*(v0[14] + 16))
    {
      v30 = App.appIdentifier.getter();
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        OUTLINED_FUNCTION_1_20();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v34, v35, v36, v37, v38);
        v29 = v39;
        v40 = v39[2];
        if (v40 >= v39[3] >> 1)
        {
          OUTLINED_FUNCTION_1_20();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131, v40 + 1, 1, v132, v133, v134, v135, v136);
          v29 = v137;
        }

        v29[2] = v40 + 1;
        v41 = &v29[2 * v40];
        v41[4] = v32;
        v41[5] = v33;
      }

      else
      {
        v29 = _swiftEmptyArrayStorage;
      }
    }

    v167 = v29;
    v161 = v1;
    if (one-time initialization token for emptyAddCallParticipantIntent != -1)
    {
      swift_once();
    }

    v42 = v0[37];
    v153 = v0[36];
    v43 = v0[35];
    v44 = v0[33];
    v164 = v0[31];
    v45 = v0[14];
    v154 = v0[32];
    v155 = v0[12];
    v46 = [static PhoneCallIntentClassNames.emptyAddCallParticipantIntent _className];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = v45[9];
    v158 = v45;
    __swift_project_boxed_opaque_existential_1(v45 + 5, v45[8]);
    v51 = *(v50 + 8);
    v52 = OUTLINED_FUNCTION_44_4();
    v53(v52);
    v54 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_44_4();
    dispatch thunk of DeviceState.siriLocale.getter();

    v55 = v155;
    v56 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v55);
    if (v57)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    *v42 = v58;
    v42[1] = v59;
    v42[2] = v47;
    v42[3] = v49;
    v150 = *(v44 + 16);
    v150(v42 + *(v153 + 24), v43, v154);
    *(v42 + *(v153 + 28)) = v167;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INAddCallParticipantIntent, v164);
    swift_getObjectType();
    v61 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v55))
    {
      v62 = v60;
      v63 = v0[12];
      ObjectType = swift_getObjectType();
      v65 = *(v62 + 24);
      v66 = v63;
      v67 = v65(ObjectType, v62);

      if (v67 == 1)
      {
        v61 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }

    v151 = v0[38];
    v146 = v0[36];
    v147 = v0[37];
    v165 = v0[35];
    v68 = v0[32];
    v69 = v0[29];
    v138 = v0[34];
    v139 = v0[30];
    v70 = v0[28];
    v148 = v0[27];
    v149 = v0[33];
    v72 = v0[25];
    v71 = v0[26];
    v140 = v0[31];
    v141 = v0[24];
    v73 = v0[22];
    v142 = v0[23];
    v143 = v0[21];
    v74 = v0[19];
    v144 = v0[20];
    v145 = v0[18];
    v152 = v0[13];
    (*(v71 + 104))(v70, *v61, v72);
    (*(v71 + 32))(v69, v70, v72);
    v150(v138, v165, v68);
    static ContactResolverDomain.phone.getter();
    outlined init with copy of SpeakableString?(v140, v139, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v73 + 104))(v142, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v143);
    (*(v74 + 104))(v144, enum case for RecommenderType.mlRecommender(_:), v145);
    v75 = *(v146 + 32);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v71 + 16))(v148, v69, v72);
    ContactResolverConfig.actionType.setter();
    (*(v71 + 8))(v69, v72);
    outlined destroy of SpeakableString?(v140, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v149 + 8))(v165, v68);
    outlined init with take of ContactResolverConfigHashable(v147, v151);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v76 = v158[8];
    v77 = v158[9];
    __swift_project_boxed_opaque_existential_1(v158 + 5, v76);
    (*(v77 + 96))(v76, v77);
    v78 = v0[10];
    v79 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v78);
    v80 = v161;
    v81 = v161[3];
    v82 = v161[4];
    __swift_project_boxed_opaque_existential_1(v152, v81);
    v83 = (*(v82 + 128))(v81, v82);
    v86 = (*(v79 + 16))(v83, v151, v78, v79, v84, v85);

    v87 = *(v86 + 16);
    if (v87)
    {
      v88 = v0[16];
      v170 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v91 = *(v88 + 16);
      v89 = v88 + 16;
      v90 = v91;
      v92 = *(v89 + 64);
      OUTLINED_FUNCTION_19_1();
      v94 = v86 + v93;
      v95 = *(v89 + 56);
      do
      {
        v96 = v0[17];
        v97 = v0[15];
        v90(v96, v94, v97);
        ResolvedSiriKitContact.person.getter();
        (*(v89 - 8))(v96, v97);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v98 = v170[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v94 += v95;
        --v87;
      }

      while (v87);

      v99 = v170;
      v80 = v161;
    }

    else
    {

      v99 = _swiftEmptyArrayStorage;
    }

    v100 = v0[13];
    v101 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v102 = v80[4];
    __swift_project_boxed_opaque_existential_1(v100, v80[3]);
    v103 = *(v102 + 24);
    v104 = OUTLINED_FUNCTION_44_4();
    v106 = v105(v104);
    swift_retain_n();
    v107 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay27PhoneCallFlowDelegatePlugin04SiriF7Contact_pGSaySo8INPersonCGG_ALs5NeverOTg504_s27fghi25Plugin03AddB30Participantl45SlotResolverC07resolveI08skIntent02nlM0SaySo8m13CGSo05INAddbgY63C_AA0aB8NLIntent_ptYaKFAhA04SiriaH0_p_AHtcACcfu_AhaM_p_AHtcfu0_AH0qgsltU0CTf1cn_n(v106, v99);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static Logger.siriPhone);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();

    v163 = v107;
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v168 = v111;
      v169 = v162;
      *v111 = 136315138;
      v112 = specialized Array.count.getter(v107);
      if (v112)
      {
        v113 = v112;
        v156 = v110;
        v159 = v109;
        v170 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112 & ~(v112 >> 63), 0);
        if (v113 < 0)
        {
          __break(1u);
          return result;
        }

        v114 = 0;
        v115 = v170;
        v116 = v107 & 0xC000000000000001;
        v117 = v107;
        do
        {
          if (v116)
          {
            v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v118 = *(v107 + 8 * v114 + 32);
          }

          v119 = v118;
          v120 = outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(v118);

          if (!v120)
          {
            v120 = _swiftEmptyArrayStorage;
          }

          v170 = v115;
          v122 = v115[2];
          v121 = v115[3];
          if (v122 >= v121 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
            v115 = v170;
          }

          ++v114;
          v115[2] = v122 + 1;
          v115[v122 + 4] = v120;
          v107 = v117;
        }

        while (v113 != v114);
        v109 = v159;
        v110 = v156;
      }

      v126 = v0[38];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14INScoredPersonCGMd, &_sSaySo14INScoredPersonCGMR);
      v127 = Array.description.getter();
      v129 = v128;

      v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v169);

      *(v168 + 1) = v130;
      _os_log_impl(&dword_0, v109, v110, "#AddCallParticipantContactSlotResolver resolved contacts: %s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);

      OUTLINED_FUNCTION_10_10();
      v125 = v126;
    }

    else
    {
      v123 = v0[38];

      OUTLINED_FUNCTION_10_10();
      v125 = v123;
    }

    outlined destroy of ContactResolverConfigHashable(v125, v124);
  }

  v18 = v0[37];
  v17 = v0[38];
  v20 = v0[34];
  v19 = v0[35];
  v22 = v0[30];
  v21 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v25 = v0[27];
  v26 = v0[24];
  v157 = v0[23];
  v160 = v0[20];
  v166 = v0[17];

  v27 = v0[1];

  return v27(v163);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay27PhoneCallFlowDelegatePlugin04SiriF7Contact_pGSaySo8INPersonCGG_ALs5NeverOTg504_s27fghi25Plugin03AddB30Participantl45SlotResolverC07resolveI08skIntent02nlM0SaySo8m13CGSo05INAddbgY63C_AA0aB8NLIntent_ptYaKFAhA04SiriaH0_p_AHtcACcfu_AhaM_p_AHtcfu0_AH0qgsltU0CTf1cn_n(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = specialized Array.count.getter(a2);
  v6 = v5;
  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
LABEL_38:
    __break(1u);
  }

  else
  {
    v22 = v2;
    v24 = v2 >> 62;
    if (!v7)
    {
      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      v23 = v2 & 0xC000000000000001;
LABEL_19:
      v15 = v3 + 40 * v7 + 32;
      while (v4 != v7)
      {
        if (v7 >= v4)
        {
          goto LABEL_35;
        }

        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v15, v25);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_36;
        }

        if (v24)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *(v10 + 16);
        }

        if (v7 == v16)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          break;
        }

        if (v23)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v10 + 16))
          {
            goto LABEL_37;
          }

          v17 = *(v22 + 8 * v7 + 32);
        }

        v18 = v17;
        outlined init with take of SPHConversation(v25, v26);
        *(&v27 + 1) = v18;
        v28[0] = v26[0];
        v28[1] = v26[1];
        v29 = v27;
        AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(v28, v18);
        outlined destroy of SpeakableString?(v28, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = v30[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v7;
        v15 += 40;
      }

      return v30;
    }

    v8 = 0;
    v21 = v3;
    v9 = v3 + 32;
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2 & 0xC000000000000001;
    while (v4 != v8)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v9, v26);
      if (v24)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *(v10 + 16);
      }

      if (v8 == v11)
      {

        result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
        goto LABEL_41;
      }

      if (v23)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v12 = *(v2 + 8 * v8 + 32);
      }

      v13 = v12;
      ++v8;
      outlined init with take of SPHConversation(v26, v28);
      *(&v29 + 1) = v13;
      AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(v28, v13);
      outlined destroy of SpeakableString?(v28, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v30[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 40;
      v2 = v22;
      if (v7 == v8)
      {
        v3 = v21;
        goto LABEL_19;
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v21);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v5;
  v17[5] = a1;
  outlined init with take of SPHConversation(v21, (v17 + 6));
  v17[11] = a3;
  v17[12] = a4;

  v18 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return _swift_task_switch(closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), 0, 0);
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = async function pointer to Result<>.init(catching:)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  *v4 = v0;
  v4[1] = closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:);

  return Result<>.init(catching:)(v0 + 16, &async function pointer to partial apply for closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), v2, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  (*(v0 + 56))(v2, 0, (v3 << 8));
  outlined consume of Result<[INPerson], Error>(v2, v3);
  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(*a2 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:);

  return v11(a3, a4);
}

uint64_t closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_11();
  return v1();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v13 = OUTLINED_FUNCTION_48_5();
  outlined init with copy of SpeakableString?(v13, v14, &_sScPSgMd, &_sScPSgMR);
  v15 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_40(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_50();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_50();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();

  outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSay17SiriAppResolution0F0CG_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v13 = OUTLINED_FUNCTION_48_5();
  outlined init with copy of SpeakableString?(v13, v14, &_sScPSgMd, &_sScPSgMR);
  v15 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_40(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_50();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_50();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  swift_task_create();

  outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

id AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(void *a1, void *a2)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = (&v40[-1] - v7);
  v9 = outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(v39);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (!specialized Array.count.getter(v10))
  {

    goto LABEL_26;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;
  v13 = specialized Array.count.getter(v10);

  if (v13 != 1 || [v12 recommendation])
  {
    goto LABEL_25;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 384))(v14, v15);
  v16 = type metadata accessor for BackingContact(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    outlined destroy of SpeakableString?(v8, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v25))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v26, v27, "#AddCallParticipantContactSlotResolver INAddCallParticipantIntent is only supported on NLX. This should never happen!");
      OUTLINED_FUNCTION_52();
    }

LABEL_25:
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_6();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of ContactResolverConfigHashable(v8, type metadata accessor for BackingContact);
    goto LABEL_20;
  }

  outlined init with take of SPHConversation(v8, v40);
  AddCallParticipantContactSlotResolver.isFullMatch(contact:)();
  if (v17)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v20))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v21, v22, "#AddCallParticipantContactSlotResolver Use existing recommendation for full name match");
      OUTLINED_FUNCTION_52();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v32))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v33, v34, "#AddCallParticipantContactSlotResolver Downgrade confident => needsConfirmation for partial name match");
      OUTLINED_FUNCTION_52();
    }

    v35 = [v12 person];
    v36 = [objc_allocWithZone(INScoredPerson) initWithPerson:v35 recommendation:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_426260;
    *(v37 + 32) = v36;
    v38 = v36;
    outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(v37, v39);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
LABEL_26:
  v28 = v39;

  return v28;
}

void AddCallParticipantContactSlotResolver.isFullMatch(contact:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v2 = OUTLINED_FUNCTION_7(matched);
  v48 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v49 = &v46 - v11;
  v12 = type metadata accessor for UsoEntitySpan();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v54 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v55 = &v46 - v21;
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  v24 = v1[3];
  v25 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v24);
  v26 = UsoContactConvertible.nameSpans.getter(v24, v25);
  v27 = 0;
  v56 = *(v26 + 2);
  v57 = v15 + 16;
  v28 = (v15 + 8);
  v51 = (v15 + 32);
  v29 = _swiftEmptyArrayStorage;
  while (v56 != v27)
  {
    if (v27 >= *(v26 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v31 = *(v15 + 72);
    (*(v15 + 16))(v23, &v26[v30 + v31 * v27], v12);
    if (closure #1 in AddCallParticipantContactSlotResolver.isFullMatch(contact:)(v23))
    {
      v50 = *v51;
      (v50)(v54, v23, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v29[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v29 = v58;
      }

      v34 = v29[2];
      v35 = v34 + 1;
      if (v34 >= v29[3] >> 1)
      {
        v46 = v29[2];
        v47 = v34 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v46;
        v35 = v47;
        v29 = v58;
      }

      ++v27;
      v29[2] = v35;
      (v50)(v29 + v30 + v34 * v31, v54, v12);
    }

    else
    {
      (*v28)(v23, v12);
      ++v27;
    }
  }

  v56 = v29[2];
  if (!v56)
  {
LABEL_18:

    OUTLINED_FUNCTION_65();
    return;
  }

  v36 = 0;
  v37 = *(v15 + 80);
  OUTLINED_FUNCTION_19_1();
  v54 = v29 + v38;
  v39 = v49;
  v51 = (v48 + 8);
  while (v36 < v29[2])
  {
    v40 = v29;
    v41 = v55;
    (*(v15 + 16))(v55, &v54[*(v15 + 72) * v36], v12);
    UsoEntitySpan.matchInfo.getter();
    v42 = v39;
    v23 = type metadata accessor for MatchInfo();
    if (__swift_getEnumTagSinglePayload(v39, 1, v23) == 1)
    {
      (*v28)(v41, v12);
      outlined destroy of SpeakableString?(v39, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
    }

    else
    {
      v43 = v52;
      static MatchInfo.MatchSignals.exactMatch.getter();
      v44 = MatchInfo.hasMatchSignals(_:)();
      (*v51)(v43, matched);
      (*v28)(v41, v12);
      OUTLINED_FUNCTION_40(v23);
      (*(v45 + 8))(v42, v23);
      v39 = v42;
      if (v44)
      {
        goto LABEL_18;
      }
    }

    ++v36;
    v29 = v40;
    if (v56 == v36)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  __break(1u);

  (*v28)(v23, v12);

  __break(1u);
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.isFullMatch(contact:)(uint64_t a1)
{
  v2 = type metadata accessor for IdentifierAppBundle();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v45 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v44 = &v41[-v6];
  v7 = type metadata accessor for UsoEntitySpan.SpanSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v43 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v41[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v49 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v41[-v21];
  __chkstk_darwin(v20);
  v24 = &v41[-v23];
  v48 = a1;
  UsoEntitySpan.sourceComponent.getter();
  (*(v8 + 104))(v22, enum case for UsoEntitySpan.SpanSource.spanMatchSiriVocab(_:), v7);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v7);
  v25 = *(v12 + 56);
  outlined init with copy of SpeakableString?(v24, v15, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  outlined init with copy of SpeakableString?(v22, &v15[v25], &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
  {
    v26 = v49;
    outlined init with copy of SpeakableString?(v15, v49, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    if (__swift_getEnumTagSinglePayload(&v15[v25], 1, v7) != 1)
    {
      v27 = &v15[v25];
      v28 = v43;
      (*(v8 + 32))(v43, v27, v7);
      lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource();
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v8 + 8);
      v29(v28, v7);
      outlined destroy of SpeakableString?(v22, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined destroy of SpeakableString?(v24, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v29(v26, v7);
      outlined destroy of SpeakableString?(v15, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      if (v42)
      {
        goto LABEL_8;
      }

LABEL_15:
      v39 = 0;
      return v39 & 1;
    }

    outlined destroy of SpeakableString?(v22, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    outlined destroy of SpeakableString?(v24, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    (*(v8 + 8))(v26, v7);
LABEL_6:
    outlined destroy of SpeakableString?(v15, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
    goto LABEL_15;
  }

  outlined destroy of SpeakableString?(v22, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  outlined destroy of SpeakableString?(v24, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  if (__swift_getEnumTagSinglePayload(&v15[v25], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of SpeakableString?(v15, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
LABEL_8:
  v30 = v44;
  UsoEntitySpan.appBundleSemantic.getter();
  v32 = v45;
  v31 = v46;
  v33 = v47;
  (*(v46 + 104))(v45, enum case for IdentifierAppBundle.abContacts(_:), v47);
  v34 = static IdentifierAppBundle.== infix(_:_:)();
  v35 = *(v31 + 8);
  v35(v32, v33);
  v35(v30, v33);
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  v36 = UsoEntitySpan.label.getter();
  if (!v37)
  {
    goto LABEL_15;
  }

  if (v36 == 0x75466E6F73726570 && v37 == 0xEE00656D614E6C6CLL)
  {

    v39 = 1;
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v39 & 1;
}

void *AddCallParticipantContactSlotResolver.deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  return v0;
}

uint64_t AddCallParticipantContactSlotResolver.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_43_0();
  v7 = *(v6 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 24) = v9;
  *v9 = v3;
  v9[1] = protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver;

  return v11(a2, a3);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance AddCallParticipantContactSlotResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(**v4 + 112);

  v10(a1, a2, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> (), v9);
}

uint64_t protocol witness for SlotResolver.updateIntent(value:skIntent:) in conformance AddCallParticipantContactSlotResolver(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_43_0();
  return (*(v2 + 120))();
}

id @nonobjc INPersonHandle.init(value:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_1_20();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5, v4 + 1, 1, v1, v6, v7, v8, v9);
    *v0 = v10;
  }
}

{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_16_16();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5, v4 + 1, 1, v1, v6, v7, v8);
    *v0 = v9;
  }
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)()
{
  OUTLINED_FUNCTION_55_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_20();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, 1, v6, v7, v8, v9, v10);
    *v0 = v11;
  }
}

{
  OUTLINED_FUNCTION_55_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_16_16();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, 1, v6, v7, v8, v9);
    *v0 = v10;
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v9 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_11_11();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_1_20();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26INPersonHandleFaceTimeTypeVGMd, &_ss23_ContiguousArrayStorageCySo26INPersonHandleFaceTimeTypeVGMR);
      v9 = OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_27_5(v9);
      OUTLINED_FUNCTION_31_2(v10 / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine15SpeakableStringVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
      v9 = OUTLINED_FUNCTION_37_6();
      OUTLINED_FUNCTION_27_5(v9);
      OUTLINED_FUNCTION_31_2(v10 / v3);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
      v9 = OUTLINED_FUNCTION_37_6();
      OUTLINED_FUNCTION_27_5(v9);
      OUTLINED_FUNCTION_31_2(v10 / v3);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v4 = v2;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(*(v0 + 16), v4, &_ss23_ContiguousArrayStorageCys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGGMd, &_ss23_ContiguousArrayStorageCys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGGMR);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_20_3(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_8(v10);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
      v9 = OUTLINED_FUNCTION_37_6();
      OUTLINED_FUNCTION_27_5(v9);
      OUTLINED_FUNCTION_31_2(v10 / v3);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMd, &_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
      v8 = OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_27_5(v8);
      OUTLINED_FUNCTION_31_2(v9 / 32);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMR);
  v9 = OUTLINED_FUNCTION_24_10();
  v10 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(v9);
  OUTLINED_FUNCTION_20_3(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_4_8(v13);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v4 = v2;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(*(v0 + 16), v4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV0lN0tGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV0lN0tGMR);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  OUTLINED_FUNCTION_20_3(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_8(v10);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v9 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_11_11();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_16_16();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3, v4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE9AttributeOGMR, v5);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_UsoEntityIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_UsoEntityIdentifierVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_15_10(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_AC0fg1_H7_PersonC6persontGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_AC0fg1_H7_PersonC6persontGMR);
      v9 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_11_11();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_AA0cd1_E7_PersonC6persontMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_AA0cd1_E7_PersonC6persontMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D8RRTargetVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D8RRTargetVGMR);
  v9 = OUTLINED_FUNCTION_24_10();
  v10 = type metadata accessor for PhoneRRTarget(v9);
  OUTLINED_FUNCTION_20_3(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_4_8(v13);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference15CommsAppFeatureVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference15CommsAppFeatureVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for CommsAppFeature();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for AppDescription();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RRResultOGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RRResultOGMR);
  OUTLINED_FUNCTION_24_10();
  v9 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_20_3(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_4_8(v12);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGccGMd, &_ss23_ContiguousArrayStorageCyyys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGccGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMR, &type metadata for AppQuery.Override, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin07ReadingE6RecordVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin07ReadingE6RecordVGMR, &type metadata for ReadingCallRecord, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR, &type metadata for Data, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE13EmergencyTypeOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE13EmergencyTypeOGMR, &type metadata for PhoneCallEmergencyType, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE16IntentClassNamesOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE16IntentClassNamesOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D9NumberTagOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D9NumberTagOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v14 == v15)
  {
LABEL_7:
    OUTLINED_FUNCTION_42_4(v13);
    if (v9)
    {
      OUTLINED_FUNCTION_53_7(v16, v17, v18, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v22);
      OUTLINED_FUNCTION_11_11();
      v22[2] = v8;
      v22[3] = v23;
      if (a1)
      {
LABEL_9:
        v24 = OUTLINED_FUNCTION_45_4();
        a8(v24);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v14)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v11)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = OUTLINED_FUNCTION_41_3();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_11_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_23_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13SiriInference12ContactQueryV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_34_2();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_34_2();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_57_3();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_42_4(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53_7(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_41_3();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_45_4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_57_3();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_42_4(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53_7(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_11_11();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_45_4();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_66();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_8_12();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25_3();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_8();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_53_7(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_13_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = v9(0);
  OUTLINED_FUNCTION_20_3(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_19_1();
  if (v11)
  {
    v7(v10 + v28, v15, v22 + v28);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65();
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin8SmsGroup_pMd, &_s27PhoneCallFlowDelegatePlugin8SmsGroup_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo14INScoredPersonCGGMd, &_ss23_ContiguousArrayStorageCySaySo14INScoredPersonCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14INScoredPersonCGMd, &_sSaySo14INScoredPersonCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pMd, &_s27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin18ContactGroupResult_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin18ContactGroupResult_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18ContactGroupResult_pMd, &_s27PhoneCallFlowDelegatePlugin18ContactGroupResult_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_So8INPersonC7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_So8INPersonC7elementtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_So8INPersonC7elementtMd, &_sSi6offset_So8INPersonC7elementtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd, &_ss23_ContiguousArrayStorageCyypSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMd, &_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
LABEL_25:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV5querytGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV5querytGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t outlined bridged method (ob) of @objc INIntent.intentId.getter(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(void *a1)
{
  v1 = [a1 scoredAlternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with take of ContactResolverConfigHashable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfigHashable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_32_3(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t partial apply for closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[11];
  v6 = v0[12];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();
  v10 = OUTLINED_FUNCTION_59_1();

  return closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(v10, v11, v12, v3, v4, v13, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TQ0_()
{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TA()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_58_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_4(v1);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource()
{
  result = lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource;
  if (!lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource)
  {
    type metadata accessor for UsoEntitySpan.SpanSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource);
  }

  return result;
}

uint64_t outlined destroy of ContactResolverConfigHashable(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_58_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_4(v1);

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();
  v7 = OUTLINED_FUNCTION_59_1();

  return closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(v7, v8, v9, v3);
}

uint64_t outlined consume of Result<[INPerson], Error>(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13SiriInference12ContactQueryV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t one-time initialization function for typeName()
{
  type metadata accessor for AddCallParticipantFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03Addb11ParticipantC0CmMd, &_s27PhoneCallFlowDelegatePlugin03Addb11ParticipantC0CmMR);
  result = String.init<A>(describing:)();
  static AddCallParticipantFlow.typeName = result;
  unk_54CFA0 = v1;
  return result;
}

{
  type metadata accessor for DismissSiriFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin011DismissSiriC0CmMd, &_s27PhoneCallFlowDelegatePlugin011DismissSiriC0CmMR);
  result = String.init<A>(describing:)();
  static DismissSiriFlow.typeName = result;
  unk_551B20 = v1;
  return result;
}

void *AddCallParticipantFlow.__allocating_init(nlIntent:app:sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return AddCallParticipantFlow.init(nlIntent:app:sharedGlobals:)(a1, a2, a3);
}

void *AddCallParticipantFlow.init(nlIntent:app:sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  outlined init with copy of SignalProviding(a1, v3 + direct field offset for AddCallParticipantFlow.nlIntent);
  *(v3 + direct field offset for AddCallParticipantFlow.app) = a2;
  outlined init with copy of SignalProviding(a3, v9);
  v7 = specialized PhoneFlow.init(sharedGlobals:)(v9, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *specialized PhoneFlow.init(sharedGlobals:)(__int128 *a1)
{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.init(sharedGlobals:)(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v3[2] = 0x6F6C46656E6F6850;
  v3[3] = 0xE900000000000077;
  v5 = *(*v3 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_storeEnumTagMultiPayload();
  outlined init with take of SPHConversation(a1, v3 + *(*v3 + 120));
  return v3;
}

uint64_t AddCallParticipantFlow.execute()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  v2[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantFlow.execute(), 0, 0);
}

uint64_t AddCallParticipantFlow.execute()()
{
  v43 = v0;
  v1 = *(v0 + 152);
  v2 = *(**(v0 + 136) + 128);
  v3 = *(v0 + 168);
  v2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = *(v0 + 144);
      v40 = *(v0 + 128);
      v5 = **(v0 + 168);
      (*(**(v0 + 136) + 152))();
      type metadata accessor for AddCallParticipantCATsSimple();
      static CATOption.defaultMode.getter();
      v6 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for AddCallParticipantGuardFlowFactory();
      v7 = swift_allocObject();
      outlined init with take of SPHConversation((v0 + 16), v7 + 16);
      *(v7 + 56) = v6;
      v8 = AddCallParticipantGuardFlowFactory.makeGuardFlow()();

      *(v0 + 96) = v5;
      *(v0 + 104) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      type metadata accessor for GuardFlow();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      *(v0 + 112) = Flow.guarded<A>(by:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMd, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type ConditionalFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMd, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMR);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_5;
    case 5u:
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 136);
      v41 = *(v0 + 128);
      type metadata accessor for AddCallParticipantRCHFlow();
      outlined init with copy of SignalProviding(v12 + direct field offset for AddCallParticipantFlow.nlIntent, v0 + 56);
      v13 = *(v12 + direct field offset for AddCallParticipantFlow.app);
      v14 = *(*v12 + 152);

      v14(v42, v15);
      *(v0 + 120) = AddCallParticipantRCHFlow.__allocating_init(phoneCallNLIntent:app:sharedGlobals:)((v0 + 56), v13, v42);
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>, type metadata accessor for AddCallParticipantRCHFlow);
      v16 = Flow.eraseToAnyValueFlow()();

      *v10 = v16;
      swift_storeEnumTagMultiPayload();
      v17 = *(*v12 + 136);

      v17(v10);
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_5:

      break;
    case 6u:
      v9 = *(v0 + 128);
      (*(**(v0 + 136) + 232))();
      break;
    case 7u:
      v18 = *(v0 + 128);
      static ExecuteResponse.complete()();
      break;
    default:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 136);
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.siriPhone);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v42[0] = swift_slowAlloc();
        *v23 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 160);
        v25 = *(v0 + 136);
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static AddCallParticipantFlow.typeName, unk_54CFA0, v42);
        *(v23 + 12) = 2080;
        v2();
        v26 = specialized PhoneCallFlowState.description.getter();
        v28 = v27;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v42);

        *(v23 + 14) = v29;
        _os_log_impl(&dword_0, v21, v22, "%s: execute called with flow in unexpected state: %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      v31 = *(v0 + 160);
      v30 = *(v0 + 168);
      v32 = *(v0 + 152);
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);
      swift_storeEnumTagMultiPayload();
      (*(*v33 + 136))(v31);
      static ExecuteResponse.ongoing(requireInput:)();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
      break;
  }

  v36 = *(v0 + 160);
  v35 = *(v0 + 168);
  v37 = *(v0 + 144);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t AddCallParticipantFlow.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for AddCallParticipantFlow.nlIntent));
  v1 = *(v0 + direct field offset for AddCallParticipantFlow.app);
}

void *AddCallParticipantFlow.deinit()
{
  v0 = specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for AddCallParticipantFlow.nlIntent));
  v1 = *(v0 + direct field offset for AddCallParticipantFlow.app);

  return v0;
}

void *specialized PhoneFlow.deinit()
{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.deinit(uint64_t *a1, uint64_t *a2)
{
  v5 = v2[3];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2 + *(*v2 + 112), a1, a2);
  __swift_destroy_boxed_opaque_existential_1((v2 + *(*v2 + 120)));
  return v2;
}

uint64_t AddCallParticipantFlow.__deallocating_deinit()
{
  v0 = *AddCallParticipantFlow.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized PhoneCallFlowState.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMR);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v5 = type metadata accessor for Input();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v35 - v12);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0, &v35 - v12, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  v14 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v21 = *(v13 + *(v20 + 48));
      v22 = *(v20 + 64);
      (*(v6 + 32))(v9, v13, v5);
      outlined init with take of SPHConversation((v13 + v22), &v40);
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v23._object = 0x80000000004572B0;
      v23._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v23);
      v37 = v21;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 8236;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 8236;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      _print_unlocked<A, B>(_:_:)();
      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);

      v14 = v38;
      __swift_destroy_boxed_opaque_existential_1(&v40);
      (*(v6 + 8))(v9, v5);
      break;
    case 2u:
      v29 = *v13;
      v40 = 0x284843526E75722ELL;
      v41 = 0xE800000000000000;
      v38 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      goto LABEL_8;
    case 3u:
      v17 = v36;
      (*(v36 + 32))(v4, v13, v1);
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);
      v18._object = 0x8000000000457290;
      v18._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v18);
      _print_unlocked<A, B>(_:_:)();
      v19._countAndFlagsBits = 41;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v14 = v40;
      (*(v17 + 8))(v4, v1);
      break;
    case 4u:
      v31 = *v13;
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v32._countAndFlagsBits = 0x6F707075736E752ELL;
      v32._object = 0xED00002864657472;
      String.append(_:)(v32);
      v38 = v31;
      type metadata accessor for SimpleOutputFlowAsync();
      _print_unlocked<A, B>(_:_:)();
LABEL_8:
      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);

      v14 = v40;
      break;
    case 5u:
      return v14;
    case 6u:
      v14 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v14 = 0x706F74732ELL;
      break;
    default:
      (*(v6 + 32))(v9, v13, v5);
      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v40 = 0xD000000000000012;
      v41 = 0x80000000004572D0;
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v14 = v40;
      (*(v6 + 8))(v9, v5);
      break;
  }

  return v14;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo18INHangUpCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo18INHangUpCallIntentCSo0fghI8ResponseCGMR);
  v2 = OUTLINED_FUNCTION_7(v1);
  v50 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v49 - v6;
  v8 = type metadata accessor for Input();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v17 = OUTLINED_FUNCTION_23_1(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v49 - v20);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0, &v49 - v20, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v22 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v32 = *(v21 + *(v31 + 48));
      v33 = *(v31 + 64);
      v34 = OUTLINED_FUNCTION_3_4();
      v35(v34);
      outlined init with take of SPHConversation((v21 + v33), &v54);
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      OUTLINED_FUNCTION_5_12(".runIntentConversion(");
      v51 = v32;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8236;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      OUTLINED_FUNCTION_0_14();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(v38, v39);
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v41._countAndFlagsBits = 8236;
      v41._object = 0xE200000000000000;
      String.append(_:)(v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      v42 = _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5(v42);

      v22 = v52;
      __swift_destroy_boxed_opaque_existential_1(&v54);
      (*(v11 + 8))(v15, v8);
      break;
    case 2u:
      v43 = *v21;
      v54 = 0x284843526E75722ELL;
      v55 = 0xE800000000000000;
      v52 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v44);

      goto LABEL_8;
    case 3u:
      v29 = v50;
      (*(v50 + 32))(v7, v21, v1);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(24);
      OUTLINED_FUNCTION_5_12(".offerFollowUpAction(");
      v30 = _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5(v30);
      v22 = v54;
      (*(v29 + 8))(v7, v1);
      break;
    case 4u:
      v46 = *v21;
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(16);
      v47._countAndFlagsBits = 0x6F707075736E752ELL;
      v47._object = 0xED00002864657472;
      String.append(_:)(v47);
      v52 = v46;
      type metadata accessor for SimpleOutputFlowAsync();
      v45 = _print_unlocked<A, B>(_:_:)();
LABEL_8:
      OUTLINED_FUNCTION_6_5(v45);

      v22 = v54;
      break;
    case 5u:
      return v22;
    case 6u:
      v22 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v22 = 0x706F74732ELL;
      break;
    default:
      v23 = OUTLINED_FUNCTION_3_4();
      v24(v23);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(21);

      v54 = 0xD000000000000012;
      v55 = 0x80000000004572D0;
      OUTLINED_FUNCTION_0_14();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(v25, v26);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      OUTLINED_FUNCTION_6_5(v28);
      v22 = v54;
      (*(v11 + 8))(v15, v8);
      break;
  }

  return v22;
}

uint64_t type metadata accessor for AddCallParticipantFlow()
{
  result = type metadata singleton initialization cache for AddCallParticipantFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AddCallParticipantHandleIntentFlowStrategy.__allocating_init(sharedGlobals:cats:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.init(sharedGlobals:cats:)(uint64_t a1, uint64_t a2)
{
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t AddCallParticipantGuardFlowFactory.makeGuardFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_68_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_427BB0;
  *(v1 + 32) = (*(*v0 + 112))();
  *(v1 + 40) = (*(*v0 + 120))();
  v2 = type metadata accessor for GuardFlow();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_40_0();
  return GuardFlow.init(preconditionFlows:)();
}

void *AddCallParticipantGuardFlowFactory.makeUnsupportedFeatureGuardFlow()()
{
  v1 = type metadata accessor for CATOption();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 56))(v3, v4);
  LOBYTE(v3) = (*(*v5 + 136))(v5);

  outlined init with copy of SignalProviding((v0 + 2), v8);
  type metadata accessor for UnsupportedFlowCATsSimple();
  static CATOption.defaultMode.getter();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedFeatureGuardFlow();
  swift_allocObject();
  v8[0] = UnsupportedFeatureGuardFlow.init(check:sharedGlobals:unsupportedFlowCATsSimple:)(v3 & 1, v8, v6);
  lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(&lazy protocol witness table cache variable for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow, type metadata accessor for UnsupportedFeatureGuardFlow);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_40_0();

  return v8;
}

uint64_t AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_5_13();
  v3 = swift_allocObject();
  *(v3 + 16) = closure #1 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v4 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v5 = swift_allocObject();
  v5[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v5[3] = 0;
  v5[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:description:onFail:);
  v5[5] = v4;
  *(v2 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 40) = v3;
  *(v2 + 48) = partial apply for closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 56) = v5;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = swift_getKeyPath();
  *(v6 + 24) = 0;
  *(v6 + 32) = 2;
  OUTLINED_FUNCTION_5_13();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  OUTLINED_FUNCTION_5_13();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v9 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v10 = swift_allocObject();
  v10[2] = partial apply for implicit closure #3 in CallStateGuardCheck.init(_:onFail:);
  v10[3] = v8;
  v10[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:description:onFail:);
  v10[5] = v9;
  *(v2 + 64) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:description:onFail:);
  *(v2 + 72) = v7;
  *(v2 + 80) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 88) = v10;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_13();
  v12 = swift_allocObject();
  *(v12 + 16) = KeyPath;
  *(v12 + 24) = 0;
  *(v12 + 32) = 2;
  OUTLINED_FUNCTION_5_13();
  v13 = swift_allocObject();
  *(v13 + 16) = KeyPath;
  *(v13 + 24) = 0;
  *(v13 + 32) = 2;
  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #8 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v14 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v15 = swift_allocObject();
  v15[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v15[3] = v13;
  v15[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v15[5] = v14;
  *(v2 + 96) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 104) = v12;
  *(v2 + 112) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 120) = v15;
  OUTLINED_FUNCTION_5_13();
  v16 = swift_allocObject();
  *(v16 + 16) = closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v17 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v18 = swift_allocObject();
  v18[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v18[3] = 0;
  v18[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v18[5] = v17;
  *(v2 + 128) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 136) = v16;
  *(v2 + 144) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 152) = v18;
  OUTLINED_FUNCTION_5_13();
  v19 = swift_allocObject();
  *(v19 + 16) = closure #3 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  OUTLINED_FUNCTION_5_13();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  *(v20 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #14 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v21 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v22 = swift_allocObject();
  v22[2] = specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v22[3] = 0;
  v22[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v22[5] = v21;
  *(v2 + 160) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 168) = v20;
  *(v2 + 176) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 184) = v22;
  OUTLINED_FUNCTION_5_13();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_426250;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_426250;
  *(v24 + 32) = 0;
  OUTLINED_FUNCTION_50();
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #15 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();
  *(v25 + 24) = v1;
  OUTLINED_FUNCTION_68_0();
  v26 = swift_allocObject();
  v26[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v26[3] = v24;
  v26[4] = implicit closure #4 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v26[5] = v25;
  *(v2 + 192) = implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:)partial apply;
  *(v2 + 200) = v23;
  *(v2 + 208) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v2 + 216) = v26;
  swift_retain_n();
  outlined init with copy of SignalProviding(v1 + 16, v29);
  type metadata accessor for CallStateGuardFlow();
  swift_allocObject();
  v29[0] = CallStateGuardFlow.init(checks:sharedGlobals:)(v2, v29);
  lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(&lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow, type metadata accessor for CallStateGuardFlow);
  swift_retain_n();

  v27 = Flow.eraseToAnyValueFlow()();

  return v27;
}

uint64_t implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeNoTargetCallDialog()();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t key path getter for SPHCallCapabilities.isGreenTea : SPHCallCapabilities@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog()();
}

uint64_t key path getter for SPHCallCapabilities.isAddPersonEnabled : SPHCallCapabilities@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result & 1;
  return result;
}

BOOL closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 56))(ObjectType, a2);
  v5 = specialized Set.count.getter(v4);

  return v5 < (*(a2 + 72))(ObjectType, a2);
}

uint64_t *implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{

  v0 = OUTLINED_FUNCTION_19_0();
  v2 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(v0, v1);

  return v2;
}

uint64_t implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return AddCallParticipantGuardFlowFactory.makeMaxParticipantsReachedDialog()();
}

uint64_t closure #3 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  SPHCall.isFTAudioCallOnHold.getter(ObjectType, a2);
  return v4 & 1;
}

uint64_t *implicit closure #8 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 20) = a4;
  *(v9 + 24) = a1;

  v10 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(a5, v9);

  return v10;
}

uint64_t *implicit closure #15 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 120))(v14, v2, v3);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v7 = (*(v5 + 24))(v4, v5);
  if (v7)
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 20) = v7 == 0;
  *(v11 + 24) = a1;

  v12 = AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(&async function pointer to partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:), v11);

  return v12;
}

uint64_t *AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  (*(v7 + 16))(v19, v6, v7);
  v8 = v20;
  v9 = v21;
  v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v8;
  v18[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v3;
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v19[0] = v16;
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_40_0();

  return v19;
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:), 0, 0);
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = xmmword_426260;
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:);
  v5 = v0[9];

  return v7();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  *(v0[15] + 32) = v0[18];
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
  (*(v5 + 136))(v4, v5);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  static DialogPhase.error.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v8 = *(v7 + 8);
  v9 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:);
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v11, v12, v6, v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[19];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v2 = v0[11];
  *(v0[15] + 16) = 0;

  OUTLINED_FUNCTION_11();
  v4 = v0[17];

  return v3();
}

uint64_t AddCallParticipantGuardFlowFactory.makeNoTargetCallDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_0();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(**(*(v0 + 16) + 56) + class metadata base offset for AddCallParticipantCATsSimple + 48);
  OUTLINED_FUNCTION_18_1();
  v7 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_12_4(v5);

  return v7();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog()()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v0;
  v2 = type metadata accessor for Locale.Region();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantGuardFlowFactory.makeRestrictedByRegionDialog(), 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for DialogLocationAddress.Builder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  Locale.Region.init(stringLiteral:)();
  Locale.Region.identifier.getter();
  (*(v4 + 8))(v2, v3);
  String.toSpeakableString.getter();

  v9 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
  dispatch thunk of DialogLocationAddress.Builder.withCountryCode(_:)();

  outlined destroy of SpeakableString?(v1);
  v0[7] = dispatch thunk of DialogLocationAddress.Builder.build()();

  v10 = *(**(v5 + 56) + class metadata base offset for AddCallParticipantCATsSimple + 80);

  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_2_17(v12);

  return v15(v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  v4[9] = v0;

  if (!v0)
  {
    v10 = v4[7];

    v4[10] = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_17_5();
  v5 = v0[10];

  return v4(v5);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_11();
  v5 = v0[9];

  return v4();
}

uint64_t AddCallParticipantGuardFlowFactory.makeMaxParticipantsReachedDialog()()
{
  *(v1 + 56) = v0;
  return OUTLINED_FUNCTION_0_0();
}

{
  v1 = v0[7];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 120);
  v4 = OUTLINED_FUNCTION_40_0();
  v5(v4, v2);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_40_0();
  v10 = v9(v8, v6);
  if (v10)
  {
    v11 = v10;
    swift_getObjectType();
    v12 = v11;
    SPHCall.toPhoneCallRecord()();
    OUTLINED_FUNCTION_40_0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  v0[8] = v12;
  v13 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v14 = *(**(v13 + 56) + class metadata base offset for AddCallParticipantCATsSimple + 32);
  OUTLINED_FUNCTION_18_1();
  v21 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v19 = OUTLINED_FUNCTION_2_17(v18);

  return v21(v19);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_17_5();
  v3 = *(v0 + 88);

  return v2(v3);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:), 0, 0);
}

id closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  v1 = v0[7];
  if ((v1 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

  if ((v1 - 3) >= 2)
  {
    if (v1 == 2)
    {
      result = TUStringForCallStatus();
      if (result)
      {
        v3 = result;
        v5 = v0[10];
        v4 = v0[11];
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      return result;
    }

LABEL_9:
    v7 = v0[11];
    v8 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_10;
  }

  result = TUStringForCallStatus();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = v0[11];
  v5 = v0[9];
LABEL_8:
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.toSpeakableString.getter();

  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  outlined init with take of SpeakableString?(v5, v4);
LABEL_10:
  v9 = v0[8];
  v10 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  v11 = *(v10 + 120);
  v12 = OUTLINED_FUNCTION_40_0();
  v13(v12, v10);
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v15 = *(v14 + 24);
  v16 = OUTLINED_FUNCTION_40_0();
  v18 = v17(v16, v14);
  if (v18)
  {
    v19 = v18;
    swift_getObjectType();
    v20 = v19;
    SPHCall.toPhoneCallRecord()();
    OUTLINED_FUNCTION_40_0();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  v0[12] = v20;
  v21 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = *(**(v21 + 56) + class metadata base offset for AddCallParticipantCATsSimple + 16);
  OUTLINED_FUNCTION_18_1();
  v28 = (v23 + *v23);
  v25 = *(v24 + 4);
  v26 = swift_task_alloc();
  v0[13] = v26;
  *v26 = v0;
  v26[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:);
  v27 = v0[11];

  return v28(v20, v27);
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  outlined destroy of SpeakableString?(v2);

  OUTLINED_FUNCTION_17_5();
  v6 = v0[15];

  return v5(v6);
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  outlined destroy of SpeakableString?(v2);

  OUTLINED_FUNCTION_11();
  v6 = v0[14];

  return v5();
}

uint64_t PhoneIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t outlined consume of CommonCallStatePredicate(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  outlined consume of CommonCallStatePredicate(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_5_13();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeErrorFlow(withDialog:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_4(v1);
  v3 = OUTLINED_FUNCTION_19_0();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(v3, v4);
}

uint64_t outlined init with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)partial apply()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_4(v1);
  v3 = OUTLINED_FUNCTION_19_0();

  return closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)(v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();

  return v7(v2);
}

uint64_t partial apply for implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #12 in implicit closure #11 in implicit closure #10 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t partial apply for implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #7 in implicit closure #6 in implicit closure #5 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);

  return implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow()();
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[33] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[34] = v6;
  v8 = *(v7 + 64);
  v1[35] = OUTLINED_FUNCTION_45();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v1[36] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for Locale();
  v1[37] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[38] = v11;
  v13 = *(v12 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v1[40] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[41] = v15;
  v17 = *(v16 + 64);
  v1[42] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v18, v19, v20);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[30];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = IntentResolutionRecord.intentResponse.getter();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v6, v7, "#AddCallParticipantHandleIntentFlowStrategy Received failure = %@", v12, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = v0[31];
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
  (*(v17 + 120))(v16, v17);
  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  if ((*(v19 + 24))(v18, v19))
  {
    swift_getObjectType();
    v20 = SPHCall.toPhoneCallRecord()();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  v0[43] = v20;
  v21 = v0[40];
  v22 = v0[30];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v23 = IntentResolutionRecord.intent.getter();
  v24 = outlined bridged method (ob) of @objc INAddCallParticipantIntent.participants.getter(v23);
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  result = specialized Array.count.getter(v24);
  if (!result)
  {

LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
  {
    v27 = *(v25 + 32);
LABEL_14:
    v28 = v27;

LABEL_17:
    v29 = v0[39];
    v31 = v0[37];
    v30 = v0[38];
    v80 = v0[30];
    v81 = v0[40];
    type metadata accessor for PhonePerson(0);
    v33 = v15[5];
    v32 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v33);
    (*(v32 + 8))(v33, v32);
    v34 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v0[44] = static PhonePerson.make(phonePerson:options:locale:)(v28, 0, v29);

    (*(v30 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v35 = IntentResolutionRecord.intentResponse.getter();
    v36 = [v35 code];

    switch(v36)
    {
      case 6uLL:
      case 0xDuLL:
        v37 = v0[31];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v38 = OUTLINED_FUNCTION_48_0();
        v0[45] = v38;
        OUTLINED_FUNCTION_8_13(v38, xmmword_426260);
        v40 = *(v39 + class metadata base offset for AddCallParticipantCATsSimple + 96);
        OUTLINED_FUNCTION_18_1();
        v82 = v41 + *v41;
        v43 = *(v42 + 4);
        v44 = swift_task_alloc();
        v0[46] = v44;
        *v44 = v0;
        OUTLINED_FUNCTION_21_2(v44);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X2, X16 }

        return result;
      case 8uLL:
        v57 = v0[31];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v58 = OUTLINED_FUNCTION_48_0();
        v0[48] = v58;
        OUTLINED_FUNCTION_8_13(v58, xmmword_426260);
        v60 = *(v59 + class metadata base offset for AddCallParticipantCATsSimple + 112);
        OUTLINED_FUNCTION_18_1();
        v84 = v61 + *v61;
        v63 = *(v62 + 4);
        v64 = swift_task_alloc();
        v0[49] = v64;
        *v64 = v0;
        v64[1] = AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X1, X16 }

        return result;
      case 9uLL:
        v47 = v0[31];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v48 = OUTLINED_FUNCTION_48_0();
        v0[51] = v48;
        OUTLINED_FUNCTION_8_13(v48, xmmword_426260);
        v50 = *(v49 + class metadata base offset for AddCallParticipantCATsSimple + 64);
        OUTLINED_FUNCTION_18_1();
        v83 = v51 + *v51;
        v53 = *(v52 + 4);
        v54 = swift_task_alloc();
        v0[52] = v54;
        *v54 = v0;
        OUTLINED_FUNCTION_21_2(v54);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X3, X16 }

        return result;
      default:
        v67 = v0[36];
        v68 = v0[31];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v69 = OUTLINED_FUNCTION_48_0();
        v0[54] = v69;
        *(v69 + 16) = xmmword_426260;
        v70 = *(v68 + 56);
        v71 = type metadata accessor for SpeakableString();
        __swift_storeEnumTagSinglePayload(v67, 1, 1, v71);
        v72 = *(*v70 + class metadata base offset for AddCallParticipantCATsSimple + 16);
        OUTLINED_FUNCTION_18_1();
        v85 = v73 + *v73;
        v75 = *(v74 + 4);
        v76 = swift_task_alloc();
        v0[55] = v76;
        *v76 = v0;
        v76[1] = AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
        v77 = v0[36];
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X2, X16 }

        return result;
    }
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 376) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 360);
  OUTLINED_FUNCTION_5_14(*(v0 + 144));
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_3_2();
  v3(v2);
  OUTLINED_FUNCTION_4_9();
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_15(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 400) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_5_14(*(v0 + 168));
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_3_2();
  v3(v2);
  OUTLINED_FUNCTION_4_9();
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_15(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  v6 = *(v5 + 416);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 424) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_5_14(*(v0 + 192));
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_3_2();
  v3(v2);
  OUTLINED_FUNCTION_4_9();
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_15(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  v6 = *(v2 + 440);
  *v4 = *v1;
  v3[56] = v0;

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(*(v2 + 288), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 432);
  OUTLINED_FUNCTION_5_14(*(v0 + 216));
  OUTLINED_FUNCTION_1_22();
  v2 = OUTLINED_FUNCTION_3_2();
  v3(v2);
  OUTLINED_FUNCTION_4_9();
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_15(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 464);
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v12 = v10[43];
  v11 = v10[44];
  v13 = v10[42];
  v14 = v10[39];
  v16 = v10[35];
  v15 = v10[36];
  v17 = v10[33];
  v18 = v10[34];
  v19 = v10[32];

  (*(v18 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 400);
  v12 = *(v10 + 384);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 424);
  v12 = *(v10 + 408);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 448);
  v12 = *(v10 + 432);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = v10[47];
  v12 = v10[44];
  v13 = v10[45];
  v15 = v10[42];
  v14 = v10[43];
  v16 = v10[39];
  v18 = v10[35];
  v17 = v10[36];
  v19 = v10[32];

  OUTLINED_FUNCTION_24_11();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance AddCallParticipantHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t outlined bridged method (ob) of @objc INAddCallParticipantIntent.participants.getter(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy)
  {
    type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy);
  }

  return result;
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  OUTLINED_FUNCTION_40(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.__allocating_init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = OUTLINED_FUNCTION_3_5(v12, v17);
  v14(v13);
  OUTLINED_FUNCTION_8_14();
  v15 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v7;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = OUTLINED_FUNCTION_3_5(v8, v13);
  v10(v9);
  OUTLINED_FUNCTION_8_14();
  v11 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v3;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(AddCallParticipantHandleIntentFollowUpFlow.execute(), 0, 0);
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute()()
{
  v29 = v0;
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v2 = IntentResolutionRecord.intentResponse.getter();
  v3 = [v2 code];

  if (v3 == &dword_0 + 3)
  {
    v4 = IntentResolutionRecord.intentResponse.getter();
    v5 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v4, &selRef_invites, &lazy cache variable for type metadata for INCallInvite, INCallInvite_ptr);
    if (v5)
    {
      v6 = v5;
      if (specialized Array.count.getter(v5))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v6 + 32);
        }

        v8 = v7;

        if ([v8 inviteType] == &dword_0 + 3)
        {
          v10 = *(v0 + 16);
          v9 = *(v0 + 24);
          v8 = v8;
          AddCallParticipantHandleIntentFollowUpFlow.handleFaceTimeLinkInvite(linkInvite:)(v8);

LABEL_16:
          goto LABEL_17;
        }

LABEL_15:
        v24 = *(v0 + 16);
        v25 = *(v0 + 24);
        AddCallParticipantHandleIntentFollowUpFlow.handleInvite()();
        goto LABEL_16;
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v11 = *(v0 + 24);
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = IntentResolutionRecord.intentResponse.getter();
    [v17 code];

    v18 = INAddCallParticipantIntentResponseCodeGetName();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "#AddCallParticipantHandleIntentFollowUpFlow intentResponse code: %s, not doing anything - errors should be provided by HandleIntentFlow", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v23 = *(v0 + 16);
  static ExecuteResponse.complete()();
LABEL_17:
  OUTLINED_FUNCTION_11();

  return v26();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.execute(completion:)()
{
  type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow();
  lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(&lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow, type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.handleFaceTimeLinkInvite(linkInvite:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v41[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41[-1] - v11;
  v13 = [a1 callURL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for URL();
    v16 = 0;
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v16, 1, v15);
  outlined init with take of URL?(v10, v12);
  type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    outlined destroy of SpeakableString?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_21:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "#AddCallParticipantHandleIntentFollowUpFlow: Invalid call invite", v36, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return static ExecuteResponse.complete()();
  }

  v17 = URL.absoluteString.getter();
  v19 = v18;
  OUTLINED_FUNCTION_40(v15);
  (*(v20 + 8))(v12, v15);
  v21 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(a1);
  if (!v21)
  {
LABEL_20:

    goto LABEL_21;
  }

  v22 = v21;
  if (!specialized Array.count.getter(v21))
  {

    goto LABEL_20;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "#AddCallParticipantHandleIntentFollowUpFlow: Attempting to send a message with FaceTime Link", v26, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v47, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v44 = &type metadata for PhoneCallFeatureFlags;
  v45 = &protocol witness table for PhoneCallFeatureFlags;
  *&v43 = swift_allocObject();
  memcpy((v43 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v43, v46);
  outlined init with copy of PhoneCallFeatureFlags(v47, v41);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v27 = (v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v29 = *(v28 + 8);
  v30 = OUTLINED_FUNCTION_2();
  v31(v30);
  __swift_project_boxed_opaque_existential_1(v41, v42);
  OUTLINED_FUNCTION_2();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v32 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    OUTLINED_FUNCTION_2();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v32 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v41, v42);
      OUTLINED_FUNCTION_2();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v32 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v32 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v38 = *v32;

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow(0);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27, v41);
  type metadata accessor for StartCallCATs();

  static CATOption.defaultMode.getter();
  v39 = CATWrapper.__allocating_init(options:globals:)();
  v41[0] = MessagesFaceTimeLinkCompletionFlow.__allocating_init(faceTimeLink:recipients:app:sharedGlobals:startCallCATs:)(v17, v19, v22, v38, v41, v39);
  lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(&lazy protocol witness table cache variable for type MessagesFaceTimeLinkCompletionFlow and conformance MessagesFaceTimeLinkCompletionFlow, type metadata accessor for MessagesFaceTimeLinkCompletionFlow);
  static ExecuteResponse.complete<A>(next:)();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.handleInvite()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 24);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals), v1);
  (*(v2 + 16))(v12, v1, v2);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_40(v3);
  (*(v5 + 16))();
  v6 = type metadata accessor for SimpleOutputFlowAsync();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v12[0] = v9;
  static ExecuteResponse.complete<A>(next:)();
}

uint64_t closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();

  return AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()();
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v1[23] = v7;
  v8 = *(v7 - 8);
  v1[24] = v8;
  v9 = *(v8 + 64) + 15;
  v1[25] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse(), 0, 0);
}

{
  v53 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v52 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000000457410, &v52);
    _os_log_impl(&dword_0, v2, v3, "#AddCallParticipantHandleIntentFollowUpFlow %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v6 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v7 = IntentResolutionRecord.intentResponse.getter();
  v8 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v7, &selRef_invites, &lazy cache variable for type metadata for INCallInvite, INCallInvite_ptr);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  if (!specialized Array.count.getter(v8))
  {

LABEL_11:
    v11 = 0;
LABEL_12:

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(v11, &selRef_participants, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
LABEL_13:
  v44 = v11;
  v0[26] = v11;
  v14 = v0[24];
  v15 = v0[18];
  v16 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  v17 = specialized Array.count.getter(v13);
  v18 = 0;
  v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals;
  v0[27] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals;
  v49 = (v15 + v19);
  v50 = v17;
  v47 = v13 & 0xFFFFFFFFFFFFFF8;
  v48 = v13 & 0xC000000000000001;
LABEL_14:
  v45 = v16;
  v0[28] = v16;
  while (v50 != v18)
  {
    if (v48)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v47 + 16))
      {
        goto LABEL_30;
      }

      v20 = *(v13 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v46 = v18 + 1;
    v22 = v0[25];
    v23 = v0[23];
    type metadata accessor for PhonePerson(0);
    v24 = v13;
    v25 = v49[3];
    v26 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v25);
    (*(v26 + 8))(v25, v26);
    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v13 = v24;
    dispatch thunk of DeviceState.siriLocale.getter();
    v28 = static PhonePerson.make(phonePerson:options:locale:)(v21, 0, v22);

    (*(v14 + 8))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    ++v18;
    if (v28)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v52 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v52;
      v18 = v46;
      goto LABEL_14;
    }
  }

  v29 = v0[18];

  v30 = *(v29 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns + 24);
  v31 = *(v29 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns + 32);
  __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns), v30);
  v32 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v33 = *(v32 + 8);
  v34 = OUTLINED_FUNCTION_40_0();
  v35(v34, v32);
  v37 = v0[10];
  v36 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v37);
  v38 = DeviceState.supportsOnlyFaceTimeCalls.getter(v37, v36);
  v39 = swift_task_alloc();
  v0[29] = v39;
  v39[2] = v29;
  v39[3] = v44;
  v39[4] = v45;
  v40 = *(v31 + 8);
  v51 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  v0[30] = v42;
  *v42 = v0;
  v42[1] = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();

  return (v51)(v38 & 1, partial apply for closure #2 in AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse(), v39, v30, v31);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[30];
  v10 = *v1;
  v3[31] = v5;
  v3[32] = v0;

  if (v0)
  {
    v6 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  else
  {
    v7 = v3[28];
    v8 = v3[29];

    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    v6 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[19];
  v3 = (v0[18] + v0[27]);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v4 + 136);
  v6 = OUTLINED_FUNCTION_40_0();
  v7(v6, v4);
  v8 = v0[15];
  v9 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v10 = *(v9 + 8);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  v13 = v0[31];
  v14 = v0[22];
  v15 = v0[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v8, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = *(v2 + 264);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 272) = v0;

  if (v0)
  {
    v7 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  else
  {
    v7 = AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v4 = v0[32];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[19];

  OUTLINED_FUNCTION_11();

  return v8();
}

{
  v1 = *(v0 + 208);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v5 = *(v0 + 272);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);

  OUTLINED_FUNCTION_11();

  return v9();
}

uint64_t closure #2 in AddCallParticipantHandleIntentFollowUpFlow.makeIntentHandledResponse()(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34[-1] - v10;
  type metadata accessor for SirikitDeviceState();
  v12 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 24);
  v13 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals), v12);
  (*(v13 + 8))(v34, v12, v13);
  v14 = SirikitDeviceState.__allocating_init(from:)();
  v15 = a1[1];

  a1[1] = v14;
  v16 = type metadata accessor for PhoneCallInvite.Builder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  v21 = type metadata accessor for SpeakableString();
  v22 = 1;
  __swift_storeEnumTagSinglePayload(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  if (a3)
  {
    if (![a3 inviteType])
    {
      goto LABEL_13;
    }

    BackingType = INCallInviteTypeGetBackingType();
    switch(BackingType)
    {
      case 3:
        v24 = @"LINK";
        break;
      case 2:
        v24 = @"RING";
        break;
      case 1:
        v24 = @"ADD";
        break;
      default:
        v24 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_12;
    }

    v25 = v24;
LABEL_12:
    v26 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_13:
    String.toSpeakableString.getter();

    v22 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v22, 1, v21);
  v27 = PhoneCallInvite.Builder.withInviteType(_:)(v11);

  outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v28 = (*(*v27 + 176))(a4);

  v30 = (*(*v28 + 184))(v29);

  v31 = *a1;

  *a1 = v30;
  return result;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  OUTLINED_FUNCTION_40(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns));
  return v0;
}

uint64_t AddCallParticipantHandleIntentFollowUpFlow.__deallocating_deinit()
{
  AddCallParticipantHandleIntentFollowUpFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AddCallParticipantHandleIntentFollowUpFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t outlined bridged method (pb) of @objc INCallInvite.participants.getter(void *a1)
{
  v1 = [a1 participants];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INAddCallParticipantIntentResponse.invites.getter(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t specialized AddCallParticipantHandleIntentFollowUpFlow.init(rchRecord:sharedGlobals:patterns:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns);
  v11[3] = a5;
  v11[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v13 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  (*(*(v14 - 8) + 32))(a4 + v13, a1, v14);
  outlined init with take of SPHConversation(a2, a4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  return a4;
}

uint64_t type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow()
{
  result = type metadata singleton initialization cache for AddCallParticipantHandleIntentFollowUpFlow;
  if (!type metadata singleton initialization cache for AddCallParticipantHandleIntentFollowUpFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AddCallParticipantHandleIntentFollowUpFlow()
{
  type metadata accessor for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>()
{
  if (!lazy cache variable for type metadata for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);
    v0 = type metadata accessor for IntentResolutionRecord();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IntentResolutionRecord<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>);
    }
  }
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AddCallParticipantHandleIntentFollowUpFlow.handleInvite()();
}

uint64_t one-time initialization function for faceTimeUsoApp()
{
  result = closure #1 in variable initialization expression of static AddOrCallPromptForValueStrategy.faceTimeUsoApp();
  static AddOrCallPromptForValueStrategy.faceTimeUsoApp = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static AddOrCallPromptForValueStrategy.faceTimeUsoApp()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntityBuilder_common_App();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = UsoEntityBuilder_common_App.init()();
  dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v1 + 8))(v4, v0);
  return v8;
}

void AddOrCallPromptForValueStrategy.__allocating_init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  v1 = v0[4];
  __swift_mutable_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_30_7();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_28_4(v5);
  v7(v6);
  OUTLINED_FUNCTION_25_4();
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_65();
}

void AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_30_7();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_28_4(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_4();
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_65();
}

void AddOrCallPromptForValueStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for Parse();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  Input.parse.getter();
  AddOrCallPromptForValueStrategy.parsePromptResponse(from:)();
  (*(v5 + 8))(v10, v2);
  (*(v14 + 16))(v19, v22, v11);
  v23 = (*(v14 + 88))(v19, v11);
  if (v23 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v14 + 96))(v19, v11);
    v24 = *v19;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = v28;
      v44 = swift_slowAlloc();
      v45 = v44;
      *v28 = 136315138;
      if (v24)
      {
        v29 = 0x6C61436F54646461;
      }

      else
      {
        v29 = 0x6C6C614377656ELL;
      }

      if (v24)
      {
        v30 = 0xE90000000000006CLL;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v45);

      v32 = v43;
      *(v43 + 1) = v31;
      _os_log_impl(&dword_0, v26, v27, "#AddOrCallPromptForValueStrategy received response: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    *(v1 + 16) = v24;
    static ActionForInput.handle()();
LABEL_19:
    (*(v14 + 8))(v22, v11);
    goto LABEL_25;
  }

  if (v23 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "#AddOrCallPromptForValueStrategy response is cancellation", v36, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    static ActionForInput.cancel()();
    goto LABEL_19;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "#AddOrCallPromptForValueStrategy response not recognized, ignoring", v40, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  static ActionForInput.ignore()();
  v41 = *(v14 + 8);
  v41(v22, v11);
  v41(v19, v11);
LABEL_25:
  OUTLINED_FUNCTION_65();
}

uint64_t AddOrCallPromptForValueStrategy.parseValueResponse(input:)()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.parseValueResponse(input:));
}

{
  return (*(v0 + 8))(*(*(v0 + 16) + 16));
}

uint64_t AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v1[395] = v0;
  v1[389] = v2;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  v1[401] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[407] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[413] = v5;
  v7 = *(v6 + 64);
  v1[419] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for UUID();
  v1[425] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[431] = v9;
  v11 = *(v10 + 64);
  v1[437] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for CommonDirectAction();
  v1[443] = v12;
  v13 = *(*(v12 - 8) + 64);
  v1[449] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for NLContextUpdate();
  v1[455] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[461] = v15;
  v17 = *(v16 + 64);
  v1[467] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 3736);
  v2 = *(v0 + 3160);
  AddOrCallPromptForValueStrategy.getNLContextUpdate()();

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  OUTLINED_FUNCTION_33_7();

  OUTLINED_FUNCTION_33_7();

  OUTLINED_FUNCTION_33_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v3 = type metadata accessor for ButtonConfigurationModel();
  *(v0 + 3784) = v3;
  OUTLINED_FUNCTION_13_2(v3);
  *(v0 + 3832) = *(v4 + 72);
  *(v0 + 4032) = *(v5 + 80);
  v6 = swift_allocObject();
  *(v0 + 3880) = v6;
  *(v6 + 16) = xmmword_426980;

  return _swift_asyncLet_get_throwing(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2896);
}

{
  *(v1 + 3928) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v1 = *(v0 + 3784);
  v2 = *(v0 + 3592);
  v3 = *(v0 + 3544);
  v4 = *(v0 + 3448);
  v18 = *(v0 + 3496);
  v19 = *(v0 + 3400);
  v5 = *(v0 + 3160);
  v6 = (*(v0 + 3880) + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)));
  v17 = *(v0 + 3032);
  v7 = *(v0 + 3040);
  v8 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v8);

  UsoTaskBuilder_call_common_PhoneCall.init()();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();

  swift_storeEnumTagMultiPayload();
  v9 = v5[6];
  v10 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v9);
  (*(v10 + 8))(v9, v10);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2616));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v11);
  UUID.init()();
  *v6 = v17;
  v6[1] = v7;
  [objc_allocWithZone(SABaseCommand) init];
  v12 = v1[5];
  *(v0 + 3936) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  *(v6 + v1[8]) = 1;
  v13 = v1[6];
  *(v0 + 3944) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();
  v14 = v1[7];
  v15 = *(v4 + 32);
  *(v0 + 3952) = v15;
  *(v0 + 3960) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v6 + v14, v18, v19);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3216);
}

{
  *(v1 + 3968) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v21 = *(v0 + 3952);
  v22 = *(v0 + 3960);
  v20 = *(v0 + 3944);
  v18 = *(v0 + 3936);
  v1 = *(v0 + 3784);
  v2 = *(v0 + 3592);
  v3 = *(v0 + 3544);
  v17 = *(v0 + 3496);
  v19 = *(v0 + 3400);
  v4 = *(v0 + 3160);
  v5 = (*(v0 + 3880) + *(v0 + 3832) + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)));
  v6 = *(v0 + 3016);
  v7 = *(v0 + 3024);

  AddOrCallPromptForValueStrategy.addParticipantDialogAct()();
  swift_storeEnumTagMultiPayload();
  v8 = v4[6];
  v9 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v8);
  (*(v9 + 8))(v8, v9);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2696));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v10);
  UUID.init()();
  *v5 = v6;
  v5[1] = v7;
  [objc_allocWithZone(SABaseCommand) init];
  v11 = v5 + v1[5];
  CodableAceObject.init(wrappedValue:)();
  *(v5 + v1[8]) = 1;
  v12 = v5 + v1[6];
  CodableAceObject.init(wrappedValue:)();
  v21(v5 + v1[7], v17, v19);
  v13 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_get_throwing(v13, v14, v15, v0 + 3456);
}

{
  *(v1 + 3976) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  v25 = *(v0 + 3952);
  v26 = *(v0 + 3960);
  v20 = *(v0 + 3936);
  v23 = *(v0 + 3944);
  v24 = *(v0 + 3880);
  v1 = *(v0 + 3784);
  v27 = *(v0 + 3736);
  v2 = *(v0 + 3592);
  v3 = *(v0 + 3544);
  v19 = *(v0 + 3496);
  v21 = *(v0 + 3400);
  v28 = *(v0 + 3352);
  v22 = *(v0 + 3208);
  v4 = *(v0 + 3160);
  v5 = (v24 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)) + 2 * *(v0 + 3832));
  v18 = *(v0 + 3048);
  v6 = *(v0 + 3056);
  swift_storeEnumTagMultiPayload();
  v7 = v4[6];
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v7);
  v9 = *(v8 + 8);

  v9(v7, v8);
  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2776));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2776));
  OUTLINED_FUNCTION_1_23();
  outlined destroy of CommonDirectAction(v2, v10);
  UUID.init()();
  *v5 = v18;
  v5[1] = v6;
  [objc_allocWithZone(SABaseCommand) init];
  v11 = v5 + v1[5];
  CodableAceObject.init(wrappedValue:)();
  *(v5 + v1[8]) = 1;
  v12 = v5 + v1[6];
  CodableAceObject.init(wrappedValue:)();
  v25(v5 + v1[7], v19, v21);
  static DialogPhase.clarification.getter();
  v13 = swift_task_alloc();
  *(v13 + 16) = v27;
  *(v13 + 24) = v24;
  *(v13 + 32) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of SignalProviding((v4 + 11), v0 + 2856);
  v14 = *(v0 + 2880);
  *(v0 + 3984) = v14;
  *(v0 + 4000) = __swift_project_boxed_opaque_existential_1((v0 + 2856), v14);
  *(v0 + 2960) = type metadata accessor for PhoneSnippetDataModels();
  *(v0 + 2968) = lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2936));
  *boxed_opaque_existential_1 = v24;
  *(boxed_opaque_existential_1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v0 + 4008) = v16;
  *(v16 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3696);
}

{
  *(v1 + 4016) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[383];
  *(v0[501] + 32) = v1;
  v2 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v3 = v1;
  v4 = swift_task_alloc();
  v0[503] = v4;
  *v4 = v0;
  v4[1] = AddOrCallPromptForValueStrategy.makePromptForValue();
  v5 = v0[501];
  v6 = v0[500];
  v7 = v0[499];
  v8 = v0[498];
  v9 = v0[419];
  v10 = v0[389];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v10, v0 + 367, v5, v9, v8, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 4024);
  v6 = *(v4 + 4008);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2936));

  return _swift_task_switch(AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = OUTLINED_FUNCTION_37_7();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2856));
  v3 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 3888);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2736);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  v1 = v0[449];
  v2 = v0[437];
  v3 = v0[419];
  v4 = v0[401];
  v5 = v0[395];
  (*(v0[461] + 8))(v0[467], v0[455]);

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 3880) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 2976);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3072);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3120);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3168);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 3880);
  outlined destroy of CommonDirectAction(v1 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032)), type metadata accessor for ButtonConfigurationModel);
  *(v1 + 16) = 0;

  v2 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 3264);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3312);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3360);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3408);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 3880);
  v2 = v1 + ((*(v0 + 4032) + 32) & ~*(v0 + 4032));
  outlined destroy of CommonDirectAction(v2 + *(v0 + 3832), type metadata accessor for ButtonConfigurationModel);
  outlined destroy of CommonDirectAction(v2, type metadata accessor for ButtonConfigurationModel);
  *(v1 + 16) = 0;

  v3 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 3504);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3552);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3600);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3648);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[501];
  v2 = OUTLINED_FUNCTION_37_7();
  v3(v2);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 367);
  __swift_destroy_boxed_opaque_existential_1(v0 + 357);
  v4 = OUTLINED_FUNCTION_8_15();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 468);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3016, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3792);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 3032, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 3840);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 3064, AddOrCallPromptForValueStrategy.makePromptForValue(), v0 + 2656);
}

{
  return OUTLINED_FUNCTION_0_1(AddOrCallPromptForValueStrategy.makePromptForValue());
}

uint64_t AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 3928);
  v12 = OUTLINED_FUNCTION_3_6();
  v13(v12);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 3968);
  v12 = OUTLINED_FUNCTION_3_6();
  v13(v12);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 3976);
  v12 = OUTLINED_FUNCTION_3_6();
  v13(v12);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 4016);
  v12 = OUTLINED_FUNCTION_3_6();
  v13(v12);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  v18 = (**(*(v0 + 24) + 72) + class metadata base offset for OngoingCallCATsSimple);
  v1 = *v18;
  OUTLINED_FUNCTION_24_5();
  v19 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38_0(v5);
  *v6 = v7;
  v15 = OUTLINED_FUNCTION_19_14(v6, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_11();
  return v1();
}

uint64_t implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v1 = *(v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 216);
  v18 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 216;
  OUTLINED_FUNCTION_24_5();
  v19 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38_0(v5);
  *v6 = v7;
  v15 = OUTLINED_FUNCTION_19_14(v6, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v1 = *(v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 8);
  v18 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 8;
  OUTLINED_FUNCTION_24_5();
  v19 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38_0(v5);
  *v6 = v7;
  v15 = OUTLINED_FUNCTION_19_14(v6, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue(), 0, 0);
}

uint64_t implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_22_3();
  v1 = *(v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56);
  v18 = v0 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 56;
  OUTLINED_FUNCTION_24_5();
  v19 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38_0(v5);
  *v6 = v7;
  v15 = OUTLINED_FUNCTION_19_14(v6, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

uint64_t closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  OutputGenerationManifest.nlContextUpdate.setter();
  StackedButtonsModel.responseViewId.getter(a3, a4);
  return OutputGenerationManifest.responseViewId.setter();
}

void AddOrCallPromptForValueStrategy.parsePromptResponse(from:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v114 = v3;
  v109 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = OUTLINED_FUNCTION_7(v109);
  v107 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v106 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v106 - v12);
  v14 = type metadata accessor for CommonDirectAction();
  v15 = OUTLINED_FUNCTION_23_1(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v108 = v18 - v19;
  v21 = __chkstk_darwin(v20);
  v23 = &v106 - v22;
  __chkstk_darwin(v21);
  v111 = &v106 - v24;
  v25 = type metadata accessor for Parse.DirectInvocation();
  v112 = OUTLINED_FUNCTION_7(v25);
  v113 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v112);
  OUTLINED_FUNCTION_12_5();
  v110 = v29 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = type metadata accessor for Parse();
  v35 = OUTLINED_FUNCTION_7(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_12_5();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &v106 - v44;
  (*(v37 + 16))(&v106 - v44, v2, v34);
  v46 = *(v37 + 88);
  v47 = OUTLINED_FUNCTION_39_8();
  v49 = v48(v47);
  if (v49 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v49 == enum case for Parse.directInvocation(_:))
  {
    v56 = *(v37 + 96);
    v57 = OUTLINED_FUNCTION_39_8();
    v58(v57);
    v59 = v113;
    v60 = v45;
    v61 = v112;
    (*(v113 + 32))(v33, v60, v112);
    static CommonDirectAction.from(_:)(v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.siriPhone);
      v63 = v110;
      (*(v59 + 16))(v110, v33, v61);
      v64 = v33;
      v65 = v59;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v117[0] = v69;
        *v68 = 136315138;
        v70 = Parse.DirectInvocation.identifier.getter();
        v71 = v63;
        v73 = v72;
        v74 = *(v65 + 8);
        v74(v71, v61);
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, v117);

        *(v68 + 4) = v75;
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        v74(v64, v61);
      }

      else
      {

        v85 = *(v65 + 8);
        v85(v63, v61);
        v85(v64, v61);
      }

      goto LABEL_24;
    }

    v80 = v13;
    v81 = v111;
    outlined init with take of CommonDirectAction(v80, v111);
    outlined init with copy of CommonDirectAction(v81, v23);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      OUTLINED_FUNCTION_15_12();
      v83 = v82;
      outlined destroy of CommonDirectAction(v81, v82);
      (*(v0 + 8))(v33, v61);
      outlined destroy of CommonDirectAction(v23, v83);
      v84 = &enum case for PromptResult.cancelled<A>(_:);
LABEL_25:
      v103 = *v84;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
      OUTLINED_FUNCTION_23_1(v104);
      (*(v105 + 104))(v114, v103);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_1_23();
    outlined destroy of CommonDirectAction(v23, v86);
    v87 = v108;
    outlined init with copy of CommonDirectAction(v81, v108);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v88 = v106;
      v89 = v107;
      (*(v107 + 32))(v106, v87, v109);
      v90 = *(v0 + 48);
      v91 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1((v0 + 24), v90);
      v92 = (*(v91 + 72))(v90, v91);
      Siri_Nlu_External_UserDialogAct.toParse.getter(v42);
      (*(*v92 + 192))(&v115, v42);

      (*(v37 + 8))(v42, v34);
      if (v116)
      {
        outlined init with take of SPHConversation(&v115, v117);
        AddOrCallPromptForValueStrategy.getAction(from:)(v117, v114);
        __swift_destroy_boxed_opaque_existential_1(v117);
        (*(v89 + 8))(v88, v109);
        OUTLINED_FUNCTION_1_23();
        outlined destroy of CommonDirectAction(v111, v93);
        v94 = OUTLINED_FUNCTION_20_11();
        v95(v94);
        goto LABEL_26;
      }

      (*(v89 + 8))(v88, v109);
      OUTLINED_FUNCTION_1_23();
      outlined destroy of CommonDirectAction(v111, v100);
      v101 = OUTLINED_FUNCTION_20_11();
      v102(v101);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_15_12();
    v97 = v96;
    outlined destroy of CommonDirectAction(v81, v96);
    v98 = OUTLINED_FUNCTION_20_11();
    v99(v98);
    outlined destroy of CommonDirectAction(v0, v97);
LABEL_24:
    v84 = &enum case for PromptResult.unanswered<A>(_:);
    goto LABEL_25;
  }

  if (v49 != enum case for Parse.NLv4IntentOnly(_:) && v49 != enum case for Parse.uso(_:))
  {
    v77 = *(v37 + 8);
    v78 = OUTLINED_FUNCTION_39_8();
    v79(v78);
    goto LABEL_24;
  }

LABEL_2:
  v50 = *(v37 + 8);
  v51 = OUTLINED_FUNCTION_39_8();
  v52(v51);
  v53 = *(v0 + 48);
  v54 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v53);
  v55 = (*(v54 + 72))(v53, v54);
  (*(*v55 + 192))(&v115, v2);

  if (!v116)
  {
LABEL_23:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v115, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_24;
  }

  outlined init with take of SPHConversation(&v115, v117);
  AddOrCallPromptForValueStrategy.getAction(from:)(v117, v114);
  __swift_destroy_boxed_opaque_existential_1(v117);
LABEL_26:
  OUTLINED_FUNCTION_65();
}